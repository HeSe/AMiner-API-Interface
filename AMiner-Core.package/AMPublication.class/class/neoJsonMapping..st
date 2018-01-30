accessing
neoJsonMapping: mapper

	mapper for: self do: [ :mapping |
		mapping mapInstVars:#(abstract_zh num_viewed title_zh year num_starred urls issn pdf isbn wos_type lang retrieve_info doi num_citation highlight labels title author_ids pages keywords_zh hash classes score keywords venue id num_wos_citation abstract versions hash_zh).
		(mapping mapInstVar: #authors) valueSchema: #ArrayOfAMAuthors.].
	
	mapper for: #ArrayOfAMAuthors customDo: [ :mapping |
		mapping listOfElementSchema: AMAuthor ].  