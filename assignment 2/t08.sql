SELECT 
member.memberSurname AS memberSurname,
member.memberForename AS memberForename,
COUNT(memberBroad.memberBroadBroadId) AS broadExpertiseCount
FROM 
member
LEFT JOIN 
memberBroad ON member.memberId = memberBroad.memberBroadMemberId
GROUP BY 
memberSurname, memberForename
ORDER BY 
memberSurname, memberForename