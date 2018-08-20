printing
printOn: aStream
	aStream
		nextPutAll: self word;
		space;
		nextPut: $(;
		nextPutAll: self pos;
		nextPut: $)