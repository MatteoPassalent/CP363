SELECT member.memberSurname, member.memberForename, broadCount.broadCount
FROM member JOIN 
(SELECT memberBroad.memberBroadMemberId AS memberId, COUNT(*) AS broadCount
FROM memberBroad GROUP BY memberId)
AS broadCount
ON member.memberId = broadCount.memberId
WHERE broadCount.broadCount >= 8
ORDER BY member.memberSurname, member.memberForename