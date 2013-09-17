require 'acts_as_sharable/core_ext'

module ActsAsSharable
  extend ActiveSupport::Concern

  module ClassMethods
    def acts_as_sharable
      has_many :shares,:as=>:sharable
      before_destroy { |record| record.shares.destroy_all }
      include ActsAsSharable::LocalInstanceMethods
      extend ActsAsSharable::SingletonMethods
    end
  end

  # This module contains class methods
  module SingletonMethods
    
  end

  module LocalInstanceMethods
    
  end
end

ActiveRecord::Base.send(:include, ActsAsSharable)