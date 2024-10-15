SELECT 
member.memberSurname AS memberSurname,
member.memberForename AS memberForename,
narrow.narrowDesc AS narrowExpertiseDescription,
broad.broadDesc AS broadExpertiseDescription
FROM 
member
JOIN 
memberNarrow ON member.memberId = memberNarrow.memberNarrowMemberId
JOIN 
narrow ON memberNarrow.memberNarrowNarrowId = narrow.narrowId
JOIN 
broad ON narrow.narrowBroadId = broad.broadId
ORDER BY 
memberSurname, memberForename, narrowExpertiseDescription