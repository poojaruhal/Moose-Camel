as yet unclassified
calculateDistance

	|semanticDistance structuralDistance|
	
	semanticDistance := 
		McSemanticDistance new 
			from: self questionOne
			to: self questionTwo.
	
	structuralDistance :=
		McStrcutureDistance new
			from: self questionOne
			to:self questionTwo.
			
	 ^ ((semanticDistance squared) + (structuralDistance squared))sqrt
	