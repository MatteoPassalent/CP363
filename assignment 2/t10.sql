SELECT 
member.memberSurname AS memberSurname,
member.memberForename AS memberForename,
COUNT(memberNarrow.memberNarrowNarrowId) AS narrowExpertiseCount
FROM 
member
LEFT JOIN 
memberNarrow ON member.memberId = memberNarrow.memberNarrowMemberId
GROUP BY 
memberSurname, memberForename
ORDER BY 
memberSurname, memberForename