*Moose-Camel
gtSpotterclassCommentsIn: aComposite
	"<spotterOrder: 0>"
	
	^ aComposite listProcessor
		title: 'Class Comments';
		allCandidates: [ (SystemNavigation default allClasses select: [ :eachClass | eachClass hasComment])];
		itemName: [ :eachClass | eachClass comment ];
		filter: McFilterSimilar;
		wantsToDisplayOnEmptyQuery: false