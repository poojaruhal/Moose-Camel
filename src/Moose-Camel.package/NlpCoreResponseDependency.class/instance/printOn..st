printing
printOn: aStream
	aStream
		nextPutAll: self dep;
		space;
		nextPut: $(;
		nextPutAll: self sourceWord;
		nextPutAll: ' -> ';
		nextPutAll: self targetWord;
		nextPut: $)