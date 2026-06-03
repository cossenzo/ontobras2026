// OntoLOASx - Cypher script for Neo4j Desktop

:use ontoloasx

// Cleans existing ontology
MATCH (n) WHERE n.ontology = 'OntoLOASx' DETACH DELETE n;
MATCH (n {uri: 'http://ontoloasx.org/ontoloasx'}) DETACH DELETE n;

// Unique constraints
CREATE CONSTRAINT ontology_uri_unique IF NOT EXISTS
FOR (n:Ontology) REQUIRE n.uri IS UNIQUE;

CREATE CONSTRAINT class_uri_unique IF NOT EXISTS
FOR (n:OntologicalClass) REQUIRE n.uri IS UNIQUE;

CREATE CONSTRAINT property_uri_unique IF NOT EXISTS
FOR (n:OntologicalProperty) REQUIRE n.uri IS UNIQUE;

CREATE CONSTRAINT gufo_uri_unique IF NOT EXISTS
FOR (n:GUFOTerm) REQUIRE n.uri IS UNIQUE;

// Ontology
MERGE (onto:Ontology {uri: 'http://ontoloasx.org/ontoloasx'})
SET onto.name = 'OntoLOASx',
    onto.type = 'owl:Ontology',
    onto.imports = 'http://purl.org/nemo/gufo#',
    onto.ontology = 'OntoLOASx';

// Referenced gUFO and XSD types
UNWIND [
  {curie:'gufo:SituationType', uri:'http://purl.org/nemo/gufo#SituationType', kind:'gUFO metaclass'},
  {curie:'gufo:Kind', uri:'http://purl.org/nemo/gufo#Kind', kind:'gUFO metaclass'},
  {curie:'gufo:Category', uri:'http://purl.org/nemo/gufo#Category', kind:'gUFO metaclass'},
  {curie:'gufo:Situation', uri:'http://purl.org/nemo/gufo#Situation', kind:'gUFO class'},
  {curie:'gufo:FunctionalComplex', uri:'http://purl.org/nemo/gufo#FunctionalComplex', kind:'gUFO class'},
  {curie:'gufo:IntrinsicMode', uri:'http://purl.org/nemo/gufo#IntrinsicMode', kind:'gUFO class'},
  {curie:'gufo:hasQualityValue', uri:'http://purl.org/nemo/gufo#hasQualityValue', kind:'gUFO property'},
  {curie:'xsd:string', uri:'http://www.w3.org/2001/XMLSchema#string', kind:'XSD datatype'},
  {curie:'xsd:boolean', uri:'http://www.w3.org/2001/XMLSchema#boolean', kind:'XSD datatype'}
] AS t
MERGE (term:GUFOTerm {uri: t.uri})
SET term.curie = t.curie,
    term.kind = t.kind,
    term.ontology = 'OntoLOASx';

// Classes
UNWIND [
  {
    name: "ResearchGap",
    uri: "http://ontoloasx.org/ontoloasx#ResearchGap",
    label: "ResearchGap",
    gufoType: "gufo:SituationType",
    superClass: "gufo:Situation"
  },
  {
    name: "Problem",
    uri: "http://ontoloasx.org/ontoloasx#Problem",
    label: "Problem",
    gufoType: "gufo:SituationType",
    superClass: "gufo:Situation"
  },
  {
    name: "ResearchQuestion",
    uri: "http://ontoloasx.org/ontoloasx#ResearchQuestion",
    label: "ResearchQuestion",
    gufoType: "gufo:Kind",
    superClass: "gufo:FunctionalComplex"
  },
  {
    name: "Limitation",
    uri: "http://ontoloasx.org/ontoloasx#Limitation",
    label: "Limitation",
    gufoType: "gufo:Kind",
    superClass: "gufo:IntrinsicMode"
  },
  {
    name: "Study",
    uri: "http://ontoloasx.org/ontoloasx#Study",
    label: "Study",
    gufoType: "gufo:Kind",
    superClass: "gufo:FunctionalComplex"
  },
  {
    name: "Objective",
    uri: "http://ontoloasx.org/ontoloasx#Objective",
    label: "Objective",
    gufoType: "gufo:Kind",
    superClass: "gufo:IntrinsicMode"
  },
  {
    name: "Context",
    uri: "http://ontoloasx.org/ontoloasx#Context",
    label: "Context",
    gufoType: "gufo:SituationType",
    superClass: "gufo:Situation"
  },
  {
    name: "Solution",
    uri: "http://ontoloasx.org/ontoloasx#Solution",
    label: "Solution",
    gufoType: "gufo:Kind",
    superClass: "gufo:FunctionalComplex"
  },
  {
    name: "SolutionElement",
    uri: "http://ontoloasx.org/ontoloasx#SolutionElement",
    label: "SolutionElement",
    gufoType: "gufo:Category",
    superClass: "gufo:FunctionalComplex"
  }
] AS c
MATCH (onto:Ontology {uri: 'http://ontoloasx.org/ontoloasx'})
MATCH (gufoType:GUFOTerm {curie: c.gufoType})
MATCH (superClass:GUFOTerm {curie: c.superClass})
MERGE (cls:OntologicalClass:OWLClass:NamedIndividual {uri: c.uri})
SET cls.name = c.name,
    cls.label = c.label,
    cls.language = 'en',
    cls.rdfType = ['owl:Class', c.gufoType, 'owl:NamedIndividual'],
    cls.subClassOf = c.superClass,
    cls.gufoStereotype = c.gufoType,
    cls.ontology = 'OntoLOASx'
MERGE (onto)-[:DECLARES]->(cls)
MERGE (cls)-[:RDF_TYPE]->(gufoType)
MERGE (cls)-[:SUBCLASS_OF]->(superClass);

// Data properties
UNWIND [
  {
    label: "description",
    uri: "researchGap:description",
    domain: "ResearchGap",
    range: "xsd:string",
    subPropertyOf: "gufo:hasQualityValue"
  },
  {
    label: "description",
    uri: "problem:description",
    domain: "Problem",
    range: "xsd:string",
    subPropertyOf: "gufo:hasQualityValue"
  },
  {
    label: "description",
    uri: "researchQuestion:description",
    domain: "ResearchQuestion",
    range: "xsd:string",
    subPropertyOf: "gufo:hasQualityValue"
  },
  {
    label: "description",
    uri: "limitation:description",
    domain: "Limitation",
    range: "xsd:string",
    subPropertyOf: "gufo:hasQualityValue"
  },
  {
    label: "addedInReview",
    uri: "limitation:addedInReview",
    domain: "Limitation",
    range: "xsd:boolean",
    subPropertyOf: "gufo:hasQualityValue"
  },
  {
    label: "title",
    uri: "study:title",
    domain: "Study",
    range: "xsd:string",
    subPropertyOf: "gufo:hasQualityValue"
  },
  {
    label: "description",
    uri: "objective:description",
    domain: "Objective",
    range: "xsd:string",
    subPropertyOf: "gufo:hasQualityValue"
  },
  {
    label: "description",
    uri: "context:description",
    domain: "Context",
    range: "xsd:string",
    subPropertyOf: "gufo:hasQualityValue"
  },
  {
    label: "description",
    uri: "solutionElement:description",
    domain: "SolutionElement",
    range: "xsd:string",
    subPropertyOf: "gufo:hasQualityValue"
  },
  {
    label: "isOriginal",
    uri: "solutionElement:isOriginal",
    domain: "SolutionElement",
    range: "xsd:boolean",
    subPropertyOf: "gufo:hasQualityValue"
  },
  {
    label: "isQuantitative",
    uri: "solutionElement:isQuantitative",
    domain: "SolutionElement",
    range: "xsd:boolean",
    subPropertyOf: "gufo:hasQualityValue"
  },
  {
    label: "number",
    uri: "solutionElement:number",
    domain: "SolutionElement",
    range: "xsd:string",
    subPropertyOf: "gufo:hasQualityValue"
  }
] AS p
MATCH (onto:Ontology {uri: 'http://ontoloasx.org/ontoloasx'})
MATCH (domain:OntologicalClass {name: p.domain})
MATCH (range:GUFOTerm {curie: p.range})
MATCH (superProperty:GUFOTerm {curie: p.subPropertyOf})
MERGE (prop:OntologicalProperty:DatatypeProperty {uri: p.uri})
SET prop.name = p.label,
    prop.label = p.label,
    prop.language = 'en',
    prop.rdfType = 'owl:DatatypeProperty',
    prop.range = p.range,
    prop.subPropertyOf = p.subPropertyOf,
    prop.ontology = 'OntoLOASx'
MERGE (onto)-[:DECLARES]->(prop)
MERGE (prop)-[:DOMAIN]->(domain)
MERGE (prop)-[:RANGE]->(range)
MERGE (prop)-[:SUBPROPERTY_OF]->(superProperty);

// Object properties
UNWIND [
  {
    name: "investigates",
    uri: "http://ontoloasx.org/ontoloasx#investigates",
    domain: "ResearchQuestion",
    range: "Problem"
  },
  {
    name: "proposes",
    uri: "http://ontoloasx.org/ontoloasx#proposes",
    domain: "Study",
    range: "Solution"
  },
  {
    name: "addresses",
    uri: "http://ontoloasx.org/ontoloasx#addresses",
    domain: "Solution",
    range: "Problem"
  },
  {
    name: "appliesTo",
    uri: "http://ontoloasx.org/ontoloasx#appliesTo",
    domain: "Solution",
    range: "Context"
  },
  {
    name: "hasObjective",
    uri: "http://ontoloasx.org/ontoloasx#hasObjective",
    domain: "Study",
    range: "Objective"
  },
  {
    name: "identifies",
    uri: "http://ontoloasx.org/ontoloasx#identifies",
    domain: "Study",
    range: "ResearchGap"
  },
  {
    name: "hasLimitation",
    uri: "http://ontoloasx.org/ontoloasx#hasLimitation",
    domain: "Solution",
    range: "Limitation"
  },
  {
    name: "hasElement",
    uri: "http://ontoloasx.org/ontoloasx#hasElement",
    domain: "Solution",
    range: "SolutionElement"
  }
] AS p
MATCH (onto:Ontology {uri: 'http://ontoloasx.org/ontoloasx'})
MATCH (domain:OntologicalClass {name: p.domain})
MATCH (range:OntologicalClass {name: p.range})
MERGE (prop:OntologicalProperty:ObjectProperty {uri: p.uri})
SET prop.name = p.name,
    prop.label = p.name,
    prop.language = 'en',
    prop.rdfType = 'owl:ObjectProperty',
    prop.ontology = 'OntoLOASx'
MERGE (onto)-[:DECLARES]->(prop)
MERGE (prop)-[:DOMAIN]->(domain)
MERGE (prop)-[:RANGE]->(range);

// Semantic relations
MATCH (rq:OntologicalClass {name:'ResearchQuestion'}), (p:OntologicalClass {name:'Problem'})
MERGE (rq)-[:INVESTIGATES_SCHEMA {propertyUri:'http://ontoloasx.org/ontoloasx#investigates', label:'investigates'}]->(p);

MATCH (s:OntologicalClass {name:'Study'}), (sol:OntologicalClass {name:'Solution'})
MERGE (s)-[:PROPOSES_SCHEMA {propertyUri:'http://ontoloasx.org/ontoloasx#proposes', label:'proposes'}]->(sol);

MATCH (sol:OntologicalClass {name:'Solution'}), (p:OntologicalClass {name:'Problem'})
MERGE (sol)-[:ADDRESSES_SCHEMA {propertyUri:'http://ontoloasx.org/ontoloasx#addresses', label:'addresses'}]->(p);

MATCH (sol:OntologicalClass {name:'Solution'}), (c:OntologicalClass {name:'Context'})
MERGE (sol)-[:APPLIES_TO_SCHEMA {propertyUri:'http://ontoloasx.org/ontoloasx#appliesTo', label:'appliesTo'}]->(c);

MATCH (s:OntologicalClass {name:'Study'}), (o:OntologicalClass {name:'Objective'})
MERGE (s)-[:HAS_OBJECTIVE_SCHEMA {propertyUri:'http://ontoloasx.org/ontoloasx#hasObjective', label:'hasObjective'}]->(o);

MATCH (s:OntologicalClass {name:'Study'}), (rg:OntologicalClass {name:'ResearchGap'})
MERGE (s)-[:IDENTIFIES_SCHEMA {propertyUri:'http://ontoloasx.org/ontoloasx#identifies', label:'identifies'}]->(rg);

MATCH (sol:OntologicalClass {name:'Solution'}), (l:OntologicalClass {name:'Limitation'})
MERGE (sol)-[:HAS_LIMITATION_SCHEMA {propertyUri:'http://ontoloasx.org/ontoloasx#hasLimitation', label:'hasLimitation'}]->(l);

MATCH (sol:OntologicalClass {name:'Solution'}), (se:OntologicalClass {name:'SolutionElement'})
MERGE (sol)-[:HAS_ELEMENT_SCHEMA {propertyUri:'http://ontoloasx.org/ontoloasx#hasElement', label:'hasElement'}]->(se);

// Verification query
MATCH (onto:Ontology {uri:'http://ontoloasx.org/ontoloasx'})-[:DECLARES]->(n)
RETURN labels(n) AS labels, n.name AS name, n.uri AS uri
ORDER BY labels, name;
