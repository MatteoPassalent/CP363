SELECT 
member.memberSurname AS memberSurname,
member.memberForename AS memberForename,
COUNT(pub.pubId) AS publicationCount
FROM 
member
LEFT JOIN 
pub ON member.memberId = pub.pubMemberId
GROUP BY 
memberSurname, memberForename
ORDER BY 
memberSurname, memberForename