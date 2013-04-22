// Global variables
HEllipse myEllipse;
// Setup the Processing Canvas
void setup() {
	size(640,640);
	H.init(this).background(#000000);
	smooth();

	myEllipse = new HEllipse(50,25);
	myEllipse
		.fill(#FF9900)
		.stroke(#000000, 150)
		.strokeWeight(1)
		.anchorAt(H.CENTER)
		.rotation(45)
		.loc(247,height / 2)
		.extras(
			new HBundle()
			.num( "letsRotate", 1f )
		);
	;
	H.add(myEllipse);

	
	//http://processing.org/reference/noLoop_.html
	//noLoop();
}

// Main draw loop
void draw() {
	HBundle e1 = myEllipse.extras(); myEllipse.rotate(e1.num("letsRotate"));
	H.drawStage(); // paint the stage
}