Inst vars are generated with:

self keys
	inject: ''
	into: [ :memo :key | memo, String space, key ]