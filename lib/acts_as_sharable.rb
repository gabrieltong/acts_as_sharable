require 'acts_as_sharable/core_ext'

module ActsAsSharable
  extend ActiveSupport::Concern

  module ClassMethods
    def acts_as_commentable
      before_save do |record|
        pp "#{record.id}.#{record.title}"
      end
      include ActsAsSharable::LocalInstanceMethods
      extend ActsAsSharable::SingletonMethods
    end
  end

  # This module contains class methods
  module SingletonMethods
    def size2
      self.count
    end
  end

  module LocalInstanceMethods
    def name2
      "#{title} #{title}"
    end
  end
end

ActiveRecord::Base.send(:include, ActsAsSharable)