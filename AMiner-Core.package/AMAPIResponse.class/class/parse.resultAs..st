accessing
parse: jsonString resultAs: resultClass
	| reader |
	reader := NeoJSONReader on: jsonString readStream.
	
	self neoJsonMapping: reader.
	reader
		for: self
		do: [ :mapping | 
			(mapping mapInstVar: #result) valueSchema: resultClass name asSymbol ].
			
	^ [ reader nextAs: self]
		on: NeoJSONParseError
		do: [ :err | 
			| json |
			json := NeoJSONReader fromString: jsonString.
			(json at: 'status')
				ifFalse: [ self error: (json at: 'message') ]
ifTrue: [ self error: 'UNKNOWN ERROR' ] ]