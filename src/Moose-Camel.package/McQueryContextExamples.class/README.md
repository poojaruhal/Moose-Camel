! Introduction

I show different test cases to test QueryContext.
I am responsibile for forming the query step of annotation instance.

!! Installation
Before running the exams make sure to load ArgoUML mse model in the moose
[[[
| file model |
file := IceRepository repositoriesLocation / 'poojaruhal65'/ 'Moose-Camel' / 'models' / 'ArgoUML-0.34.mse'.
model := MooseModel new.
file readStreamDo: [ :aStream |
	model name: (aStream localName copyUpToLast: Path extensionDelimiter).	"name without extension"
	model importFromMSEStream: aStream.
	model install ]
]]]


Public API and Key Messages

- allModelClassesQueryContext: test the queryContext "allModelClasses" . 
-applyAllModelClassesQueryContextOnArgoUml: uses the previous unit test "allModelClassesQueryContext" and get a queryContext. Execute queryContext on Model.
-deprecatedAnnotationQueryContext: get modelEntityValue i.e annotationInstance value "deprecated". test the correctoness of annotation name.
-argoUML: detect allModels and find argoUML instance.
-emptyQuery: check if NlpQuery is emoty or not.
-allModelClassesNavigationStep: get context of the query (f.e allModelClasses) and pass to navigation step.  