public
getSimilarPublications: anId

	self path: '/api/pub/sim'.
	self addPath: anId.
	self addPath: 'offset/0/size/10'.
	
	^(AMDataAPIResponse parse: self get resultAs: AMPublication ) data
	