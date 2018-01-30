accessing
neoJsonMapping: mapper

	mapper for: self do: [ :mapping |
		mapping mapInstVars:#(num_viewed work bind name hidden aff pos avatar is_following indices seminar_viewed links acm_citations edu award honor revised locks id src is_holding num_followed intr).
		(mapping mapInstVar: #contact) valueSchema: AMContact.].
	 