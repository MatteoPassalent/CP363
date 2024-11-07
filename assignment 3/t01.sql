SELECT 
    member.memberSurname, 
    member.memberForename,
    COALESCE((SELECT COUNT(*)
              FROM pub 
              WHERE pub.pubMemberId = member.memberId 
              AND pub.pubPubType = 'b'), 0) AS books,
    COALESCE((SELECT COUNT(*)
              FROM pub 
              WHERE pub.pubMemberId = member.memberId 
              AND pub.pubPubType = 'a'), 0) AS articles,
    COALESCE((SELECT COUNT(*)
              FROM pub 
              WHERE pub.pubMemberId = member.memberId 
              AND pub.pubPubType = 'p'), 0) AS papers
FROM 
    member
ORDER BY 
    member.memberSurname, 
    member.memberForename
