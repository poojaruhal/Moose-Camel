instance creation
generateSubclassLabelled: aString
	| aClass |

	aClass := self subclass: (self name, aString asLowercase capitalized)
		instanceVariableNames: ''
		classVariableNames: ''
		package: self category.
		
	aClass class compile: 'label
	<return: #String>
	
	^ ''',aString,'''' classified: 'accessing'.
	
	^ aClass
		
 