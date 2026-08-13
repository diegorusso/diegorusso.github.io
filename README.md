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
