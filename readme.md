1. Download `git clone https://github.com/thewhodidthis/dotfiles ~/.files; cd $_`
2. Install eg. using `find *rc -type f -exec ln -fs ~/.files/{} ~/.{} \;`
3. Save local changes separately, eg. `git checkout -b gina`
4. Customise, eg. `ln -s /System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc ~/.files/bin`
