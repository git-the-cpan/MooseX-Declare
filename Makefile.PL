
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Declarative syntax for Moose",
  "AUTHOR" => "Florian Ragwitz <rafl\@debian.org>, Ash Berlin <ash\@cpan.org>, Chas. J. Owens IV <chas.owens\@gmail.com>, Chris Prather <chris\@prather.org>, Dave Rolsky <autarch\@urth.org>, Devin Austin <dhoss\@cpan.org>, Hans Dieter Pearcey <hdp\@cpan.org>, Justin Hunter <justin.d.hunter\@gmail.com>, Matt Kraai <kraai\@ftbfs.org>, Michele Beltrame <arthas\@cpan.org>, Nelo Onyiah <nelo.onyiah\@gmail.com>, nperez <nperez\@cpan.org>, Piers Cawley <pdcawley\@bofh.org.uk>, Rafael Kitover <rkitover\@io.com>, Robert 'phaylon' Sedlacek <rs\@474.at>, Stevan Little <stevan.little\@iinteractive.com>, Tomas Doran <bobtfish\@bobtfish.net>, Yanick Champoux <yanick\@babyl.dyndns.org>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "MooseX-Declare",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "MooseX::Declare",
  "PREREQ_PM" => {
    "Carp" => 0,
    "Devel::Declare" => "0.005011",
    "Devel::Declare::Context::Simple" => 0,
    "List::MoreUtils" => 0,
    "Module::Runtime" => 0,
    "Moose" => "0.90",
    "Moose::Meta::Class" => 0,
    "Moose::Role" => 0,
    "Moose::Util" => 0,
    "Moose::Util::TypeConstraints" => 0,
    "MooseX::Method::Signatures" => "0.36",
    "MooseX::Method::Signatures::Meta::Method" => 0,
    "MooseX::Method::Signatures::Types" => 0,
    "MooseX::Role::Parameterized" => "0.12",
    "MooseX::Types::Moose" => "0.20",
    "Parse::Method::Signatures" => 0,
    "Parse::Method::Signatures::Param::Placeholder" => 0,
    "Sub::Exporter" => 0,
    "Sub::Install" => 0,
    "aliased" => 0,
    "constant" => 0,
    "namespace::autoclean" => "0.09",
    "namespace::clean" => "0.11",
    "overload" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "TEST_REQUIRES" => {
    "FindBin" => 0,
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "MooseX::Types::Structured" => 0,
    "Test::CheckDeps" => "0.006",
    "Test::Fatal" => 0,
    "Test::Moose" => 0,
    "Test::More" => "0.94",
    "if" => 0,
    "lib" => 0
  },
  "VERSION" => "0.35",
  "test" => {
    "TESTS" => "t/*.t t/recipes/basics/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  my $tr = delete $WriteMakefileArgs{TEST_REQUIRES};
  my $br = $WriteMakefileArgs{BUILD_REQUIRES};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



