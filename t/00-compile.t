use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::Compile 2.029

use Test::More 0.94 tests => 24 + ($ENV{AUTHOR_TESTING} ? 1 : 0);



my @module_files = (
    'MooseX/Declare.pm',
    'MooseX/Declare/Context.pm',
    'MooseX/Declare/Context/Namespaced.pm',
    'MooseX/Declare/Context/Parameterized.pm',
    'MooseX/Declare/Context/WithOptions.pm',
    'MooseX/Declare/StackItem.pm',
    'MooseX/Declare/Syntax/EmptyBlockIfMissing.pm',
    'MooseX/Declare/Syntax/Extending.pm',
    'MooseX/Declare/Syntax/InnerSyntaxHandling.pm',
    'MooseX/Declare/Syntax/Keyword/Class.pm',
    'MooseX/Declare/Syntax/Keyword/Clean.pm',
    'MooseX/Declare/Syntax/Keyword/Method.pm',
    'MooseX/Declare/Syntax/Keyword/MethodModifier.pm',
    'MooseX/Declare/Syntax/Keyword/Namespace.pm',
    'MooseX/Declare/Syntax/Keyword/Role.pm',
    'MooseX/Declare/Syntax/Keyword/With.pm',
    'MooseX/Declare/Syntax/KeywordHandling.pm',
    'MooseX/Declare/Syntax/MethodDeclaration.pm',
    'MooseX/Declare/Syntax/MethodDeclaration/Parameterized.pm',
    'MooseX/Declare/Syntax/MooseSetup.pm',
    'MooseX/Declare/Syntax/NamespaceHandling.pm',
    'MooseX/Declare/Syntax/OptionHandling.pm',
    'MooseX/Declare/Syntax/RoleApplication.pm',
    'MooseX/Declare/Util.pm'
);



# no fake home requested

use IPC::Open3;
use IO::Handle;

my @warnings;
for my $lib (@module_files)
{
    # see L<perlfaq8/How can I capture STDERR from an external command?>
    my $stdin = '';     # converted to a gensym by open3
    my $stderr = IO::Handle->new;

    my $pid = open3($stdin, '>&STDERR', $stderr, qq{$^X -Mblib -e"require q[$lib]"});
    binmode $stderr, ':crlf' if $^O; # eq 'MSWin32';
    waitpid($pid, 0);
    is($? >> 8, 0, "$lib loaded ok");

    if (my @_warnings = <$stderr>)
    {
        warn @_warnings;
        push @warnings, @_warnings;
    }
}



is(scalar(@warnings), 0, 'no warnings found') if $ENV{AUTHOR_TESTING};

BAIL_OUT("Compilation problems") if !Test::More->builder->is_passing;
