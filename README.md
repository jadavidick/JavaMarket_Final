# JavaMarket_Final
Leopards Checkpoint E 

Team Members: Tommy Aliff, Joshua Davidick, Calvin Padgett, Andrew Pham


I’m pasting last checkpoint’s readme below this one because I forgot to include it in the .jar. 

This checkpoint was mostly Josh working on the database and consulting with me about it. As always, everyone looked at what we were doing and tested the code. I also had to modify some of the code that was giving suggestions about lane additions and subtractions.

Here’s what Josh did: 

•	Wrote the code that stores information into the database.
•	Created the script and tweaked it where needed to create the database online.
•	Debugged and rewrote code to properly be formatted and sent to the online database and then have it retrieved and output into eclipse.
•	Wrote the script for these procedures:
•	pick_CustID: This gets the information of each customer with the same ID you enter the prompt. If there is only one run of the program, only one customer will be present. If there were multiple runs of the program, it would show you each customer with the desired ID and the data that is stored with it. You can differentiate each customer by their “RunID”
•	ppl_AndAvgPerLane: This will show you the number of lanes, both full and self-service. It will show the average wait time in each lane along with the total number of people from the run of the program. If there is only one run of the program, the “RunID” will indicate as such. If there are multiple runs of the program, each set of data can be distinguished by the “RunID”.
•	lane_stats: This procedure will get the average statistics of a given lane. The user will be prompted for either self service or full service, and from there the user will receive information based on the desired lane. The information will be displayed in the console with labels for each of the data. 

Here’s the Checkpoint D Readme:

This version has a variable number of full and self service lanes along with suggestions for optimization, as per the assignment. There is a menu option for saving the data to a html file which includes specific detailed information for each customer as well as summary data. Summary data is also printed to the console along with a section containing suggested improvements, along with the specific information used to make those suggestions.
I'm including a copy of the chart I drew by hand to look at the effects of adding and subtracting lanes on wait times and the percentage of time lanes were unoccupied. The HTML pages containing the data summarized in the chart are also included. For the parameters I used constant values of 1-4 minutes between arivals, 5-9 minute service times, and a 20% addition to the service time of self checkout customers. The given information, in combination with the numerous debugging runs I had already done, was enough to write the algorithm for making recommendations. I then tested the algorithm using various parameters  and after a little tweaking it seemed to hold up pretty well (I was going to explain the algorithm but realized it would take up half a page! It's in the SuggestionBox class if you would like to see it).

Division of Labor:
Tommy wrote the code for this checkpoint
Calvin, Andrew, and Josh tested
(We divided the work up by checkpoint for the last three checkpoints - Calvin/Andrew did C, Tommy did this one, Josh is doing the database for E, but we all pitch in whenever needed)
We have continued to meet once per week.
Everything is still going smoothly.
