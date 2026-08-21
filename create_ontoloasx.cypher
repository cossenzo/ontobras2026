CREATE CONSTRAINT ontology_iri_unique IF NOT EXISTS FOR (n:Ontology) REQUIRE n.iri IS UNIQUE;
CREATE CONSTRAINT ontology_class_iri_unique IF NOT EXISTS FOR (n:OntologyClass) REQUIRE n.iri IS UNIQUE;
CREATE CONSTRAINT object_property_iri_unique IF NOT EXISTS FOR (n:ObjectProperty) REQUIRE n.iri IS UNIQUE;
CREATE CONSTRAINT data_property_iri_unique IF NOT EXISTS FOR (n:DataProperty) REQUIRE n.iri IS UNIQUE;
CREATE CONSTRAINT datatype_iri_unique IF NOT EXISTS FOR (n:Datatype) REQUIRE n.iri IS UNIQUE;
CREATE CONSTRAINT ontology_restriction_id_unique IF NOT EXISTS FOR (n:OntologyRestriction) REQUIRE n.id IS UNIQUE;
CREATE CONSTRAINT research_question_uri_unique IF NOT EXISTS FOR (n:ResearchQuestion) REQUIRE n.uri IS UNIQUE;
CREATE CONSTRAINT problem_uri_unique IF NOT EXISTS FOR (n:Problem) REQUIRE n.uri IS UNIQUE;
CREATE CONSTRAINT study_uri_unique IF NOT EXISTS FOR (n:Study) REQUIRE n.uri IS UNIQUE;
CREATE CONSTRAINT solution_uri_unique IF NOT EXISTS FOR (n:Solution) REQUIRE n.uri IS UNIQUE;
CREATE CONSTRAINT context_uri_unique IF NOT EXISTS FOR (n:Context) REQUIRE n.uri IS UNIQUE;
CREATE CONSTRAINT solution_element_uri_unique IF NOT EXISTS FOR (n:SolutionElement) REQUIRE n.uri IS UNIQUE;
CREATE CONSTRAINT objective_uri_unique IF NOT EXISTS FOR (n:Objective) REQUIRE n.uri IS UNIQUE;
CREATE CONSTRAINT limitation_uri_unique IF NOT EXISTS FOR (n:Limitation) REQUIRE n.uri IS UNIQUE;
CREATE CONSTRAINT research_gap_uri_unique IF NOT EXISTS FOR (n:ResearchGap) REQUIRE n.uri IS UNIQUE;

MERGE (ontoloasx:Ontology {iri: 'http://ontoloasx.org/ontoloasx'})
SET ontoloasx.name = 'OntoLOASx',
    ontoloasx.namespace = 'http://ontoloasx.org/ontoloasx#',
    ontoloasx.sourceFile = 'OntoLOASx(4).owl';

MERGE (gufo:Ontology {iri: 'http://purl.org/nemo/gufo#'})
SET gufo.name = 'gUFO',
    gufo.namespace = 'http://purl.org/nemo/gufo#';

MATCH (ontoloasx:Ontology {iri: 'http://ontoloasx.org/ontoloasx'}),
      (gufo:Ontology {iri: 'http://purl.org/nemo/gufo#'})
MERGE (ontoloasx)-[:IMPORTS]->(gufo);

UNWIND [
  {iri: 'http://purl.org/nemo/gufo#Situation', name: 'Situation'},
  {iri: 'http://purl.org/nemo/gufo#IntrinsicMode', name: 'IntrinsicMode'},
  {iri: 'http://purl.org/nemo/gufo#FunctionalComplex', name: 'FunctionalComplex'},
  {iri: 'http://purl.org/nemo/gufo#SituationType', name: 'SituationType'},
  {iri: 'http://purl.org/nemo/gufo#Kind', name: 'Kind'}
] AS row
MATCH (gufo:Ontology {iri: 'http://purl.org/nemo/gufo#'})
MERGE (class:OntologyClass:FoundationalClass {iri: row.iri})
SET class.name = row.name,
    class.label = row.name,
    class.namespace = 'http://purl.org/nemo/gufo#'
MERGE (gufo)-[:DECLARES_CLASS]->(class);

UNWIND [
  {iri: 'http://www.w3.org/2001/XMLSchema#string', name: 'string'},
  {iri: 'http://www.w3.org/2001/XMLSchema#boolean', name: 'boolean'}
] AS row
MERGE (datatype:Datatype {iri: row.iri})
SET datatype.name = row.name,
    datatype.namespace = 'http://www.w3.org/2001/XMLSchema#';

MERGE (topDataProperty:DataProperty:ExternalProperty {iri: 'http://www.w3.org/2002/07/owl#topDataProperty'})
SET topDataProperty.name = 'topDataProperty',
    topDataProperty.label = 'topDataProperty',
    topDataProperty.namespace = 'http://www.w3.org/2002/07/owl#';

UNWIND [
  {iri: 'http://ontoloasx.org/ontoloasx#Context', name: 'Context', supertypeIri: 'http://purl.org/nemo/gufo#Situation', metatypeIri: 'http://purl.org/nemo/gufo#SituationType'},
  {iri: 'http://ontoloasx.org/ontoloasx#Limitation', name: 'Limitation', supertypeIri: 'http://purl.org/nemo/gufo#IntrinsicMode', metatypeIri: 'http://purl.org/nemo/gufo#Kind'},
  {iri: 'http://ontoloasx.org/ontoloasx#Objective', name: 'Objective', supertypeIri: 'http://purl.org/nemo/gufo#IntrinsicMode', metatypeIri: 'http://purl.org/nemo/gufo#Kind'},
  {iri: 'http://ontoloasx.org/ontoloasx#Problem', name: 'Problem', supertypeIri: 'http://purl.org/nemo/gufo#Situation', metatypeIri: 'http://purl.org/nemo/gufo#SituationType'},
  {iri: 'http://ontoloasx.org/ontoloasx#ResearchGap', name: 'ResearchGap', supertypeIri: 'http://purl.org/nemo/gufo#Situation', metatypeIri: 'http://purl.org/nemo/gufo#SituationType'},
  {iri: 'http://ontoloasx.org/ontoloasx#ResearchQuestion', name: 'ResearchQuestion', supertypeIri: 'http://purl.org/nemo/gufo#FunctionalComplex', metatypeIri: 'http://purl.org/nemo/gufo#Kind'},
  {iri: 'http://ontoloasx.org/ontoloasx#Solution', name: 'Solution', supertypeIri: 'http://purl.org/nemo/gufo#FunctionalComplex', metatypeIri: 'http://purl.org/nemo/gufo#Kind'},
  {iri: 'http://ontoloasx.org/ontoloasx#SolutionElement', name: 'SolutionElement', supertypeIri: 'http://purl.org/nemo/gufo#FunctionalComplex', metatypeIri: 'http://purl.org/nemo/gufo#Kind'},
  {iri: 'http://ontoloasx.org/ontoloasx#Study', name: 'Study', supertypeIri: 'http://purl.org/nemo/gufo#FunctionalComplex', metatypeIri: 'http://purl.org/nemo/gufo#Kind'}
] AS row
MATCH (ontoloasx:Ontology {iri: 'http://ontoloasx.org/ontoloasx'}),
      (supertype:OntologyClass {iri: row.supertypeIri}),
      (metatype:OntologyClass {iri: row.metatypeIri})
MERGE (class:OntologyClass:DomainClass {iri: row.iri})
SET class.name = row.name,
    class.label = row.name,
    class.neo4jLabel = row.name,
    class.namespace = 'http://ontoloasx.org/ontoloasx#',
    class.language = 'en'
MERGE (ontoloasx)-[:DECLARES_CLASS]->(class)
MERGE (class)-[:SUBCLASS_OF]->(supertype)
MERGE (class)-[:INSTANTIATES_METATYPE]->(metatype);

UNWIND [
  {iri: 'http://ontoloasx.org/ontoloasx#addresses', name: 'addresses', domainIri: 'http://ontoloasx.org/ontoloasx#Solution', rangeIri: 'http://ontoloasx.org/ontoloasx#Problem', functional: false, inverseFunctional: false, asymmetric: true, irreflexive: true},
  {iri: 'http://ontoloasx.org/ontoloasx#appliesTo', name: 'appliesTo', domainIri: 'http://ontoloasx.org/ontoloasx#Solution', rangeIri: 'http://ontoloasx.org/ontoloasx#Context', functional: false, inverseFunctional: false, asymmetric: true, irreflexive: true},
  {iri: 'http://ontoloasx.org/ontoloasx#hasElement', name: 'hasElement', domainIri: 'http://ontoloasx.org/ontoloasx#Solution', rangeIri: 'http://ontoloasx.org/ontoloasx#SolutionElement', functional: false, inverseFunctional: false, asymmetric: true, irreflexive: true},
  {iri: 'http://ontoloasx.org/ontoloasx#hasLimitation', name: 'hasLimitation', domainIri: 'http://ontoloasx.org/ontoloasx#Solution', rangeIri: 'http://ontoloasx.org/ontoloasx#Limitation', functional: false, inverseFunctional: true, asymmetric: true, irreflexive: true},
  {iri: 'http://ontoloasx.org/ontoloasx#hasObjective', name: 'hasObjective', domainIri: 'http://ontoloasx.org/ontoloasx#Study', rangeIri: 'http://ontoloasx.org/ontoloasx#Objective', functional: false, inverseFunctional: true, asymmetric: true, irreflexive: true},
  {iri: 'http://ontoloasx.org/ontoloasx#identifies', name: 'identifies', domainIri: 'http://ontoloasx.org/ontoloasx#Study', rangeIri: 'http://ontoloasx.org/ontoloasx#ResearchGap', functional: false, inverseFunctional: false, asymmetric: true, irreflexive: true},
  {iri: 'http://ontoloasx.org/ontoloasx#investigates', name: 'investigates', domainIri: 'http://ontoloasx.org/ontoloasx#ResearchQuestion', rangeIri: 'http://ontoloasx.org/ontoloasx#Problem', functional: true, inverseFunctional: false, asymmetric: true, irreflexive: true},
  {iri: 'http://ontoloasx.org/ontoloasx#proposes', name: 'proposes', domainIri: 'http://ontoloasx.org/ontoloasx#Study', rangeIri: 'http://ontoloasx.org/ontoloasx#Solution', functional: false, inverseFunctional: true, asymmetric: true, irreflexive: true}
] AS row
MATCH (ontoloasx:Ontology {iri: 'http://ontoloasx.org/ontoloasx'}),
      (domain:OntologyClass {iri: row.domainIri}),
      (range:OntologyClass {iri: row.rangeIri})
MERGE (property:ObjectProperty {iri: row.iri})
SET property.name = row.name,
    property.label = row.name,
    property.relationshipType = row.name,
    property.namespace = 'http://ontoloasx.org/ontoloasx#',
    property.language = 'en',
    property.functional = row.functional,
    property.inverseFunctional = row.inverseFunctional,
    property.asymmetric = row.asymmetric,
    property.irreflexive = row.irreflexive
MERGE (ontoloasx)-[:DECLARES_OBJECT_PROPERTY]->(property)
MERGE (property)-[:DOMAIN]->(domain)
MERGE (property)-[:RANGE]->(range);

UNWIND [
  {iri: 'http://ontoloasx.org/ontoloasx#addedInReview', name: 'addedInReview', rangeIri: 'http://www.w3.org/2001/XMLSchema#boolean'},
  {iri: 'http://ontoloasx.org/ontoloasx#description', name: 'description', rangeIri: 'http://www.w3.org/2001/XMLSchema#string'},
  {iri: 'http://ontoloasx.org/ontoloasx#isOriginal', name: 'isOriginal', rangeIri: 'http://www.w3.org/2001/XMLSchema#boolean'},
  {iri: 'http://ontoloasx.org/ontoloasx#isQuantitative', name: 'isQuantitative', rangeIri: 'http://www.w3.org/2001/XMLSchema#boolean'},
  {iri: 'http://ontoloasx.org/ontoloasx#number', name: 'number', rangeIri: 'http://www.w3.org/2001/XMLSchema#string'},
  {iri: 'http://ontoloasx.org/ontoloasx#title', name: 'title', rangeIri: 'http://www.w3.org/2001/XMLSchema#string'}
] AS row
MATCH (ontoloasx:Ontology {iri: 'http://ontoloasx.org/ontoloasx'}),
      (datatype:Datatype {iri: row.rangeIri}),
      (topDataProperty:DataProperty {iri: 'http://www.w3.org/2002/07/owl#topDataProperty'})
MERGE (property:DataProperty:DomainDataProperty {iri: row.iri})
SET property.name = row.name,
    property.label = row.name,
    property.propertyKey = row.name,
    property.namespace = 'http://ontoloasx.org/ontoloasx#',
    property.language = 'en',
    property.functional = true
MERGE (ontoloasx)-[:DECLARES_DATA_PROPERTY]->(property)
MERGE (property)-[:SUBPROPERTY_OF]->(topDataProperty)
MERGE (property)-[:RANGE]->(datatype);

UNWIND [
  {id: 'Context_description_exactly_1', ownerIri: 'http://ontoloasx.org/ontoloasx#Context', propertyIri: 'http://ontoloasx.org/ontoloasx#description', datatypeIri: 'http://www.w3.org/2001/XMLSchema#string'},
  {id: 'Limitation_addedInReview_exactly_1', ownerIri: 'http://ontoloasx.org/ontoloasx#Limitation', propertyIri: 'http://ontoloasx.org/ontoloasx#addedInReview', datatypeIri: 'http://www.w3.org/2001/XMLSchema#boolean'},
  {id: 'Limitation_description_exactly_1', ownerIri: 'http://ontoloasx.org/ontoloasx#Limitation', propertyIri: 'http://ontoloasx.org/ontoloasx#description', datatypeIri: 'http://www.w3.org/2001/XMLSchema#string'},
  {id: 'Objective_description_exactly_1', ownerIri: 'http://ontoloasx.org/ontoloasx#Objective', propertyIri: 'http://ontoloasx.org/ontoloasx#description', datatypeIri: 'http://www.w3.org/2001/XMLSchema#string'},
  {id: 'Problem_description_exactly_1', ownerIri: 'http://ontoloasx.org/ontoloasx#Problem', propertyIri: 'http://ontoloasx.org/ontoloasx#description', datatypeIri: 'http://www.w3.org/2001/XMLSchema#string'},
  {id: 'ResearchGap_description_exactly_1', ownerIri: 'http://ontoloasx.org/ontoloasx#ResearchGap', propertyIri: 'http://ontoloasx.org/ontoloasx#description', datatypeIri: 'http://www.w3.org/2001/XMLSchema#string'},
  {id: 'ResearchQuestion_description_exactly_1', ownerIri: 'http://ontoloasx.org/ontoloasx#ResearchQuestion', propertyIri: 'http://ontoloasx.org/ontoloasx#description', datatypeIri: 'http://www.w3.org/2001/XMLSchema#string'},
  {id: 'SolutionElement_description_exactly_1', ownerIri: 'http://ontoloasx.org/ontoloasx#SolutionElement', propertyIri: 'http://ontoloasx.org/ontoloasx#description', datatypeIri: 'http://www.w3.org/2001/XMLSchema#string'},
  {id: 'SolutionElement_isOriginal_exactly_1', ownerIri: 'http://ontoloasx.org/ontoloasx#SolutionElement', propertyIri: 'http://ontoloasx.org/ontoloasx#isOriginal', datatypeIri: 'http://www.w3.org/2001/XMLSchema#boolean'},
  {id: 'SolutionElement_isQuantitative_exactly_1', ownerIri: 'http://ontoloasx.org/ontoloasx#SolutionElement', propertyIri: 'http://ontoloasx.org/ontoloasx#isQuantitative', datatypeIri: 'http://www.w3.org/2001/XMLSchema#boolean'},
  {id: 'SolutionElement_number_exactly_1', ownerIri: 'http://ontoloasx.org/ontoloasx#SolutionElement', propertyIri: 'http://ontoloasx.org/ontoloasx#number', datatypeIri: 'http://www.w3.org/2001/XMLSchema#string'},
  {id: 'Study_title_exactly_1', ownerIri: 'http://ontoloasx.org/ontoloasx#Study', propertyIri: 'http://ontoloasx.org/ontoloasx#title', datatypeIri: 'http://www.w3.org/2001/XMLSchema#string'}
] AS row
MATCH (owner:OntologyClass {iri: row.ownerIri}),
      (property:DataProperty {iri: row.propertyIri}),
      (datatype:Datatype {iri: row.datatypeIri})
MERGE (restriction:OntologyRestriction {id: row.id})
SET restriction.restrictionType = 'qualifiedCardinality',
    restriction.cardinality = 1,
    restriction.valueCategory = 'data'
MERGE (owner)-[:HAS_RESTRICTION]->(restriction)
MERGE (restriction)-[:ON_PROPERTY]->(property)
MERGE (restriction)-[:ON_DATA_RANGE]->(datatype);

UNWIND [
  {id: 'ResearchQuestion_investigates_Problem_exactly_1', ownerIri: 'http://ontoloasx.org/ontoloasx#ResearchQuestion', propertyIri: 'http://ontoloasx.org/ontoloasx#investigates', valueClassIri: 'http://ontoloasx.org/ontoloasx#Problem'}
] AS row
MATCH (owner:OntologyClass {iri: row.ownerIri}),
      (property:ObjectProperty {iri: row.propertyIri}),
      (valueClass:OntologyClass {iri: row.valueClassIri})
MERGE (restriction:OntologyRestriction {id: row.id})
SET restriction.restrictionType = 'qualifiedCardinality',
    restriction.cardinality = 1,
    restriction.valueCategory = 'object'
MERGE (owner)-[:HAS_RESTRICTION]->(restriction)
MERGE (restriction)-[:ON_PROPERTY]->(property)
MERGE (restriction)-[:ON_CLASS]->(valueClass);

UNWIND [
  {id: 'Solution_addresses_some_Problem', ownerIri: 'http://ontoloasx.org/ontoloasx#Solution', propertyIri: 'http://ontoloasx.org/ontoloasx#addresses', valueClassIri: 'http://ontoloasx.org/ontoloasx#Problem'},
  {id: 'Solution_appliesTo_some_Context', ownerIri: 'http://ontoloasx.org/ontoloasx#Solution', propertyIri: 'http://ontoloasx.org/ontoloasx#appliesTo', valueClassIri: 'http://ontoloasx.org/ontoloasx#Context'},
  {id: 'Solution_hasElement_some_SolutionElement', ownerIri: 'http://ontoloasx.org/ontoloasx#Solution', propertyIri: 'http://ontoloasx.org/ontoloasx#hasElement', valueClassIri: 'http://ontoloasx.org/ontoloasx#SolutionElement'},
  {id: 'Study_hasObjective_some_Objective', ownerIri: 'http://ontoloasx.org/ontoloasx#Study', propertyIri: 'http://ontoloasx.org/ontoloasx#hasObjective', valueClassIri: 'http://ontoloasx.org/ontoloasx#Objective'},
  {id: 'Study_proposes_some_Solution', ownerIri: 'http://ontoloasx.org/ontoloasx#Study', propertyIri: 'http://ontoloasx.org/ontoloasx#proposes', valueClassIri: 'http://ontoloasx.org/ontoloasx#Solution'}
] AS row
MATCH (owner:OntologyClass {iri: row.ownerIri}),
      (property:ObjectProperty {iri: row.propertyIri}),
      (valueClass:OntologyClass {iri: row.valueClassIri})
MERGE (restriction:OntologyRestriction {id: row.id})
SET restriction.restrictionType = 'someValuesFrom',
    restriction.minimumCardinality = 1,
    restriction.valueCategory = 'object'
MERGE (owner)-[:HAS_RESTRICTION]->(restriction)
MERGE (restriction)-[:ON_PROPERTY]->(property)
MERGE (restriction)-[:SOME_VALUES_FROM]->(valueClass);

UNWIND [
  {id: 'Solution_hasLimitation_only_Limitation', ownerIri: 'http://ontoloasx.org/ontoloasx#Solution', propertyIri: 'http://ontoloasx.org/ontoloasx#hasLimitation', valueClassIri: 'http://ontoloasx.org/ontoloasx#Limitation'},
  {id: 'Study_identifies_only_ResearchGap', ownerIri: 'http://ontoloasx.org/ontoloasx#Study', propertyIri: 'http://ontoloasx.org/ontoloasx#identifies', valueClassIri: 'http://ontoloasx.org/ontoloasx#ResearchGap'}
] AS row
MATCH (owner:OntologyClass {iri: row.ownerIri}),
      (property:ObjectProperty {iri: row.propertyIri}),
      (valueClass:OntologyClass {iri: row.valueClassIri})
MERGE (restriction:OntologyRestriction {id: row.id})
SET restriction.restrictionType = 'allValuesFrom',
    restriction.valueCategory = 'object'
MERGE (owner)-[:HAS_RESTRICTION]->(restriction)
MERGE (restriction)-[:ON_PROPERTY]->(property)
MERGE (restriction)-[:ALL_VALUES_FROM]->(valueClass);
