module TwitterUploadMedia

using OAuth
using JSON
using Twitter: twitterauth,
        get_oauth,
        post_oauth,
        DataFrame,
        TwitterType

export  get_media_upload,
        post_media_upload,
        post_media_metadata_create,
        post_media_subtitles_delete,
        post_media_subtitles_create

include("mediamethods.jl")
include("types.jl")

end # module
