! Introduction

I take a user question as an argument, process that question with the help of CoreNLP service and create an AST out of the JSON result.

!! Tutorial

Step 1: First we create ast of the developer question. ast contains information about the structure of sentence and also the relation between each words in the sentence.

[[[
	ast := McInputProcessor new process: 'What are the deprecated classes'.
]]]

Step 2: This is the moose query, I wanted to convert my question to
[[[
	mooseQuery:= McDeveloperQuestionExamples new 	mooseQueryOfDeveloperQuestion.
]]]

Step 3: This converts natural langauge query to the moose query.
[[[
	converter := McConverter new.
	ast dependencies first accept: converter.
	mooseQueryofDeveloperQuestion := converter query.
]]]

Step 4: As we are analyzing a software, argoUML is the model we are analayzing. This is originally a java project and 
converted to moose model using some internal logic which doesnt matter for right now.
This loads the model into system on which we want to perform our query or question"
[[[
	argoUml := MooseModel root allModels detect: [ :aModel | aModel name beginsWith: 'ArgoUML' ].
]]]
Step 5: Then at the end we take convertedQuery which is moose query and perform on argoUml model "
[[[
			mooseQueryofDeveloperQuestion performOn: argoUml.
]]]