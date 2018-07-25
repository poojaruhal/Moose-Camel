baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec baseline: 'GToolkit' with: [ spec repository: 'github://feenkcom/gtoolkit/src' ].
		spec 
			package: #'Moose-Camel' with: [ spec requires: #(GToolkit) ].
		spec 
			group: 'core' with: #('Moose-Camel');
			group: 'default' with: #('core') ]