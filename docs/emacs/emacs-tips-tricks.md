
# Keybindings

Following are some of the commonly needed keybindings that I may not remember

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Feature</th>
<th scope="col" class="org-left">Keybinding</th>
<th scope="col" class="org-left">Comment</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Doom reload</td>
<td class="org-left"><code>SPC h r r</code></td>
<td class="org-left">No need to restart Emacs. This is the same as running <code>doom sync</code></td>
</tr>


<tr>
<td class="org-left">Search for text using pattern</td>
<td class="org-left"><code>SPC n v</code></td>
<td class="org-left">Searches headings in open buffers (and I think even bookmarks)</td>
</tr>


<tr>
<td class="org-left">Surround region</td>
<td class="org-left"><code>S (</code></td>
<td class="org-left">Select a word using visual mode and then press this to change it to <code>( word )</code></td>
</tr>


<tr>
<td class="org-left">Set Property</td>
<td class="org-left"><code>SPC m o</code></td>
<td class="org-left">Sets properties to headings</td>
</tr>


<tr>
<td class="org-left">Jump to Org Heading</td>
<td class="org-left"><code>C-c C-j</code> or <code>SPC s i</code></td>
<td class="org-left">Brings up a list of headings in a mini buffer where you can jump to any heading <b>in the current file</b></td>
</tr>


<tr>
<td class="org-left">Export subtree to a markdown file</td>
<td class="org-left"><code>SPC m e C-s m m</code></td>
<td class="org-left">Exports subtree in an org file to a .md file with the same name as the org file unless the property <code>EXPORT_FILE_NAME</code> is specified</td>
</tr>


<tr>
<td class="org-left">Org Capture dispatch</td>
<td class="org-left"><code>SPC X</code></td>
<td class="org-left">Gives a list of capture templates to choose from</td>
</tr>


<tr>
<td class="org-left">Search for files in the project</td>
<td class="org-left"><code>SPC s p</code></td>
<td class="org-left">You may have to switch to a different project if you want to find files in a different folder</td>
</tr>


<tr>
<td class="org-left">Locate files</td>
<td class="org-left"><code>SPC s f</code></td>
<td class="org-left">Searches for files by name in the entire OS, not just the current directory</td>
</tr>


<tr>
<td class="org-left">Open private config folder</td>
<td class="org-left"><code>SPC f p</code></td>
<td class="org-left">This opens the <code>~/.doom.d/</code> folder where you can select a file to open</td>
</tr>


<tr>
<td class="org-left">Switch workspaces</td>
<td class="org-left"><code>Cmd+&lt;N&gt;</code></td>
<td class="org-left">Switch to the Nth workspace by hitting Cmd+N</td>
</tr>


<tr>
<td class="org-left">Filter headings by tags</td>
<td class="org-left"><code>C-c \</code></td>
<td class="org-left">Hitting this will give you a list of tags which you can select and filter by</td>
</tr>
</tbody>
</table>


# Jump to word in a file

Type `g s SPC`. This will dim the screen where you can search for any string. After you type your characters, if there is only one match, it&rsquo;ll highlight the beginning of that word with a letter (usually, the letter `a`). Typing `a` will take the cursor to that word. If there are multiple words, Emacs will highlight each occurrence with one or two letter which you can then type and get to that word. It&rsquo;s super convenient in large files.

**Note**: This whole thing works only in the **visible portion of the screen** and not the entire doc.


# Jump to word in the same line

Using `evil-snipe`. Use `s` (forward snipe) or `S` (backward snipe) and immediately type couple of characters of the word you want to jump to.
Use `,` to navigate to previous results and `;` to navigate to next results (if there are multiple results)

**Remember**: `evil-snipe` takes only two characters.


# Switch between **TODO** and **DONE** states using Enter

Press Enter (or **RET**) to change the state of a **TODO** item between **TODO** and **DONE** states. This behavior is similar to crossing items off a checklist **[ ]**

**Remember**: this only switches between **TODO** and **DONE** and not any other states

