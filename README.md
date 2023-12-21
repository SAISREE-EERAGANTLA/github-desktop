# Steps to Migrate a Mulesoft Project from GHE to Github.com

- Create a new repository using `eip-gea-mulesoft-template` as a template
- Next, clone the newly created repository locally. This local project should not include this `README.md` and `.github/maven/MyGlobalSettings.xml`
  - In order to properly deploy clone repositories, `.github/maven/MyGlobalSettings.xml` must remain in the repository
- Clone the Github Enterprise repository to be migrated
  - Copy the entire project and past in the root directory of the newly created repository, which has a remote origin pointing to Github.com
  - Push all changes to the remote origin
- Create separate `dev`, `stg`, and `prd` branches rooted from the existing main branch
  - Push all feature branches to the remote origin
- For each of the environment branches, apply the following branch protections:
  - Branch name pattern: dev, stg, or prd respectively
  - Require a pull request before merging; Require 1 approval before merging; Dismiss stale pull request approvals when new commits are pushed
  - Require status checks to pass before merging; Require branches to be up to date before merging
  - Require conversation revolution before merging
  - Restrict who can push to matching branches
    - `dev`: husa-enin-developers, husa-enin-non-prod-mergers, husa-enin-prod-mergers, husa-enin-admins
    - `stg`: husa-enin-non-prod-mergers, husa-enin-prod-mergers, husa-enin-admins
    - `prd`: husa-enin-prod-mergers, husa-enin-admins