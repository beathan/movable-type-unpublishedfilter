# UnpublishedFilter - A Movable Type Plugin
package UnpublishedFilter::Plugin;

use strict;


sub my_unpublished_entries {
    my($terms, $args) = @_;

    # Get an MT instance so we can find out who the current user is
    my $app = MT->instance;

    # 1 = unpublished, 2 = published, 4 = scheduled
    $terms->{status} = 1;
    $terms->{author_id} = $app->user->id;
}

1;

