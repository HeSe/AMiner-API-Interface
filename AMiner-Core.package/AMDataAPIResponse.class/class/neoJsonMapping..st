parsing
neoJsonMapping: mapper
	
	mapper for: self do: [ :mapping |
		mapping mapInstVars: #(status data).
		].
	
	