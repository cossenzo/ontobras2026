MERGE (Study_15:Study {id:"Study_15"})
SET Study_15.title = "Singing teaching as a therapy for chronic respiratory disease: a randomised controlled trial and qualitative evaluation";
MERGE (Solution_15:Solution {id:"Solution_15"});
MERGE (context_chronic_obstructive_pulmonary_disease:Context {id:"context_chronic_obstructive_pulmonary_disease"})
ON CREATE SET context_chronic_obstructive_pulmonary_disease.description = "chronic obstructive pulmonary disease";
MERGE (singing_workshops:SolutionElement {id:"singing_workshops"})
ON CREATE SET singing_workshops.description = "singing workshops"
ON CREATE SET singing_workshops.isOriginal = true
ON CREATE SET singing_workshops.isQuantitative = false;
MERGE (physical_domain:SolutionElement {id:"physical_domain"})
ON CREATE SET physical_domain.description = "physical domain"
ON CREATE SET physical_domain.isOriginal = true
ON CREATE SET physical_domain.isQuantitative = true
ON CREATE SET physical_domain.number = "7.5SF36";
MERGE (reduced_chronic_obstructive_pulmonary_disease_symptoms:SolutionElement {id:"reduced_chronic_obstructive_pulmonary_disease_symptoms"})
ON CREATE SET reduced_chronic_obstructive_pulmonary_disease_symptoms.description = "reduced chronic obstructive pulmonary disease symptoms"
ON CREATE SET reduced_chronic_obstructive_pulmonary_disease_symptoms.isOriginal = true
ON CREATE SET reduced_chronic_obstructive_pulmonary_disease_symptoms.isQuantitative = false;
MERGE (increased_breath_control:SolutionElement {id:"increased_breath_control"})
ON CREATE SET increased_breath_control.description = "increased breath control"
ON CREATE SET increased_breath_control.isOriginal = true
ON CREATE SET increased_breath_control.isQuantitative = false;
MERGE (increased_function:SolutionElement {id:"increased_function"})
ON CREATE SET increased_function.description = "increased function"
ON CREATE SET increased_function.isOriginal = true
ON CREATE SET increased_function.isQuantitative = false;
MERGE (improved_mood:SolutionElement {id:"improved_mood"})
ON CREATE SET improved_mood.description = "improved mood"
ON CREATE SET improved_mood.isOriginal = true
ON CREATE SET improved_mood.isQuantitative = false;
MERGE (feeling_of_community:SolutionElement {id:"feeling_of_community"})
ON CREATE SET feeling_of_community.description = "feeling of community"
ON CREATE SET feeling_of_community.isOriginal = true
ON CREATE SET feeling_of_community.isQuantitative = false;
MERGE (social_support:SolutionElement {id:"social_support"})
ON CREATE SET social_support.description = "social support"
ON CREATE SET social_support.isOriginal = true
ON CREATE SET social_support.isQuantitative = false;
MERGE (sense_of_achievement:SolutionElement {id:"sense_of_achievement"})
ON CREATE SET sense_of_achievement.description = "sense of achievement"
ON CREATE SET sense_of_achievement.isOriginal = true
ON CREATE SET sense_of_achievement.isQuantitative = false;
MERGE (limitation_15_1:Limitation {id:"limitation_15_1"})
SET limitation_15_1.description = "group similar at baseline"
SET limitation_15_1.addedInReview = false;
MERGE (limitation_15_2:Limitation {id:"limitation_15_2"})
SET limitation_15_2.description = "small numbers"
SET limitation_15_2.addedInReview = false;
MERGE (limitation_15_3:Limitation {id:"limitation_15_3"})
SET limitation_15_3.description = "single blind"
SET limitation_15_3.addedInReview = false;
MERGE (limitation_15_4:Limitation {id:"limitation_15_4"})
SET limitation_15_4.description = "no power calculation"
SET limitation_15_4.addedInReview = false;
MATCH (o1:Study {id: "Study_15"})
MATCH (o2:Solution {id: "Solution_15"})
MERGE (o1)-[:PROPOSES]->(o2);
MATCH (o1:Solution {id: "Solution_15"})
MATCH (o2:Context {id: "context_chronic_obstructive_pulmonary_disease"})
MERGE (o1)-[:APPLIES_TO]->(o2);
MATCH (o1:Solution {id: "Solution_15"})
MATCH (o2:SolutionElement {id: "singing_workshops"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_15"})
MATCH (o2:SolutionElement {id: "physical_domain"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_15"})
MATCH (o2:SolutionElement {id: "reduced_chronic_obstructive_pulmonary_disease_symptoms"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_15"})
MATCH (o2:SolutionElement {id: "increased_breath_control"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_15"})
MATCH (o2:SolutionElement {id: "increased_function"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_15"})
MATCH (o2:SolutionElement {id: "improved_mood"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_15"})
MATCH (o2:SolutionElement {id: "feeling_of_community"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_15"})
MATCH (o2:SolutionElement {id: "social_support"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_15"})
MATCH (o2:SolutionElement {id: "sense_of_achievement"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_15"})
MATCH (o2:Limitation {id: "limitation_15_1"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MATCH (o1:Solution {id: "Solution_15"})
MATCH (o2:Limitation {id: "limitation_15_2"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MATCH (o1:Solution {id: "Solution_15"})
MATCH (o2:Limitation {id: "limitation_15_3"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MATCH (o1:Solution {id: "Solution_15"})
MATCH (o2:Limitation {id: "limitation_15_4"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MERGE (Study_16:Study {id:"Study_16"})
SET Study_16.title = "Singing classes for chronic obstructive pulmonary disease: a randomized controlled trial";
MERGE (Solution_16:Solution {id:"Solution_16"});
MERGE (context_chronic_obstructive_pulmonary_disease:Context {id:"context_chronic_obstructive_pulmonary_disease"})
ON CREATE SET context_chronic_obstructive_pulmonary_disease.description = "chronic obstructive pulmonary disease";
MERGE (group_singing:SolutionElement {id:"group_singing"})
ON CREATE SET group_singing.description = "group singing"
ON CREATE SET group_singing.isOriginal = true
ON CREATE SET group_singing.isQuantitative = false;
MERGE (physical_domain:SolutionElement {id:"physical_domain"})
ON CREATE SET physical_domain.description = "physical domain"
ON CREATE SET physical_domain.isOriginal = true
ON CREATE SET physical_domain.isQuantitative = true
ON CREATE SET physical_domain.number = "12.9SF-36";
MERGE (increased_breath_control:SolutionElement {id:"increased_breath_control"})
ON CREATE SET increased_breath_control.description = "increased breath control"
ON CREATE SET increased_breath_control.isOriginal = true
ON CREATE SET increased_breath_control.isQuantitative = false;
MERGE (improved_mood:SolutionElement {id:"improved_mood"})
ON CREATE SET improved_mood.description = "improved mood"
ON CREATE SET improved_mood.isOriginal = true
ON CREATE SET improved_mood.isQuantitative = false;
MERGE (sense_of_community:SolutionElement {id:"sense_of_community"})
ON CREATE SET sense_of_community.description = "sense of community"
ON CREATE SET sense_of_community.isOriginal = true
ON CREATE SET sense_of_community.isQuantitative = false;
MERGE (social_support:SolutionElement {id:"social_support"})
ON CREATE SET social_support.description = "social support"
ON CREATE SET social_support.isOriginal = true
ON CREATE SET social_support.isQuantitative = false;
MERGE (sense_of_achievement:SolutionElement {id:"sense_of_achievement"})
ON CREATE SET sense_of_achievement.description = "sense of achievement"
ON CREATE SET sense_of_achievement.isOriginal = true
ON CREATE SET sense_of_achievement.isQuantitative = false;
MERGE (efficacy:SolutionElement {id:"efficacy"})
ON CREATE SET efficacy.description = "efficacy"
ON CREATE SET efficacy.isOriginal = true
ON CREATE SET efficacy.isQuantitative = false;
MERGE (limitation_16_1:Limitation {id:"limitation_16_1"})
SET limitation_16_1.description = "group similar at baseline"
SET limitation_16_1.addedInReview = false;
MERGE (limitation_16_2:Limitation {id:"limitation_16_2"})
SET limitation_16_2.description = "single blind"
SET limitation_16_2.addedInReview = false;
MERGE (limitation_16_3:Limitation {id:"limitation_16_3"})
SET limitation_16_3.description = "researcher/participant relationship not considered"
SET limitation_16_3.addedInReview = false;
MERGE (limitation_16_4:Limitation {id:"limitation_16_4"})
SET limitation_16_4.description = "qualitative data analysis not detailed"
SET limitation_16_4.addedInReview = false;
MATCH (o1:Study {id: "Study_16"})
MATCH (o2:Solution {id: "Solution_16"})
MERGE (o1)-[:PROPOSES]->(o2);
MATCH (o1:Solution {id: "Solution_16"})
MATCH (o2:Context {id: "context_chronic_obstructive_pulmonary_disease"})
MERGE (o1)-[:APPLIES_TO]->(o2);
MATCH (o1:Solution {id: "Solution_16"})
MATCH (o2:SolutionElement {id: "group_singing"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_16"})
MATCH (o2:SolutionElement {id: "physical_domain"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_16"})
MATCH (o2:SolutionElement {id: "increased_breath_control"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_16"})
MATCH (o2:SolutionElement {id: "improved_mood"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_16"})
MATCH (o2:SolutionElement {id: "sense_of_community"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_16"})
MATCH (o2:SolutionElement {id: "social_support"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_16"})
MATCH (o2:SolutionElement {id: "sense_of_achievement"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_16"})
MATCH (o2:SolutionElement {id: "efficacy"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_16"})
MATCH (o2:Limitation {id: "limitation_16_1"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MATCH (o1:Solution {id: "Solution_16"})
MATCH (o2:Limitation {id: "limitation_16_2"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MATCH (o1:Solution {id: "Solution_16"})
MATCH (o2:Limitation {id: "limitation_16_3"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MATCH (o1:Solution {id: "Solution_16"})
MATCH (o2:Limitation {id: "limitation_16_4"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MERGE (Study_17:Study {id:"Study_17"})
SET Study_17.title = "Effects of music-based therapy on distress following knee arthroplasty";
MERGE (Solution_17:Solution {id:"Solution_17"});
MERGE (context_total_knee_arthroscopy:Context {id:"context_total_knee_arthroscopy"})
ON CREATE SET context_total_knee_arthroscopy.description = "total knee arthroscopy";
MERGE (choral_singing:SolutionElement {id:"choral_singing"})
ON CREATE SET choral_singing.description = "choral singing"
ON CREATE SET choral_singing.isOriginal = true
ON CREATE SET choral_singing.isQuantitative = false;
MERGE (hospital_anxiety_and_depression_scale:SolutionElement {id:"hospital_anxiety_and_depression_scale"})
ON CREATE SET hospital_anxiety_and_depression_scale.description = "hospital anxiety and depression scale"
ON CREATE SET hospital_anxiety_and_depression_scale.isOriginal = true
ON CREATE SET hospital_anxiety_and_depression_scale.isQuantitative = true
ON CREATE SET hospital_anxiety_and_depression_scale.number = "mean not available";
MERGE (limitation_17_1:Limitation {id:"limitation_17_1"})
SET limitation_17_1.description = "small numbers"
SET limitation_17_1.addedInReview = false;
MERGE (limitation_17_2:Limitation {id:"limitation_17_2"})
SET limitation_17_2.description = "homogeneous group"
SET limitation_17_2.addedInReview = false;
MATCH (o1:Study {id: "Study_17"})
MATCH (o2:Solution {id: "Solution_17"})
MERGE (o1)-[:PROPOSES]->(o2);
MATCH (o1:Solution {id: "Solution_17"})
MATCH (o2:Context {id: "context_total_knee_arthroscopy"})
MERGE (o1)-[:APPLIES_TO]->(o2);
MATCH (o1:Solution {id: "Solution_17"})
MATCH (o2:SolutionElement {id: "choral_singing"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_17"})
MATCH (o2:SolutionElement {id: "hospital_anxiety_and_depression_scale"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_17"})
MATCH (o2:Limitation {id: "limitation_17_1"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MATCH (o1:Solution {id: "Solution_17"})
MATCH (o2:Limitation {id: "limitation_17_2"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MERGE (Study_18:Study {id:"Study_18"})
SET Study_18.title = "Effects of singing classes on pulmonary function and quality of life of COPD patients";
MERGE (Solution_18:Solution {id:"Solution_18"});
MERGE (context_chronic_obstructive_pulmonary_disease:Context {id:"context_chronic_obstructive_pulmonary_disease"})
ON CREATE SET context_chronic_obstructive_pulmonary_disease.description = "chronic obstructive pulmonary disease";
MERGE (folk_songs:SolutionElement {id:"folk_songs"})
ON CREATE SET folk_songs.description = "folk songs"
ON CREATE SET folk_songs.isOriginal = true
ON CREATE SET folk_songs.isQuantitative = false;
MERGE (respiratory_exercise:SolutionElement {id:"respiratory_exercise"})
ON CREATE SET respiratory_exercise.description = "respiratory exercise"
ON CREATE SET respiratory_exercise.isOriginal = true
ON CREATE SET respiratory_exercise.isQuantitative = false;
MERGE (respiratory_exercise:SolutionElement {id:"respiratory_exercise"})
ON CREATE SET respiratory_exercise.description = "respiratory exercise"
ON CREATE SET respiratory_exercise.isOriginal = true
ON CREATE SET respiratory_exercise.isQuantitative = false;
MERGE (limitation_18_1:Limitation {id:"limitation_18_1"})
SET limitation_18_1.description = "group similar at baseline"
SET limitation_18_1.addedInReview = false;
MERGE (limitation_18_2:Limitation {id:"limitation_18_2"})
SET limitation_18_2.description = "small numbers"
SET limitation_18_2.addedInReview = false;
MERGE (limitation_18_3:Limitation {id:"limitation_18_3"})
SET limitation_18_3.description = "blinding not stated"
SET limitation_18_3.addedInReview = false;
MATCH (o1:Study {id: "Study_18"})
MATCH (o2:Solution {id: "Solution_18"})
MERGE (o1)-[:PROPOSES]->(o2);
MATCH (o1:Solution {id: "Solution_18"})
MATCH (o2:Context {id: "context_chronic_obstructive_pulmonary_disease"})
MERGE (o1)-[:APPLIES_TO]->(o2);
MATCH (o1:Solution {id: "Solution_18"})
MATCH (o2:SolutionElement {id: "folk_songs"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_18"})
MATCH (o2:SolutionElement {id: "respiratory_exercise"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_18"})
MATCH (o2:SolutionElement {id: "respiratory_exercise"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_18"})
MATCH (o2:Limitation {id: "limitation_18_1"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MATCH (o1:Solution {id: "Solution_18"})
MATCH (o2:Limitation {id: "limitation_18_2"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MATCH (o1:Solution {id: "Solution_18"})
MATCH (o2:Limitation {id: "limitation_18_3"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MERGE (Study_19:Study {id:"Study_19"})
SET Study_19.title = "The impact of group singing on mood, coping and perceived pain in chronic pain patients attending a multidisciplinary pain clinic";
MERGE (Solution_19:Solution {id:"Solution_19"});
MERGE (context_chronic_pain:Context {id:"context_chronic_pain"})
ON CREATE SET context_chronic_pain.description = "chronic pain";
MERGE (lively_tempo:SolutionElement {id:"lively_tempo"})
ON CREATE SET lively_tempo.description = "lively tempo"
ON CREATE SET lively_tempo.isOriginal = true
ON CREATE SET lively_tempo.isQuantitative = false;
MERGE (limitation_19_1:Limitation {id:"limitation_19_1"})
SET limitation_19_1.description = "no difference between the groups"
SET limitation_19_1.addedInReview = false;
MERGE (limitation_19_2:Limitation {id:"limitation_19_2"})
SET limitation_19_2.description = "blinding not stated"
SET limitation_19_2.addedInReview = false;
MATCH (o1:Study {id: "Study_19"})
MATCH (o2:Solution {id: "Solution_19"})
MERGE (o1)-[:PROPOSES]->(o2);
MATCH (o1:Solution {id: "Solution_19"})
MATCH (o2:Context {id: "context_chronic_pain"})
MERGE (o1)-[:APPLIES_TO]->(o2);
MATCH (o1:Solution {id: "Solution_19"})
MATCH (o2:SolutionElement {id: "lively_tempo"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_19"})
MATCH (o2:Limitation {id: "limitation_19_1"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MATCH (o1:Solution {id: "Solution_19"})
MATCH (o2:Limitation {id: "limitation_19_2"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MERGE (Study_20:Study {id:"Study_20"})
SET Study_20.title = "Effect of singing on respiratory function, voice, and mood after quadriplegia: a randomized controlled trial";
MERGE (Solution_20:Solution {id:"Solution_20"});
MERGE (context_quadriplegics:Context {id:"context_quadriplegics"})
ON CREATE SET context_quadriplegics.description = "quadriplegics";
MERGE (group_singing:SolutionElement {id:"group_singing"})
ON CREATE SET group_singing.description = "group singing"
ON CREATE SET group_singing.isOriginal = true
ON CREATE SET group_singing.isQuantitative = false;
MERGE (limitation_20_1:Limitation {id:"limitation_20_1"})
SET limitation_20_1.description = "group similar at baseline"
SET limitation_20_1.addedInReview = false;
MERGE (limitation_20_2:Limitation {id:"limitation_20_2"})
SET limitation_20_2.description = "single blind"
SET limitation_20_2.addedInReview = false;
MATCH (o1:Study {id: "Study_20"})
MATCH (o2:Solution {id: "Solution_20"})
MERGE (o1)-[:PROPOSES]->(o2);
MATCH (o1:Solution {id: "Solution_20"})
MATCH (o2:Context {id: "context_quadriplegics"})
MERGE (o1)-[:APPLIES_TO]->(o2);
MATCH (o1:Solution {id: "Solution_20"})
MATCH (o2:SolutionElement {id: "group_singing"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_20"})
MATCH (o2:Limitation {id: "limitation_20_1"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MATCH (o1:Solution {id: "Solution_20"})
MATCH (o2:Limitation {id: "limitation_20_2"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MERGE (Study_21:Study {id:"Study_21"})
SET Study_21.title = "Therapeutic singing as an adjunct for pulmonary rehabilitation participants with COPD: Outcomes of a Feasibility Study";
MERGE (Solution_21:Solution {id:"Solution_21"});
MERGE (context_chronic_obstructive_pulmonary_disease_advanced:Context {id:"context_chronic_obstructive_pulmonary_disease_advanced"})
ON CREATE SET context_chronic_obstructive_pulmonary_disease_advanced.description = "chronic obstructive pulmonary disease advanced";
MERGE (group_singing:SolutionElement {id:"group_singing"})
ON CREATE SET group_singing.description = "group singing"
ON CREATE SET group_singing.isOriginal = true
ON CREATE SET group_singing.isQuantitative = false;
MERGE (limitation_21_1:Limitation {id:"limitation_21_1"})
SET limitation_21_1.description = "no improvements in singing compared to usual care"
SET limitation_21_1.addedInReview = false;
MERGE (limitation_21_2:Limitation {id:"limitation_21_2"})
SET limitation_21_2.description = "group similar at baseline"
SET limitation_21_2.addedInReview = false;
MERGE (limitation_21_3:Limitation {id:"limitation_21_3"})
SET limitation_21_3.description = "small numbers"
SET limitation_21_3.addedInReview = false;
MERGE (limitation_21_4:Limitation {id:"limitation_21_4"})
SET limitation_21_4.description = "self-selected groups"
SET limitation_21_4.addedInReview = false;
MATCH (o1:Study {id: "Study_21"})
MATCH (o2:Solution {id: "Solution_21"})
MERGE (o1)-[:PROPOSES]->(o2);
MATCH (o1:Solution {id: "Solution_21"})
MATCH (o2:Context {id: "context_chronic_obstructive_pulmonary_disease_advanced"})
MERGE (o1)-[:APPLIES_TO]->(o2);
MATCH (o1:Solution {id: "Solution_21"})
MATCH (o2:SolutionElement {id: "group_singing"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_21"})
MATCH (o2:Limitation {id: "limitation_21_1"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MATCH (o1:Solution {id: "Solution_21"})
MATCH (o2:Limitation {id: "limitation_21_2"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MATCH (o1:Solution {id: "Solution_21"})
MATCH (o2:Limitation {id: "limitation_21_3"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MATCH (o1:Solution {id: "Solution_21"})
MATCH (o2:Limitation {id: "limitation_21_4"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MERGE (Study_22:Study {id:"Study_22"})
SET Study_22.title = "A pilot investigation of quality of life and lung function following choral singing in cancer survivor sand their carers";
MERGE (Solution_22:Solution {id:"Solution_22"});
MERGE (context_cancer:Context {id:"context_cancer"})
ON CREATE SET context_cancer.description = "cancer";
MERGE (intervention_not_available:SolutionElement {id:"intervention_not_available"})
ON CREATE SET intervention_not_available.description = "intervention not available"
ON CREATE SET intervention_not_available.isOriginal = true
ON CREATE SET intervention_not_available.isQuantitative = false;
MERGE (health_related_quality_of_life:SolutionElement {id:"health_related_quality_of_life"})
ON CREATE SET health_related_quality_of_life.description = "health related quality of life"
ON CREATE SET health_related_quality_of_life.isOriginal = true
ON CREATE SET health_related_quality_of_life.isQuantitative = true
ON CREATE SET health_related_quality_of_life.number = "+9.1";
MERGE (improved_mood:SolutionElement {id:"improved_mood"})
ON CREATE SET improved_mood.description = "improved mood"
ON CREATE SET improved_mood.isOriginal = true
ON CREATE SET improved_mood.isQuantitative = false;
MERGE (increased_confidence:SolutionElement {id:"increased_confidence"})
ON CREATE SET increased_confidence.description = "increased confidence"
ON CREATE SET increased_confidence.isOriginal = true
ON CREATE SET increased_confidence.isQuantitative = false;
MERGE (increased_self_esteem:SolutionElement {id:"increased_self_esteem"})
ON CREATE SET increased_self_esteem.description = "increased self-esteem"
ON CREATE SET increased_self_esteem.isOriginal = true
ON CREATE SET increased_self_esteem.isQuantitative = false;
MERGE (sense_of_belonging:SolutionElement {id:"sense_of_belonging"})
ON CREATE SET sense_of_belonging.description = "sense of belonging"
ON CREATE SET sense_of_belonging.isOriginal = true
ON CREATE SET sense_of_belonging.isQuantitative = false;
MERGE (opportunity_to_share_mutual_experiences:SolutionElement {id:"opportunity_to_share_mutual_experiences"})
ON CREATE SET opportunity_to_share_mutual_experiences.description = "opportunity to share mutual experiences"
ON CREATE SET opportunity_to_share_mutual_experiences.isOriginal = true
ON CREATE SET opportunity_to_share_mutual_experiences.isQuantitative = false;
MERGE (working_towards_a_goal:SolutionElement {id:"working_towards_a_goal"})
ON CREATE SET working_towards_a_goal.description = "working towards a goal"
ON CREATE SET working_towards_a_goal.isOriginal = true
ON CREATE SET working_towards_a_goal.isQuantitative = false;
MERGE (limitation_22_1:Limitation {id:"limitation_22_1"})
SET limitation_22_1.description = "no control"
SET limitation_22_1.addedInReview = false;
MERGE (limitation_22_2:Limitation {id:"limitation_22_2"})
SET limitation_22_2.description = "small numbers"
SET limitation_22_2.addedInReview = false;
MERGE (limitation_22_3:Limitation {id:"limitation_22_3"})
SET limitation_22_3.description = "researcher/participant relationship not considered"
SET limitation_22_3.addedInReview = false;
MERGE (limitation_22_4:Limitation {id:"limitation_22_4"})
SET limitation_22_4.description = "qualitative data analysis not detailed"
SET limitation_22_4.addedInReview = false;
MATCH (o1:Study {id: "Study_22"})
MATCH (o2:Solution {id: "Solution_22"})
MERGE (o1)-[:PROPOSES]->(o2);
MATCH (o1:Solution {id: "Solution_22"})
MATCH (o2:Context {id: "context_cancer"})
MERGE (o1)-[:APPLIES_TO]->(o2);
MATCH (o1:Solution {id: "Solution_22"})
MATCH (o2:SolutionElement {id: "intervention_not_available"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_22"})
MATCH (o2:SolutionElement {id: "health_related_quality_of_life"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_22"})
MATCH (o2:SolutionElement {id: "improved_mood"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_22"})
MATCH (o2:SolutionElement {id: "increased_confidence"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_22"})
MATCH (o2:SolutionElement {id: "increased_self_esteem"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_22"})
MATCH (o2:SolutionElement {id: "sense_of_belonging"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_22"})
MATCH (o2:SolutionElement {id: "opportunity_to_share_mutual_experiences"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_22"})
MATCH (o2:SolutionElement {id: "working_towards_a_goal"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_22"})
MATCH (o2:Limitation {id: "limitation_22_1"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MATCH (o1:Solution {id: "Solution_22"})
MATCH (o2:Limitation {id: "limitation_22_2"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MATCH (o1:Solution {id: "Solution_22"})
MATCH (o2:Limitation {id: "limitation_22_3"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MATCH (o1:Solution {id: "Solution_22"})
MATCH (o2:Limitation {id: "limitation_22_4"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MERGE (Study_23:Study {id:"Study_23"})
SET Study_23.title = "A UK feasibility study on the value of singing for people with Chronic Obstructive Pulmonary Disease (COPD)";
MERGE (Solution_23:Solution {id:"Solution_23"});
MERGE (context_chronic_obstructive_pulmonary_disease:Context {id:"context_chronic_obstructive_pulmonary_disease"})
ON CREATE SET context_chronic_obstructive_pulmonary_disease.description = "chronic obstructive pulmonary disease";
MERGE (intervention_not_available:SolutionElement {id:"intervention_not_available"})
ON CREATE SET intervention_not_available.description = "intervention not available"
ON CREATE SET intervention_not_available.isOriginal = true
ON CREATE SET intervention_not_available.isQuantitative = false;
MERGE (health_related_quality_of_life:SolutionElement {id:"health_related_quality_of_life"})
ON CREATE SET health_related_quality_of_life.description = "health related quality of life"
ON CREATE SET health_related_quality_of_life.isOriginal = true
ON CREATE SET health_related_quality_of_life.isQuantitative = true
ON CREATE SET health_related_quality_of_life.number = "+3.3";
MERGE (limitation_23_1:Limitation {id:"limitation_23_1"})
SET limitation_23_1.description = "no control"
SET limitation_23_1.addedInReview = false;
MATCH (o1:Study {id: "Study_23"})
MATCH (o2:Solution {id: "Solution_23"})
MERGE (o1)-[:PROPOSES]->(o2);
MATCH (o1:Solution {id: "Solution_23"})
MATCH (o2:Context {id: "context_chronic_obstructive_pulmonary_disease"})
MERGE (o1)-[:APPLIES_TO]->(o2);
MATCH (o1:Solution {id: "Solution_23"})
MATCH (o2:SolutionElement {id: "intervention_not_available"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_23"})
MATCH (o2:SolutionElement {id: "health_related_quality_of_life"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_23"})
MATCH (o2:Limitation {id: "limitation_23_1"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MERGE (Study_24:Study {id:"Study_24"})
SET Study_24.title = "‘Stroke a Chord’: the effect of singing in a community choir on mood and social engagement for people living with aphasia following a stroke";
MERGE (Solution_24:Solution {id:"Solution_24"});
MERGE (context_stroke:Context {id:"context_stroke"})
ON CREATE SET context_stroke.description = "stroke";
MERGE (community_choir:SolutionElement {id:"community_choir"})
ON CREATE SET community_choir.description = "community choir"
ON CREATE SET community_choir.isOriginal = true
ON CREATE SET community_choir.isQuantitative = false;
MERGE (mood:SolutionElement {id:"mood"})
ON CREATE SET mood.description = "mood"
ON CREATE SET mood.isOriginal = true
ON CREATE SET mood.isQuantitative = true
ON CREATE SET mood.number = "-12 at 12 weeks -1.9 at 20 weeks";
MERGE (increased_confidence:SolutionElement {id:"increased_confidence"})
ON CREATE SET increased_confidence.description = "increased confidence"
ON CREATE SET increased_confidence.isOriginal = true
ON CREATE SET increased_confidence.isQuantitative = false;
MERGE (improved_mood:SolutionElement {id:"improved_mood"})
ON CREATE SET improved_mood.description = "improved mood"
ON CREATE SET improved_mood.isOriginal = true
ON CREATE SET improved_mood.isQuantitative = false;
MERGE (social_connection:SolutionElement {id:"social_connection"})
ON CREATE SET social_connection.description = "social connection"
ON CREATE SET social_connection.isOriginal = true
ON CREATE SET social_connection.isQuantitative = false;
MERGE (sense_of_belonging:SolutionElement {id:"sense_of_belonging"})
ON CREATE SET sense_of_belonging.description = "sense of belonging"
ON CREATE SET sense_of_belonging.isOriginal = true
ON CREATE SET sense_of_belonging.isQuantitative = false;
MERGE (enjoyment:SolutionElement {id:"enjoyment"})
ON CREATE SET enjoyment.description = "enjoyment"
ON CREATE SET enjoyment.isOriginal = true
ON CREATE SET enjoyment.isQuantitative = false;
MERGE (improved_communication:SolutionElement {id:"improved_communication"})
ON CREATE SET improved_communication.description = "improved communication"
ON CREATE SET improved_communication.isOriginal = true
ON CREATE SET improved_communication.isQuantitative = false;
MERGE (limitation_24_1:Limitation {id:"limitation_24_1"})
SET limitation_24_1.description = "no control"
SET limitation_24_1.addedInReview = false;
MERGE (limitation_24_2:Limitation {id:"limitation_24_2"})
SET limitation_24_2.description = "small numbers"
SET limitation_24_2.addedInReview = false;
MERGE (limitation_24_3:Limitation {id:"limitation_24_3"})
SET limitation_24_3.description = "no statistical analysis"
SET limitation_24_3.addedInReview = false;
MATCH (o1:Study {id: "Study_24"})
MATCH (o2:Solution {id: "Solution_24"})
MERGE (o1)-[:PROPOSES]->(o2);
MATCH (o1:Solution {id: "Solution_24"})
MATCH (o2:Context {id: "context_stroke"})
MERGE (o1)-[:APPLIES_TO]->(o2);
MATCH (o1:Solution {id: "Solution_24"})
MATCH (o2:SolutionElement {id: "community_choir"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_24"})
MATCH (o2:SolutionElement {id: "mood"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_24"})
MATCH (o2:SolutionElement {id: "increased_confidence"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_24"})
MATCH (o2:SolutionElement {id: "improved_mood"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_24"})
MATCH (o2:SolutionElement {id: "social_connection"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_24"})
MATCH (o2:SolutionElement {id: "sense_of_belonging"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_24"})
MATCH (o2:SolutionElement {id: "enjoyment"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_24"})
MATCH (o2:SolutionElement {id: "improved_communication"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_24"})
MATCH (o2:Limitation {id: "limitation_24_1"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MATCH (o1:Solution {id: "Solution_24"})
MATCH (o2:Limitation {id: "limitation_24_2"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MATCH (o1:Solution {id: "Solution_24"})
MATCH (o2:Limitation {id: "limitation_24_3"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MERGE (Study_25:Study {id:"Study_25"})
SET Study_25.title = "The effect of group music therapy on mood, speech, and singing in individuals with Parkinson’s disease—a feasibility study";
MERGE (Solution_25:Solution {id:"Solution_25"});
MERGE (context_parkinson_s_disease:Context {id:"context_parkinson_s_disease"})
ON CREATE SET context_parkinson_s_disease.description = "parkinson's disease";
MERGE (group_singing:SolutionElement {id:"group_singing"})
ON CREATE SET group_singing.description = "group singing"
ON CREATE SET group_singing.isOriginal = true
ON CREATE SET group_singing.isQuantitative = false;
MERGE (limitation_25_1:Limitation {id:"limitation_25_1"})
SET limitation_25_1.description = "no changes"
SET limitation_25_1.addedInReview = false;
MERGE (limitation_25_2:Limitation {id:"limitation_25_2"})
SET limitation_25_2.description = "no control"
SET limitation_25_2.addedInReview = false;
MERGE (limitation_25_3:Limitation {id:"limitation_25_3"})
SET limitation_25_3.description = "small numbers"
SET limitation_25_3.addedInReview = false;
MATCH (o1:Study {id: "Study_25"})
MATCH (o2:Solution {id: "Solution_25"})
MERGE (o1)-[:PROPOSES]->(o2);
MATCH (o1:Solution {id: "Solution_25"})
MATCH (o2:Context {id: "context_parkinson_s_disease"})
MERGE (o1)-[:APPLIES_TO]->(o2);
MATCH (o1:Solution {id: "Solution_25"})
MATCH (o2:SolutionElement {id: "group_singing"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_25"})
MATCH (o2:Limitation {id: "limitation_25_1"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MATCH (o1:Solution {id: "Solution_25"})
MATCH (o2:Limitation {id: "limitation_25_2"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MATCH (o1:Solution {id: "Solution_25"})
MATCH (o2:Limitation {id: "limitation_25_3"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MERGE (Study_26:Study {id:"Study_26"})
SET Study_26.title = "Singing in groups for Parkinson’s disease (SING-PD): a pilot study of group singing therapy for PD-related voice speech disorders";
MERGE (Solution_26:Solution {id:"Solution_26"});
MERGE (context_parkinson_s_disease:Context {id:"context_parkinson_s_disease"})
ON CREATE SET context_parkinson_s_disease.description = "parkinson's disease";
MERGE (intervention_not_available:SolutionElement {id:"intervention_not_available"})
ON CREATE SET intervention_not_available.description = "intervention not available"
ON CREATE SET intervention_not_available.isOriginal = true
ON CREATE SET intervention_not_available.isQuantitative = false;
MERGE (limitation_26_1:Limitation {id:"limitation_26_1"})
SET limitation_26_1.description = "no changes"
SET limitation_26_1.addedInReview = false;
MERGE (limitation_26_2:Limitation {id:"limitation_26_2"})
SET limitation_26_2.description = "no control"
SET limitation_26_2.addedInReview = false;
MATCH (o1:Study {id: "Study_26"})
MATCH (o2:Solution {id: "Solution_26"})
MERGE (o1)-[:PROPOSES]->(o2);
MATCH (o1:Solution {id: "Solution_26"})
MATCH (o2:Context {id: "context_parkinson_s_disease"})
MERGE (o1)-[:APPLIES_TO]->(o2);
MATCH (o1:Solution {id: "Solution_26"})
MATCH (o2:SolutionElement {id: "intervention_not_available"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_26"})
MATCH (o2:Limitation {id: "limitation_26_1"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MATCH (o1:Solution {id: "Solution_26"})
MATCH (o2:Limitation {id: "limitation_26_2"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MERGE (Study_27:Study {id:"Study_27"})
SET Study_27.title = "Does a ‘Singing Together Group’ improve the quality of life of people with a dementia and their carers? A pilot evaluation study";
MERGE (Solution_27:Solution {id:"Solution_27"});
MERGE (context_dementia:Context {id:"context_dementia"})
ON CREATE SET context_dementia.description = "dementia";
MERGE (group_singing:SolutionElement {id:"group_singing"})
ON CREATE SET group_singing.description = "group singing"
ON CREATE SET group_singing.isOriginal = true
ON CREATE SET group_singing.isQuantitative = false;
MERGE (fulfilment:SolutionElement {id:"fulfilment"})
ON CREATE SET fulfilment.description = "fulfilment"
ON CREATE SET fulfilment.isOriginal = true
ON CREATE SET fulfilment.isQuantitative = false;
MERGE (enjoyment:SolutionElement {id:"enjoyment"})
ON CREATE SET enjoyment.description = "enjoyment"
ON CREATE SET enjoyment.isOriginal = true
ON CREATE SET enjoyment.isQuantitative = false;
MERGE (opportunity_to_do_something_new:SolutionElement {id:"opportunity_to_do_something_new"})
ON CREATE SET opportunity_to_do_something_new.description = "opportunity to do something new"
ON CREATE SET opportunity_to_do_something_new.isOriginal = true
ON CREATE SET opportunity_to_do_something_new.isQuantitative = false;
MERGE (oppportunity_to_learn:SolutionElement {id:"oppportunity_to_learn"})
ON CREATE SET oppportunity_to_learn.description = "oppportunity to learn"
ON CREATE SET oppportunity_to_learn.isOriginal = true
ON CREATE SET oppportunity_to_learn.isQuantitative = false;
MERGE (social_inclusion:SolutionElement {id:"social_inclusion"})
ON CREATE SET social_inclusion.description = "social inclusion"
ON CREATE SET social_inclusion.isOriginal = true
ON CREATE SET social_inclusion.isQuantitative = false;
MERGE (enhanced_emotions:SolutionElement {id:"enhanced_emotions"})
ON CREATE SET enhanced_emotions.description = "enhanced emotions"
ON CREATE SET enhanced_emotions.isOriginal = true
ON CREATE SET enhanced_emotions.isQuantitative = false;
MERGE (limitation_27_1:Limitation {id:"limitation_27_1"})
SET limitation_27_1.description = "no control"
SET limitation_27_1.addedInReview = false;
MERGE (limitation_27_2:Limitation {id:"limitation_27_2"})
SET limitation_27_2.description = "small numbers"
SET limitation_27_2.addedInReview = false;
MERGE (limitation_27_3:Limitation {id:"limitation_27_3"})
SET limitation_27_3.description = "no changes"
SET limitation_27_3.addedInReview = false;
MERGE (limitation_27_4:Limitation {id:"limitation_27_4"})
SET limitation_27_4.description = "researcher/participant relationship not considered"
SET limitation_27_4.addedInReview = false;
MATCH (o1:Study {id: "Study_27"})
MATCH (o2:Solution {id: "Solution_27"})
MERGE (o1)-[:PROPOSES]->(o2);
MATCH (o1:Solution {id: "Solution_27"})
MATCH (o2:Context {id: "context_dementia"})
MERGE (o1)-[:APPLIES_TO]->(o2);
MATCH (o1:Solution {id: "Solution_27"})
MATCH (o2:SolutionElement {id: "group_singing"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_27"})
MATCH (o2:SolutionElement {id: "fulfilment"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_27"})
MATCH (o2:SolutionElement {id: "enjoyment"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_27"})
MATCH (o2:SolutionElement {id: "opportunity_to_do_something_new"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_27"})
MATCH (o2:SolutionElement {id: "oppportunity_to_learn"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_27"})
MATCH (o2:SolutionElement {id: "social_inclusion"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_27"})
MATCH (o2:SolutionElement {id: "enhanced_emotions"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_27"})
MATCH (o2:Limitation {id: "limitation_27_1"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MATCH (o1:Solution {id: "Solution_27"})
MATCH (o2:Limitation {id: "limitation_27_2"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MATCH (o1:Solution {id: "Solution_27"})
MATCH (o2:Limitation {id: "limitation_27_3"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MATCH (o1:Solution {id: "Solution_27"})
MATCH (o2:Limitation {id: "limitation_27_4"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MERGE (Study_33:Study {id:"Study_33"})
SET Study_33.title = "Commuity mental health music therapy: a consumer-initiated song-based paradigm";
MERGE (Solution_33:Solution {id:"Solution_33"});
MERGE (context_adult_mental_health:Context {id:"context_adult_mental_health"})
ON CREATE SET context_adult_mental_health.description = "adult mental health";
MERGE (song_based_music_therapy_programme:SolutionElement {id:"song_based_music_therapy_programme"})
ON CREATE SET song_based_music_therapy_programme.description = "song based music therapy programme"
ON CREATE SET song_based_music_therapy_programme.isOriginal = true
ON CREATE SET song_based_music_therapy_programme.isQuantitative = false;
MERGE (fun:SolutionElement {id:"fun"})
ON CREATE SET fun.description = "fun"
ON CREATE SET fun.isOriginal = true
ON CREATE SET fun.isQuantitative = false;
MERGE (relaxation:SolutionElement {id:"relaxation"})
ON CREATE SET relaxation.description = "relaxation"
ON CREATE SET relaxation.isOriginal = true
ON CREATE SET relaxation.isQuantitative = false;
MERGE (social_interaction:SolutionElement {id:"social_interaction"})
ON CREATE SET social_interaction.description = "social interaction"
ON CREATE SET social_interaction.isOriginal = true
ON CREATE SET social_interaction.isQuantitative = false;
MERGE (sense_of_belonging:SolutionElement {id:"sense_of_belonging"})
ON CREATE SET sense_of_belonging.description = "sense of belonging"
ON CREATE SET sense_of_belonging.isOriginal = true
ON CREATE SET sense_of_belonging.isQuantitative = false;
MERGE (focus:SolutionElement {id:"focus"})
ON CREATE SET focus.description = "focus"
ON CREATE SET focus.isOriginal = true
ON CREATE SET focus.isQuantitative = false;
MERGE (support:SolutionElement {id:"support"})
ON CREATE SET support.description = "support"
ON CREATE SET support.isOriginal = true
ON CREATE SET support.isQuantitative = false;
MERGE (creativity:SolutionElement {id:"creativity"})
ON CREATE SET creativity.description = "creativity"
ON CREATE SET creativity.isOriginal = true
ON CREATE SET creativity.isQuantitative = false;
MERGE (skill_development:SolutionElement {id:"skill_development"})
ON CREATE SET skill_development.description = "skill development"
ON CREATE SET skill_development.isOriginal = true
ON CREATE SET skill_development.isQuantitative = false;
MERGE (structure:SolutionElement {id:"structure"})
ON CREATE SET structure.description = "structure"
ON CREATE SET structure.isOriginal = true
ON CREATE SET structure.isQuantitative = false;
MERGE (stability:SolutionElement {id:"stability"})
ON CREATE SET stability.description = "stability"
ON CREATE SET stability.isOriginal = true
ON CREATE SET stability.isQuantitative = false;
MERGE (mental_health_recovery:SolutionElement {id:"mental_health_recovery"})
ON CREATE SET mental_health_recovery.description = "mental health recovery"
ON CREATE SET mental_health_recovery.isOriginal = true
ON CREATE SET mental_health_recovery.isQuantitative = false;
MERGE (improved_mood:SolutionElement {id:"improved_mood"})
ON CREATE SET improved_mood.description = "improved mood"
ON CREATE SET improved_mood.isOriginal = true
ON CREATE SET improved_mood.isQuantitative = false;
MERGE (increased_confidence:SolutionElement {id:"increased_confidence"})
ON CREATE SET increased_confidence.description = "increased confidence"
ON CREATE SET increased_confidence.isOriginal = true
ON CREATE SET increased_confidence.isQuantitative = false;
MERGE (increased_self_esteem:SolutionElement {id:"increased_self_esteem"})
ON CREATE SET increased_self_esteem.description = "increased self-esteem"
ON CREATE SET increased_self_esteem.isOriginal = true
ON CREATE SET increased_self_esteem.isQuantitative = false;
MERGE (artistic_expression:SolutionElement {id:"artistic_expression"})
ON CREATE SET artistic_expression.description = "artistic expression"
ON CREATE SET artistic_expression.isOriginal = true
ON CREATE SET artistic_expression.isQuantitative = false;
MERGE (limitation_33_1:Limitation {id:"limitation_33_1"})
SET limitation_33_1.description = "researcher/participant relationship not considered"
SET limitation_33_1.addedInReview = false;
MATCH (o1:Study {id: "Study_33"})
MATCH (o2:Solution {id: "Solution_33"})
MERGE (o1)-[:PROPOSES]->(o2);
MATCH (o1:Solution {id: "Solution_33"})
MATCH (o2:Context {id: "context_adult_mental_health"})
MERGE (o1)-[:APPLIES_TO]->(o2);
MATCH (o1:Solution {id: "Solution_33"})
MATCH (o2:SolutionElement {id: "song_based_music_therapy_programme"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_33"})
MATCH (o2:SolutionElement {id: "fun"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_33"})
MATCH (o2:SolutionElement {id: "relaxation"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_33"})
MATCH (o2:SolutionElement {id: "social_interaction"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_33"})
MATCH (o2:SolutionElement {id: "sense_of_belonging"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_33"})
MATCH (o2:SolutionElement {id: "focus"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_33"})
MATCH (o2:SolutionElement {id: "support"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_33"})
MATCH (o2:SolutionElement {id: "creativity"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_33"})
MATCH (o2:SolutionElement {id: "skill_development"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_33"})
MATCH (o2:SolutionElement {id: "structure"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_33"})
MATCH (o2:SolutionElement {id: "stability"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_33"})
MATCH (o2:SolutionElement {id: "mental_health_recovery"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_33"})
MATCH (o2:SolutionElement {id: "improved_mood"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_33"})
MATCH (o2:SolutionElement {id: "increased_confidence"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_33"})
MATCH (o2:SolutionElement {id: "increased_self_esteem"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_33"})
MATCH (o2:SolutionElement {id: "artistic_expression"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_33"})
MATCH (o2:Limitation {id: "limitation_33_1"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MERGE (Study_34:Study {id:"Study_34"})
SET Study_34.title = "The significance of choral singing for sustaining psychological wellbeing: findings from a survey of choristers in England, Australia and Germany";
MERGE (Solution_34:Solution {id:"Solution_34"});
MERGE (context_choral_societies:Context {id:"context_choral_societies"})
ON CREATE SET context_choral_societies.description = "choral societies";
MERGE (improved_mood:SolutionElement {id:"improved_mood"})
ON CREATE SET improved_mood.description = "improved mood"
ON CREATE SET improved_mood.isOriginal = true
ON CREATE SET improved_mood.isQuantitative = false;
MERGE (focused_attention:SolutionElement {id:"focused_attention"})
ON CREATE SET focused_attention.description = "focused attention"
ON CREATE SET focused_attention.isOriginal = true
ON CREATE SET focused_attention.isQuantitative = false;
MERGE (deep_breathing:SolutionElement {id:"deep_breathing"})
ON CREATE SET deep_breathing.description = "deep breathing"
ON CREATE SET deep_breathing.isOriginal = true
ON CREATE SET deep_breathing.isQuantitative = false;
MERGE (social_support:SolutionElement {id:"social_support"})
ON CREATE SET social_support.description = "social support"
ON CREATE SET social_support.isOriginal = true
ON CREATE SET social_support.isQuantitative = false;
MERGE (cognitive_stimulation:SolutionElement {id:"cognitive_stimulation"})
ON CREATE SET cognitive_stimulation.description = "cognitive stimulation"
ON CREATE SET cognitive_stimulation.isOriginal = true
ON CREATE SET cognitive_stimulation.isQuantitative = false;
MERGE (opportunity_for_regular_commitment:SolutionElement {id:"opportunity_for_regular_commitment"})
ON CREATE SET opportunity_for_regular_commitment.description = "opportunity for regular commitment"
ON CREATE SET opportunity_for_regular_commitment.isOriginal = true
ON CREATE SET opportunity_for_regular_commitment.isQuantitative = false;
MERGE (limitation_34_1:Limitation {id:"limitation_34_1"})
SET limitation_34_1.description = "recruitment strategy not explicit"
SET limitation_34_1.addedInReview = false;
MERGE (limitation_34_2:Limitation {id:"limitation_34_2"})
SET limitation_34_2.description = "brief description of analysis"
SET limitation_34_2.addedInReview = false;
MATCH (o1:Study {id: "Study_34"})
MATCH (o2:Solution {id: "Solution_34"})
MERGE (o1)-[:PROPOSES]->(o2);
MATCH (o1:Solution {id: "Solution_34"})
MATCH (o2:Context {id: "context_choral_societies"})
MERGE (o1)-[:APPLIES_TO]->(o2);
MATCH (o1:Solution {id: "Solution_34"})
MATCH (o2:SolutionElement {id: "improved_mood"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_34"})
MATCH (o2:SolutionElement {id: "focused_attention"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_34"})
MATCH (o2:SolutionElement {id: "deep_breathing"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_34"})
MATCH (o2:SolutionElement {id: "social_support"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_34"})
MATCH (o2:SolutionElement {id: "cognitive_stimulation"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_34"})
MATCH (o2:SolutionElement {id: "opportunity_for_regular_commitment"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_34"})
MATCH (o2:Limitation {id: "limitation_34_1"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MATCH (o1:Solution {id: "Solution_34"})
MATCH (o2:Limitation {id: "limitation_34_2"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MERGE (Study_35:Study {id:"Study_35"})
SET Study_35.title = "Benefits of group singing for people with eating disorders: preliminary findings from a non-clinical study";
MERGE (Solution_35:Solution {id:"Solution_35"});
MERGE (context_eating_disorders:Context {id:"context_eating_disorders"})
ON CREATE SET context_eating_disorders.description = "eating disorders";
MERGE (singing_workshops:SolutionElement {id:"singing_workshops"})
ON CREATE SET singing_workshops.description = "singing workshops"
ON CREATE SET singing_workshops.isOriginal = true
ON CREATE SET singing_workshops.isQuantitative = false;
MERGE (re_connection_with_bodily_sensations:SolutionElement {id:"re_connection_with_bodily_sensations"})
ON CREATE SET re_connection_with_bodily_sensations.description = "re-connection with bodily sensations"
ON CREATE SET re_connection_with_bodily_sensations.isOriginal = true
ON CREATE SET re_connection_with_bodily_sensations.isQuantitative = false;
MERGE (relaxation:SolutionElement {id:"relaxation"})
ON CREATE SET relaxation.description = "relaxation"
ON CREATE SET relaxation.isOriginal = true
ON CREATE SET relaxation.isQuantitative = false;
MERGE (awareness_of_body:SolutionElement {id:"awareness_of_body"})
ON CREATE SET awareness_of_body.description = "awareness of body"
ON CREATE SET awareness_of_body.isOriginal = true
ON CREATE SET awareness_of_body.isQuantitative = false;
MERGE (mental_engagement:SolutionElement {id:"mental_engagement"})
ON CREATE SET mental_engagement.description = "mental engagement"
ON CREATE SET mental_engagement.isOriginal = true
ON CREATE SET mental_engagement.isQuantitative = false;
MERGE (helps_to_distance_from_problems:SolutionElement {id:"helps_to_distance_from_problems"})
ON CREATE SET helps_to_distance_from_problems.description = "helps to distance from problems"
ON CREATE SET helps_to_distance_from_problems.isOriginal = true
ON CREATE SET helps_to_distance_from_problems.isQuantitative = false;
MERGE (emotional_release:SolutionElement {id:"emotional_release"})
ON CREATE SET emotional_release.description = "emotional release"
ON CREATE SET emotional_release.isOriginal = true
ON CREATE SET emotional_release.isQuantitative = false;
MERGE (self_expression:SolutionElement {id:"self_expression"})
ON CREATE SET self_expression.description = "self-expression"
ON CREATE SET self_expression.isOriginal = true
ON CREATE SET self_expression.isQuantitative = false;
MERGE (increased_self_esteem:SolutionElement {id:"increased_self_esteem"})
ON CREATE SET increased_self_esteem.description = "increased self-esteem"
ON CREATE SET increased_self_esteem.isOriginal = true
ON CREATE SET increased_self_esteem.isQuantitative = false;
MERGE (feeling_supported:SolutionElement {id:"feeling_supported"})
ON CREATE SET feeling_supported.description = "feeling supported"
ON CREATE SET feeling_supported.isOriginal = true
ON CREATE SET feeling_supported.isQuantitative = false;
MERGE (healthy_social_interaction:SolutionElement {id:"healthy_social_interaction"})
ON CREATE SET healthy_social_interaction.description = "healthy social interaction"
ON CREATE SET healthy_social_interaction.isOriginal = true
ON CREATE SET healthy_social_interaction.isQuantitative = false;
MERGE (reduced_stressed:SolutionElement {id:"reduced_stressed"})
ON CREATE SET reduced_stressed.description = "reduced stressed"
ON CREATE SET reduced_stressed.isOriginal = true
ON CREATE SET reduced_stressed.isQuantitative = false;
MERGE (feelings_of_empowerment:SolutionElement {id:"feelings_of_empowerment"})
ON CREATE SET feelings_of_empowerment.description = "feelings of empowerment"
ON CREATE SET feelings_of_empowerment.isOriginal = true
ON CREATE SET feelings_of_empowerment.isQuantitative = false;
MERGE (limitation_35_1:Limitation {id:"limitation_35_1"})
SET limitation_35_1.description = "researcher/participant relationship not considered"
SET limitation_35_1.addedInReview = false;
MATCH (o1:Study {id: "Study_35"})
MATCH (o2:Solution {id: "Solution_35"})
MERGE (o1)-[:PROPOSES]->(o2);
MATCH (o1:Solution {id: "Solution_35"})
MATCH (o2:Context {id: "context_eating_disorders"})
MERGE (o1)-[:APPLIES_TO]->(o2);
MATCH (o1:Solution {id: "Solution_35"})
MATCH (o2:SolutionElement {id: "singing_workshops"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_35"})
MATCH (o2:SolutionElement {id: "re_connection_with_bodily_sensations"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_35"})
MATCH (o2:SolutionElement {id: "relaxation"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_35"})
MATCH (o2:SolutionElement {id: "awareness_of_body"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_35"})
MATCH (o2:SolutionElement {id: "mental_engagement"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_35"})
MATCH (o2:SolutionElement {id: "helps_to_distance_from_problems"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_35"})
MATCH (o2:SolutionElement {id: "emotional_release"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_35"})
MATCH (o2:SolutionElement {id: "self_expression"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_35"})
MATCH (o2:SolutionElement {id: "increased_self_esteem"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_35"})
MATCH (o2:SolutionElement {id: "feeling_supported"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_35"})
MATCH (o2:SolutionElement {id: "healthy_social_interaction"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_35"})
MATCH (o2:SolutionElement {id: "reduced_stressed"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_35"})
MATCH (o2:SolutionElement {id: "feelings_of_empowerment"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_35"})
MATCH (o2:Limitation {id: "limitation_35_1"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MERGE (Study_36:Study {id:"Study_36"})
SET Study_36.title = "‘Singing for the Brain’: reflections on the human capacity for music arising from a pilot study of group singing with Alzheimer’s patients";
MERGE (Solution_36:Solution {id:"Solution_36"});
MERGE (context_alzheimer_s_disease:Context {id:"context_alzheimer_s_disease"})
ON CREATE SET context_alzheimer_s_disease.description = "alzheimer's disease";
MERGE (singing_sessions:SolutionElement {id:"singing_sessions"})
ON CREATE SET singing_sessions.description = "singing sessions"
ON CREATE SET singing_sessions.isOriginal = true
ON CREATE SET singing_sessions.isQuantitative = false;
MERGE (participation:SolutionElement {id:"participation"})
ON CREATE SET participation.description = "participation"
ON CREATE SET participation.isOriginal = true
ON CREATE SET participation.isQuantitative = false;
MERGE (increased_confidence:SolutionElement {id:"increased_confidence"})
ON CREATE SET increased_confidence.description = "increased confidence"
ON CREATE SET increased_confidence.isOriginal = true
ON CREATE SET increased_confidence.isQuantitative = false;
MERGE (social_interaction:SolutionElement {id:"social_interaction"})
ON CREATE SET social_interaction.description = "social interaction"
ON CREATE SET social_interaction.isOriginal = true
ON CREATE SET social_interaction.isQuantitative = false;
MERGE (vitality:SolutionElement {id:"vitality"})
ON CREATE SET vitality.description = "vitality"
ON CREATE SET vitality.isOriginal = true
ON CREATE SET vitality.isQuantitative = false;
MERGE (improved_mood:SolutionElement {id:"improved_mood"})
ON CREATE SET improved_mood.description = "improved mood"
ON CREATE SET improved_mood.isOriginal = true
ON CREATE SET improved_mood.isQuantitative = false;
MERGE (limitation_36_1:Limitation {id:"limitation_36_1"})
SET limitation_36_1.description = "researcher/participant relationship not considered"
SET limitation_36_1.addedInReview = false;
MERGE (limitation_36_2:Limitation {id:"limitation_36_2"})
SET limitation_36_2.description = "lack of detail"
SET limitation_36_2.addedInReview = false;
MATCH (o1:Study {id: "Study_36"})
MATCH (o2:Solution {id: "Solution_36"})
MERGE (o1)-[:PROPOSES]->(o2);
MATCH (o1:Solution {id: "Solution_36"})
MATCH (o2:Context {id: "context_alzheimer_s_disease"})
MERGE (o1)-[:APPLIES_TO]->(o2);
MATCH (o1:Solution {id: "Solution_36"})
MATCH (o2:SolutionElement {id: "singing_sessions"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_36"})
MATCH (o2:SolutionElement {id: "participation"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_36"})
MATCH (o2:SolutionElement {id: "increased_confidence"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_36"})
MATCH (o2:SolutionElement {id: "social_interaction"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_36"})
MATCH (o2:SolutionElement {id: "vitality"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_36"})
MATCH (o2:SolutionElement {id: "improved_mood"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_36"})
MATCH (o2:Limitation {id: "limitation_36_1"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MATCH (o1:Solution {id: "Solution_36"})
MATCH (o2:Limitation {id: "limitation_36_2"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MERGE (Study_38:Study {id:"Study_38"})
SET Study_38.title = "‘To be heard’: the social and mental health benefits of choir singing for disadvantaged adults";
MERGE (Solution_38:Solution {id:"Solution_38"});
MERGE (context_chronic_mental_illness:Context {id:"context_chronic_mental_illness"})
ON CREATE SET context_chronic_mental_illness.description = "chronic mental illness";
MERGE (choir_sessions:SolutionElement {id:"choir_sessions"})
ON CREATE SET choir_sessions.description = "choir sessions"
ON CREATE SET choir_sessions.isOriginal = true
ON CREATE SET choir_sessions.isQuantitative = false;
MERGE (positive_emotions:SolutionElement {id:"positive_emotions"})
ON CREATE SET positive_emotions.description = "positive emotions"
ON CREATE SET positive_emotions.isOriginal = true
ON CREATE SET positive_emotions.isQuantitative = false;
MERGE (positive_spiritual_experiences:SolutionElement {id:"positive_spiritual_experiences"})
ON CREATE SET positive_spiritual_experiences.description = "positive spiritual experiences"
ON CREATE SET positive_spiritual_experiences.isOriginal = true
ON CREATE SET positive_spiritual_experiences.isQuantitative = false;
MERGE (improved_self_perception:SolutionElement {id:"improved_self_perception"})
ON CREATE SET improved_self_perception.description = "improved self-perception"
ON CREATE SET improved_self_perception.isOriginal = true
ON CREATE SET improved_self_perception.isQuantitative = false;
MERGE (increased_singing_ability:SolutionElement {id:"increased_singing_ability"})
ON CREATE SET increased_singing_ability.description = "increased singing ability"
ON CREATE SET increased_singing_ability.isOriginal = true
ON CREATE SET increased_singing_ability.isQuantitative = false;
MERGE (sense_of_belonging:SolutionElement {id:"sense_of_belonging"})
ON CREATE SET sense_of_belonging.description = "sense of belonging"
ON CREATE SET sense_of_belonging.isOriginal = true
ON CREATE SET sense_of_belonging.isQuantitative = false;
MERGE (acceptance:SolutionElement {id:"acceptance"})
ON CREATE SET acceptance.description = "acceptance"
ON CREATE SET acceptance.isOriginal = true
ON CREATE SET acceptance.isQuantitative = false;
MERGE (connection_with_local_community:SolutionElement {id:"connection_with_local_community"})
ON CREATE SET connection_with_local_community.description = "connection with local community"
ON CREATE SET connection_with_local_community.isOriginal = true
ON CREATE SET connection_with_local_community.isQuantitative = false;
MERGE (increased_social_functioning:SolutionElement {id:"increased_social_functioning"})
ON CREATE SET increased_social_functioning.description = "increased social functioning"
ON CREATE SET increased_social_functioning.isOriginal = true
ON CREATE SET increased_social_functioning.isQuantitative = false;
MERGE (positive_health_benefits:SolutionElement {id:"positive_health_benefits"})
ON CREATE SET positive_health_benefits.description = "positive health benefits"
ON CREATE SET positive_health_benefits.isOriginal = true
ON CREATE SET positive_health_benefits.isQuantitative = false;
MERGE (routine:SolutionElement {id:"routine"})
ON CREATE SET routine.description = "routine"
ON CREATE SET routine.isOriginal = true
ON CREATE SET routine.isQuantitative = false;
MERGE (structure:SolutionElement {id:"structure"})
ON CREATE SET structure.description = "structure"
ON CREATE SET structure.isOriginal = true
ON CREATE SET structure.isQuantitative = false;
MERGE (limitation_38_1:Limitation {id:"limitation_38_1"})
SET limitation_38_1.description = "researcher/participant relationship not considered"
SET limitation_38_1.addedInReview = false;
MERGE (limitation_38_2:Limitation {id:"limitation_38_2"})
SET limitation_38_2.description = "researchers joined choir potentially influencing responses"
SET limitation_38_2.addedInReview = false;
MATCH (o1:Study {id: "Study_38"})
MATCH (o2:Solution {id: "Solution_38"})
MERGE (o1)-[:PROPOSES]->(o2);
MATCH (o1:Solution {id: "Solution_38"})
MATCH (o2:Context {id: "context_chronic_mental_illness"})
MERGE (o1)-[:APPLIES_TO]->(o2);
MATCH (o1:Solution {id: "Solution_38"})
MATCH (o2:SolutionElement {id: "choir_sessions"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_38"})
MATCH (o2:SolutionElement {id: "positive_emotions"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_38"})
MATCH (o2:SolutionElement {id: "positive_spiritual_experiences"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_38"})
MATCH (o2:SolutionElement {id: "improved_self_perception"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_38"})
MATCH (o2:SolutionElement {id: "increased_singing_ability"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_38"})
MATCH (o2:SolutionElement {id: "sense_of_belonging"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_38"})
MATCH (o2:SolutionElement {id: "acceptance"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_38"})
MATCH (o2:SolutionElement {id: "connection_with_local_community"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_38"})
MATCH (o2:SolutionElement {id: "increased_social_functioning"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_38"})
MATCH (o2:SolutionElement {id: "positive_health_benefits"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_38"})
MATCH (o2:SolutionElement {id: "routine"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_38"})
MATCH (o2:SolutionElement {id: "structure"})
MERGE (o1)-[:HAS_ELEMENT]->(o2);
MATCH (o1:Solution {id: "Solution_38"})
MATCH (o2:Limitation {id: "limitation_38_1"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);
MATCH (o1:Solution {id: "Solution_38"})
MATCH (o2:Limitation {id: "limitation_38_2"})
MERGE (o1)-[:HAS_LIMITATION]->(o2);