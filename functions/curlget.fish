function curlget -w ssh -d 'cURL with wget-like default'
    curl -fSLO --retry 3 --progress-bar $argv
end
