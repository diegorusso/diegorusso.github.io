# Diego Russo website

The website is developed using Jekyll and Minimal Mistakes: https://github.com/mmistakes/minimal-mistakes

## Homepage content

The homepage content is maintained in
[`diegorusso/README.md`](https://github.com/diegorusso/diegorusso/blob/main/README.md).
`index.md` is generated from that file and should not be edited by hand.
The profile repository's sync workflow runs the generator after changes to its
`README.md`.

To update it from sibling local checkouts, run:

```bash
./tools/sync-profile-readme.sh ../diegorusso/README.md
```

## AllValid support pages

The `gh-pages` branch adds standalone pages at `/allvalid/` and
`/allvalid/privacy/`. They have no Jekyll front matter, so the existing theme's
analytics, advertisements and comment scripts are not included. The rest of the
site, including `CNAME`, is unchanged. No `.nojekyll` file is added.

Before publishing, approve the exact privacy/support copy (including the proposed
90-day support/beta retention periods), confirm the support mailbox receives mail,
and reconcile the supported features with the app candidate. The pages currently
say the app is being prepared for release and capture remains disabled.

After review, push `gh-pages` and select **Deploy from a branch → gh-pages → / (root)**
in GitHub Pages. This checkout does not push or change Pages settings automatically.
Verify both public URLs anonymously after deployment.
