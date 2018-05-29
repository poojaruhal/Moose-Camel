Nlp
extractStringIdentifier: nlQuery
	
	| temp |
	
	"write code to extract quoted words and replace with STR"
	 nlQuery copyWithRegex: '/"[^"]*"/g' matchesReplacedWith: 'STR'.
	'what are the "deprecated" classes' copyWithRegex: '/("([^"]|"")*")/g' matchesReplacedWith: 'STR'.
	Transcript show: nlQuery;cr.