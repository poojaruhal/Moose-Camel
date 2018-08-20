sentence - preprocessing
removeStopwordsFrom: aQuestion
	| aCoreResponse |

	aCoreResponse := self serviceResponse: aQuestion. 
	^ aCoreResponse tokens withoutStopwords