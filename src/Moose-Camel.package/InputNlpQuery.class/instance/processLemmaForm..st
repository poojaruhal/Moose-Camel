Nlp
processLemmaForm: aLemmaForm
	"process noun verb grammar form, extract entityKind and entityContext candidates"

	"				queryFormDictionary valuesDo: [: value |
							self getFamixEntity: value.
							self searchFamixEntityValue: value ]"
	| entityContextCandidates |

	entityKindCandidates := aLemmaForm
		flatCollect: [ :aLemmaWord | self searchEntityKinds: aLemmaWord ].

	entityContextCandidates := aLemmaForm
		flatCollect: [ :aLemmaWord | self searchEntityContexts: aLemmaWord ].

	entityKindCandidates
		ifNotEmpty: [self setNavigationStep: entityKindCandidates first ].

	entityContextCandidates
		ifNotEmpty: [ self setSelectionStep: entityContextCandidates first ]