baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec
			baseline: 'GToolkit' with: [ spec repository: 'github://feenkcom/gtoolkit/src' ];
			baseline: 'Atlas' with: [ spec repository: 'github://kilon/Atlas' ];
			baseline: 'CamelAST' with: [ spec repository: 'github://poojaruhal65/Moose-Camel-AST/src' ];

			project: 'NeoJSON' with: [
				spec 
					className: #ConfigurationOfNeoJSON;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/SvenVanCaekenberghe/Neo/main/';
					loads: #(Core) ].

		spec package: #'Moose-Camel' with: [ spec requires: #(GToolkit CamelAST NeoJSON Atlas) ].
		spec group: 'default' with: #('Moose-Camel') ]