# TwitterUploadMedia.jl

[![Project Status: WIP – Initial development is in progress, but there has not yet been a stable, usable release suitable for the public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)
[![Build Status](https://travis-ci.com/5ebec/TwitterUploadMedia.jl.svg?branch=master)](https://travis-ci.com/5ebec/TwitterUploadMedia.jl)
[![Codecov](https://codecov.io/gh/5ebec/TwitterUploadMedia.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/5ebec/TwitterUploadMedia.jl)

## Installation
```bash
(v1.0) pkg> add https://github.com/5ebec/TwitterUploadMedia.jl
```
TwitterUploadMedia.jl is NOT official package.

## Note
We recommend using [Twitter.jl](https://github.com/randyzwitch/Twitter.jl) at the same time.  
If we choose not to use it, say
```julia
using TwitterUploadMedia

TwitterUploadMedia.twitterauth(ENV["CONSUMER_KEY"],
                ENV["CONSUMER_SECRET"],
                ENV["ACCESS_TOKEN"],
                ENV["ACCESS_TOKEN_SECRET"])
```
