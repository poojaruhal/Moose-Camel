*Moose-Camel
gtSpotterExamplesDescriptionsIn: aComposite
	"<spotterOrder:0>"
	
	^ aComposite listProcessor
		title: 'Examples';
		allCandidates: [
			| packages examples |
			packages := RPackageOrganizer default packages
				select: [ :each | (each name beginsWith: 'Bloc') or: [ each name beginsWith: 'Brick' ] ].
			examples := packages flatCollect: [ :each | each gtExamplesContained ].
			examples select: [ :each | each description isNotNil ] ];
		itemName: [ :eachExample | eachExample description ];
		filter: NlpFilterSimilar