#!/usr/bin/expect

spawn telnet 192.168.68.1 5006
send "\r"
expect "#"
send "conf t"
expect "(config)#"
send "hostname D1"
expect "(config)#"
send "vlan 10"
expect "(config-vlan)#"
send "name Utilisateurs"
send "exit"
expect "(config)#"
send "vlan 20"
expect "(config-vlan)#"
send "name Stagiaire"
send "exit"
expect "(config)#"
send "vlan 30"
expect "(config-vlan)#"
send "name Imprimantes"
send "exit"
expect "(config)#"
send "vlan 40"
expect "(config-vlan)#"
send "name Administrateurs"
send "exit"
expect "(config)#"
send "vlan 50"
expect "(config-vlan)#"
send "name Serveurs"
send "exit"
expect "(config)#"
send "vlan 60"
expect "(config-vlan)#"
send "name Serveurs-Sensibles"
send "exit"
send "exit"
expect "#"
send "wr"
expect "#"
send "\x1D"
expect "telnet>"
send "quit"

set i 0
set list_port [list ]
foreach port $list_port {
    set i [expr {$i + 1}]
    send "\r"
    expect "#"
    send "conf t"
    expect "(config)#"
    send "hostname SW$i"
    expect "(config)#"
    send "vlan 10"
    expect "(config-vlan)#"
    send "name Utilisateurs"
    send "exit"
    expect "(config)#"
    send "vlan 20"
    expect "(config-vlan)#"
    send "name Stagiaire"
    send "exit"
    expect "(config)#"
    send "vlan 30"
    expect "(config-vlan)#"
    send "name Imprimantes"
    send "exit"
    expect "(config)#"
    send "vlan 40"
    expect "(config-vlan)#"
    send "name Administrateurs"
    send "exit"
    expect "(config)#"
    send "vlan 50"
    expect "(config-vlan)#"
    send "name Serveurs"
    send "exit"
    expect "(config)#"
    send "vlan 60"
    expect "(config-vlan)#"
    send "name Serveurs-Sensibles"
    send "exit"
    send "exit"
    expect "#"
    send "wr"
    expect "#"
    send "\x1D"
    expect "telnet>"
    send "quit"
}
