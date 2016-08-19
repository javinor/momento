# `nvm` and Node


Install at `~/.nvm` using `nvm`: https://github.com/creationix/nvm

```bash
git clone https://github.com/creationix/nvm.git ~/.nvm
cd ~/.nvm
git checkout `git describe --abbrev=0 --tags`

bash # reload

nvm install stable
nvm alias default stable
```