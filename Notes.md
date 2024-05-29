# Show Notes

## Setup Repository in Gitea

* Navigate to Gitea https://gitea-i2-cere-cloud.nrp-nautilus.io/
  * This is a teaching environment and will be destroyed.
  
## Navigate R Studio and Setup Project

  * Open RStudio
  * Create a new "New Project" in `~/work` with "Git"
    * Projects and data must be saved in `~/work` otherwise they will be lost.  
    * Use a good name such as "$USER-workshop"
    * If you use Git (you are) use "New Project" -> "Version Control" -> "Git"
      * Repository URL: your "https" repository value
      * Project directory name: leave blank
      * Create project as a subdirectory of: ~/work (click "Browse" to change)
      * Click "Create Project"
  * Turn off saving `.RData` in project (not workspace)
    * It is not good to save data, especially in git.
    * "Tools" -> "Project Options" 
      * Under "Workspace" 
        * Set "Restore .RData into workspace at startup" to "No"
        * Set "Save workspace to .RData on exit" to "No"
        * Set "Always save histroy" to "No"
        * Click "Ok"
  * Setup Git
    * This needs to be done only once when you create a "new project".
    * Click on the "Terminal"
      * Verify that you are in your project folder `~/work/...`
      * Run (note the quotes!) the following in the terminal:
```{bash eval=FALSE}
git config credential.helper cache
git config user.name "First Last"
git config user.email "first_last@skc.edu"
git config --local --list
```
  * Create a new "R Markdown" file
    * "File" -> "New File" -> "R Markdown" -> Click "Create Empty Document" (bottom left button).
    * Save file ("R-Ecology"): Click the "disk" or press `cmd-s` for Mac, `ctrl-s` for Windows/Linux.
      * Enter a good file name such as "R-Ecology" (it will add the `.Rmd` extension)
  * Write, Setup, and View RMarkdown
    * Write title `# RStudio Workshop` 
    * Write some text (your name)
    * Configure rendering
      * "Settings (gear)" -> "Preview in Viewer Pane"
      * "Settings (gear)" -> "Chunk Output in Console"
    * Save file
    * Knit (Knit to HTML)
    * Optionally set "Knit on Save" - (runs entire notebook)
    * Verify output

## Save your work (with Git)

  * Access *Git menu* via "Tools" -> "Version Control"; or the "GIT" dropdown on the toolbar.
  * Diff: Check what you have done with (under the Git Menu)
    * "Diff ..." (you may need to click it twice?!)
    * Ignore html files (optional):
      * Right click `R-Ecology.html` and select ignore - change to `*.html`
    * Add files:
      * Verify changes
      * Click the "Staged" box to add them
    * Commit message
      * Title (no period) and less than 50 characters
      * Be descriptive on what you did - not "update"
      * Should be "one" thing.
      * Blank line then a description, wrapped at 72 characters (optional).
      * Blank line followed by a list (optional)
      * List starts with a '-' character (no space)
    * Press "Commit" and "Close"
    * Push
      * Enter the username and password for the Git repo (not your account)
    * Pull:
      * Make sure that you get "Already up to date."
      * Should not ask for password again.

## Visual Setup

  * Move Terminal and Console pane to the right
    * "View" -> Panes -> Console on Right

## Quit Envrionment

  * Git Commit: (see above)
  * Shutdown RStudio: "File" -> "Quit Session"
  * Shutdown Jupyter: "File" -> "Hub Control Panel" -> "Stop My Server"
  * Close all Jupyter and RStudio windows

## Start Envrionment after setup

  * Navigate to https://ci.skc.edu/ and click "Login to OSG Jupyter Notebook"
  * Start Jupyter: Select "Data Science with RStudio" and click "Start"
  * Start RStudio: 
    * In the Launcher (should be open, otherwise open with "File" -> "New Launcher") 
    * Click "RStudio" (under "Notebook" section)
  * Open Project: "File" -> "Open Project" -> navigate to `work/project-name/project-name.Rproj` and click open
  * Git Pull: "Tools" -> "Version Control" -> "Pull Branches"
    * Enter git user and password

## References and Resources

Configure username, email address, and enable password saving for your new project. Run in terminal once after the project has been created. Note the use of double quotes.

```{bash eval=FALSE}
git config credential.helper cache
git config user.name "First Last"
git config user.email "first_last@skc.edu"
git config --local --list
```
    
Resources:

  * https://datacarpentry.org/R-ecology-lesson-alternative/introduction-r-rstudio.html
