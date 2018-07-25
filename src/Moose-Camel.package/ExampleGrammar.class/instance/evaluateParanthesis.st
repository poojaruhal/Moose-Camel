accessing
evaluateParanthesis
	^ (leftParanthesis,term,rightParanthesis) trim ==> [ :anArray |
			|aTerm|
			aTerm := (anArray at:2)
			]