module Slugifiable
  module InstanceMethods

    def slug

      self.name.gsub(" ", "-").downcase
      # # strip the string
      # ret = self.name
      #
      # #blow away apostrophes
      # ret.gsub! /['`]/, ""
      #
      # # @ --> at, and & --> and
      # ret.gsub! /\s*@\s*/, " at "
      # ret.gsub! /\s*&\s*/, " and "
      #
      # # replace all non alphanumeric, periods with dash
      # ret.gsub! /\s*[^A-Za-z0-9\.]\s*/, '-'
      #
      # # replace underscore with dash
      # ret.gsub! /[-_]{2,}/, '-'
      #
      # # convert double dashes to single
      # ret.gsub! /-+/, "-"
      #
      # # strip off leading/trailing dash
      # ret.gsub! /\A[-\.]+|[-\.]+\z/, ""
      #
      # ret
    end
  end

  module ClassMethods

    def find_by_slug(slug)
      self.all.find do |instance|
        instance.slug == slug
      end
    end

  end
end
