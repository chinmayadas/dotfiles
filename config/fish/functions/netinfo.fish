function netinfo
    "Get the current direct of the source file"
    set -l dir_name (dirname (status --current-filename))
    bash $dir_name/scripts/grabsysinfo.sh
end
