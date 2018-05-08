famix-dependent
createQuery
	"comment stating purpose of message"

	| query |
	query := 'self ' , self getQueryContext , ' select: [ :each | each '
		, self getPropertyType , ': ' , 'Deprecated' , ']'.
	^ query