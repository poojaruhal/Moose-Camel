visiting
accept: aDependencyVisitor
	self acceptTyped: aDependencyVisitor.
	self targetNode outgoingDependencies do: [ :aDependency | aDependency accept: aDependencyVisitor ]