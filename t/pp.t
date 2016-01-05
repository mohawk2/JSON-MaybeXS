use strict;
use warnings;

use Test::Without::Module 'Cpanel::JSON::XS', 'JSON::XS';
use if !eval { require JSON::PP; 1; }, 'Test::More', skip_all => 'No JSON::PP';
use Test::More 0.88;
use JSON::MaybeXS;

diag 'Using JSON::PP ', JSON::PP->VERSION;

is(JSON, 'JSON::PP', 'Correct JSON class');

is(
  \&encode_json, \&JSON::PP::encode_json,
  'Correct encode_json function'
);

is(
  \&decode_json, \&JSON::PP::decode_json,
  'Correct encode_json function'
);

require 't/lib/is_bool.pm';

done_testing;
