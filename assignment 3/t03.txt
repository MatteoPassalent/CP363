SELECT 
    member.memberSurname, member.memberForename,
    narrow.narrowDesc AS narrow_expertise
FROM 
    member
JOIN 
    memberNarrow ON member.memberId = memberNarrow.memberNarrowMemberId
JOIN 
    narrow ON memberNarrow.memberNarrowNarrowId = narrow.narrowId
JOIN 
    broad ON narrow.narrowBroadId = broad.broadId
WHERE 
    broad.broadDesc = 'Environmental Security'
    AND member.memberId NOT IN (
        SELECT memberBroad.memberBroadMemberId
        FROM memberBroad
        JOIN broad ON memberBroad.memberBroadBroadId = broad.broadId
        WHERE broad.broadDesc = 'Environmental Security'
    )
ORDER BY 
    member.memberSurname, member.memberForename
