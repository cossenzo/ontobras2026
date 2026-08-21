// CQ1 — Synthesis traceability
// For each research question, how many solutions were identified, and which contexts are associated with them?

MATCH (researchQuestion:ResearchQuestion)-[:investigates]->(problem:Problem)
MATCH (study:Study)-[:proposes]->(solution:Solution)
WHERE EXISTS {
  MATCH (solution)-[:addresses]->(problem)
}
OR EXISTS {
  MATCH (study)-[:addresses]->(problem)
}
OPTIONAL MATCH (solution)-[:appliesTo]->(context:Context)
WITH researchQuestion,
     count(DISTINCT solution) AS solutionCount,
     collect(DISTINCT CASE
       WHEN context IS NULL THEN null
       ELSE context.description
     END) AS contexts
RETURN researchQuestion.description AS researchQuestion,
       solutionCount,
       contexts
ORDER BY researchQuestion;

// CQ2 — Mixed-evidence integration
// For a given study, which qualitative and quantitative elements comprise the proposed solution?
// Replace Study_15 with the identifier or title of the study to be queried.

WITH 'Study_15' AS selectedStudy
MATCH (study:Study)-[:proposes]->(solution:Solution)
MATCH (solution)-[:hasElement]->(solutionElement:SolutionElement)
WHERE study.id = selectedStudy
   OR study.uri = selectedStudy
   OR study.title = selectedStudy
RETURN solutionElement.description AS solutionElement,
       CASE solutionElement.isQuantitative
         WHEN true THEN 'Quantitative'
         WHEN false THEN 'Qualitative'
         ELSE 'Not specified'
       END AS evidenceType,
       CASE
         WHEN solutionElement.isQuantitative = true THEN solutionElement.number
         ELSE null
       END AS numericalValue,
       solutionElement.isOriginal AS isOriginal
ORDER BY evidenceType, solutionElement;

// CQ3 — Recurring solution elements
// Which solution elements occur in multiple studies within the same context, indicating convergence of evidence?

MATCH (study:Study)-[:proposes]->(solution:Solution)
MATCH (solution)-[:appliesTo]->(context:Context)
MATCH (solution)-[:hasElement]->(solutionElement:SolutionElement)
WITH context,
     solutionElement,
     count(DISTINCT study) AS studyCount
WHERE studyCount > 1
RETURN context.description AS context,
       solutionElement.description AS solutionElement,
       studyCount
ORDER BY studyCount DESC, context, solutionElement;

// CQ4 — Recurring limitations
// Which limitations recur most often in the solutions proposed by the studies in the sample?

MATCH (study:Study)-[:proposes]->(solution:Solution)
MATCH (solution)-[:hasLimitation]->(limitation:Limitation)
WHERE limitation.description IS NOT NULL
WITH toLower(trim(limitation.description)) AS normalizedDescription,
     head(collect(DISTINCT limitation.description)) AS limitation,
     count(*) AS occurrenceCount,
     count(DISTINCT study) AS studyCount
WHERE studyCount > 1
RETURN limitation,
       occurrenceCount
ORDER BY occurrenceCount DESC, limitation;

// CQ5 — PageRank
// Which entities are essential for summarizing the systematic literature review sample?

CALL gds.graph.drop('ontoloasxPageRank', false)
YIELD graphName
RETURN graphName;

MATCH (source)-[relationship]->(target)
WHERE type(relationship) IN [
        'investigates', 'addresses', 'proposes', 'appliesTo',
        'hasElement', 'hasObjective', 'hasLimitation', 'identifies'
      ]
  AND any(nodeLabel IN labels(source)
          WHERE nodeLabel IN [
            'ResearchQuestion', 'Problem', 'Study', 'Solution', 'Context',
            'SolutionElement', 'Objective', 'Limitation', 'ResearchGap'
          ])
  AND any(nodeLabel IN labels(target)
          WHERE nodeLabel IN [
            'ResearchQuestion', 'Problem', 'Study', 'Solution', 'Context',
            'SolutionElement', 'Objective', 'Limitation', 'ResearchGap'
          ])
WITH gds.graph.project(
       'ontoloasxPageRank',
       source,
       target,
       {
         sourceNodeLabels: labels(source),
         targetNodeLabels: labels(target),
         relationshipType: type(relationship)
       },
       {undirectedRelationshipTypes: ['*']}
     ) AS projectedGraph
RETURN projectedGraph.graphName AS graphName,
       projectedGraph.nodeCount AS nodeCount,
       projectedGraph.relationshipCount AS relationshipCount;

CALL gds.pageRank.stream(
  'ontoloasxPageRank',
  {
    dampingFactor: 0.85,
    maxIterations: 20,
    tolerance: 0.0000001
  }
)
YIELD nodeId, score
WITH gds.util.asNode(nodeId) AS entity, score
WITH entity,
     score,
     [nodeLabel IN labels(entity)
       WHERE nodeLabel IN [
         'ResearchQuestion', 'Problem', 'Study', 'Solution', 'Context',
         'SolutionElement', 'Objective', 'Limitation', 'ResearchGap'
       ]][0] AS entityType
RETURN entityType,
       coalesce(entity.id, entity.uri, elementId(entity)) AS entityId,
       coalesce(entity.title, entity.description, entity.id, entity.uri)
         AS entityDescription,
       score AS pageRankScore
ORDER BY pageRankScore DESC, entityDescription;

CALL gds.graph.drop('ontoloasxPageRank', false)
YIELD graphName
RETURN graphName;

// CQ6 — Betweenness Centrality (Contexts)
// What are the 10 most influential contexts in the sample knowledge graph?

CALL gds.graph.drop('ontoloasxBetweenness', false)
YIELD graphName
RETURN graphName;

MATCH (source)-[relationship]->(target)
WHERE type(relationship) IN [
        'investigates', 'addresses', 'proposes', 'appliesTo',
        'hasElement', 'hasObjective', 'hasLimitation', 'identifies'
      ]
  AND any(nodeLabel IN labels(source)
          WHERE nodeLabel IN [
            'ResearchQuestion', 'Problem', 'Study', 'Solution', 'Context',
            'SolutionElement', 'Objective', 'Limitation', 'ResearchGap'
          ])
  AND any(nodeLabel IN labels(target)
          WHERE nodeLabel IN [
            'ResearchQuestion', 'Problem', 'Study', 'Solution', 'Context',
            'SolutionElement', 'Objective', 'Limitation', 'ResearchGap'
          ])
WITH gds.graph.project(
       'ontoloasxBetweenness',
       source,
       target,
       {
         sourceNodeLabels: labels(source),
         targetNodeLabels: labels(target),
         relationshipType: type(relationship)
       },
       {undirectedRelationshipTypes: ['*']}
     ) AS projectedGraph
RETURN projectedGraph.graphName AS graphName,
       projectedGraph.nodeCount AS nodeCount,
       projectedGraph.relationshipCount AS relationshipCount;

CALL gds.betweenness.stream('ontoloasxBetweenness', {})
YIELD nodeId, score
WITH gds.util.asNode(nodeId) AS context, score
WHERE context:Context
RETURN coalesce(context.id, context.uri, elementId(context)) AS contextId,
       context.description AS context,
       score AS betweennessCentralityScore
ORDER BY betweennessCentralityScore DESC, context
LIMIT 10;

// CQ7 — Betweenness Centrality (Studies)
// What are the 10 most influential studies in the sample knowledge graph?

CALL gds.betweenness.stream('ontoloasxBetweenness', {})
YIELD nodeId, score
WITH gds.util.asNode(nodeId) AS study, score
WHERE study:Study
RETURN coalesce(study.id, study.uri, elementId(study)) AS studyId,
       study.title AS study,
       score AS betweennessCentralityScore
ORDER BY betweennessCentralityScore DESC, study
LIMIT 10;

CALL gds.graph.drop('ontoloasxBetweenness', false)
YIELD graphName
RETURN graphName;

// CQ8 — Louvain Modularity (Context, Solution, SolutionElement)
// Which cohesive communities best express the logical relationships among contexts, solutions, and solution elements?

CALL gds.graph.drop('ontoloasxLouvain', false)
YIELD graphName
RETURN graphName;

MATCH (source)-[relationship:appliesTo|hasElement]->(target)
WHERE (source:Context OR source:Solution OR source:SolutionElement)
  AND (target:Context OR target:Solution OR target:SolutionElement)
WITH gds.graph.project(
       'ontoloasxLouvain',
       source,
       target,
       {
         sourceNodeLabels: labels(source),
         targetNodeLabels: labels(target),
         relationshipType: type(relationship)
       },
       {undirectedRelationshipTypes: ['*']}
     ) AS projectedGraph
RETURN projectedGraph.graphName AS graphName,
       projectedGraph.nodeCount AS nodeCount,
       projectedGraph.relationshipCount AS relationshipCount;

CALL gds.louvain.stream(
  'ontoloasxLouvain',
  {
    maxLevels: 10,
    maxIterations: 10,
    tolerance: 0.0001,
    consecutiveIds: true
  }
)
YIELD nodeId, communityId
WITH communityId, gds.util.asNode(nodeId) AS entity
WITH communityId,
     collect(DISTINCT CASE
       WHEN entity:Context THEN entity.description
       ELSE null
     END) AS contexts,
     collect(DISTINCT CASE
       WHEN entity:Solution THEN
         coalesce(entity.id, entity.uri, elementId(entity))
       ELSE null
     END) AS solutions,
     collect(DISTINCT CASE
       WHEN entity:SolutionElement THEN entity.description
       ELSE null
     END) AS solutionElements
RETURN communityId,
       contexts,
       solutions,
       solutionElements
ORDER BY communityId;

CALL gds.graph.drop('ontoloasxLouvain', false)
YIELD graphName
RETURN graphName;

