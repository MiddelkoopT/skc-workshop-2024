# Show Notes

## Setup Repository in Gitea

  * Navigate to Gitea:
    * https://gitea-i2-cere-cloud.nrp-nautilus.io/
    * This is a teaching environment and will be destroyed.
  * Sign in:
    * Click on Sign In
    * Click on "Sign in with Google"
      * Authorize Google Account
  * Register New Account:
    * Username: Enter username (your_name), which is the same as the first part of your your_name@skc.edu email address.
    * Click on "Complete Account" (you may need to click on "Leave")
  * Set a password:
    * Click your avatar (colorful box in the top right) for a dropdown box
    * Click "Settings" in the dropdown box
    * Click on "Account" tab on the left
      * **DO NOT USE YOUR SKC PASSWORD HERE!**
      * Enter "New Password" and "Confirm New password"
      * Click "Update Password"
  * Create new repo:
    * Click the"+" in the upper right and select "+ New Repository"
    * Repository Name: skc-your_name
    * Make repository private (Visibility): check the checkbox
    * Initialize Repository: check the checkbox
    * Click "Create Repository"
  * Navigate to your repo:
    * Click the green teacup in the top right corner
    * Click on your repository name in the list on the right under "Repositories"
  * Copy your repository address to your clipboard:
    * Navigate to your repository
    * Select "HTTPS" (already selected)
    * Click on the copy button (⧉) to the right of the repository address next to the "HTTPS" box (to the left of the 3 dots).
  
## Navigate R Studio and Setup Project

  * Open RStudio
  * Create a new "New Project" in `~/work` with "Git"
    * Note: Projects and data must be saved in `~/work` otherwise they will be lost.  
    * Select "Version Control" -> "Git"
      * Repository URL: your "https" repository value (see instructions above)
      * Project directory name: leave blank
      * Create project as a subdirectory of: ~/work (click "Browse" to change)
      * Click "Create Project"
  * Turn off saving `.RData` in project (not workspace)
    * It is not good to save data, especially in git.
    * "Tools" -> "Project Options" 
    * Under "Workspace" 
      * Set "Restore .RData into workspace at startup" to "No"
      * Set "Save workspace to .RData on exit" to "No"
      * Set "Always save history" to "No"
      * Click "Ok"
  * Setup Git
    * This needs to be done only once when you create a "new project".
    * Click on the "Terminal"
      * Verify that you are in your project folder `~/work/...`
      * Run (note the quotes and replace with your information) the following in the terminal:
```bash
git config credential.helper store
git config user.name "First Last"
git config user.email "first_last@skc.edu"
git config --local --list
```
  * Create a new "R Markdown" file
    * "File" -> "New File" -> "R Markdown" -> Click "Create Empty Document" (bottom left button).
    * Save file ("R-Ecology"): 
      * Click the "disk" or press `cmd-s` for Mac, `ctrl-s` for Windows/Linux.
      * Enter a good file name such as "R-Ecology" (it will add the `.Rmd` extension)
  * Write, Configure, and View RMarkdown
    * Write title `# RStudio Workshop` 
    * Write some text (your name)
    * Configure rendering
      * "Settings (gear in file tab toolbar)" -> "Preview in Viewer Pane"
      * "Settings (gear in file tab toolbar)" -> "Chunk Output in Console"
    * Save file
    * Knit (Knit to HTML)
      * Optionally set "Knit on Save" - (runs entire notebook)
    * Verify output

## Save your work (with Git)

  * **Make sure all files are saved!**
    * Unsaved files will have a star at the end of the file name in the tab
  * Access the  *Git menu*
    * Use "Tools" -> "Version Control"; 
    * or the "GIT" dropdown in the main RStudio toolbar.
  * Select "Commit" in the *Git menu*: 
    * **Verify the work you have done**
      * Click the name of each file and see the changes
    * Check for unwanted files (secrets)!
      * Ignore html files (optional):
        * Right click `R-Ecology.html` and select ignore
          * (optionally) change to `*.html`
        * Click "Save"
    * Add files (stage):
      * Click the "Staged" box to add them
        * Make sure a "check" not a square box
    * Add a "Commit message":
      * Note: Commits should be "one" thing.
      * Title (no period)
        * Be descriptive on what you did - not "update"
        * less than 50 characters
        * Example: "Create a new RStudio project"
      * Blank line then a description, 
        * wrap at 72 characters (optional).
      * Blank line followed by a list (optional)
        * List starts with a '-' character (no space)
      * Press "Commit" and "Close"
    * "Push" to repository (top right of Git window):
      * Enter the username and password for the Git repo (not your account)
      * Make sure there is not an error
    * Verify push
      * Click "Push" again and make sure it says "Everything up-to-date"
      * Close git window
    * Verify commit:
      * Click "Commit" under the *Git menu*
      * There should be no files in the "Staged" list on the left.

## Visual Setup

  * Move Terminal and Console pane to the right
    * "View" -> Panes -> Console on Right

## Quit Environment

  * Git Commit: (see above)
  * Shutdown RStudio: "File" -> "Quit Session"
  * Shutdown Jupyter: "File" -> "Hub Control Panel" -> "Stop My Server"
  * Close all Jupyter and RStudio windows

## Start Environment after Setup

  * Navigate to https://ci.skc.edu/ and click "Login to OSG Jupyter Notebook"
  * Start Jupyter: Select "Data Science with RStudio" and click "Start"
  * Start RStudio: 
    * In the Launcher (should be open, otherwise open with "File" -> "New Launcher") 
    * Click "RStudio" (under "Notebook" section)
  * Open Project: "File" -> "Open Project" -> navigate to `work/project-name/project-name.Rproj` and click open
  * Git Pull: "Tools" -> "Version Control" -> "Pull Branches"
    * Enter git user and password
    * Watch for errors
  * Verify Pull:
    * "Pull" again and it should say "Already up to date."
    
## Carpentry Workshop Lesson Notes

  * For installing external libraries you can install them via RStudio after they have been referenced in a R Markdown file (for example: `library(ratdat)`).
    * Note: The file must be saved before the option to install is shown.
    * Note: The R session may need to be restarted. Do this with
      * "Session" -> "Restart R"
  * Do not include `install.packages()` in your R Markdown files (other than `Setup.Rmd) as the R Markdown file is run every time it is displayed with "Knit" and will re-install the packages every time.

## Technical Notes

### RStudio keyboard shortcuts

  * cmd-r/ctrl-r - Run a line and move to the next
  * option-r/alt-r - Run a single line and stay on that line

### Git Configuration

For password based projects, configure username, email address, and enable password saving for your new project. Run in terminal once after the project has been created. Note the use of double quotes.

```bash
git config credential.helper cache
git config user.name "First Last"
git config user.email "first_last@skc.edu"
git config --local --list
```

For personal access token projects, configure a persistent git configuration.  Use this code in a `setup.sh` bash script or bash notebook that you must run once after logging in and launching a new environment.
```bash
#!/bin/bash
ln -sfv ~/work/.gitconfig ~/
ln -sfv ~/work/.git-credentials ~/

git config --global credential.helper store
git config --global --list
```

You can also setup your `user.name` and `user.email` for every project (that is what `--global` does). This only needs to be once.  Replace the name and email  with your information and note the use of double quotes.  

```bash
git config --global user.name "First Last"
git config --global user.email "first_last@skc.edu"
```

### Git Status

Check the status of your project with the remote repository.  In a terminal run:
```bash
git fetch
git status
```

### Git Workflow

  * Fetch any changes from the remote repository (Gitea): `git fetch`
  * Check the status of your repository: `git status`
  * If there are changes from the remote repository:
    * See what changed: `git log origin` and `git diff origin` (more detail)
    * Merge the changes: `git merge`
  * Do work and edit your files
  * Find a logical spot to stop and commit (save)
  * See what changed:
    * `git status`
    * `git diff`
  * Stage files (index): `git add file.txt`
  * Double check that nothing has been added to the remote repository: `git fetch`
  * Check the status: `git status`
  * Commit changes: `git commit` (write a good commit title and message!)
  * Push the changes to the remote repository: `git push`
  * Rest

### R Configuration

R packages must be installed every time the environment is started, to do this a `setup.R` script or a R Markdown document must be run with the following:

```r
options(repos = list(CRAN="http://cran.rstudio.com/"))
install.packages(c("tidyverse", "lubridate", "ratdat"))
install.packages("ggplot2")
```

R packages can be saved in a persistent `~/work` directory so they do not need to be reinstalled every time the environment is restarted.

  * Create a `~/work/R` folder (run `mkdir ~/work/R` in a terminal)
  * Create a `.Renviron` file in the project directory with the content below
```bash
R_LIBS_SITE=~/work/R
```
  * Remember to "Open Project" for the project when starting a new environment.

To display R Markdown files in Gitea, save the intermediate markdown file (`.md`), do the following:

  * Go to the settings for the R Markdown file (the gear on the file toolbar) and selecting "Output Options" -> "Advanced" -> and select "Keep markdown source file".