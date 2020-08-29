This is my setup for the knowledge base itself. It&rsquo;s a git repository hosted using [GitHub Pages](https://pages.github.com/) and powered/rendered using [Docsify](https://docsify.js.org/#/)

The workflow can be broken down into two parts: Ideas and Publish


# Ideas

-   Maintain things in an org file called **digital-garden.org**
-   Create each category as a top level heading - for example, emacs, books, cooking, setups, etc.
-   Under these headings, jot down quick ideas when they come to mind, and then expand on it while trying to publish


# Publish

-   For the content that is ready for publish, make sure to add the following properties (add a property using `SPC m o`) under the subheading that you&rsquo;d want to publish to GitHub pages:
    -   `EXPORT_OPTIONS`: `toc:nil` to remove table of contents. `toc:t` to add them
    -   `EXPORT_FILE_NAME`: `/path/to/file.md` This will typically be the .md file that will eventually be used by Docsify for rendering
-   Once you&rsquo;ve finished editing, export that subtree (make sure the cursor is somewhere in that subtree) using `SPC m e C-s m m`. This will export the subtree as a markdown file at the location provided in the `EXPORT_FILE_NAME` option.
-   Verify if things look alright by running `docsify serve docs` on the folder that hosts the website
-   Use `SPC g g` for git status, `s` to stage, `c c` to commit, `P p` to push
-   If it&rsquo;s not an update to an existing file, but instead a new file is added, then go to the top level `_sidebar.md` file and add an entry so that it shows up in the sidebar (wish this was automated!)
-   That&rsquo;s it!

