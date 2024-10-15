SELECT 
narrow.narrowDesc AS narrowExpertiseDescription,
COUNT(memberNarrow.memberNarrowMemberId) AS memberCount
FROM 
narrow
LEFT JOIN 
memberNarrow ON narrow.narrowId = memberNarrow.memberNarrowNarrowId
GROUP BY 
narrowExpertiseDescription
ORDER BY 
narrowExpertiseDescription