example
exampleSimilarPublications
		|pub|
		pub := self examplePublication second. 
	^ (AMPublicationClient new getSimilarPublications: pub id ) inspect