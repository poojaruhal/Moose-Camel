baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec
			baseline: 'GToolkit' with: [ spec repository: 'github://feenkcom/gtoolkit/src' ];
			baseline: 'CamelAST' with: [ spec repository: 'github://poojaruhal65/Nls-Ast/src' ].
	
		spec package: #'Moose-Camel' with: [ spec requires: #(GToolkit CamelAST) ].
		spec group: 'default' with: #('Moose-Camel') ]