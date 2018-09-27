*Moose-Camel
gtSpotterContactsIn: aComposite
	"<spotterOrder:0>"
	
	^ aComposite listProcessor
		title: 'Contacts';
		allCandidates: [McPhonebook default contacts];
		filter: GTFilterSubstring;
		wantsToDisplayOnEmptyQuery: true