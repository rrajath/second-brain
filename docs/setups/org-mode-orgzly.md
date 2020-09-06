[org-mode](https://orgmode.org) on [Emacs](https://www.gnu.org/software/emacs) on a desktop/laptop is great to use, but to use it on the phone, I need [Orgzly](http://www.orgzly.com). I tried [organice](https://organice.200ok.ch), but I didn't like it because I didn't want to use a web browser every time and I wanted something native. So, the other option was Orgzly. I like it for the most part, but it doesn't have a great sync mechanism. That's what happens when an app doesn't store data on the cloud and lets it's users deal with syncing; which is a good thing with respect to privacy, but also add friction with setups making it a double-edged sword. So, anyway, I ended up using Orgzly.

After looking around on Reddit and other forums, I found some suggestions.

Orgzly supports dropbox, webdav and local repository for syncing.

-   Dropbox sync didn't work well, plus I wanted to own my data.
-   WebDAV seemed like a good option, but I have to tinker my Raspberry Pi that I'm hosting and I didn't have the time to set it up
-   Local repo sounded like the only feasible option (**winner**)

What I ended up doing was create a folder called `org-mode` on my laptop and a folder called `org-mode` on my phone. That's where all my org files go on respective devices. Then run [Syncthing](https://syncthing.net) on both to keep them in sync.

I was expecting Syncthing to constantly update the files as soon as I changed them. But that didn't happen. What did happen was a bunch of conflict files for which I had to use a tool like Meld to resolve all the conflicts. And, Syncthing doesn't do a git-style conflicts by showing only which lines have changed, instead it creates an entire file. It got too painful too quick.

After looking around on Reddit and other forums, I found some solutions:

**Option 1**: Install termux and git on your device, add hooks to commit and push whenever you make changes, use Tasker to achieve it.
My response: fuck no!

**Option 2**: install termux and emacs. Then install hacker's keyboard and use it like you do on a desktop.
My response: again, fuck no!

**Option 3**: have a separate file for mobile capture. Anything you note down on your phone has to go into this one file, and you don't touch any other files. Once you get to a computer, you just refile things out of this mobile capture org file. (found this on reddit and led to a face-palm moment for not having thought of this solution. It's so simple)
My response: sold!

The nice thing about this is, you're much faster on a desktop/laptop and you'll have a full fledged keyboard with all your favorite keybindings. So, refiling wouldn't take much time at all. And with constant refiling, the file wouldn't be too big. Easier to manage conflicts when they do happen. All your other notes will be in sync.