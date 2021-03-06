# encoding: utf-8
require File.expand_path(File.dirname(__FILE__)) + '/../test_helper'

# This file is generated by the Ruby Holiday gem.
#
# Definitions loaded: definitions/rs_la.yaml
class Rs_laDefinitionTests < Test::Unit::TestCase  # :nodoc:

  def test_rs_la
{ Date.civil(2017, 1, 1) => 'Nova Godina',
  Date.civil(2017, 1, 2) => 'Nova Godina',
  Date.civil(2017, 1, 7) => 'Božić',
  Date.civil(2017, 1, 27) => 'Dan Svetog Save',
  Date.civil(2017, 2, 15) => 'Dan državnosti Srbije',
  Date.civil(2017, 2, 16) => 'Dan državnosti Srbije',
  Date.civil(2017, 5, 1) => 'Praznik rada',
  Date.civil(2017, 5, 2) => 'Praznik rada',
  Date.civil(2017, 5, 9) => 'Dan pobede',
  Date.civil(2017, 6, 28) => 'Vidovdan',
  Date.civil(2017, 11, 11) => 'Dan primirja'
}.each do |date, name|
  assert_equal name, (Holidays.on(date, :rs_la)[0] || {})[:name]
end

[Date.civil(2017, 4, 14), Date.civil(2018, 4, 6), Date.civil(2019, 4, 26)].each do |date|
  assert_equal 'Veliki Petak', Holidays.on(date, :rs_la)[0][:name]
end
[Date.civil(2017, 4, 15), Date.civil(2018, 4, 7), Date.civil(2019, 4, 27)].each do |date|
  assert_equal 'Velika Subota', Holidays.on(date, :rs_la)[0][:name]
end
[Date.civil(2017, 4, 16), Date.civil(2018, 4, 8), Date.civil(2019, 4, 28)].each do |date|
  assert_equal 'Uskrs', Holidays.on(date, :rs_la)[0][:name]
end
[Date.civil(2017, 4, 17), Date.civil(2018, 4, 9), Date.civil(2019, 4, 29)].each do |date|
  assert_equal 'Vaskrsni ponedeljak', Holidays.on(date, :rs_la)[0][:name]
end

  end
end
