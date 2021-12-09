CREATE
  TEMP FUNCTION sample_class(text STRING,
                             samples_per_class INT64,
                             class_size INT64) AS (
    (class_size > samples_per_class) and
    (0 = MOD(
      FARM_FINGERPRINT(text),
      CAST(class_size / samples_per_class as INT64)
     ))
   );

WITH
  Posts as (
    SELECT
      Posts.id,
      CONCAT(title, "\n", body) as content,
      Posts.tags as tag
    FROM `bigquery-public-data.stackoverflow.posts_questions` as Posts
    WHERE ARRAY_LENGTH(SPLIT(Posts.tags, '|')) = 1
  ),
  TopTagCounts as (
    SELECT tag, COUNT(*) as count
    FROM Posts
    GROUP BY tag
    ORDER BY count DESC
    LIMIT 150
  )

SELECT Posts.id,
       Posts.tag,
       SUBSTR(Posts.content, 0, 51200) as content
FROM Posts
INNER JOIN TopTagCounts ON Posts.tag = TopTagCounts.tag
WHERE sample_class(Posts.content, 500, TopTagCounts.count)