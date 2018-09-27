as yet unclassified
gtInspectorContactsIn: aComposite
	<gtInspectorPresentationOrder: 0>
	^ aComposite fastTable 
		title: 'All Contacts';
		display:[self contacts];
		column: 'Name' evaluated: [ :aContact | aContact printString];
		column: 'Phone Number' evaluated: [ :aContact | aContact phoneNumber]