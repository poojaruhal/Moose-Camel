instance creation
generateSubclassLabelled: aString
	| aClass aSubclassName |

	aSubclassName := ((aString splitOn: '\W' asRegex) select: #isNotEmpty) reduce: [ :a :b | a capitalized, b capitalized ].

	aClass := self subclass: (self name, aSubclassName)
		instanceVariableNames: ''
		classVariableNames: ''
		package: self category.

	aClass class compile: 'label
	<return: #String>
	
	^ ''',aString,'''' classified: 'accessing'.
	
	^ aClass
		
 