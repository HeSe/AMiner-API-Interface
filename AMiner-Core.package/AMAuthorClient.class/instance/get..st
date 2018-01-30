public
get: aParameter

	self path: '/api/search/person/advanced'.
	aParameter asQueryOn: self.
	
	^ (AMAPIResponse parse: self get resultAs: AMAuthor ) result
	