printing
printOn: aStream
	aStream
		nextPutAll: self class label;
		space;
		nextPut: $(;
		nextPutAll: self word;
		nextPut: $)