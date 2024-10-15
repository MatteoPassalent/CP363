SELECT 
member.memberSurname AS memberSurname,
member.memberForename AS memberForename,
COUNT(pub.pubId) AS bookCount
FROM 
member
LEFT JOIN 
pub ON member.memberId = pub.pubMemberId AND pub.pubPubType = 'b'
GROUP BY 
memberSurname, memberForename
ORDER BY 
memberSurname, memberForename