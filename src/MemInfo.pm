package Sys::MemInfo;

use strict;
use warnings;

require Exporter;
require DynaLoader;

our @ISA = qw(Exporter DynaLoader);
# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.
our @EXPORT = qw(
);
our @EXPORT_OK = qw(
totalmem
freemem
totalswap
freeswap
availkeys
get
);
our $VERSION = 0.91;
bootstrap Sys::MemInfo $VERSION;

sub get {
  my $field = shift;
  no strict;
  return &{$field};
}

=pod

Sys::MemInfo - Memory informations

=head1 SYNOPSIS

  use Sys::MemInfo qw(totalmem freemem totalswap);

  print "total memory: ".(&totalmem / 1024)."\n";
  print "free memory:  ".(&freemem / 1024)."\n";

  print "total swap: ".(&totalswap / 1024)."\n";
  print "free swap:  ".(Sys::MemInfo::get("freeswap") / 1024)."\n";

=head1 DESCRIPTION

Sys::MemInfo return the total amount of free and used physical memory in bytes in totalmem and freemem variables.

Total amount of free and user swap memory are alse returned in totalswap and freeswap variables.

This module has been tested on Linux 2.6.10, UnixWare 7.1.2, AIX5, OpenBSD 3.8, 
NetBSD 2.0.2, FreBSD 5.4, HPUX11, Solaris 9, Tru64 5.1, Irix 6.5, Mac OS X 10.2 darwin and Windows XP.

It should work on FreeBSD 4 and Windows 9X/ME/NT/200X/Vista.

=head1 METHODS

=over 4

=item availkeys

Return list of all accessor keys (freemem, totalmem, etc.)  This is useful
for dumping out all known information from the object by calling get() on
all of the returned keys.

=item freemem

Returns free physical memory in bytes.

=item freeswap

Returns free swap space in bytes.

=item get

Returns the value of the passed key.

=item totalmem

Returns total physical memory size in bytes.

=item totalswap

Returns total swap space in bytes.

=back

=head1 AUTHOR

Sylvain Cresto E<lt>scresto@gmail.comE<gt>

Thanks to Laurent Dufour and Wilson Snyder.

=head1 BUGS

Please send bug-reports to scresto@gmail.com

=head1 LICENCE

This library is free software; you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as
published by the Free Software Foundation; either version 2.1 of the
License, or (at your option) any later version.

This library is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307
USA

=head1 COPYRIGHT

Copyright (C) 2005, 2006 - Sylvain Cresto

=cut

1;
