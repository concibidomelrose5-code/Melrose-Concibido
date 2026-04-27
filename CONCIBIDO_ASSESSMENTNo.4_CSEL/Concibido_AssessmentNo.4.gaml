 /**
* Name: Classroom
* Based on the internal empty template. 
* Author: val
* Tags: 
*/


model classroom_simulation

global {
	float world_size <- 40.0;

	// monitoring variables
	float avg_score -> { student mean_of each.score };
	float avg_energy -> { student mean_of each.energy };
	int inactive_student -> { student count (each.status = "inactive") };

   init {
      create student number: 20;
   }
   reflex classroom_cycle {
   	save [
   		cycle,
   		avg_score,
   		avg_energy,
   		inactive_student

   	]
   	to: "classroom_data.csv"
        format: "csv"
        rewrite: (cycle = 0) ? true : false
        header: true;
   }

}

//Creating a student species
species student {
   int energy <- 5;
   int score <- 0;
   string status <- "active";

   //color coding (blue as active)
   rgb color <- #blue;

   reflex participate when: status = "active" {
      if flip(0.5) {
         score <- score + 1;
         energy <- energy - 1;
      }
   }
	// update the status of students
   reflex update_status {
   if energy <= 0 {
      status <- "inactive";
      color <- #red;  // (red as inactive)
   }
}

      aspect base {
      draw circle(2) color: color;
   }
}

experiment classroom_simulation type: gui {

   output {
      display main_display type: 2d {
         species student aspect: base;
      }

      monitor "Average Score" value: avg_score;
      monitor "Average Energy" value: avg_energy;
      monitor "Inactive Students" value: inactive_student;
   }
}