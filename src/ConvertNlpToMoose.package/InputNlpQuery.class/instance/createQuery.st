query-creation
createQuery
	"comment stating purpose of message"

	| aMooseQuery aModel  aResult|
	"	query := 'self ' , self getQueryContext , ' select: [ :each | each '
		, self getPropertyType , ': ' , 'Deprecated' , ']'."
	aMooseQuery := NlpQuery new.
	(aMooseQuery steps isEmpty)
		ifTrue: [ aMooseQuery addAll: {aNavigationStep. aSelectionStep}.
			Transcript show: aMooseQuery;cr. self halt.
			aModel := self argoUmlModel.
			aResult:= aMooseQuery performOn: aModel.

			Transcript show:aResult;cr ]
		ifFalse: [ Transcript
				show: 'Query empty, check your steps';
				cr ].
	^aResult