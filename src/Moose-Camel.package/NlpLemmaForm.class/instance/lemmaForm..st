sentence - preprocessing
lemmaForm: aCollectionOfTokens
	<return: #Collection of: #Words>

	^ aCollectionOfTokens 
		collect: [:aTokenDictioanry | self findLemmaFormOfaToken: aTokenDictioanry]