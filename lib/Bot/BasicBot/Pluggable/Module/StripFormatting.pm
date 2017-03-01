package Bot::BasicBot::Pluggable::Module::StripFormatting;

use 5.006;
use strict;
use warnings;
use base 'Bot::BasicBot::Pluggable::Module';
use IRC::Utils;

our $VERSION = '0.01';

=head1 NAME

Bot::BasicBot::Pluggable::Module::StripFormatting - Strip IRC formatting codes from incoming messages!

=head1 DESCRIPTION

A L<Bot::BasicBot::Pluggable> module to strip IRC formatting escapes from all
incoming messages.

Generally, an IRC bot will only want to operate on text, and won't care about
formatting at all.

This plugin just listens at priority 1, and removes all formatting from incoming
messages.

It's trivially simple, but I didn't find anything when I searched, so I'm
releasing it in case it's of use to others.


=head1 SYNOPSIS

Load it as you would any other B::BB::P module, and it will strip formatting
from incoming messages.

=cut

# Listen at pri 1, strip formatting from each message we see
sub said {
    my ($self, $mess, $pri) = @_;
    return unless $pri == 1;
    $mess->{body} = IRC::Utils::strip_formatting($mess->{body});
    return;
}



=head1 AUTHOR

David Precious, C<< <davidp at preshweb.co.uk> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-bot-basicbot-pluggable-module-stripformatting at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Bot-BasicBot-Pluggable-Module-StripFormatting>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.






=head1 LICENSE AND COPYRIGHT

Copyright 2017 David Precious.

This program is free software; you can redistribute it and/or modify it
under the terms of the the Artistic License (2.0). You may obtain a
copy of the full license at:

L<http://www.perlfoundation.org/artistic_license_2_0>

Any use, modification, and distribution of the Standard or Modified
Versions is governed by this Artistic License. By using, modifying or
distributing the Package, you accept this license. Do not use, modify,
or distribute the Package, if you do not accept this license.

If your Modified Version has been derived from a Modified Version made
by someone other than you, you are nevertheless required to ensure that
your Modified Version complies with the requirements of this license.

This license does not grant you the right to use any trademark, service
mark, tradename, or logo of the Copyright Holder.

This license includes the non-exclusive, worldwide, free-of-charge
patent license to make, have made, use, offer to sell, sell, import and
otherwise transfer the Package with respect to any patent claims
licensable by the Copyright Holder that are necessarily infringed by the
Package. If you institute patent litigation (including a cross-claim or
counterclaim) against any party alleging that the Package constitutes
direct or contributory patent infringement, then this Artistic License
to you shall terminate on the date that such litigation is filed.

Disclaimer of Warranty: THE PACKAGE IS PROVIDED BY THE COPYRIGHT HOLDER
AND CONTRIBUTORS "AS IS' AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES.
THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
PURPOSE, OR NON-INFRINGEMENT ARE DISCLAIMED TO THE EXTENT PERMITTED BY
YOUR LOCAL LAW. UNLESS REQUIRED BY LAW, NO COPYRIGHT HOLDER OR
CONTRIBUTOR WILL BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, OR
CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE OF THE PACKAGE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


=cut

1; # End of Bot::BasicBot::Pluggable::Module::StripFormatting
