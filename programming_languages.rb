require 'pry'

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}



def reformat_languages(languages)
  new_hash = {}
  oo = [:ruby, :python, :java, :javascript]
  functional = [:clojure, :erlang, :scala, :javascript]
languages[:oo].each {|lang, lang_data|
  new_hash.store(lang, lang_data)
}
languages[:functional].each {|lang, lang_data|
  new_hash.store(lang, lang_data)
}

new_hash.each {|name, data|
  new_hash[name][:style]= []
  if oo.include?(name) && functional.include?(name)
    new_hash[name][:style]<< :oo
    new_hash[name][:style]<< :functional
  elsif oo.include?(name)
    new_hash[name][:style]<< :oo
  elsif functional.include?(name)
    new_hash[name][:style]<< :functional

end}
return new_hash
end
