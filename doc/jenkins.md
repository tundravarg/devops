# JENKINS



## How to build GitHub project


1. Go to Jenkins Dashboard and press "+ New Item"
    1. Enter the Item name (can contain spaces)
    2. Select "Freestyle project"
2. Setup Jenkins task
    * Source Code Management:
        * Git
        * Repository URL: Copy URL from GitHub (https://github.com/tundravarg/devops.git)
        * Cerdentials -> Add -> Jenkins
            * Username: Your username in GitHub
            *  Password:
                * Generate "New personal access token" in GitHub
                    * Check "repo" on
    * Build
        * Invoke top-level Maven targets
        * Golas: clean install
        * POM: relative path to pom (test_app/java_app/pom.xml)
    * Save
    * Build Now
