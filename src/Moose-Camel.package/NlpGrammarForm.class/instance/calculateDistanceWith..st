as yet unclassified
calculateDistanceWith:aFormList
	| list1 list2 |

	list1 := self nodes collect: #class.
	list2 := aFormList nodes collect: #class.
	
	^ (list1 pairsSimilarityWith: list2) asFloat