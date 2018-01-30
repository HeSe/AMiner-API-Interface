public
get: aParameter

	self path: '/api/search/pub/advanced'.
	aParameter asQueryOn: self.
	
	^ (AMAPIResponse parse: self get resultAs: AMPublication ) result
	