Class Responsibility Collaborator (CRC) design:

For the Class part: All the navigation that we have on any model like #allClasses, #allLocalVaribales

For the Responsibility part: Loop on queryContext set in previous step which is NlpQueryNavigationStep.

For the Collaborators Part: 

Public API and Key Messages

- context:  accessor for QueryContext
- performOn: take queryContext and perform selection operation on the queryContext.
-printOn: represent the string representation of class.

exmaple: 	Query : self allModelClasses select [:eah| each .. ] i.e loop on QueryContext (allModelClasses)

Internal Representation and Key Implementation Points.

    Instance Variables
	context:		<Object>


    Implementation Points