# Leave only the relevant menu items for the demo

Decidim.menu :admin_menu do |menu|
  menu.remove_item :newsletters
  menu.remove_item :static_pages
  menu.remove_item :impersonatable_users
  menu.remove_item :moderations
  menu.remove_item :logs
end

Decidim.menu :admin_settings_menu do |menu|
  menu.remove_item :scopes
  menu.remove_item :scope_types
  menu.remove_item :areas
  menu.remove_item :area_types
  menu.remove_item :help_sections
end

Decidim.menu :admin_participatory_processes_menu do |menu|
  menu.remove_item :participatory_process_groups
  menu.remove_item :participatory_process_types
end

Decidim.menu :admin_participatory_process_menu do |menu|
  menu.remove_item :participatory_process_steps
  menu.remove_item :categories
  menu.remove_item :attachments
  menu.remove_item :participatory_process_user_roles
  menu.remove_item :participatory_space_private_users
  menu.remove_item :moderations
end

Decidim.menu :admin_assemblies_menu do |menu|
  menu.remove_item :assemblies_types
  menu.remove_item :edit_assemblies_settings
end

Decidim.menu :admin_assembly_menu do |menu|
  menu.remove_item :categories
  menu.remove_item :attachments
  menu.remove_item :assembly_members
  menu.remove_item :assembly_user_roles
  menu.remove_item :participatory_space_private_users
  menu.remove_item :moderations
end
