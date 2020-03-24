jump(){
        if [[ $1 == "<alias>" ]]
        then
                ssh -o ProxyCommand="ssh -W <target-server>:22 <username>@<jump-server>" <username>@<target-server>
        else
                ssh -o ProxyCommand="ssh -W $1:22 <username>@<jump-server>" <username>@$1
        fi
}
