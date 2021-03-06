# encoding: utf-8
require File.expand_path(File.dirname(__FILE__)) + '/../test_helper'

# This file is generated by the Ruby Holiday gem.
#
# Definitions loaded: definitions/pt.yaml
class PtDefinitionTests < Test::Unit::TestCase  # :nodoc:

  def test_pt
{ Date.civil(2008, 1, 1) => 'Ano Novo',
  Date.civil(2005, 2, 8) => 'Carnaval',
  Date.civil(2006, 2, 28) => 'Carnaval',
  Date.civil(2007, 2, 20) => 'Carnaval',
  Date.civil(2008, 2, 5) => 'Carnaval',
  Date.civil(2008, 3, 21) => 'Sexta-feira Santa',
  Date.civil(2008, 3, 23) => 'Páscoa',
  Date.civil(2016, 3, 27) => 'Páscoa',
  Date.civil(2008, 4, 25) => 'Dia da Liberdade',
  Date.civil(2008, 5, 1) => 'Dia do Trabalhador',
  Date.civil(2016, 5, 26) => 'Corpo de Deus',
  Date.civil(2008, 6, 10) => 'Dia de Portugal',
  Date.civil(2008, 8, 15) => 'Assunção de Nossa Senhora',
  Date.civil(2008, 10, 5) => 'Dia da República',
  Date.civil(2008, 11, 1) => 'Dia de Todos-os-Santos',
  Date.civil(2008, 12, 1) => 'Restauração da Independência',
  Date.civil(2008, 12, 8) => 'Imaculada Conceição',
  Date.civil(2008, 12, 25) => 'Natal' }.each do |date, name|
  assert_equal name, (Holidays.on(date, :pt, :informal)[0] || {})[:name]
end

assert_nil Holidays.on(Date.civil(2017, 6, 13), [:pt])[0] || {}[:name]
assert_equal 'Dia de Santo António', Holidays.on(Date.civil(2017, 6, 13), [:pt_li])[0][:name]

assert_nil Holidays.on(Date.civil(2017, 6, 24), [:pt])[0] || {}[:name]
assert_equal 'Dia de São João', Holidays.on(Date.civil(2017, 6, 24), [:pt_po])[0][:name]

  end
end
