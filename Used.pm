package Used;

our $VERSION = '0.01';

CHECK {
	for ( sort{ $INC{ $a } cmp $INC{ $b } } keys %INC ) {
		printf '%-60s : ', $INC{ $_ };
		s[/][::];
		s[\.pm$][::VERSION];
		s[^][\$];
	    print eval||'N/A', $/;
	}
}

1;
__END__

=head1 NAME

Used - Perl extension for listing the dependancies of a script.

=head1 SYNOPSIS

perl -c -MUsed your_script.pl

=head1 EXAMPLE

	P:\test>perl58 -c -MUsed P:\bin\GET
	d:/Perl/lib/Carp.pm                      : 1.01
	d:/Perl/lib/Config.pm                    : N/A
	d:/Perl/lib/Exporter.pm                  : 5.566
	d:/Perl/lib/Exporter/Heavy.pm            : 5.566
	d:/Perl/lib/Getopt/Long.pm               : 2.32
	d:/Perl/lib/Net/Config.pm                : 1.10
	d:/Perl/lib/Net/Domain.pm                : 2.17
	d:/Perl/lib/Socket.pm                    : 1.75
	d:/Perl/lib/Time/Local.pm                : 1.04
	d:/Perl/lib/XSLoader.pm                  : 0.01
	d:/Perl/lib/constant.pm                  : 1.04
	d:/Perl/lib/integer.pm                   : 1.00
	d:/Perl/lib/overload.pm                  : 1.00
	d:/Perl/lib/strict.pm                    : 1.02
	d:/Perl/lib/vars.pm                      : 1.01
	d:/Perl/lib/warnings.pm                  : 1.00
	d:/Perl/lib/warnings/register.pm         : 1.00
	d:/Perl/site/lib/HTTP/Date.pm            : 1.44
	d:/Perl/site/lib/HTTP/Status.pm          : 1.26
	d:/Perl/site/lib/URI.pm                  : 1.19
	d:/Perl/site/lib/URI/Escape.pm           : 3.20
	d:/Perl/site/lib/URI/Heuristic.pm        : 4.13
	d:/Perl/site/lib/Used.pm                 : 0.01
	P:\bin\GET syntax OK


=head1 ABSTRACT

Used.pm - A simple method of listing all the C<use Module::Name> dependancies of
a script including those used indirectly from within modules used by your script.

It also lists the versions of each module (if available).

=head1 DESCRIPTION

Used.pm - A simple method of listing all the C<use Module::Name> dependancies of
a script including those used indirectly from within modules used by your script.

It also lists the versions of each module (if available).


=head2 EXPORT

None.

=head1 AUTHOR

BrowserUk <lt>browseruk@cpan.org<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2003 by BrowserUk.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
