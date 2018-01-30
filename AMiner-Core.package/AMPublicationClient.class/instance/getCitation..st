public
getCitation: anId

	|responseObj citationData citation|

	self path: '/api/pub/ctext'.
	self addPath: anId.
	
	responseObj := (AMDataAPIResponse parseMap: self get ).
	
	citation := AMCitation new.
	
	(responseObj status) = false
		ifTrue:[^citation].
		
	citationData := responseObj data.
	
	^citation 
			bib: ((citationData at: #bib) at: #data);
			apa: ((citationData at: #apa) at: #data);
			mla: ((citationData at: #mla) at: #data);
			chicago: ((citationData at: #chicago) at: #data);
			yourself