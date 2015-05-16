use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::EOL 0.18

use Test::More 0.88;
use Test::EOL;

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
    'lib/MooseX/Declare/Util.pm',
    't/00-report-prereqs.dd',
    't/00-report-prereqs.t',
    't/anon.t',
    't/attribute_issues.t',
    't/autoclean.t',
    't/basic.t',
    't/clean.t',
    't/import.t',
    't/inner_keywords.t',
    't/lib/Affe.pm',
    't/lib/Foo.pm',
    't/lib/ParameterizedRole.pm',
    't/lib/Tiger.pm',
    't/lib/WithMethod.pm',
    't/lib/WithNewline.pm',
    't/manual_namespace.t',
    't/meta_should_be_signature.t',
    't/method_as_default.t',
    't/modifier_order.t',
    't/modifiers.t',
    't/modify_with_invocant.t',
    't/nested_anonymous_classes.t',
    't/nesting.t',
    't/optional_positional.t',
    't/override_attribute_from_role.t',
    't/recipes/basics/001_point.t',
    't/recipes/basics/002_bank_account.t',
    't/recipes/basics/006_augment_inner.t',
    't/role_application.t',
    't/role_parameterized.t',
    't/segfault_syntax_error.t',
    't/zzz-check-breaks.t'
);

eol_unix_ok($_, { trailing_whitespace => 1 }) foreach @files;
done_testing;
