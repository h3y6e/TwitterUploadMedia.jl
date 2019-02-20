endpoint_tuple = [
        (:get_oauth, :get_media_upload, "upload.json", nothing),
        (:post_oauth, :post_media_upload, "upload.json", :Media),
        (:post_oauth, :post_media_metadata_create, "metadata/create.json", nothing),
        (:post_oauth, :post_media_subtitles_delete, "subtitles/delete.json", nothing),
        (:post_oauth, :post_media_subtitles_create, "subtitles/create.json", nothing)
]

#dynamically build
for (verb, func, endp, t) in endpoint_tuple
    @eval begin
            function ($func)(;kwargs...)
                options = Dict{String, Any}()
                for arg in kwargs
                    options[string(arg[1])] = string(arg[2])
                end
                r = ($verb)($"https://upload.twitter.com/1.1/media/$endp", options)
                if r.status == 200
                    success = JSON.parse(String(r.body))
                    if ($t) != nothing && ($t) <: TwitterType
                        return ($t)(success)
                    else
                        return success
                    end
                else
                    error("Twitter API returned $(r.status) status")
                end
            end
    end
end
