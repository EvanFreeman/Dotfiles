## 1\. CtrlP (File Search)

Very awesome plugin for Vim. Which help us to search files very quickly. 

## 2\. Syntastic (Syntax Checker)

Another very useful plugin for all programming languages. This plugin will help you to keep the syntax of a program correct -- like auto correct in other IDE's. This package is a general one so we can expand it very easily by support for new languages. By default it supports lot of programming languages. So this plugin is a must one for Vim.

For example, if you are editing a RST file (All my blog posts are in reStructured Text format) and you made some syntax errors in it and then you saved it, after the save operation the Syntastic Plugin will check for any syntax errors on your file automatically and show you the location of the error and its reason very neatly.

Take a look at a portion of the rst file of this blog post. I made a syntax error in the image tag,

Similarly Synstastic will help you to follow the standard coding methods defined by different programming communities. For eg; Python code has **PEP8** standard, so while writing the python code, if we are not following it, Synstastic will show you the errors. After a while you would learn the PEP8 standard without any extra work :).

## 3\. Snipmate (Code Templates)

A simple way to avoid typing some repetitive sequence of codes. For example, in python, we initialize a class by typing class keyword, name, etc... Instead of doing all those drama, we can just populate the default set of class structure from snipmate by typing **cl** . Try out it by opening a python test file.

The Snimpate plugin provide a lot of such shortcuts for different programming languages. We can also define our own snippets. For web developers it would be very easy if we have snippets for , 
 tag completions. By default Snipmate does have support for different html tags. Please check the snippets folder(~/.vim/bundle/snippets/) to see all available snippets for a particular language or markup.

More examples;

After typing cl press tab and see the magic of full class structure. Similarly you can define your own snippets. For eg; for  to expand the for statement of your language.

## 4\. NerdTree (File Browser)

This will display your project directory structure in tree format. It provides lot of shortcuts to navigate through the source tree easily. It is an another common Plugin required for an IDE. Check the below image to see how it looks like.

Shortcuts - I mapped the following keys in .vimrc file to show and hide the Nerdtree when ever required. You can re-map this to your own choice.

## 5\. Tagbar (Class Browser)

This plugin is similar to the NerdTree, but instead of listing project directory structure it list the objects and functions names inside a file. Like Class browser in other IDE's.

I mapped l to open tagbar and same combination to close it also.

## 6\. Simple Pairs.

This is a simple plugin to auto complete single quote, double quote, parentheses. This is a very handy to save few key press.

## Others

This section is to discus about already existing awesome features build in with the Vim. You can consider me as a beginner in this area :). If you are looking for learning more advanced details of the Vim editor, you don't need to search on google, you can find it out under its documentation itself.

To see all documentation type ESC + :help. The documentation is very huge, so Vim provides search option across all its documentation. To see a documentation about a topic, type ESC + :help 

For eg;

To see about the documentation of _jumps_ , type : ESC + :help jumps

I wrote above example, because it is an another interesting feature required for modern IDE. The thing is that it was already build in with Vim.

1. **Jump List**

I found this feature accidentally. It is to jump across different files and the same time it have an option for jump back through all the files that we came across.

To understand this feature - If we used Rope plugin to see definition of a function outside the current file, it will open a new buffer in Vim and it take you to that file. What if we want to come back to the same location of previous file ?. This requires jump back operation. Press CTRL + o, you can see the magic. Press CTRL +  to go forward again.

There is much more things are there about jumplist, Vim internally keeps the list of our locations across different files. you can see that by typing :jumps. Different instances of the Vim will share the same jump list.

Similar to this, lot of things are out there to learn. This Others section is not going to end here :). But for now I'm stopping here.

So the explanation of Vim feature is over now, lets take a look at how to setup the Vim to get all these above features and make Vim ready to extend with new plugins.

### Setup Vim from Scratch

All required packages are there in my Vim [github][16] project. I put all those settings and plugins in standard way. So you can extend or remove them when ever required.

Before doing this, please take a backup of your current Vim settings from your home directory.

We can start the installation by picking my Git Repository,


    $git clone git://github.com/evanfreeman/Dotfiles.git

    $cd Dotfiles


I kept all the required plugins as git submodules. So we will get the new changes from the plugin projects by updating the submodule project. While cloning my main repo, it won't retrieve the submodules or external plugin git projects. But we have all the settings and paths in my git projects itself. So we can easily fetch the current stable code from all the external projects. To do that, type below commands inside your Dotfiles folder.


    $pwd
    /Dotfiles

    $git submodule init
    $git submodule update


Now you have all the files required to get start with Vim, Next thing is to link my git files as your vim files. To do that just create soft link of the Vim system files and then point it to my git repository files. Here is the steps.


    $cd
    $ln -s Dotfiles/vim-files/vim .vim
    $ln -s Dotfiles/vim-files/vim/vimrc .vimrc


Thats it, now open your vim, you can see all the features described above are being available.

### Some Vim shortcuts


    In normal mode
    ==============

    :23,30m200  -- Move a section of code to another line.

    df, (reverse dF,)   -- Delete all characters till , on the current line.

    I  -- Go to beginning of the line as insert mode.

    $   -- In command mode, go to end of the line.

    gg  -- Go to beginning of the file

    G  -- Go to end of the file.

    CTRL + o, CTRL + i  -- Jumps back and forward, very useful.

    CTRL + h/j/k/l  -- Move the selection to different split windows and
    MinibuferExplorer.

    CTRL + F    -- Page down scroll.

    CTRL + B    -- Page back scroll.


### Summary

All these hard works to setup your Vim would be useful to you only when you realize the fact that the Vim basic editing features will save you a lot of your time and increase the productivity. For that you don't required above discussed plugin features. The plugins will only reduce some keystrokes via we will get some productivity improvements. But it won't turn you from other editors to Vim. Vim default features are more than enough to attract you to use Vim. I hope you understood my feeling. :)

Enjoy the Vim hacking.
  
