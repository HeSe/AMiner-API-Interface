parsing
neoJsonMapping: mapper
	
	mapper for: self do: [ :mapping |
		mapping mapInstVars: #(status data).
		].
	
	mapper for: #AMPublication customDo: [ :mapping |
		mapping listOfElementSchema: AMPublication ].