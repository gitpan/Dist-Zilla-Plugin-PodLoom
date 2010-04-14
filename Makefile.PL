
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Dist::Zilla::Plugin::PodLoom',
                       'DISTNAME' => 'Dist-Zilla-Plugin-PodLoom',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31'
                                               },
                       'AUTHOR' => 'Christopher J. Madsen <perl@cjmweb.net>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'Dist::Zilla plugin for Pod::Loom',
                       'EXE_FILES' => [],
                       'VERSION' => '0.08',
                       'PREREQ_PM' => {
                                        'Hash::Merge::Simple' => '0',
                                        'Dist::Zilla' => '2',
                                        'Pod::Loom' => '0',
                                        'Dist::Zilla::Role::ModuleInfo' => '0.08',
                                        'Moose' => '0.65'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{BUILD_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.56) };

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



