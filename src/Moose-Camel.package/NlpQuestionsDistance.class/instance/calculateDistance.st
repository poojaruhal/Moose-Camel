as yet unclassified
calculateDistance

	|semanticDistance structuralDistance|
	
	semanticDistance := 
		NlpSemanticDistance new 
			from: self questionOne
			to: self questionTwo.
	
	structuralDistance :=
		NlpStrcutureDistance new
			from: self questionOne
			to:self questionTwo.
			
	 ^ ((semanticDistance squared) + (structuralDistance squared))sqrt
	