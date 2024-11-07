SELECT member.memberSurname, member.memberForename, pubCount.pubCount
FROM member
JOIN (SELECT pub.pubMemberId AS memberId, COUNT(*) AS pubCount FROM pub GROUP BY pub.pubMemberId) AS pubCount
ON member.memberId = pubCount.memberId
WHERE pubCount.pubCount >= 4
ORDER BY member.memberSurname, member.memberForename