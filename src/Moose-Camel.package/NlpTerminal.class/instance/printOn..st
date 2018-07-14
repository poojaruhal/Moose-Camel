printing
printOn: aStream
	aStream
		print: self class label;
		space;
		nextPut: $(;
		nextPutAll: self word;
		nextPut: $)