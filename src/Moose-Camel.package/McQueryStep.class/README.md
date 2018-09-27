Class Responsibility Collaborator (CRC) design:

For the Class part:  Abstract class. Represent the Query steps. Each Query is divided into some steps. step can be navigation step or setting property step or selection step to create complete query in smalltalk.

For the Responsibility part: 
Represent the  query steps and perform that step on previous part of query.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- performOn: perform  step on reciever of the this message.  
- how to create instances - using factory method.

example:
