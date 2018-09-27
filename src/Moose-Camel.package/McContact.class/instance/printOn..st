printing
printOn: aStream
	aStream 
		nextPutAll: self firstName;
		space;
		nextPutAll: self lastName.