*Moose-Camel
do: elementBlock separatedBy: separatorBlock
	"Evaluate the elementBlock for all elements in the receiver,
	and evaluate the separatorBlock between."
	"(String streamContents: [:s | #(1 2 3) do: [:each | s << each asString] separatedBy: [s << ', ']]) >>> '1, 2, 3'"

	| beforeFirst | 
	beforeFirst := true.
	self do:
		[:each |
		beforeFirst
			ifTrue: [beforeFirst := false]
			ifFalse: [separatorBlock value].
		elementBlock value: each]