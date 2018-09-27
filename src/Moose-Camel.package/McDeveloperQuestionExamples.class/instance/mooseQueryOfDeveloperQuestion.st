gt-examples
mooseQueryOfDeveloperQuestion
	<gtExample>
	<description: #'What are the deprecated classes'>
	
	^ 'self allModelClasses select: [:eachClass | eachClass isAnnotatedWith: ','Deprecated',']'.