instance creation
fromDictionary: aDictionary
	"self keys
		inject: ''
		into: [ :memo :key | memo, String cr, 'aDependency {1}: (aDictionary at: ''{2}'').' format: { key . key } ]"
	| aDependency |

	aDependency := self new.
	aDependency governorGloss: (aDictionary at: 'governorGloss').
	aDependency dependentGloss: (aDictionary at: 'dependentGloss').
	aDependency governor: (aDictionary at: 'governor').
	aDependency dep: (aDictionary at: 'dep').
	aDependency dependent: (aDictionary at: 'dependent').
	
	^ aDependency