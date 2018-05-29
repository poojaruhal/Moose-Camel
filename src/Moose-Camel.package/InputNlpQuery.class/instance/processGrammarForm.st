Nlp
processGrammarForm
				"process noun verb grammar form, extract entityKind and entityContext candidates"
				queryFormDictionary valuesDo: [: value |
							self getFamixEntity: value.
							self searchFamixEntityValue: value ]