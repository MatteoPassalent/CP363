SELECT narrow.narrowDesc FROM narrow 
WHERE narrow.narrowId NOT IN
(SELECT memberNarrow.memberNarrowNarrowId FROM memberNarrow)
ORDER BY narrow.narrowDesc