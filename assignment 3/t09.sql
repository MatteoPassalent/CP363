SELECT member.memberSurname, member.memberForename, narrowCount.narrowCount FROM member
JOIN (SELECT memberNarrow.memberNarrowMemberId AS memberId, COUNT(*) AS narrowCount
FROM memberNarrow GROUP BY memberId) AS narrowCount
ON member.memberId = narrowCount.memberId
WHERE narrowCount.narrowCount >= 30
ORDER BY member.memberSurname, member.memberForename
