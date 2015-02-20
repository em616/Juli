# Juli
 A simple automated perl script for MiTM ( man-in-the-middle ) attacks.
 
 I created it this morning just to pass some time :)

#### Requirements:
* Linux ( I tested it on Ubuntu 14.04 LTS )
* Perl
* sslstrip https://github.com/moxie0/sslstrip
* arpsoof ( from dsniff can be found here http://www.monkey.org/~dugsong/dsniff/ )

#### Usage:
 Script must be runned as a root user
* sudo juli.pl interface targetip

 Logs will be saved on Juliscript.log
 and they will loke like this
> 2015-01-19 12:38:24,482 SECURE POST Data (server.com):
charset_test=%E2%82%AC%2C%C2%B4%2C%E2%82%AC%2C%C2%B4%2C%E6%B0%B4%2C%D0%94%2C%D0%84&locale=en_US&email=user%40email.com&pass=password&charset_test=%E2%82%AC%2C%C2%B4%2C%E2%82%AC%2C%C2%B4%2C%E6%B0%B4%2C%D0%94%2C%D0%84&lsd=H2cF2

 I think i have more to do latter.
 
For any comment or to say just Hi contact me on em [ @ ] em616 [ dot ] com

My Blog: http://blog.em616.com

Follow me on Twitter : https://twitter.com/EneaMadani

Thank you
