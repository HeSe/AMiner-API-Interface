example
exampleCitations
		|pub|
		pub := self examplePublication first. 
	^ (AMPublicationClient new getCitations: pub id ) inspect