function curlget -w curl -d 'cURL with wget-like defaults'
    curl --location --remote-name --remote-time --fail --retry 10 --retry-max-time 10 --continue-at - --progress-bar $argv
end
