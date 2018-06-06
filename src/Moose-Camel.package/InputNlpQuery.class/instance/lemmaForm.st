test-examples
lemmaForm
	<gtExample>
	| tokens lemmaForm |

	tokens := self tokens.
	lemmaForm := self extractLemmaForm: tokens.

	self assert: lemmaForm asArray equals: #(deprecate class).

	^ lemmaForm