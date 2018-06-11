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

	"Choose entity kind candidate from entityKindCandidates based on ML algorithim "
	entityKindCandidates
		ifNotEmpty: [self setNavigationStep: entityKindCandidates first ].

	"Choose entity context candidate from entityContextCandidates based on ML algorithim "
	entityContextCandidates
		ifNotEmpty: [ self setSelectionStep: entityContextCandidates first ]