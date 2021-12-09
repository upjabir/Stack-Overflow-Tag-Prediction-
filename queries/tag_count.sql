SELECT
    IF(Posts.tags = '', 0, ARRAY_LENGTH(SPLIT(Posts.tags, '|'))) as number_of_tags,
    COUNT(*) as count
FROM`bigquery-public-data.stackoverflow.posts_questions`as Posts
GROUP BY number_of_tags
ORDER BY number_of_tags