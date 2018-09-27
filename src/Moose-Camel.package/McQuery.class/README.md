I represent the collection of all QuerySteps. Query is composed of steps i.e QuerySteps and step can be of any type like selection, navigation step.

Public API and Key Messages

- steps: return collection of NlpQueryStep.   
- addAll: add collection of query steps to existing step.
- initialize: initialize the collection as orderedCollection
-gtInspectorStepsIn: open a inespetor to present the all steps.
- (for bonus points) how to create instances.
-performOn: a query is composed of various step and the query dependes on its previous query. 
	example: 
	aPreviousStep: argoUML model
	aStep: QueryNavigationStep
	QueryResult : self AllModelClasses
	Next iteration: 
		aPreviousStep: self AllModelClasses
		aStep: QuerySelectionStep
		Query : self AllModelClasses select [:eah| each .. ] i.e loop on previous part


  
 
Internal Representation and Key Implementation Points.

    Instance Variables
	steps:		<Object>


    Implementation Points