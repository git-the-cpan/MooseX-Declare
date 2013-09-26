use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::NoTabs 0.04

use Test::More 0.88;
use Test::NoTabs;

my @files = (
    'lib/MooseX/Declare.pm',
    'lib/MooseX/Declare/Context.pm',
    'lib/MooseX/Declare/Context/Namespaced.pm',
    'lib/MooseX/Declare/Context/Parameterized.pm',
    'lib/MooseX/Declare/Context/WithOptions.pm',
    'lib/MooseX/Declare/StackItem.pm',
    'lib/MooseX/Declare/Syntax/EmptyBlockIfMissing.pm',
    'lib/MooseX/Declare/Syntax/Extending.pm',
    'lib/MooseX/Declare/Syntax/InnerSyntaxHandling.pm',
    'lib/MooseX/Declare/Syntax/Keyword/Class.pm',
    'lib/MooseX/Declare/Syntax/Keyword/Clean.pm',
    'lib/MooseX/Declare/Syntax/Keyword/Method.pm',
    'lib/MooseX/Declare/Syntax/Keyword/MethodModifier.pm',
    'lib/MooseX/Declare/Syntax/Keyword/Namespace.pm',
    'lib/MooseX/Declare/Syntax/Keyword/Role.pm',
    'lib/MooseX/Declare/Syntax/Keyword/With.pm',
    'lib/MooseX/Declare/Syntax/KeywordHandling.pm',
    'lib/MooseX/Declare/Syntax/MethodDeclaration.pm',
    'lib/MooseX/Declare/Syntax/MethodDeclaration/Parameterized.pm',
    'lib/MooseX/Declare/Syntax/MooseSetup.pm',
    'lib/MooseX/Declare/Syntax/NamespaceHandling.pm',
    'lib/MooseX/Declare/Syntax/OptionHandling.pm',
    'lib/MooseX/Declare/Syntax/RoleApplication.pm',
    'lib/MooseX/Declare/Util.pm'
);

notabs_ok($_) foreach @files;
done_testing;
