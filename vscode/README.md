## docker


```
docker exec -it code-server /bin/bash
```
## leetcode

leetcode vsc extension is from https://marketplace.visualstudio.com/items?itemName=LeetCode.vscode-leetcode

## How to use
* launch vscode
* click the leetcode icon at left bar
* click `earth icon` to switch endpoint.  Choose `leetcode.cn`
* then click `sign in`.  `Leetcode Account`.

## about the CLI

`leetcode vsc` could be an alternative to `leetcodex-cli`.  At least it fixes the long-held login problem in the original skygragon version.

### common commands
* first time.  enable all plugins
```
$ leetcode -e leetcode.cn
$ leetcode plugin
 Active  Name               Version         Desc
----------------------------------------------------------------------------------------------------
   ✔     solution.discuss   2019.02.03      Plugin to fetch most voted solution in discussions.
   ✔     company            2017.12.18      Plugin to query by company for free user.
   ✔     cache              default         Plugin to provide local cache.
   ✔     retry              default         Plugin to retry last failed request if autologin.enable is on.
   ✔     leetcode.cn        2018.11.25      Plugin to talk with leetcode-cn APIs.
   ✔     leetcode           default         Plugin to talk with leetcode APIs.
```
* first time login
```
$ leetcode user -l
```
* list easy and not done
```
leetcode list -eD
```

* show and edit question 9 in language `python
```
leetcode show 9 -gxe -l python
```

* test
```
leetcode test 9.palindrome-number.py
```
`
* submit
```
leetcode submit 9.palindrome-number.py
```
`

