initialization
get
	^ [ rawHttpResponse := znHttpClient get ] 
		on: ZnHttpUnsuccessful
		do: [ :exception | Transcript crShow: exception ]