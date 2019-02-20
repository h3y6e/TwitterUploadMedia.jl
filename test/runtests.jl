using TwitterUploadMedia
using Test
using Base64

TwitterUploadMedia.twitterauth(ENV["CONSUMER_KEY"],
                ENV["CONSUMER_SECRET"],
                ENV["ACCESS_TOKEN"],
                ENV["ACCESS_TOKEN_SECRET"]
    )

@testset "POST media/upload" begin
    postmediaupload = post_media_upload(media_data=base64encode(open("lena.png")))
    postmedia_id = postmediaupload["media_id"]
    @test typeof(postmeidaupload) == Media
    @test postmediaupload["image_type"] == "image/jpeg"
    @test typeof(postmedia_id) == Int
end

@testset "GET media/upload (STATUS)" begin
    getmediaupload = get_media_upload(command="STATUS", media_id=postmedia_id)
    @test getmediaupload != Nothing
    # WIP
end
