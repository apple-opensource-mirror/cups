/private/etc/cups/classes.conf.N                                                                    600     0       3       00000004601 07431375567  14342  0                                                                                                    ustar 00root                            sys                                                                                                                                                                                                                    #
# "$Id: classes.conf,v 1.1.1.2 2002/02/10 04:47:51 jlovell Exp $"
#
#   Sample class configuration file for the Common UNIX Printing System
#   (CUPS) scheduler.
#
#   Copyright 1997-2002 by Easy Software Products, all rights reserved.
#
#   These coded instructions, statements, and computer programs are the
#   property of Easy Software Products and are protected by Federal
#   copyright law.  Distribution and use rights are outlined in the file
#   "LICENSE.txt" which should have been included with this file.  If this
#   file is missing or damaged please contact Easy Software Products
#   at:
#
#       Attn: CUPS Licensing Information
#       Easy Software Products
#       44141 Airport View Drive, Suite 204
#       Hollywood, Maryland 20636-3111 USA
#
#       Voice: (301) 373-9603
#       EMail: cups-info@cups.org
#         WWW: http://www.cups.org
#

########################################################################
#                                                                      #
# This is a sample class configuration file.  This file is included    #
# from the main configuration file (cups.conf) and lists all of the    #
# printer classes known to the system.                                 #
#                                                                      #
########################################################################

#
# Each class starts with a <Class name> definition.  Class names
# can be up to 128 characters in length and are *not* case sensitive.
#
# One <DefaultClass name> entry can appear in this file; if you don't
# define a default destination, the first printer or class becomes
# the default.
#

#<Class sample>
#
# Info: the description for the class.
#

#Info Acme LaserPrint 1000 Printers

#
# Location: the location of the printer.
#

#Location Room 101 in the activities building

#
# State: sets the initial state of the class.  Can be one of the
# following:
#
#     Idle    - Class is available to print new jobs.
#     Stopped - Class is disabled but accepting new jobs.
#

#State Idle

#
# StateMessage: sets the printer-state-message attribute for the class.
#

#StateMessage Class is idle.

#
# Accepting: is the class accepting jobs?
#
#Accepting Yes
#Accepting No
#

#
# Printer: adds a printer to the class.
#

#Printer sample
#Printer sample@host2
#</Class>

#
# End of "$Id: classes.conf,v 1.1.1.2 2002/02/10 04:47:51 jlovell Exp $".
#
                                                                                                                               /private/etc/cups/client.conf.N                                                                     600     0       3       00000004225 07431375567  14165  0                                                                                                    ustar 00root                            sys                                                                                                                                                                                                                    #
# "$Id: client.conf,v 1.1.1.2 2002/02/10 04:47:51 jlovell Exp $"
#
#   Sample client configuration file for the Common UNIX Printing System
#   (CUPS).
#
#   Copyright 1997-2002 by Easy Software Products, all rights reserved.
#
#   These coded instructions, statements, and computer programs are the
#   property of Easy Software Products and are protected by Federal
#   copyright law.  Distribution and use rights are outlined in the file
#   "LICENSE.txt" which should have been included with this file.  If this
#   file is missing or damaged please contact Easy Software Products
#   at:
#
#       Attn: CUPS Licensing Information
#       Easy Software Products
#       44141 Airport View Drive, Suite 204
#       Hollywood, Maryland 20636-3111 USA
#
#       Voice: (301) 373-9603
#       EMail: cups-info@cups.org
#         WWW: http://www.cups.org
#

########################################################################
#                                                                      #
# This is the CUPS client configuration file.  This file is used to    #
# define client-specific parameters, such as the default server or     #
# default encryption settings.                                         #
#                                                                      #
########################################################################

#
# ServerName: the hostname of your server.  By default CUPS will use the
# hostname of the system or the value of the CUPS_SERVER environment
# variable.
#

#ServerName myhost.domain.com

#
# Encryption: whether or not to use encryption; this depends on having
# the OpenSSL library linked into the CUPS library.
#
# Possible values:
#
#     Always       - Always use encryption (SSL)
#     Never        - Never use encryption
#     Required     - Use TLS encryption upgrade
#     IfRequested  - Use encryption if the server requests it
#
# The default value is "IfRequested".  This parameter can also be set
# using the CUPS_ENCRYPTION environment variable.
#

#Encryption Always
#Encryption Never
#Encryption Required
#Encryption IfRequested


#
# End of "$Id: client.conf,v 1.1.1.2 2002/02/10 04:47:51 jlovell Exp $".
#
                                                                                                                                                                                                                                                                                                                                                                           /private/etc/cups/cupsd.conf.N                                                                      600     0       3       00000047504 07504160400  14007  0                                                                                                    ustar 00root                            sys                                                                                                                                                                                                                    #
# "$Id: cupsd.conf,v 1.18 2002/06/19 19:52:32 jlovell Exp $"
#
#   Sample configuration file for the Common UNIX Printing System (CUPS)
#   scheduler.
#
#   Copyright 1997-2002 by Easy Software Products, all rights reserved.
#
#   These coded instructions, statements, and computer programs are the
#   property of Easy Software Products and are protected by Federal
#   copyright law.  Distribution and use rights are outlined in the file
#   "LICENSE.txt" which should have been included with this file.  If this
#   file is missing or damaged please contact Easy Software Products
#   at:
#
#       Attn: CUPS Licensing Information
#       Easy Software Products
#       44141 Airport View Drive, Suite 204
#       Hollywood, Maryland 20636-3111 USA
#
#       Voice: (301) 373-9603
#       EMail: cups-info@cups.org
#         WWW: http://www.cups.org
#

########################################################################
#                                                                      #
# This is the CUPS configuration file.  If you are familiar with       #
# Apache or any of the other popular web servers, we've followed the   #
# same format.  Any configuration variable used here has the same      #
# semantics as the corresponding variable in Apache.  If we need       #
# different functionality then a different name is used to avoid       #
# confusion...                                                         #
#                                                                      #
########################################################################


########
######## Server Identity
########

#
# ServerName: the hostname of your server, as advertised to the world.
# By default CUPS will use the hostname of the system.
#
# To set the default server used by clients, see the client.conf file.
#
# If the Listen 127.0.0.1:631 command is set later in this file then
# the server name needs to be 127.0.0.1, otherwise cupsGetPPD(), for
# example, will fail.
#
ServerName 127.0.0.1

#
# ServerAdmin: the email address to send all complaints/problems to.
# By default CUPS will use "root@hostname".
#

#ServerAdmin root@your.domain.com


########
######## Server Options
########

#
# AccessLog: the access log file; if this does not start with a leading /
# then it is assumed to be relative to ServerRoot.  By default set to
# "/private/var/log/cups/access_log"
#
# You can also use the special name "syslog" to send the output to the
# syslog file or daemon.
#

#AccessLog /private/var/log/cups/access_log

#
# Classification: the classification level of the server.  If set, this
# classification is displayed on all pages, and raw printing is disabled.
# The default is the empty string.
#

#Classification classified
#Classification confidential
#Classification secret
#Classification topsecret
#Classification unclassified

#
# ClassifyOverride: whether to allow users to override the classification
# on printouts. If enabled, users can limit banner pages to before or
# after the job, and can change the classification of a job, but cannot
# completely eliminate the classification or banners.
#
# The default is off.
#

#ClassifyOverride off

#
# DataDir: the root directory for the CUPS data files.
# By default "/usr/share/cups".
#

#DataDir /usr/share/cups

#
# DefaultCharset: the default character set to use. If not specified,
# defaults to "utf-8".  Note that this can also be overridden in
# HTML documents...
#

#DefaultCharset utf-8

#
# DefaultLanguage: the default language if not specified by the browser.
# If not specified, the current locale is used.
#

#DefaultLanguage en

#
# DocumentRoot: the root directory for HTTP documents that are served.
# By default "/usr/share/doc/cups".
#

#DocumentRoot /usr/share/doc/cups

#
# ErrorLog: the error log file; if this does not start with a leading /
# then it is assumed to be relative to ServerRoot.  By default set to
# "/private/var/log/cups/error_log"
#
# You can also use the special name "syslog" to send the output to the
# syslog file or daemon.
#

#ErrorLog /private/var/log/cups/error_log

#
# FontPath: the path to locate all font files (currently only for pstoraster)
# By default "/usr/share/cups/fonts".
#

#FontPath /usr/share/cups/fonts

#
# LogLevel: controls the number of messages logged to the ErrorLog
# file and can be one of the following:
#
#     debug2	Log everything.
#     debug	Log almost everything.
#     info      Log all requests and state changes.
#     warn      Log errors and warnings.
#     error     Log only errors.
#     none      Log nothing.
#

LogLevel info

#
# MaxLogSize: controls the maximum size of each log file before they are
# rotated.  Defaults to 1048576 (1MB).  Set to 0 to disable log rotating.
#

#MaxLogSize 0

#
# PageLog: the page log file; if this does not start with a leading /
# then it is assumed to be relative to ServerRoot.  By default set to
# "/private/var/log/cups/page_log"
#
# You can also use the special name "syslog" to send the output to the
# syslog file or daemon.
#

#PageLog /private/var/log/cups/page_log

#
# PreserveJobHistory: whether or not to preserve the job history after a
# job is completed, cancelled, or stopped.  Default is Yes.
#

#PreserveJobHistory Yes

#
# PreserveJobFiles: whether or not to preserve the job files after a
# job is completed, cancelled, or stopped.  Default is No.
#

#PreserveJobFiles No

#
# AutoPurgeJobs: automatically purge jobs when not needed for quotas.
# Default is No.
#

#AutoPurgeJobs No

#
# MaxJobs: maximum number of jobs to keep in memory (active and completed.)
# Default is 500; the value 0 is used for no limit.
#

#MaxJobs 500

#
# Printcap: the name of the printcap file.  Default is /etc/printcap.
# Leave blank to disable printcap file generation.
#

#Printcap /etc/printcap

#
# PrintcapFormat: the format of the printcap file, currently either
# BSD or Solaris.  The default is "BSD".
#

#PrintcapFormat BSD
#PrintcapFormat Solaris

#
# PrintcapGUI: the name of the GUI options panel program to associate
# with print queues under IRIX.  The default is "/usr/bin/glpoptions"
# from ESP Print Pro.
#
# This option is only used under IRIX; the options panel program
# must accept the "-d printer" and "-o options" options and write
# the selected printer options back to stdout on completion.
#

#PrintcapGUI /usr/bin/glpoptions

#
# RequestRoot: the directory where request files are stored.
# By default "/private/var/spool/cups".
#

#RequestRoot /private/var/spool/cups

#
# RemoteRoot: the name of the user assigned to unauthenticated accesses
# from remote systems.  By default "remroot".
#

#RemoteRoot remroot

#
# ServerBin: the root directory for the scheduler executables.
# By default "/usr/libexec/cups".
#

#ServerBin /usr/libexec/cups

#
# ServerRoot: the root directory for the scheduler.
# By default "/private/etc/cups".
#

#ServerRoot /private/etc/cups

#
# ConfigFilePerm: The permissions of the config file.
# MacOSX's Sharing preference panel requires the file be readable by others.
# By default 600.
#

ConfigFilePerm 0644


########
######## Encryption Support
########

#
# ServerCertificate: the file to read containing the server's certificate.
# Defaults to "/private/etc/cups/ssl/server.crt".
#

#ServerCertificate /private/etc/cups/ssl/server.crt

#
# ServerKey: the file to read containing the server's key.
# Defaults to "/private/etc/cups/ssl/server.key".
#

#ServerKey /private/etc/cups/ssl/server.key


########
######## Filter Options
########

#
# User/Group: the user and group the server runs under.  Normally this
# must be daemon and admin, however you can configure things for another
# user or group as needed.
#
# Note: the server must be run initially as root to support the
# default IPP port of 631.  It changes users whenever an external
# program is run, or if the RunAsUser directive is specified...
#

#User daemon
#Group admin

#
# RIPCache: the amount of memory that each RIP should use to cache
# bitmaps.  The value can be any real number followed by "k" for
# kilobytes, "m" for megabytes, "g" for gigabytes, or "t" for tiles
# (1 tile = 256x256 pixels.)  Defaults to "8m" (8 megabytes).
#

#RIPCache 8m

#
# TempDir: the directory to put temporary files in.  This directory must be
# writable by the user defined above!  Defaults to "/private/var/spool/cups/tmp" or
# the value of the TMPDIR environment variable.
#

#TempDir /private/var/spool/cups/tmp

#
# FilterLimit: sets the maximum cost of all job filters that can be run
# at the same time.  A limit of 0 means no limit.  A typical job may need
# a filter limit of at least 200; limits less than the minimum required
# by a job force a single job to be printed at any time.
#
# The default limit is 0 (unlimited).
#

#FilterLimit 0

########
######## Network Options
########

#
# Ports/addresses that we listen to.  The default port 631 is reserved
# for the Internet Printing Protocol (IPP) and is what we use here.
#
# You can have multiple Port/Listen lines to listen to more than one
# port or address, or to restrict access:
#
#    Port 80
#    Port 631
#    Listen hostname
#    Listen hostname:80
#    Listen hostname:631
#    Listen 1.2.3.4
#    Listen 1.2.3.4:631
# 
# NOTE: Unfortunately, most web browsers don't support TLS or HTTP Upgrades
# for encryption.  If you want to support web-based encryption you'll
# probably need to listen on port 443 (the "https" port...)
#

#Port 80
#Port 443
#Port 631
Listen 127.0.0.1:631

#
# HostNameLookups: whether or not to do lookups on IP addresses to get a
# fully-qualified hostname.  This defaults to Off for performance reasons...
#

#HostNameLookups On

#
# KeepAlive: whether or not to support the Keep-Alive connection
# option.  Default is on.
#

#KeepAlive On

#
# KeepAliveTimeout: the timeout before Keep-Alive connections are
# automatically closed.  Default is 60 seconds.
#

#KeepAliveTimeout 60

#
# MaxClients: controls the maximum number of simultaneous clients that
# will be handled.  Defaults to 100.
#

#MaxClients 100

#
# MaxRequestSize: controls the maximum size of HTTP requests and print files.
# Set to 0 to disable this feature (defaults to 0.)
#

#MaxRequestSize 0

#
# Timeout: the timeout before requests time out.  Default is 300 seconds.
#

#Timeout 300


########
######## Browsing Options
########

#
# Browsing: whether or not to broadcast and/or listen for CUPS printer
# information on the network.  Enabled by default.
#

#Browsing On

#
# BrowseProtocols: which protocols to use for browsing.  Can be
# any of the following separated by whitespace and/or commas:
#
#     all  - Use all supported protocols.
#     cups - Use the CUPS browse protocol.
#     slp  - Use the SLPv2 protocol.
#
# The default is "cups".
#
# NOTE: If you choose to use SLPv2, it is *strongly* recommended that
#       you have at least one SLP Directory Agent (DA) on your
#       network.  Otherwise, browse updates can take several seconds,
#       during which the scheduler will not response to client
#       requests.
#

#BrowseProtocols cups

#
# BrowseAddress: specifies a broadcast address to be used.  By
# default browsing information is not sent!
#
# Note: HP-UX does not properly handle broadcast unless you have a
# Class A, B, C, or D netmask (i.e. no CIDR support).
#
# Note: Using the "global" broadcast address (255.255.255.255) will
# activate a Linux demand-dial link with the default configuration.
# If you have a LAN as well as the dial-up link, use the LAN's
# broadcast address.
#
# The @LOCAL address broadcasts to all non point-to-point interfaces.
# For example, if you have a LAN and a dial-up link, @LOCAL would
# send printer updates to the LAN but not to the dial-up link.
# Similarly, the @IF(name) address sends to the named network
# interface, e.g. @IF(eth0) under Linux.  Interfaces are refreshed
# automatically (no more than once every 60 seconds), so they can
# be used on dynamically-configured interfaces, e.g. PPP, 802.11, etc.
#

#BrowseAddress x.y.z.255
#BrowseAddress x.y.255.255
#BrowseAddress x.255.255.255
#BrowseAddress 255.255.255.255
#BrowseAddress @LOCAL
#BrowseAddress @IF(name)

#
# BrowseShortNames: whether or not to use "short" names for remote printers
# when possible (e.g. "printer" instead of "printer@host".)  Enabled by
# default.
#

BrowseShortNames No

#
# BrowseAllow: specifies an address mask to allow for incoming browser
# packets. The default is to allow packets from all addresses.
#
# BrowseDeny: specifies an address mask to deny for incoming browser
# packets. The default is to deny packets from no addresses.
#
# Both "BrowseAllow" and "BrowseDeny" accept the following notations for
# addresses:
#
#     All
#     None
#     *.domain.com
#     .domain.com
#     host.domain.com
#     nnn.*
#     nnn.nnn.*
#     nnn.nnn.nnn.*
#     nnn.nnn.nnn.nnn
#     nnn.nnn.nnn.nnn/mm
#     nnn.nnn.nnn.nnn/mmm.mmm.mmm.mmm
#     @LOCAL
#     @IF(name)
#
# The hostname/domainname restrictions only work if you have turned hostname
# lookups on!
#

#BrowseAllow address
#BrowseDeny address

#
# BrowseInterval: the time between browsing updates in seconds.  Default
# is 30 seconds.
#
# Note that browsing information is sent whenever a printer's state changes
# as well, so this represents the maximum time between updates.
#
# Set this to 0 to disable outgoing broadcasts so your local printers are
# not advertised but you can still see printers on other hosts.
#

#BrowseInterval 30

#
# BrowseOrder: specifies the order of BrowseAllow/BrowseDeny comparisons.
#

#BrowseOrder allow,deny
#BrowseOrder deny,allow

#
# BrowsePoll: poll the named server(s) for printers
#

#BrowsePoll address:port

#
# BrowsePort: the port used for UDP broadcasts.  By default this is
# the IPP port; if you change this you need to do it on all servers.
# Only one BrowsePort is recognized.
#

#BrowsePort 631

#
# BrowseRelay: relay browser packets from one address/network to another.
#

#BrowseRelay source-address destination-address
#BrowseRelay @IF(src) @IF(dst)

#
# BrowseTimeout: the timeout for network printers - if we don't
# get an update within this time the printer will be removed
# from the printer list.  This number definitely should not be
# less the BrowseInterval value for obvious reasons.  Defaults
# to 300 seconds.
#

#BrowseTimeout 300

#
# ImplicitClasses: whether or not to use implicit classes.
#
# Printer classes can be specified explicitly in the classes.conf
# file, implicitly based upon the printers available on the LAN, or
# both.
#
# When ImplicitClasses is On, printers on the LAN with the same name
# (e.g. Acme-LaserPrint-1000) will be put into a class with the same
# name. This allows you to setup multiple redundant queues on a LAN
# without a lot of administrative difficulties.  If a user sends a
# job to Acme-LaserPrint-1000, the job will go to the first available
# queue.
#
# Enabled by default.
#

ImplicitClasses Off

#
# ImplicitAnyClasses: whether or not to create "AnyPrinter" implicit
# classes.
#
# When ImplicitAnyClasses is On and a local queue of the same name
# exists, e.g. "printer", "printer@server1", "printer@server1", then
# an implicit class called "Anyprinter" is created instead.
#
# When ImplicitAnyClasses is Off, implicit classes are not created
# when there is a local queue of the same name.
#
# Disabled by default.
#

#ImplicitAnyCLasses Off

#
# HideImplicitMembers: whether or not to show the members of an
# implicit class.
#
# When HideImplicitMembers is On, any remote printers that are
# part of an implicit class are hidden from the user, who will
# then only see a single queue even though many queues will be
# supporting the implicit class.
#
# Enabled by default.
#

#HideImplicitMembers On


########
######## Security Options
########

#
# SystemGroup: the group name for "System" (printer administration)
# access.  The default varies depending on the operating system, but
# will be "sys", "system", or "root" (checked for in that order.)
#

#SystemGroup admin

#
# RootCertDuration: How frequently the root certificate is regenerated.
# Defaults to 300 seconds.
#

RootCertDuration 43200

#
# Access permissions for each directory served by the scheduler.
# Locations are relative to DocumentRoot...
#
# AuthType: the authorization to use:
#
#    None   - Perform no authentication
#    Basic  - Perform authentication using the HTTP Basic method.
#    Digest - Perform authentication using the HTTP Digest method.
#
#    (Note: local certificate authentication can be substituted by
#           the client for Basic or Digest when connecting to the
#           localhost interface)
#
# AuthClass: the authorization class; currently only "Anonymous", "User",
# "System" (valid user belonging to group SystemGroup), and "Group"
# (valid user belonging to the specified group) are supported.
#
# AuthGroupName: the group name for "Group" authorization.
#
# Order: the order of Allow/Deny processing.
#
# Allow: allows access from the specified hostname, domain, IP address,
# network, or interface.
#
# Deny: denies access from the specified hostname, domain, IP address,
# network, or interface.
#
# Both "Allow" and "Deny" accept the following notations for addresses:
#
#     All
#     None
#     *.domain.com
#     .domain.com
#     host.domain.com
#     nnn.*
#     nnn.nnn.*
#     nnn.nnn.nnn.*
#     nnn.nnn.nnn.nnn
#     nnn.nnn.nnn.nnn/mm
#     nnn.nnn.nnn.nnn/mmm.mmm.mmm.mmm
#     @LOCAL
#     @IF(name)
#
# The host and domain address require that you enable hostname lookups
# with "HostNameLookups On" above.
#
# The @LOCAL address allows or denies from all non point-to-point
# interfaces.  For example, if you have a LAN and a dial-up link,
# @LOCAL could allow connections from the LAN but not from the dial-up
# link.  Similarly, the @IF(name) address allows or denies from the
# named network interface, e.g. @IF(eth0) under Linux.  Interfaces are
# refreshed automatically (no more than once every 60 seconds), so
# they can be used on dynamically-configured interfaces, e.g. PPP,
# 802.11, etc.
#
# Encryption: whether or not to use encryption; this depends on having
# the OpenSSL library linked into the CUPS library and scheduler.
#
# Possible values:
#
#     Always       - Always use encryption (SSL)
#     Never        - Never use encryption
#     Required     - Use TLS encryption upgrade
#     IfRequested  - Use encryption if the server requests it
#
# The default value is "IfRequested".
#

<Location />
Order Deny,Allow
Deny From All
Allow From 127.0.0.1
</Location>

#<Location /classes>
#
# You may wish to limit access to printers and classes, either with Allow
# and Deny lines, or by requiring a username and password.
#
#</Location>

#<Location /classes/name>
#
# You may wish to limit access to printers and classes, either with Allow
# and Deny lines, or by requiring a username and password.
#
#</Location>

#<Location /jobs>
#
# You may wish to limit access to job operations, either with Allow
# and Deny lines, or by requiring a username and password.
#
#</Location>

#<Location /printers>
#
# You may wish to limit access to printers and classes, either with Allow
# and Deny lines, or by requiring a username and password.
#
#</Location>

#<Location /printers/name>
#
# You may wish to limit access to printers and classes, either with Allow
# and Deny lines, or by requiring a username and password.
#

## Anonymous access (default)
#AuthType None

## Require a username and password (Basic authentication)
#AuthType Basic
#AuthClass User

## Require a username and password (Digest/MD5 authentication)
#AuthType Digest
#AuthClass User

## Restrict access to local domain
#Order Deny,Allow
#Deny From All
#Allow From .mydomain.com
#</Location>

<Location /admin>
#
# You definitely will want to limit access to the administration functions.
# The default configuration requires a local connection from a user who
# is a member of the system group to do any admin tasks.  You can change
# the group name using the SystemGroup directive.
#

AuthType None
AuthClass Anonymous

## Restrict access to local domain
Order Deny,Allow
Deny From All
Allow From 127.0.0.1

#Encryption Required
</Location>

#
# End of "$Id: cupsd.conf,v 1.18 2002/06/19 19:52:32 jlovell Exp $".
#
                                                                                                                                                                                            /private/etc/cups/mime.convs.N                                                                      600     0       3       00000005372 07477757122  14046  0                                                                                                    ustar 00root                            sys                                                                                                                                                                                                                    #
# "$Id: mime.convs,v 1.1.1.3 2002/06/06 22:12:34 jlovell Exp $"
#
#   MIME converts file for the Common UNIX Printing System (CUPS).
#
#   Copyright 1997-2002 by Easy Software Products.
#
#   These coded instructions, statements, and computer programs are the
#   property of Easy Software Products and are protected by Federal
#   copyright law.  Distribution and use rights are outlined in the file
#   "LICENSE.txt" which should have been included with this file.  If this
#   file is missing or damaged please contact Easy Software Products
#   at:
#
#       Attn: CUPS Licensing Information
#       Easy Software Products
#       44141 Airport View Drive, Suite 204
#       Hollywood, Maryland 20636-3111 USA
#
#       Voice: (301) 373-9603
#       EMail: cups-info@cups.org
#         WWW: http://www.cups.org
#

########################################################################
#
# Format of Lines:
#
#   source/type destination/type cost filter
#
# General Notes:
#
#   The "cost" field is used to find the least costly filters to run
#   when converting a job file to a printable format.
#
#   All filters *must* accept the standard command-line arguments
#   (job-id, user, title, copies, options, [filename or stdin]) to
#   work with CUPS.
#

########################################################################
#
# PostScript filters
#

application/pdf		application/postscript	33	pdftops
application/postscript	application/vnd.cups-postscript	66	pstops
application/vnd.hp-HPGL	application/postscript	66	hpgltops
image/*			application/vnd.cups-postscript	66	imagetops
application/x-cshell	application/postscript	33	texttops
application/x-perl	application/postscript	33	texttops
application/x-shell	application/postscript	33	texttops
text/plain		application/postscript	33	texttops
text/html		application/postscript	33	texttops

########################################################################
#
# Form filter...
#
# This filter does not currently exist, but the file format is defined
# in the IDD and registered with the IANA for future use...
#

#application/vnd.cups-form application/vnd.cups-postscript 33 formtops

########################################################################
#
# Raster filters...
#

image/*			application/vnd.cups-raster	100	imagetoraster

# pstoraster is now part of ESP Ghostscript...
#application/vnd.cups-postscript	application/vnd.cups-raster	100	pstoraster

########################################################################
#
# Raw filter...
#
# Uncomment the following filter and the application/octet-stream type
# in mime.types to allow printing of arbitrary files without the -oraw
# option.
#

#application/octet-stream	application/vnd.cups-raw	0	-

#
# End of "$Id: mime.convs,v 1.1.1.3 2002/06/06 22:12:34 jlovell Exp $".
#
                                                                                                                                                                                                                                                                      /private/etc/cups/mime.types.N                                                                      600     0       3       00000013047 07454242161  14043  0                                                                                                    ustar 00root                            sys                                                                                                                                                                                                                    #
# "$Id: mime.types,v 1.1.1.3 2002/04/08 07:19:13 jlovell Exp $"
#
#   MIME types file for the Common UNIX Printing System (CUPS).
#
#   Copyright 1997-2002 by Easy Software Products.
#
#   These coded instructions, statements, and computer programs are the
#   property of Easy Software Products and are protected by Federal
#   copyright law.  Distribution and use rights are outlined in the file
#   "LICENSE.txt" which should have been included with this file.  If this
#   file is missing or damaged please contact Easy Software Products
#   at:
#
#       Attn: CUPS Licensing Information
#       Easy Software Products
#       44141 Airport View Drive, Suite 204
#       Hollywood, Maryland 20636-3111 USA
#
#       Voice: (301) 373-9603
#       EMail: cups-info@cups.org
#         WWW: http://www.cups.org
#

########################################################################
#
# Format of Lines:
#
#   super/type rules
#
# "rules" can be any combination of:
#
#   ( expr )				Parenthesis for expression grouping
#   +					Logical AND
#   , or whitespace			Logical OR
#   !					Logical NOT
#   match("pattern")			Pattern match on filename
#   extension				Pattern match on "*.extension"
#   ascii(offset,length)		True if bytes are valid printable ASCII
#					(CR, NL, TAB, BS, 32-126)
#   printable(offset,length)		True if bytes are printable 8-bit chars
#					(CR, NL, TAB, BS, 32-126, 128-254)
#   string(offset,"string")		True if bytes are identical to string
#   char(offset,value)			True if byte is identical
#   short(offset,value)			True if 16-bit integer is identical
#   int(offset,value)			True if 32-bit integer is identical
#   locale("string")                    True if current locale matches string
#   contains(offset,range,"string")	True if the range contains the string
#
# General Notes:
#
#   MIME type names are case-insensitive.  Internally they are converted
#   to lowercase.  Multiple occurrences of a type will cause the provided
#   rules to be appended to the existing definition.  Type names are sorted
#   in ascending order, so if two types use the same rules to resolve a type
#   (e.g. doc extension for two types), the returned type will be the first
#   type in the sorted list.
#
#   The "printable" rule differs from the "ascii" rule in that it also
#   accepts 8-bit characters in the range 128-255.
#
#   String constants must be surrounded by "" if they contain whitespace.
#   To insert binary data into a string, use the <hex> notation.
#

########################################################################
#
# Application-generated files...
#

application/msword		doc string(0,<D0CF11E0A1B11AE1>)
application/pdf			pdf string(0,%PDF)
application/postscript		ai eps ps string(0,%!) string(0,<04>%!)
application/vnd.hp-HPGL		hpgl string(0,<1B>&)\
				string(0,<1B>E<1B>%0B) \
				string(0,<1B>%-1B) string(0,<201B>)\
				string(0,BP;) string(0,IN;) string(0,DF;) \
				string(0,BPINPS;) \
				(contains(0,128,<1B>%-12345X) + \
				 (contains(9,512,"LANGUAGE=HPGL") \
				  contains(9,512,"LANGUAGE = HPGL")))

########################################################################
#
# Image files...
#

image/gif			gif string(0,GIF87a) string(0,GIF89a)
image/png			png string(0,<89>PNG)
image/jpeg			jpeg jpg jpe string(0,<FFD8FF>) &&\
				(char(3,0xe0) char(3,0xe1) char(3,0xe2) char(3,0xe3)\
				 char(3,0xe4) char(3,0xe5) char(3,0xe6) char(3,0xe7)\
				 char(3,0xe8) char(3,0xe9) char(3,0xea) char(3,0xeb)\
				 char(3,0xec) char(3,0xed) char(3,0xee) char(3,0xef))
image/tiff			tiff tif string(0,MM) string(0,II)
image/x-photocd			pcd string(2048,PCD_IPI)
image/x-portable-anymap		pnm
image/x-portable-bitmap		pbm string(0,P1) string(0,P4)
image/x-portable-graymap	pgm string(0,P2) string(0,P5)
image/x-portable-pixmap		ppm string(0,P3) string(0,P6)
image/x-sgi-rgb			rgb sgi bw icon short(0,474)
image/x-xbitmap			xbm
image/x-xpixmap			xpm ascii(0,1024) + string(3,"XPM")
image/x-xwindowdump		xwd
image/x-sun-raster		ras string(0,<59a66a95>)

#image/fpx			fpx
image/x-alias			pix short(8,8) short(8,24)
image/x-bitmap			bmp string(0,BM) && !printable(2,14)

########################################################################
#
# Text files...
#

text/html			html htm printable(0,1024) +\
				(string(0,"<HTML>") string(0,"<!DOCTYPE"))
application/x-cshell		csh printable(0,1024) + string(0,#!) +\
				(contains(2,80,/csh) contains(2,80,/tcsh))
application/x-perl		pl printable(0,1024) + string(0,#!) +\
				contains(2,80,/perl)
application/x-shell		sh printable(0,1024) + string(0,#!) +\
				(contains(2,80,/bash) contains(2,80,/ksh)\
				 contains(2,80,/sh) contains(2,80,/zsh))
text/plain			txt printable(0,1024)

########################################################################
#
# CUPS-specific types...
#

application/vnd.cups-form	string(0,"<CUPSFORM>")
application/vnd.cups-postscript	contains(0,128,<1B>%-12345X) + \
				(contains(9,512,"LANGUAGE=POSTSCRIPT") \
				 contains(9,512,"LANGUAGE = Postscript") \
				 contains(9,512,"LANGUAGE = POSTSCRIPT"))
application/vnd.cups-raster	string(0,"RaSt") string(0,"tSaR")
application/vnd.cups-raw	(string(0,<1B>E) + !string(2,<1B>%0B)) \
				string(0,<1B>@) \
				(contains(0,128,<1B>%-12345X) + \
				 (contains(9,512,"LANGUAGE=PCL") \
				  contains(9,512,"LANGUAGE = PCL")))

########################################################################
#
# Raw print file support...
#
# Uncomment the following type and the application/octet-stream
# filter line in mime.convs to allow raw file printing without the
# -oraw option.
#

#application/octet-stream

#
# End of "$Id: mime.types,v 1.1.1.3 2002/04/08 07:19:13 jlovell Exp $".
#
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         /private/etc/cups/printers.conf.N                                                                   600     0       3       00000005302 07431375571  14545  0                                                                                                    ustar 00root                            sys                                                                                                                                                                                                                    #
# "$Id: printers.conf,v 1.1.1.2 2002/02/10 04:47:53 jlovell Exp $"
#
#   Sample printer configuration file for the Common UNIX Printing System
#   (CUPS) scheduler.
#
#   Copyright 1997-2002 by Easy Software Products, all rights reserved.
#
#   These coded instructions, statements, and computer programs are the
#   property of Easy Software Products and are protected by Federal
#   copyright law.  Distribution and use rights are outlined in the file
#   "LICENSE.txt" which should have been included with this file.  If this
#   file is missing or damaged please contact Easy Software Products
#   at:
#
#       Attn: CUPS Licensing Information
#       Easy Software Products
#       44141 Airport View Drive, Suite 204
#       Hollywood, Maryland 20636-3111 USA
#
#       Voice: (301) 373-9603
#       EMail: cups-info@cups.org
#         WWW: http://www.cups.org
#

########################################################################
#                                                                      #
# This is a sample printer configuration file.  This file is included  #
# from the main configuration file (cups.conf) and lists all of the    #
# printers known to the system.                                        #
#                                                                      #
########################################################################

#
# Each printer starts with a <Printer name> definition.  Printer names
# can be up to 128 characters in length and are *not* case sensitive.
#
# One <DefaultPrinter name> entry can appear in this file; if you don't
# define a default destination, the first printer or class becomes the
# default.
#

#<Printer sample>
#
# Info: the description for the printer.
#

#Info Acme LaserPrint 1000

#
# Location: the location of the printer.
#

#Location Room 101 in the activities building

#
# DeviceURI: the device URI for this printer.
#

#DeviceURI parallel:/dev/plp
#DeviceURI serial:/dev/ttyd1?baud=38400+size=8+parity=none+flow=soft
#DeviceURI scsi:/dev/scsi/sc1d6l0
#DeviceURI socket://hostname:port
#DeviceURI tftp://hostname/path
#DeviceURI ftp://hostname/path
#DeviceURI http://hostname[:port]/path
#DeviceURI ipp://hostname/path
#DeviceURI smb://hostname/printer

#
# State: sets the initial state of the printer.  Can be one of the
# following:
#
#     Idle    - Printer is available to print new jobs.
#     Stopped - Printer is disabled but accepting new jobs.
#

#State Idle

#
# StateMessage: sets the printer-state-message attribute for the printer.
#

#StateMessage Printer is idle.

#
# Accepting: is the printer accepting jobs?
#
#Accepting Yes
#Accepting No

#</Printer>

#
# End of "$Id: printers.conf,v 1.1.1.2 2002/02/10 04:47:53 jlovell Exp $".
#
                                                                                                                                                                                                                                                                                                                              /etc/software/init.d/cups                                                                           555     0       3       00000006750 07501235213  13127  0                                                                                                    ustar 00root                            sys                                                                                                                                                                                                                    #!/bin/sh
#
# "$Id: cups.sh,v 1.20 2002/06/10 23:47:23 jlovell Exp $"
#
#   Startup/shutdown script for the Common UNIX Printing System (CUPS).
#
#   Copyright 1997-2002 by Easy Software Products, all rights reserved.
#
#   These coded instructions, statements, and computer programs are the
#   property of Easy Software Products and are protected by Federal
#   copyright law.  Distribution and use rights are outlined in the file
#   "LICENSE.txt" which should have been included with this file.  If this
#   file is missing or damaged please contact Easy Software Products
#   at:
#
#       Attn: CUPS Licensing Information
#       Easy Software Products
#       44141 Airport View Drive, Suite 204
#       Hollywood, Maryland 20636-3111 USA
#
#       Voice: (301) 373-9603
#       EMail: cups-info@cups.org
#         WWW: http://www.cups.org
#

#### OS-Dependent Information

#
#   Linux chkconfig stuff:
#
#   chkconfig: 235 99 00
#   description: Startup/shutdown script for the Common UNIX \
#                Printing System (CUPS).
#

#
#   NetBSD 1.5+ rcorder script lines.  The format of the following two
#   lines is very strict -- please don't add additional spaces!
#
# PROVIDE: cups
# REQUIRE: DAEMON
#


#### OS-Dependent Configuration

case "`uname`" in
	IRIX*)
		IS_ON=/sbin/chkconfig
		;;

	*BSD*)
        	IS_ON=:
		;;

	Darwin*)
		. /etc/rc.common

		if test "${CUPS:=-YES-}" = "-NO-"; then
			exit 0
		fi

        	IS_ON=:
		;;

	Linux*)
		# Set the timezone, if possible...
		if test -f /etc/TIMEZONE; then
                        . /etc/TIMEZONE
                else
			if test -f /etc/sysconfig/clock; then
	                        . /etc/sysconfig/clock
        	                TZ="$ZONE"
                	        export TZ
			fi
                fi

		IS_ON=/bin/true
		;;

	*)
		IS_ON=/bin/true
		;;
esac

#### OS-Independent Stuff

#
# The verbose flag controls the printing of the names of
# daemons as they are started.  Currently always echos for
# all but IRIX, which can configure verbose bootup messages.
#

if test "`uname`" = "Darwin"; then
	ECHO=ConsoleMessage
else
	if $IS_ON verbose; then
		ECHO=echo
	else
		ECHO=:
	fi
fi

#
# See if the CUPS server (cupsd) is running...
#

case "`uname`" in
	HP-UX* | AIX* | SINIX*)
		pid=`ps -e | awk '{if (match($4, ".*/cupsd$") || $4 == "cupsd") print $1}'`
		;;
	IRIX* | SunOS*)
		pid=`ps -e | nawk '{if (match($4, ".*/cupsd$") || $4 == "cupsd") print $1}'`
		;;
	UnixWare*)
		pid=`ps -e | awk '{if (match($6, ".*/cupsd$") || $6 == "cupsd") print $1}'`
		. /etc/TIMEZONE
		;;
	OSF1*)
		pid=`ps -e | awk '{if (match($5, ".*/cupsd$") || $5 == "cupsd") print $1}'`
		;;
	Linux* | *BSD* | Darwin*)
		pid=`ps ax | awk '{if (match($5, ".*/cupsd$") || $5 == "cupsd") print $1}'`
		;;
	*)
		pid=""
		;;
esac

#
# Start or stop the CUPS server based upon the first argument to the script.
#

case $1 in
	start | restart | reload)
		if $IS_ON cups; then
			if test "$pid" != ""; then
				kill -HUP $pid
			else
				prefix=/
				exec_prefix=/usr
				${exec_prefix}/sbin/cupsd
			fi
			$ECHO "cups: scheduler ${1}ed."
		else
			$ECHO "cups: scheduler stopped."
		fi
		;;

	stop)
		if test "$pid" != ""; then
			kill $pid
			$ECHO "cups: scheduler stopped."
		fi
		;;

	status)
		if test "$pid" != ""; then
			echo "cups: Scheduler is running."
		else
			echo "cups: Scheduler is not running."
		fi
		;;

	*)
		echo "Usage: cups {reload|restart|start|status|stop}"
		exit 1
		;;
esac

#
# Exit with no errors.
#

exit 0


#
# End of "$Id: cups.sh,v 1.20 2002/06/10 23:47:23 jlovell Exp $".
#
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        