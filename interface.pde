//indra budiman, 2019

PFont tulisan;
import processing.serial.*;
serial mySerial;
String data="";
PFont myFont;

void setup (){
	smooth();
	tulisan = loadFont("BellMTBold-48.vlw");
	textFont(tulisan);
	size(1366, 900);
	mySerial = new Serial(this, "COM19", 9600);
	mySerial.bufferUntil('\n);
}

void draw(){
	background(#F0FFFF);
	textSize(50);
	text("Teknik Interfacing dan Sistem Embedded", 693, 120);
	textSize(50);
	text("KELOMPOK B", 683, 170);
	textSize(35);
	fill (#008BBB);
	textAlign(CENTER);
	text(data, 683, 370);
}

void serialEvent (Serial mySerial){
	data = mySerial.readStringUntil('\n');
}
