baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec 
			package: #'Moose-Camel'.
		spec 
			group: 'core' with: #('Moose-Camel');
			group: 'default' with: #('core') ]