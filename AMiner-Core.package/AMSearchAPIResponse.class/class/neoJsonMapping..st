accessing
neoJsonMapping: mapper
	
	mapper for: self do: [ :mapping |
		mapping mapInstVars: #(querytype time1).
		].
	
	mapper for: #AMAuthor customDo: [ :mapping |
		mapping listOfElementSchema: AMAuthor ].  
	
	mapper for: #AMPublication customDo: [ :mapping |
		mapping listOfElementSchema: AMPublication ].