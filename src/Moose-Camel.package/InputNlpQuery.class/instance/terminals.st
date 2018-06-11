test-examples
terminals
	<gtExample>

	^ self tokens collect: [ :aTokenDictionary | NlpNode fromDictionary: aTokenDictionary ]