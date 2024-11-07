SELECT 
    member.memberSurname, 
    member.memberForename,
    COALESCE((SELECT COUNT(DISTINCT memberBroad.memberBroadBroadId)
              FROM memberBroad 
              WHERE memberBroad.memberBroadMemberId = member.memberId), 0) AS broadCount,
    COALESCE((SELECT COUNT(DISTINCT memberNarrow.memberNarrowNarrowId)
              FROM memberNarrow 
              WHERE memberNarrow.memberNarrowMemberId = member.memberId), 0) AS narrowCount
FROM 
    member
ORDER BY 
    member.memberSurname, 
    member.memberForename
