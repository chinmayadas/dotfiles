function mapdrive
    switch $argv
        case devcfm
            mkdir -p /Volumes/dev
            mount -t smbfs "//nyulaw;huangr@128.122.51.33/d\$" /Volumes/dev/
            set_color green
            echo You are now connect to devcfm       
            set color normal
        case blogs
            mkdir -p /Volumes/blogs
            sshfs -p 212 -o IdentityFile=~/.ssh/huangr_hostedsites_aws.pem huangr@blogs.nyulaw.me:/var/www/blogs /Volumes/blogs/ 
            set_color green
            echo You are now connect to blogs.nyulaw.me       
            set color normal
    end
end
