printing
printOn: aStream
	aStream
		nextPutAll: self label;
		space;
		nextPut: $(;
		nextPutAll: self word;
		nextPut: $)