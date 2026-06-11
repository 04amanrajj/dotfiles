function ytdl
    set url $argv[1]
    
    if test -z "$url"
        echo "Usage: ytdl 'URL'"
        return 1
    end

    # Step 1: Show available formats to the user (shorthand list)
    echo "Fetching available resolutions..."
    yt-dlp -F $url | grep -E 'resolution|144p|240p|360p|480p|720p|1080p|1440p|2160p'

    # Step 2: Ask for the desired resolution
    echo -e "\nWhich resolution? (e.g., 1080, 720, 480): "
    read res

    # Step 3: Execute download
    # This selects the best video up to the chosen height and merges with best audio
    yt-dlp -f "bestvideo[height<=$res]+bestaudio/best[height<=$res]" --merge-output-format mp4 $url
end
