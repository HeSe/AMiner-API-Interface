example
exampleCitationText
		|pub|
		pub := self examplePublication first. 
	^ (AMPublicationClient new getCitationText: pub id ) inspect