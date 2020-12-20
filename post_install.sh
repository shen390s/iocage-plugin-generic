#!/bin/sh

_apply=/root/bin/apply_role.sh
if [ ! -f $_apply ]; then
    echo Can not find $_apply
    exit 1
fi

case `hostname` in
    login*)
        _role=jails/misc/login 
        ;;
    workstation*)
        _role=jails/misc/workstation
        ;;
    *)
        ;;
esac

if [ "X$_role" = "X" ]; then
    echo unknown role for `hostname`
    exit 1
fi

sh $_apply $_role setup
