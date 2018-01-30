initialization
asQueryOn: aClient

	paramDict keysAndValuesDo:[:key :value |
		aClient queryAt: key put: value
	]
	