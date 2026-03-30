function packageInstall
    paru -S $argv
    if test $status -eq 0
        set -l pkg $argv[-1] # Grabs the last argument as the package name
        echo -n (set_color cyan)"Add a note for $pkg: "(set_color normal)
        read -l reason
        if test -n "$reason"
            echo "[(date +%F)] $pkg: $reason" >> ~/.config/paru/pkg_notes.conf
        end
    end
end
