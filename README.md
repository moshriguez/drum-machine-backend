# drum-machine-backend

Models:
User -------------< Beat --< Beat-Pad >-- Pad
   |                |
   ---< Comments >---

User:
Username
Password_digest
Bio
Beat:
Name
Description
User_id
Comment:
User_id
Beat_id
Content
Pad:
Name
Sample_file
Beat-Pad:
Beat_id
Pad_id
Sequence
Volume

## User Stories:
Users will be able to:
[] Create a new user
[] Username will have uniqueness and length validations
    [] Password will have a length requirement and require an upper case, a lower case and a number
    [] Login as an existing user with username and password
[] See a drum machine user interface with 4 different instruments and a 4 pad sequencer dividing one measure into 4 quarter notes in 4/4 time
[] Press play to hear the drum loop
[] Click on a button to select an individual drum
[] Drum machine user interface will have an options section that will be reused for each drum
[] Using the options section, users will be able to:
[] Change the pattern for each instrument
[] Change the volume for each instrument
[] Change the tempo for the drum loop
[] Play button becomes the stop button during playback and stops the loop when clicked
[] Click save to give the beat a name, description and persist the data to the DB
[] Beat will have presence and uniqueness validation for a given user
[] Each instrument will have its own save button to save the beat-pad
[] View their personal profile page
    [] Contains bio
    [] Saved beats and links to them
    [] Feed with most recently saved beats and links to view beats
[] Edit bio from personal profile page
[] Delete account
[] View another user’s page to view their bio, list of user’s beats and list of most recent comments the user made

## Stretch Goals:
[] Add up to 10 instruments
[] Add up to 16 pads to create one measure that is subdivided into 16th notes in 4/4 time
[] Ability to program beats longer than one measure
[] Ability to program beats in other time signatures
[] Add panning for each instrument
[] Add pitch for each instrument
[] User is warned before navigating away from an unsaved beat
[] Users can upload their own sample for each instrument
[] Add reverb or delay to each instrument
[] Users can follow other users
[] User’s profile will display a list of user’s followers and the users they follow
[] Users have an avatar or profile pic
[] User’s feed includes commenting activity
[] User’s feed includes following activity
[] Responsive to different screen sizes
[] Change to one save button to save whole beat
