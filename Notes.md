# Show Notes

## Setup and Navigate the Environment

### Setup Remote Repository in Gitea

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
  * Set a password (if not using a "Personal Access Token" or "ssh keys"):
    * Click your avatar (colorful box in the top right) for a dropdown box
    * Click "Settings" in the dropdown box
    * Click on "Account" tab on the left (under "User Settings")
      * **DO NOT USE YOUR SKC PASSWORD HERE!**
      * Enter "New Password" and "Confirm New password"
      * Click "Update Password"
  * Create new git repository (in a new window):
    * Click the "+" in the upper right and select "+ New Repository"
    * Repository Name: skc-your_name
    * Verify the repository is public (Visibility): checkbox is unchecked (**NOTE:** your project is public!)
    * Initialize Repository: check the checkbox
    * Click "Create Repository"
  * Navigate to your repo:
    * Click the green teacup in the top right corner
    * Click on your repository name in the list on the right under "Repositories"
  * Copy your repository address to your clipboard:
    * Navigate to your repository
    * Select "HTTPS" (already selected)
    * Click on the copy button (⧉) to the right of the repository address next to the "HTTPS" box (to the left of the 3 dots).
  
### Setup R Studio

  * Open RStudio
    * Navigate to https://ci.skc.edu/
    * Click "Login to OSG Jupyter Notebook"
    * Select "Data Science with RStudio"
    * Click "RStudio" (you may need to click the blue "+" button)
  * Setup Git (onetime)
    * This needs to be done only once when you first use the environment.
    * Click on the "Terminal" tab
      * Run (note the quotes and replace with your information) the following in the terminal:
```bash
git config --global user.name "First Last"
git config --global user.email "first_last@skc.edu"
git config --global credential.helper cache
git config --global core.editor nano
git config --global --list
git config --list
```

### Setup New RStudio Project

  * Create a new "New Project" in `~/work` with "Git"
    * Note: Projects and data must be saved in `~/work` otherwise they will be lost.  
    * Select "Version Control" -> "Git"
      * Repository URL: your "https" repository value (see instructions above)
      * Project directory name: leave blank
      * Create project as a subdirectory of: ~/work (click "Browse" to change)
      * Click "Create Project"
      * When prompted enter your user_name and password (or "personal access token").
  * Turn off saving `.RData` in project (not workspace)
    * It is not good to save data, especially in git.
    * "Tools" -> "**Project Options**" 
    * Under "Workspace" 
      * Set "Restore .RData into workspace at startup" to "No"
      * Set "Save workspace to .RData on exit" to "No"
      * Set "Always save history" to "No"
      * Click "Ok"
  * Create a new "R Markdown" file
    * "File" -> "New File" -> "R Markdown" -> Click "Create Empty Document" (bottom left button).
    * Save file ("R-Ecology"): 
      * Click the "disk" or press `cmd-s` for Mac, `ctrl-s` for Windows/Linux.
      * Enter a good file name such as "R-Ecology" (it will add the `.Rmd` extension)
  * Write, Configure, and View RMarkdown
    * Write title `# RStudio Workshop` 
    * Write some text (your name)
    * Edit R Markdown Document Options: 
      * Click "Settings" gear in file tab toolbar (for each of the following)
        * Select "Preview in Viewer Pane"
        * Select  -> "Chunk Output in Console"
        * Select "Output Options"
          * Click the "Advanced" tab and select "Keep markdown source file", click "OK"
    * Save file
    * Knit (Knit to HTML)
      * Optionally set "Knit on Save" - (runs entire notebook)
    * Verify output

### Save Your Work (with Git)

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

## Quit Environment

To safely close and stop your environment:

  * Git Commit: (see above)
  * Shutdown RStudio: "File" -> "Quit Session"
  * Shutdown Jupyter: "File" -> "Hub Control Panel" -> "Stop My Server"
  * Close all Jupyter and RStudio windows

## Start Environment

To start the environment after setup:

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

## Technical Notes

### RStudio keyboard shortcuts

  * cmd-r/ctrl-r - Run a line and move to the next
  * option-r/alt-r - Run a single line and stay on that line

### R Configuration

To display R Markdown files in Gitea, save the intermediate markdown file (`.md`), do the following:

  * Go to the settings for the R Markdown file (the gear on the file toolbar) and selecting "Output Options" -> "Advanced" -> and select "Keep markdown source file".

### Git Configuration

When logging in to the environment for the fist time you must configure git.  This only needs to be done once.  Replace the name and email with your information and note the use of double quotes.  

```bash
git config --global user.name "First Last"
git config --global user.email "first_last@skc.edu"
git config --global credential.helper cache
git config --global core.editor nano
git config --global --list
```

  * The `credential.helper` setting caches your password for all projects.  
  * The "core.editor" sets the editor to "nano".  Please note, for nano in R Studio you must use "^S" to save, not "^O".

### Git Status

Check the status of your project with the remote repository.  In a terminal run:
```bash
git fetch
git status
```

### Git Workflow

The Git dataflow goes from your brain, to the editor, click save to disk, add to git staging/index, commit to local repository, push to remote repository, the world sees it.

The Git workflow is to pull from remote repository, merge new commits, work on things, check the changes, stage and commit, and push to remote repository.

Git workflow details:

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
  * Check what changes will be committed: `git status`
  * Commit changes: `git commit` (write a good commit title and message!)
  * Push the changes to the remote repository: `git push`
  * Check the status one last time: `git status`
  * Rest

### R Packages

  * For installing external libraries you can install them via RStudio after they have been referenced in a R Markdown file (for example: `library(ratdat)`).
    * Note: The file must be saved before the option to install is shown.
    * Note: The R session may need to be restarted. Do this with
      * "Session" -> "Restart R"
  * Do not include `install.packages()` in your R Markdown files (other than `Setup.Rmd) as the R Markdown file is run every time it is displayed with "Knit" and will re-install the packages every time.

If you want to save the R packages between sessions, see the "R Package Configuration" section below.

## Advanced Technical Notes

### Gitea Personal Access Token

A "Personal Access Token" is used to authenticate to the remote repository and is often preferred or required (GitHub).

To use a personal access token in Gitea:

  * Click your avatar (colorful box in the top right) for a dropdown box
  * Click "Settings" in the dropdown box
  * Click on "Applications" tab on the left (under "User Settings")
  * In "Manage Access Tokens" (first box)
    * In the text box under "Token Name" enter "SKC CI Workshop" (or another descriptive name if you wish)
    * Click "Select Permissions" to open the permission settings
    * In the "Repository" section click the "v" arrow and select "Read and Write" to enable access for this token.
    * Click "Generate Token"
    * Your token is in **BLUE** box at the top of the page and is a long string of digits and numbers.
    * This is a password - it should be treated as such (use a password manager to store it)
    * **DO NOT CLOSE THIS TAB** - you will need the token later.

You should either save your personal access token in a password manager (preferred) or configure Git to store the token.  **NOTE:** Git stores the personal access token in plain tex.  Another method to authenticate is to use "ssh keys".

To enable storing the personal access token on disk in plain text for a local repository:

```bash
git config credential.helper store
git config --list
```

### R Packages

R packages must be installed every time the environment is started. 

This can be done in a R script (`setup.R`) or a R Markdown document that must be run every time.  For example:

```r
options(repos = list(CRAN="http://cran.rstudio.com/"))
install.packages(c("tidyverse", "lubridate", "ratdat"))
install.packages("ggplot2")
```

R packages can also be saved in a persistent `~/work` directory so they do not need to be reinstalled every time the environment is restarted.  To do this:

  * Create a `~/work/R` folder (run `mkdir ~/work/R` in a terminal)
  * Create a `.Renviron` file in the project directory with the content below
```bash
R_LIBS_SITE=~/work/R
```
  * **NOTE:** Remember to "Open Project" for the project when starting a new environment.
