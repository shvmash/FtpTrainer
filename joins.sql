SELECT 
       Agent.AgentId,
       FirstName,
       LastName,
       City,
       SSN,
       IsSplitAgent
FROM
AGENT,
AGENTPOLICY
WHERE Agent.AgentId=AgentPolicy.AgentId

-- ANSI STANDARDS
SELECT 
       Agent.AgentId,
       FirstName,
       LastName,
       City,
       SSN,
       IsSplitAgent
FROM
AGENT INNER JOIN
AGENTPOLICY
ON Agent.AgentId=AgentPolicy.AgentId

-- above query with alliases
SELECT 
       A.AgentId,
       FirstName,
       LastName,
       City,
       SSN,
       IsSplitAgent
FROM
AGENT A
INNER JOIN
AGENTPOLICY AP
ON A.AgentId=AP.AgentId


SELECT
      P.PolicyID,
      AppNumber,
      ModalPremium,
      AnnualPremium,
      PaymentModeID,
      ISSplitAgent
FROM POLICY P
INNER JOIN
AGENTPOLICY AP
ON P.POLICYID=AP.PolicyID

-- SUBQUERIES
sometimes it is not possible to extract the data by using single SQL statement, for this we need the help of subquery
that which is having another query inside, the query which is having another query inside known as inner query,
the query which is inside 

