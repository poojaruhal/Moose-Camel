examples - response
responseParse
	<gtExample>
	| aResponse aParse |
	
	aResponse := self responseFromParsedJson.
	aParse := aResponse parse.
	
	self assert: aParse equals: '(ROOT
  (SBARQ
    (WHNP (WP What))
    (SQ (VBP are)
      (NP (DT the))
      (VP (VBN deprecated)
        (NP (NN class))))))'.

	^ aParse