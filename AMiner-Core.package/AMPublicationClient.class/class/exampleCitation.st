example
exampleCitation
		|pub|
		pub := self examplePublication first. 
	^ (AMPublicationClient new getCitation: pub id ) inspect