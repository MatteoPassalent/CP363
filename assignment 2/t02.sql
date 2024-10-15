SELECT
member.memberSurname AS memberSurname,
member.memberForename AS memberForename,
pubType.pubTypeDesc AS fullPublicationType,
pub.pubTitle AS publicationTitle
FROM 
member
JOIN 
pub ON member.memberId = pub.pubMemberId
JOIN 
pubType ON pub.pubPubType = pubType.pubType
WHERE 
member.memberInstitution LIKE '%Wilfrid Laurier University%'
ORDER BY 
memberSurname, memberForename