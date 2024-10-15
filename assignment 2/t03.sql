SELECT
member.memberSurname AS memberSurname,
member.memberForename AS memberForename,
pub.pubTitle AS publicationTitle
FROM 
member
JOIN 
pub ON member.memberId = pub.pubMemberId
WHERE 
pub.pubTitle LIKE '%Nuclear%'
AND pub.pubPubType = 'p'
ORDER BY 
publicationTitle