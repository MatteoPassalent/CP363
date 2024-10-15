SELECT 
pubType.pubTypeDesc AS fullPublicationType,
COUNT(pub.pubId) AS publicationCount
FROM 
pubType
LEFT JOIN 
pub ON pubType.pubType = pub.pubPubType
GROUP BY 
fullPublicationType
ORDER BY 
fullPublicationType