SELECT VA.NAME
FROM VOICE_ACTOR VA
         INNER JOIN CHARACTER CH ON VA.NAME = CH.VOICE_ACTOR
GROUP BY VA.NAME;