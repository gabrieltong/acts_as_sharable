class ActsAsSharableMigrationGenerator < Rails::Generators::Base
  include Rails::Generators::Migration
  source_root File.expand_path('../templates', __FILE__)

    # Complete wtf that this isn't provided elsewhere.
  def self.next_migration_number(dirname)
    if ActiveRecord::Base.timestamped_migrations
      Time.now.utc.strftime("%Y%m%d%H%M%S")
    else
      "%.3d" % (current_migration_number(dirname) + 1)
    end
  end

  def manifest
    migration_template 'migration.rb', 'db/migrate/acts_as_sharable.rb'
    copy_file 'share.rb', 'app/models/share.rb'
    inject_into_file(
      'app/models/user.rb',
      "has_many :shares\n\n",
      after: "class User < ActiveRecord::Base\n"
    )
  end
end
