gt-examples
questionExampleWithMooseQuery
	<gtExample>
	<description: 'Find all the methods that have word length in their name.'>

	^ 'self allMethodsSelect: [ :method | "*length*" match: method mooseName ]'.