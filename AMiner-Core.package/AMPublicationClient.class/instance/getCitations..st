public
getCitations: anId

	self path: '/api/pub/cite'.
	self addPath: anId.
	self addPath: 'rec/offset/0/size/10'.
	
	^(AMDataAPIResponse parse: self get resultAs: AMPublication ) data
	