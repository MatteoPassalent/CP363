SELECT 
broad.broadDesc AS broadExpertiseDescription,
COUNT(memberBroad.memberBroadMemberId) AS memberCount
FROM 
broad
LEFT JOIN 
memberBroad ON broad.broadId = memberBroad.memberBroadBroadId
GROUP BY 
broadExpertiseDescription
ORDER BY 
broadExpertiseDescription