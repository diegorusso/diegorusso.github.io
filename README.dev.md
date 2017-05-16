# To update template

$ git remote -v
origin  git@github.com:diegorusso/diegorusso.github.io.git (fetch)
origin  git@github.com:diegorusso/diegorusso.github.io.git (push)
upstream    https://github.com/mmistakes/minimal-mistakes.git (fetch)
upstream    https://github.com/mmistakes/minimal-mistakes.git (push

$ git merge 4.4.1 # 4.4.1 is a tag on upstream
# now solve conflicts


# To run jekyll in docker container
docker run --name diegor.it -i -t -p 4000:4000 -v /Users/diegor/Work/diegorusso.github.io/:/srv/jekyll jekyll/jekyll jekyll server --config _config_dev.yml --drafts -I

# To start the docker container
doecker start diegor.it
