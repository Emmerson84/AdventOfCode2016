var directtions =  "R3, L5, R2, L1, L2, R5, L2, R2, L2, L2, L1, R2, L2, R4, R4, R1, L2, L3, R3, L1, R2, L2, L4, R4, R5, L3, R3, L3, L3, R4, R5, L3, R3, L5, L1, L2, R2, L1, R3, R1, L1, R187, L1, R2, R47, L5, L1, L2, R4, R3, L3, R3, R4, R1, R3, L1, L4, L1, R2, L1, R4, R5, L1, R77, L5, L4, R3, L2, R4, R5, R5, L2, L2, R2, R5, L2, R194, R5, L2, R4, L5, L4, L2, R5, L3, L2, L5, R5, R2, L3, R3, R1, L4, R2, L1, R5, L1, R5, L1, L1, R3, L1, R5, R2, R5, R5, L4, L5, L5, L5, R3, L2, L5, L4, R3, R1, R1, R4, L2, L4, R5, R5, R4, L2, L2, R5, R5, L5, L2, R4, R4, L4, R1, L3, R1, L1, L1, L1, L4, R5, R4, L4, L4, R5, R3, L2, L2, R3, R1, R4, L3, R1, L4, R3, L3, L2, R2, R2, R2, L1, L4, R3, R2, R2, L3, R2, L3, L2, R4, L2, R3, L4, R5, R4, R1, R5, R3";
directtions = directtions.split(", ");


var nose = "north";
var locationX:int = 0;
var locationY:int = 0;



for( var i = 0; i < directtions.length; i++) {
	
	var directionParts = directtions[i].split("");
	var leftRight = directionParts[0];
	var distance = directionParts[1];
	
	if (directionParts.length > 2) {
		
		for (var j = 2; j < directionParts.length; j++){
			distance += directionParts[j]; 
		}
	}
	
	switch(nose) {
		case "north":
			if(leftRight == "R") {
				nose = "east";
				locationX += int(distance);
								
			} else if(leftRight == "L") {
				nose = "west";
				locationX -= int(distance);
			}
		
		break;
		
		case "south":
			if(leftRight == "R") {
				nose = "west";
				locationX -= int(distance);
				
			} else if(leftRight == "L") {
				nose = "east";
				locationX += int(distance);
			}
		
		break;
		
		case "east":
			if(leftRight == "R") {
				nose = "south";
				locationY += int(distance);
				
			} else if(leftRight == "L") {
				nose = "north";
				locationY -= int(distance);
				
			}
		
		break;
		
		case "west":
			if(leftRight == "R") {
				nose = "north";
				locationY -= int(distance);
			
			} else if(leftRight == "L") {
				nose = "south";
				locationY += int(distance);
			}
		
		break;
	}
}
var bloks = Math.abs(locationY) + Math.abs(locationX);
trace(bloks);