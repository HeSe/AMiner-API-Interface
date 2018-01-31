example
exampleCitations
		|pub|
		pub := self examplePublication first. 
	^ (AMPublicationClient new getCitations: pub id start: 0 count: 10) inspect