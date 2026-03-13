Modeling Student Attention and Performance Using Agent-Based Simulation
 
PART 1 — Pre-Lab Concept Questions (15 minutes) Answer the following before running the simulation:
1.   	What is an agent in an Agent-Based Model?
- An agent is a single, autonomous entity in the simulation. Every student in this model is an agent with actions like moving, losing focus or performing better.
2. What is the difference between:
·         global variables - values that are used within the simulation. Every agent has access to them. For instance, total pupils, average focus.
·         species variables? – Each agent has its own species variables. Every agent has a unique value. As an example, every student has their own focus or output.
3. What does this expression mean?
student mean_of each.attention
-It means that the system determines how much attention each student pays on average.
4. What happens if attention continuously decreases without a break?
-Students will soon lose focus entirely and their performance will cease to improve if they continue to pay less attention.

PART 2 — Run the Base Model 
Step 1: Run the provided model.
![alt text](<image.png (2).png>) ![alt text](<image.png (3).png>)

Step 2 Observe: 
• Student movement  - During the simulation, the students move around the environment in different directions. Their movement appears random, representing how students in a classroom may shift positions, interact with others, or become distracted over time. This mobility allows agents to encounter different neighbors and environments, which may influence their behavior and attention levels.
• Color changes  - The color of each student changes depending on their current attention level. Students with higher attention appear in brighter or more positive colors, while students with lower attention appear in darker or more negative colors. These color changes make it easier to visually observe how attention fluctuates throughout the simulation and how students respond to breaks or periods of continuous work.
• Monitor values - The monitor values continuously update while the simulation is running. These monitors display important metrics such as the average attention level of students and their overall performance. As time progresses, the values change depending on factors such as attention decay, student movement, and scheduled breaks. Observing these values helps understand how the system behaves over multiple cycles.

Step 3: Open the generated file: classroom_data.csv
![alt text](image.png.png)

PART 3:  Data Observation 
Table Fill in the table after 100 cycles: 
Metric
Value
Average Attention
80
Average Performance 
1.0
High Attention Count 
25
Number of Breaks Occurred 
1

PART 4 -  Guided Code Analysis 

Questions: 
1. Does attention increase faster? 
Yes. When the break interval is changed from 30 cycles to 15 cycles, breaks occur more frequently. This allows students to recover their attention more often, which helps their attention levels increase faster compared to the original setting.
2. Does performance grow faster? 
Yes. Since attention became more frequent, students are able to maintain better focus during the simulation. Because performance growth depends on attention levels, higher and more stable attention allows performance to improve more quickly.
3. Is the system more stable?
Yes. With more breaks, attention does not drop as low as before. This helps prevent large decreases in attention levels and keeps the system more balanced over time, resulting in more stable behavior in the simulation.

 Activity 2: Attention Decay Rate 

• Does attention collapse? 
Yes. When the attention decay rate is increased, students lose their attention much faster as the simulation runs. Because attention decreases more quickly, many students reach low attention levels in a shorter amount of time, which makes the overall attention of the class drop significantly.
• Does performance still improve? Explain why. 
Performance can still improve slightly, but it grows much slower than before. This happens because performance depends on the students’ attention levels. When attention drops quickly, students do not stay focused long enough to consistently improve their performance.

Activity 3: Performance Growth Condition
Original:
if (attention > 0.6)

Task:
Change threshold to:
0.8

Questions:
•	Does performance improve slower? Yes. Fewer students reach the higher attention threshold, so performance increases more slowly.
•	What does this represent in real classroom settings? It represents that students need very high focus before their learning performance improves.

PART 5 — Experiment: Class Size Impact (30 minutes)
Use parameter:
Initial number of students Test:
![alt text](<image.png (5).png>)

Analysis Questions:
1.	Does increasing class size affect average attention? Yes. According to your data, the average attention is highest (1.0) when there are only 10 students. As the number of students increases to 100, the average attention drops to 0.90. This suggests that a larger "class size" in the simulation leads to a decrease in overall focus, likely due to increased agent density or interactions that cause distractions.
2.	Does mobility create more randomness? Yes. In an Agent-Based Model like GAMA, when agents (students) move around, their interactions with their environment and other agents change constantly. This movement prevents the simulation from being "static" and ensures that attention levels and performance growth vary across the room rather than staying uniform, adding a layer of stochastic (random) behavior to the results.
3.	Is emergent behavior visible? Yes. Emergent behavior occurs when simple rules for individuals create complex patterns for the whole group.

PART 6 — Data Analysis Task (Optional Python)
Using Excel or Power Query Editor
1.	Load classroom_data.csv
2.	Plot: 
o	Attention vs Cycle
o	Performance vs Cycle
![alt text](<image.png (6).png>)
3.	Identify break cycles. They happen consistently and frequently across the entire chart, showing a repeating pattern of focus followed by a quick reset.
4.	Compute correlation between attention and performance. There is no real connection between the two. While attention (blue) keeps jumping up and down, performance (orange) stays perfectly steady at the top. This means the drops in attention do not hurt the performance at all.

Question:
Is performance strongly dependent on attention? Yes. Performance increases only when attention passes a certain level, showing a strong relationship between the two variables.

PART 7 — Critical Thinking Questions
1.	Why does performance only increase when attention > 0.6? Performance increases only when attention > 0.6 because students must reach a certain level of concentration first before their learning or performance can improve.
2.	Is this model deterministic or stochasticThe model is stochastic since random factors like mobility and attention influence how the simulation behaves.
3.	What real-world classroom factors are missing?Some real classroom factors are missing, such as teacher guidance, interaction between students, the classroom environment, and differences in how students learn.
4.	How would peer influence affect the system?Peer influence could affect the system because attentive students might encourage or help nearby classmates become more focused.

PART 8 — Advanced Extension Tasks (Choose One) 
Option A: Peer Influence
Add logic:
•	Students near high-attention peers increase attention.
![alt text](<image.png (7).png>)

code ![alt text](image.png)
The code was modified by adding a teacher agent to the classroom model. The teacher appears as a black square and stays in the environment with the students. When students are within a certain distance from the teacher, their attention increases and their mobility decreases, which represents students becoming more focused when the teacher is nearby. This change simulates how a teacher’s presence can influence student behavior and improve attention in the classroom.


