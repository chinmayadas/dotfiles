function myrsync --description "Rsync with customize options"
  set_color green
  echo Source: $argv[1]
  echo Destination: $argv[2]

  set exclude  --exclude='.svn*' --exclude='gulp*' --exclude='node_modules*' --exclude='grunttask*' --exclude='.git'
  set options  --archive --compress --progress --verbose --stats
  set continous 1

  while test $continous -eq 1
    rsync $options $exclude $argv[1] $argv[2]
    if test $status -eq 0
      echo "rsync completed normally"
      set continous 0
    else
      set_color red
      echo "Rsync failure. Backing off and retrying in 10 seconds..."
      set_color green
      sleep 10
    end
  end

end
