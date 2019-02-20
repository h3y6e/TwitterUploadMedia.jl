# Media response object
mutable struct Media <: TwitterType
    media_id::Union{Int, Void}
    media_id_string::Union{String, Void}
    size::Union{Int, Void}
    expires_after_secs::Union{Int, Void}
    image_type::Union{String, Void}
    w::Union{Int, Void}
    h::Union{Int, Void}
end

# Methods to convert JSON/Dict to Twitter types
Media(object::Dict) =
    Media(get(object, "media_id", nothing),
            get(object, "media_id_string", nothing),
            get(object, "size", nothing),
            get(object, "expires_after_secs", nothing),
            get(object, "image_type", nothing),
            get(object, "w", nothing),
            get(object, "h", nothing)
            )

Media(response::Vector) = Media[Media(x) for x in response]
