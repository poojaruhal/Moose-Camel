Class Responsibility Collaborator (CRC) design:

For the Class part: All the navigation that we have on any model like #allClasses, #allLocalVaribales

For the Responsibility part: set the Querycontext. queryContext means on which FAMIXEntity we have to perform our query.

For the Collaborators Part: 

Public API and Key Messages

- context:  accessor for QueryContext
- performOn: take queryContext and perform on any object , wher object can be model like argoUML.
-printOn: print the 


Internal Representation and Key Implementation Points.

    Instance Variables
	context:		<Object>


    Implementation Points