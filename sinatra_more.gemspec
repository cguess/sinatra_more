# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sinatra_more}
  s.version = "0.2.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nathan Esquenazi"]
  s.date = %q{2009-10-29}
  s.description = %q{Expands sinatra with standard helpers and tools to allow for complex applications}
  s.email = %q{nesquena@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "TODO",
     "VERSION",
     "lib/sinatra_more.rb",
     "lib/sinatra_more/markup_plugin.rb",
     "lib/sinatra_more/markup_plugin/asset_tag_helpers.rb",
     "lib/sinatra_more/markup_plugin/form_builder/abstract_form_builder.rb",
     "lib/sinatra_more/markup_plugin/form_builder/standard_form_builder.rb",
     "lib/sinatra_more/markup_plugin/form_helpers.rb",
     "lib/sinatra_more/markup_plugin/format_helpers.rb",
     "lib/sinatra_more/markup_plugin/output_helpers.rb",
     "lib/sinatra_more/markup_plugin/tag_helpers.rb",
     "lib/sinatra_more/render_plugin.rb",
     "lib/sinatra_more/render_plugin/render_helpers.rb",
     "lib/sinatra_more/support_lite.rb",
     "lib/sinatra_more/warden_plugin.rb",
     "lib/sinatra_more/warden_plugin/warden_helpers.rb",
     "sinatra_more.gemspec",
     "test/active_support_helpers.rb",
     "test/fixtures/markup_app/app.rb",
     "test/fixtures/markup_app/views/capture_concat.erb",
     "test/fixtures/markup_app/views/capture_concat.haml",
     "test/fixtures/markup_app/views/content_tag.erb",
     "test/fixtures/markup_app/views/content_tag.haml",
     "test/fixtures/markup_app/views/form_for.erb",
     "test/fixtures/markup_app/views/form_for.haml",
     "test/fixtures/markup_app/views/form_tag.erb",
     "test/fixtures/markup_app/views/form_tag.haml",
     "test/fixtures/markup_app/views/link_to.erb",
     "test/fixtures/markup_app/views/link_to.haml",
     "test/fixtures/render_app/app.rb",
     "test/fixtures/render_app/views/erb/test.erb",
     "test/fixtures/render_app/views/haml/test.haml",
     "test/fixtures/render_app/views/template/_user.haml",
     "test/fixtures/render_app/views/template/haml_template.haml",
     "test/fixtures/render_app/views/template/some_template.haml",
     "test/fixtures/warden_app/app.rb",
     "test/fixtures/warden_app/views/dashboard.haml",
     "test/helper.rb",
     "test/markup_plugin/test_asset_tag_helpers.rb",
     "test/markup_plugin/test_form_builder.rb",
     "test/markup_plugin/test_form_helpers.rb",
     "test/markup_plugin/test_format_helpers.rb",
     "test/markup_plugin/test_output_helpers.rb",
     "test/markup_plugin/test_tag_helpers.rb",
     "test/test_render_plugin.rb",
     "test/test_warden_plugin.rb"
  ]
  s.homepage = %q{http://github.com/nesquena/sinatra_more}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Expands sinatra to allow for complex applications}
  s.test_files = [
    "test/active_support_helpers.rb",
     "test/fixtures/markup_app/app.rb",
     "test/fixtures/render_app/app.rb",
     "test/fixtures/warden_app/app.rb",
     "test/helper.rb",
     "test/markup_plugin/test_asset_tag_helpers.rb",
     "test/markup_plugin/test_form_builder.rb",
     "test/markup_plugin/test_form_helpers.rb",
     "test/markup_plugin/test_format_helpers.rb",
     "test/markup_plugin/test_output_helpers.rb",
     "test/markup_plugin/test_tag_helpers.rb",
     "test/test_render_plugin.rb",
     "test/test_warden_plugin.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sinatra>, [">= 0.9.2"])
      s.add_runtime_dependency(%q<activesupport>, [">= 2.2.2"])
      s.add_development_dependency(%q<haml>, [">= 2.2.1"])
      s.add_development_dependency(%q<shoulda>, [">= 2.10.2"])
      s.add_development_dependency(%q<mocha>, [">= 0.9.7"])
      s.add_development_dependency(%q<rack-test>, [">= 0.5.0"])
      s.add_development_dependency(%q<webrat>, [">= 0.5.1"])
    else
      s.add_dependency(%q<sinatra>, [">= 0.9.2"])
      s.add_dependency(%q<activesupport>, [">= 2.2.2"])
      s.add_dependency(%q<haml>, [">= 2.2.1"])
      s.add_dependency(%q<shoulda>, [">= 2.10.2"])
      s.add_dependency(%q<mocha>, [">= 0.9.7"])
      s.add_dependency(%q<rack-test>, [">= 0.5.0"])
      s.add_dependency(%q<webrat>, [">= 0.5.1"])
    end
  else
    s.add_dependency(%q<sinatra>, [">= 0.9.2"])
    s.add_dependency(%q<activesupport>, [">= 2.2.2"])
    s.add_dependency(%q<haml>, [">= 2.2.1"])
    s.add_dependency(%q<shoulda>, [">= 2.10.2"])
    s.add_dependency(%q<mocha>, [">= 0.9.7"])
    s.add_dependency(%q<rack-test>, [">= 0.5.0"])
    s.add_dependency(%q<webrat>, [">= 0.5.1"])
  end
end

