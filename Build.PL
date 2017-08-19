use strict;
use warnings;
use Module::Build;

# Copyright (C) 2017 Duke Leto <duke@myhush.org>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

my $builder = Module::Build->new(
    module_name         => 'App::Hush',
    license             => 'gplv3',
    dist_author         => 'Duke Leto <duke@myhush.org>',
    dist_abstract       => 'Hush cryptocoin mining pool and other utilities',
    dist_version        => '17.42',
    include_dirs        => '',
    build_requires => {
        'Test::More'      => 0,
        'Test::Exception' => 0,
    },
    configure_requires => { 'Module::Build' => 0.38 },
    requires => {
        'perl'            => '5.008',
    },
    add_to_cleanup      => [ 'App-Hush-*' ],
    meta_merge     => {
        resources => {
            repository  => 'http://github.com/leto/App-Hush/tree/master'
        },
    },
);

$builder->create_build_script();
print "Have a great day!\n";
