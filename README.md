# Moose-Camel
User can use moose to analyze their source code. No need to learn moose query language to interact with moose.
Accept constrained input in natural language. Convert natural language queries to Moose queries and execute translated query.

# Prerequisites
Pharo 5.0
coreNLP 3.9
smalltalk-nlp
Moose 6.1

# Install
```smalltalk
Metacello new
   baseline: 'Camel';
   repository: 'github://poojaruhal65/Moose-Camel/src';
   load
```

# Dataset
Moose Queries collected from research projects.

# Usage
`nl_query:= 'find abc class in xyz package'`.

`evaluate: nl_query`.



