initialization
client
	
	^ZnClient new
		https;
		enforceHttpSuccess: true;
		accept: ZnMimeType applicationJson;
		host: 'api.aminer.org'