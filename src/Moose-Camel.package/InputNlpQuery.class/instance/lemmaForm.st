test-examples
lemmaForm
	<gtExample>
	| tokens lemmaForm |

	tokens := NlpInputProcessor new tokens.
	lemmaForm := self extractLemmaForm: tokens.

	self assert: lemmaForm asArray equals: #(deprecate class).

	^ lemmaForm