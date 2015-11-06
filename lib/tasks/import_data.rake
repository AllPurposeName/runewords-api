require "yaml"
require "colorize"
namespace :data do
  desc "Import all the Runeword YAML files into models in our DB."
  # NOTE:
  # This is only valid when run after dropping and re-generating the DB
  # since the ids need to start from 1 so that foreign keys will match up
  task :import => :environment do
    runes_file      = "#{Rails.root}/lib/assets/yml/runes.yml"
    props_file      = "#{Rails.root}/lib/assets/yml/props.yml"
    item_types_file = "#{Rails.root}/lib/assets/yml/item_types.yml"
    runewords_file  = "#{Rails.root}/lib/assets/yml/runewords.yml"
    runes_yml      = YAML.load_file(runes_file)
    props_yml      = YAML.load_file(props_file)
    item_types_yml = YAML.load_file(item_types_file)
    runewords_yml  = YAML.load_file(runewords_file)

    populate = lambda do |id, data|
      data["id"] = id
      k = @klass.create!(data)
      puts_created(k)
    end

    @klass = Rune
    runes_yml["runes"].each(&populate)
    @klass = Property
    props_yml["properties"].each(&populate)
    @klass = ItemType
    item_types_yml["itemTypes"].each(&populate)
    runewords_yml.each do |id, data|
      runeword = Runeword.create!(id: id,
                                  name: data["name"],
                                  character_level: data["clvl"],
                                  ladder_only: data["ladderOnly"])
      runeword.runes      << data["runes"].values.map {|r| Rune.find(r)}
      runeword.item_types << data["itemTypes"].values.map { |i| ItemType.find(i)}
      runeword.properties << data["properties"].values.map { |p| Property.find(p)}
      puts_created(runeword)
    end
  end

  def puts_created(obj)
    puts "Created #{obj.class.to_s.colorize(:light_black)} #{obj.id} name: #{obj.name}"
  end
end
