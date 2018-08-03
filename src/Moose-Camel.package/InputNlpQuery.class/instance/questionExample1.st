gt-examples
questionExample1
	<gtExample>
	<description: #'What are the deprecated class'>
	
	^ 'self allModelClasses select: [:eachClass | eachClass isAnnotatedWith: ','Deprecated',']'.