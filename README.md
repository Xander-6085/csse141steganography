# CSSE141 Steganography CTF Competiton

## Writeup
The challenge starts with a bunch of files that should be checked for a file type. All of the .pngs and happy are just pngs, smile comes out as pure data, but alien comes up as ASCII text. 

Reading through alien, you can notice the format is basically just JSON, and if you do a bit of research you can realize the GRC attributes in the alien file point to it actually being a gnuradio-companion file. 

After installing gnuradio-companion and opening the file, you should see an array of image blocks in the top right that point to the various number pngs. These spell out an IP address. Alternatively, you can run the file and the IP will be printed in the middle of the screen. 

Putting the IP in your web browser will lead to a webpage that has a bunch of filler text. If you hover over the bottom of the page, an image will appear that can be clicked.

Clicking the image redirects you to a simple chatbot interface. You are given a connection to a locally running AI bot that pretends like it is a bridge troll and needs you to answer its riddle before it will give you the flag. I set the AI to accept nearly everything, so you just have to manipulate it until it hands the flag over. I really hope EIT's dhcp policy doesn't destroy my web server before the competition in class.

All hosted files can be viewed at [my github page](https://github.com/Xander-6085/csse141steganography).

## Folder Structure
- /challenge: All the files provided to competitors
- /hosted_files: All the files to be hosted on a server

## Notes
- The challenge's grc file provides an IP address to the server host. This IP is used to access the second half of the challenge, so make sure to change it to the correct IP address. This can be done by manipulating the "GUI Hint" attribute of the QT GUI Graphic Items to position the numbers in order. Each QT GUI Graphic Item displays one of the number PNGs in a position dictated by the GUI Hint attribute. See [the GUI Hint documentation](https://wiki.gnuradio.org/index.php?title=GUI_Hint) for more information.
