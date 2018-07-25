accessing
terminal
	^ $( asParser, name, space, word, $) asParser ==> [ :aToken | { aToken second . aToken fourth } ]