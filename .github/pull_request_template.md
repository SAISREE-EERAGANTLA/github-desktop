## Deployment Strategy

- Branching strategy: 
    - feature :arrow_right: dev :arrow_right: stg :arrow_right: prd
    - Main should be updated on every merge into prd.
    - All new feature branches should all be created with dev as the base branch.

- Deployment strategy:
    - In order to deploy to a given environment, navigate to the repository's `Actions` tab
    - Select `Mulesoft Deployment` from the list of workflows
    - Select the `Run Workflow` manual dispatch button and complete the required information
    - Once you validate the input, select `Run Workflow`
    - Monitor workflow progress by selecting the active workflow :rocket:

## Migration Checklist

- [ ] Copied the latest code changes for Github Enterprise Repository and added them a new Github.com repository following the `eip-gea-mulesoft-template`
- [ ] Pushed changes to a feature branch (created using the above branching strategy) of the new repository (:rotating_light: **NOT** main, stg, or prd)
- [ ] Created a merged a PR to the existing repository in Github Enterprise with the following update to `README.md` :arrow_right: "This repository has been migrated to github.com. **insert link to new github.com repository**
- [ ] All done, happy hacking. :tada:

### Please reach out to Stephen Allen if you have any questions or concerns regarding any of the above procedures.