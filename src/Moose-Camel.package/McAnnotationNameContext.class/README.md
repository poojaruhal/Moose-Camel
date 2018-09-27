Class Responsibility Collaborator (CRC) design:

For the Class part:  Subclass of NlpQueryContext..

For the Responsibility part: set annotationName for the query like 'Deprecated'.
executeOn an object i.e 'isAnnotatedWith: 'Deprecated'.


For the Collaborators Part: 

Public API and Key Messages

- annotationName: set annotation name for query.   
- executeOn: set annotation name for annotation property. 
- printOn: String representation of object.  

Internal Representation and Key Implementation Points.

    Instance Variables
	annotationName:		<Object>
