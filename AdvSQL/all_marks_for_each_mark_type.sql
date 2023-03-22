-- Select number of all marks for each mark type (‘BAD’, ‘AVERAGE’,…)
SELECT 
  COALESCE(
    CASE 
      WHEN mark >= 9 THEN 'EXCELLENT'
      WHEN mark >= 7 THEN 'GOOD'
      WHEN mark >= 4 THEN 'AVERAGE'
      WHEN mark >= 1 THEN 'BAD'
      ELSE 'not passed'
    END,
    'not passed'
  ) as mark_description,
  COUNT(*) as mark_count
FROM exam_result
GROUP BY mark_description;
