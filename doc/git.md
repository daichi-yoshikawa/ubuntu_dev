* Submodules
** Add submodules.
$ git submodule add <url-to-remote-repository>

If you git clone parent module and see nothing in submodule directories...
$ git submodule update --init

** Delete submodules.
$ git submodule deinit -f <path-to-submodule>
$ rf -rf .git/<path-to-submodule>
$ git rm -f <path-to-submodule>

The second step might not be needed, because .git/<path-to-submodule>
is likely to be deleted at the first step.

** Push from submodules.
$ cd <path-to-submodule>
$ git checkout master
$ git merge HEAD@{1}
$ git push origin master

The third step is required only when you've already modified anything
in the submodule.


** non-fast-forward/head detouched from
$ git pull origin master
$ git push origin master

If you still have problem ...
$ git branch tmp1
$ git checkout master
$ git merge tmp1
$ git branch -d tmp1


** When you can't see branch
You might see the target branch by this.
```bash
    $ git branch -a
```

If you could see, try the follow.
```bash
    $ git remote update
    $ git fetch
    $ git checkout --track origin/<branch-name>
```

If you couldn't see, try the follows.
```bash
    $ git fetch
    $ git checkout <branch-name>
```
```bash
    $ git fetch origin
    $ git checkout <branch-name>
```
