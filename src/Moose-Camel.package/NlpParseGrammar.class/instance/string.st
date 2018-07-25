accessing
string
	^ (#word asParser / { $: . $- . $" . $' . $? . $! . $` . $. } asParser) plus flatten ==> #asSymbol