
use strict;
use warnings;

use 5.008;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Dist::Zilla plugin for Pod::Loom",
  "AUTHOR" => "Christopher J. Madsen <perl\@cjmweb.net>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Dist-Zilla-Plugin-PodLoom",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Dist::Zilla::Plugin::PodLoom",
  "PREREQ_PM" => {
    "Dist::Zilla" => "4.200001",
    "Dist::Zilla::Role::FileMunger" => 0,
    "Dist::Zilla::Role::ModuleInfo" => "0.08",
    "Hash::Merge::Simple" => 0,
    "Moose" => "0.65",
    "Moose::Autobox" => 0,
    "Pod::Loom" => "0.05"
  },
  "TEST_REQUIRES" => {
    "Encode" => 0,
    "Test::DZil" => 0,
    "Test::More" => "0.88"
  },
  "VERSION" => "5.00",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Dist::Zilla" => "4.200001",
  "Dist::Zilla::Role::FileMunger" => 0,
  "Dist::Zilla::Role::ModuleInfo" => "0.08",
  "Encode" => 0,
  "Hash::Merge::Simple" => 0,
  "Moose" => "0.65",
  "Moose::Autobox" => 0,
  "Pod::Loom" => "0.05",
  "Test::DZil" => 0,
  "Test::More" => "0.88"
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



