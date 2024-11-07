SELECT member.memberSurname, member.memberForename, broad.broadDesc
FROM member
JOIN memberBroad ON member.memberId = memberBroad.memberBroadMemberId
JOIN broad ON memberBroad.memberBroadBroadId = broad.broadId
WHERE member.memberId NOT IN 
(SELECT member.memberId 
FROM member JOIN pub ON member.memberId = pub.pubMemberId) 
ORDER BY member.memberSurname, member.memberForename, broad.broadDesc