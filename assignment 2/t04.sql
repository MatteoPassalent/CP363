SELECT 
pub.pubTitle AS publicationTitle,
pubType.pubTypeDesc AS fullPublicationType
FROM 
member
JOIN 
pub ON member.memberId = pub.pubMemberId
JOIN 
pubType ON pub.pubPubType = pubType.pubType
WHERE 
member.memberSurname = 'Bain'
AND member.memberForename = 'William'
ORDER BY 
publicationTitle
