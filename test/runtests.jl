using TwitterUploadMedia
using Test
using Base64

@testset "TwitterUploadMedia.jl" begin
    TwitterUploadMedia.twitterauth(ENV["CONSUMER_KEY"],
                ENV["CONSUMER_SECRET"],
                ENV["ACCESS_TOKEN"],
                ENV["ACCESS_TOKEN_SECRET"]
    )
    # POST media/upload
    postmediaupload = post_media_upload(media_data=base64encode(open("lena.png")))
    postmedia_id = postmediaupload["media_id"]
    @test typeof(postmeidaupload) == Media
    @test postmediaupload["image_type"] == "image/jpeg"
    @test typeof(postmedia_id) == Int

    # GET media/upload (STATUS)
    getmediaupload = get_media_upload(command="STATUS", media_id=postmedia_id)
    # WIP
end
