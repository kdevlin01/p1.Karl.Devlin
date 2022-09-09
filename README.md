# Human Computer Interaction Prject 1
- This is a repo for Project 1 of CS 3366-002

Project requirements:
===

**To get a C, you need to:**
- [x] Find an elevator in the apartment/hotel/airport. Only one example for each student.
- [x] Take photos of the control interface
- [x] Show a gif image of the control interface in operation.
- [x] Find the issues with the current design.
- [x] Explain why it is good/bad.

**To get a B, you need to:**
- [ ] Think about the common things that you use an elevator. List your most common uses and other more rare uses. Does the interface make doing those common things easier?
- [ ] Think about how the user interacts with the elevator. What is the common sequence of actions?
- [ ] How does the elevator support the user to figure out how to make it work?
- [ ] How does the elevator provide feedback to the user?
- [ ] What are some common mistakes you can make with this current design?
- [ ] Suggest the improvements to make on the control interface. Sketch your solution. And justify your design decisions.
- [ ] Here is an example of Low-Fidelity Prototype sketching out the design (for a different purpose).


**To get a A, you need to:**
- [ ] Come with your design for the touch screen? What is the screen size that you want?
- [ ] Design and implement interactive features
- [ ] Design and implement user feedback
- [ ] You use Processing for this project.

**You can get extra credits if:**
- [ ] Your design supports people with disabilities
- [ ] You provide extra useful information on the display interface.
- [ ] Your imagination ...

# Report
## Part C

- **ELEVATOR BUTTON PANEL**
<img src=Panel.JPG title='ELEVATOR BUTTON PANEL' width=600>

- **FRONT DOOR**
<img src=FDandPanel.JPG title='FRONT DOOR' width=600>

- **REAR DOOR**
<img src=RD.JPG title='REAR DOOR' width=600>

- **GIF of Interface**
<img src='p1.Karl.Devlin.gif' title='GIF Walkthrough' width='' alt='Video Walkthrough' />

**Issues with current Design**
* Labeling is hard to read.
  * Bad Design. The font is inconsistent and hard to read from any convenient distance.   
* Emergency phone button label is confusing.
  * Bad design. "HELP", "PHONE", "PUSH TO CALL" are all reffering to the same button, the redundancy of these labels is confusing, and would impede the users cognitive abilities in time of crisis.
* It is hard to differentiate betweeen rear and front buttons.
  * Bad design. A more understandable design than a simple "#R" label would be better. For instance: a color-code system or tabular design.
* Buttons are organized well and are all accounted for.
  * Good design. It is easy to identify buttons and none are missing.
* Design is uniform and viually appealing.
  * Good design. The design is easy to look at and does not distract the user from properly using the elevator.

## Part B
* Think about the common things that you use an elevator. List your most common uses and other more rare uses. Does the interface make doing those common things easier?
  * Common uses:
    * Selecting Floors 
    * Closing/Opening the door
    * View the current floor
  * Rare uses:
    * Ringing the alarm
    * Calling for help
    * Reading the labels in braille
  * This interface does make using the common features easier. However the rear door operations could be labeled better.
* Think about how the user interacts with the elevator. What is the common sequence of actions?
  1. The user calls the elevator to their floor
  2. The user walks in the elevator doors
  3. The user turns to face the control panel
  4. The user selects desired floor and floor button illuminates
  5. *optional* The user holds open doors for companion or closes the doors as they are impatient
  6. The elevator doors close
  7. The elevator moves to the desired floor and floor button deluminates
  8. The elevator arrives at the desired floor
  9. The elevator doors open
  10. The user exits the elevator
  11. The elevator doors close
* How does the elevator support the user to figure out how to make it work?
  * The elevator panel buttons are large and easy to use. There is no need for written instruction as the use of elevators is universal knowledge in western society. A prerequisite for users operating elevators is general knowledge of how they work.
* How does the elevator provide feedback to the user?
  * The buttons illuminate when pressed.
  * The digital display shows the current floor and changes as the elevator moves.
  * A tune notifies the user whenthe floors change and a different, longer tune notifies the user when the doors open and the elevator has arrived at a desired floor.
* What are some common mistakes you can make with this current design?
  * The user can confuse front door with rear door. 
  * The user can get lost on which floor they want as there are two different buttons for the same floor, one for rear and one for front door use.
  * The user can become confused on how to use the emergency call button as it has too many labels surrounding it.
* Suggest the improvements to make on the control interface. Sketch your solution. And justify your design decisions.
  * Remove the rear door buttons form the interface as they only confuse the user.
  * Make both rear and front doors operate simultaneously. 
    * For instance, both doors open/close at the same time, with the exception of the 3rd floor as it has no rear door option. 
  * Remove the redundant labeling as user's are lazy and will not read unless mandatory. The idea is to make the elevator use as inherently easy as possible.
