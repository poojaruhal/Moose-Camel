initialization
initialize
	super initialize.
	
	self class instanceVariables do: [ :instVarName | 
		self instVarNamed: instVarName put: (self perform: instVarName) ]