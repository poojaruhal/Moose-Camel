*Moose-Camel
gtSpotterContactsIn: aComposite
	"<spotterOrder:0>"
	
	^ aComposite listProcessor
		title: 'Contacts';
		allCandidates: [Phonebook default contacts];
		filter: GTFilterSubstring;
		wantsToDisplayOnEmptyQuery: true