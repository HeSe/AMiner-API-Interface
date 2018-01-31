public
getPublications: aParameter

	self path: '/api/search/pub/advanced'.
	aParameter asQueryOn: self.
	
	^ (AMSearchAPIResponse parse: self get resultAs: AMPublication ) result
	