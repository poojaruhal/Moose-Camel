instance creation
fromJson: aJsonOutput for: aQuestion
	"aJsonOutput is a parsed json string with the help of NeoJSONReader"
	
	^ self new
		json: aJsonOutput;
		question: aQuestion