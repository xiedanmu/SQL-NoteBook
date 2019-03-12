# 178. Rank Scores

```sql
SELECT
  Score,
  (SELECT count(distinct Score) FROM Scores WHERE Score >= s.Score) Rank --这里的Score就是上一行中的Score
FROM Scores s
ORDER BY Score desc
```
