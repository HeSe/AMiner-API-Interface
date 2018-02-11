adding
addEvents: bitmap
	bitmap when: AMRemoveGraph do: [ :evt| self processRemoveGraph: evt. ].
	bitmap when: AMRemoveSubGraph do: [ :evt | self processRemoveSubGraph: evt ].
	bitmap when: AMRemoveAuthor do: [ :evt | self processRemoveAuthor: evt ].
	bitmap when: AMRemovePublication do: [ :evt | self processRemovePublication: evt ].
	
	bitmap when: AMAddGraph do: [ :evt| self processAddGraph: evt. ].
	bitmap when: AMAddSubGraph do: [ :evt | self processAddSubGraph: evt ].
	bitmap when: AMAddAuthor do: [ :evt | self processAddAuthor: evt ].
	bitmap when: AMAddPublication do: [ :evt | self processAddPublication: evt ].