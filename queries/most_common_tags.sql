SELECT tags as tag, COUNT(*) as count
FROM `bigquery-public-data.stackoverflow.posts_questions` as Posts
WHERE ARRAY_LENGTH(SPLIT(Posts.tags, '|')) = 1
GROUP BY tags
ORDER BY count DESC
LIMIT 1000