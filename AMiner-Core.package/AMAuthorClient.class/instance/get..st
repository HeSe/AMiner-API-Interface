public
get: aParameter

	self path: '/api/search/person/advanced'.
	aParameter asQueryOn: self.
	
	^ (AMSearchAPIResponse parse: self get resultAs: AMAuthor ) result
	