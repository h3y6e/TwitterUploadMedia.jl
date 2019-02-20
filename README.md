# TwitterUploadMedia.jl

[![Build Status](https://travis-ci.com/5ebec/TwitterUploadMedia.jl.svg?branch=master)](https://travis-ci.com/5ebec/TwitterUploadMedia.jl)
[![Codecov](https://codecov.io/gh/5ebec/TwitterUploadMedia.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/5ebec/TwitterUploadMedia.jl)
[![Coveralls](https://coveralls.io/repos/github/5ebec/TwitterUploadMedia.jl/badge.svg?branch=master)](https://coveralls.io/github/5ebec/TwitterUploadMedia.jl?branch=master)

## Installation
```bash
(v1.0) pkg> add https://github.com/5ebec/TwitterUploadMedia.jl
```
TwitterUploadMedia.jl is NOT official package.

## Note
We recommend using [Twitter.jl](https://github.com/randyzwitch/Twitter.jl) at the same time.  
If we choose not to use it, say
```bash
Using TwitterUploadMedia

TwitterUploadMedia.twitterauth(ENV["CONSUMER_KEY"],
                ENV["CONSUMER_SECRET"],
                ENV["ACCESS_TOKEN"],
                ENV["ACCESS_TOKEN_SECRET"])
```
