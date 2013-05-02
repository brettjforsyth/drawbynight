// Global variables

// Setup the Processing Canvas
void setup() {
	size(640,640);
	H.init(this).background(#000000);
	smooth();

	final HColorPool colors = new HColorPool(#702917,#8D3D22,#29160F,#4E2716,#B76540,#90601E,#C59741,#71541C,#B58920,#DBC059,#957E20,#D1B42C,#F9EE5E,#F9F8DA);

	HShape svg1 = new HShape("svg/scarab_05.svg");
	svg1
		.loc(width/2,height/2)
		.anchorAt(H.CENTER_X | H.CENTER_Y)
		.strokeWeight(6)
		.stroke(#ffffff)
		.scale(.5)
		.rotation(90f)
	;
	svg1.randomColors(colors).fillOnly();
	H.add(svg1);
	H.drawStage();
	//http://processing.org/reference/noLoop_.html
	noLoop();
}

// Main draw loop
void draw() {

}