initialization
asQueryString

	^(String streamContents: [ :stream |
				paramDict   
					associations do: [ :each | stream nextPutAll: each key asString.
													  stream nextPut: $=.
													  stream nextPutAll: each value asString.
													  ]
									separatedBy: [ stream nextPut: $&].
													  ] ) 