PART 1 - Simulation Scenario

You will create a simple classroom participation simulation. Each student agent has the following attributes:

Attribute Description energy ability of the student to participate score participation score status active or inactive Rules

1. Students may participate in class.
2. When participating: o score increases by 1 o energy decreases by 1
3. When energy reaches 0, the student becomes inactive.

PART 2 - Step 1: Create the model
Create a new GAMA model. Example: model classroom_simulation ![alt text](<Screenshot (243).png>)

PART 3 - Step 2: Define the Student Agent
Create a student species. Example: species student {
int energy <- 5; int score <- 0; string status <- "active"; ![alt text](2(1).jpg)

PART 4 – Step 3: Add Behavior (Participation)
Students randomly participate in class. Example: reflex participate when: status = "active" {

if flip(0.4) { score <- score + 1; energy <- energy - 1;
}
} Explanation: • flip(0.4) means 40% chance of participation.![alt text](3(1).jpg)

PART 5 – Step 4: Add Reflex for Status Update
When energy becomes 0, change the status. reflex update_status {
if energy <= 0 { status <- "inactive"; ![alt text](4(1).jpg)

PART 6 – Step 5: Create the Environment
Add the global section. global {
init { create student number: 20; ![alt text](5(1).jpg)

PART 7 – Step 6: Run the Simulation ![alt text](6.jpg) ![alt text](7.jpg)

Observe the following: 
 • Which students participate the most - Students with high energy participate more because they can keep going longer before getting tired.
 • How energy changes over time - Energy slowly goes down over time until it reaches 0.0.
 • When students become inactive - Students become inactive when their energy becomes zero, and by the last cycle all 20 students are inactive.

PART 8 - Guide Questions
Answer the following questions:

1. What happens to students when energy reaches 0? When energy becomes 0, students stop joining activities, turn from blue to red, and are marked as inactive.
2. How does participation affect score and energy? More participation raises the average score but makes energy drop faster until it reaches 0.0.
3. If participation probability increases to 0.8, what happens? Students participate more often, so their energy runs out faster and they become inactive sooner.
4. What pattern do you observe in the simulation? The simulation shows that high activity uses up energy over time, causing all students to slowly become inactive.
