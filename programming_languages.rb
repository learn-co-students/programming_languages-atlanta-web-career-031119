require 'pry'

def reformat_languages(languages)
  new_hash={}
  languages.each do |styles, langs|
    langs.each do |lang, info|
      if new_hash.include?(lang)
      else
        new_hash[lang]=info
        new_hash[lang][:style]=[]
      end
    end
    langs.each do |lang, info|
      new_hash[lang][:style]<<styles
    end
  end
  binding.pry
  return new_hash
end
