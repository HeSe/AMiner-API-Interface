public
getCitations: anId start: anInteger count: anotherInteger

	self path: '/api/pub/cite'.
	self addPath: anId.
	self addPath: 'rec/offset/', anInteger asString.
	self addPath: 'size/', anotherInteger asString.
	
	^(AMDataAPIResponse parse: self get resultAs: AMPublication ) data
	