baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec
			"GT-Examples is examples and testing framework"
			baseline: 'GToolkitExamplesEngine' with: [ spec repository: 'github://feenkcom/gtoolkit-examples/src' ];
			baseline: 'Atlas' with: [ spec repository: 'github://kilon/Atlas' ];
			baseline: 'CamelAST' with: [ spec repository: 'github://poojaruhal65/Moose-Camel-AST/src' ];
			baseline: 'NeoJSON' with: [ spec repository: 'github://svenvc/NeoJSON:master/repository' ].

		spec package: #'Moose-Camel' with: [ spec requires: #(GToolkitExamplesEngine CamelAST NeoJSON Atlas) ].
		spec group: 'default' with: #('Moose-Camel') ]
