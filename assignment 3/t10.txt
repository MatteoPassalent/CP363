SELECT broad.broadDesc FROM broad
WHERE broad.broadId NOT IN 
(SELECT narrowBroadId FROM narrow)
ORDER BY broad.broadDesc