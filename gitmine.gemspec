# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{gitmine}
  s.version = "0.1.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Philippe Creux"]
  s.date = %q{2010-12-15}
  s.default_executable = %q{gitmine}
  s.description = %q{Git log with status of associated redmine tickets}
  s.email = %q{pcreux@gmail.com}
  s.executables = ["gitmine"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     ".gitmine.yml",
     "Gemfile",
     "Gemfile.lock",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "autotest/discover.rb",
     "bin/gitmine",
     "gitmine.gemspec",
     "lib/gitmine.rb",
     "lib/gitmine/branch.rb",
     "lib/gitmine/cli.rb",
     "lib/gitmine/colors.rb",
     "lib/gitmine/commit.rb",
     "lib/gitmine/config.rb",
     "lib/gitmine/git.rb",
     "lib/gitmine/hudson_job.rb",
     "lib/gitmine/issue.rb",
     "spec/commit_msg_to_issue_id_spec.rb",
     "spec/commit_spec.rb",
     "spec/config.yml",
     "spec/gitmine_spec.rb",
     "spec/issue_spec.rb",
     "spec/lib/branch_spec.rb",
     "spec/lib/config_spec.rb",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/pcreux/gitmine}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Git log with status of associated redmine tickets}
  s.test_files = [
    "spec/commit_msg_to_issue_id_spec.rb",
     "spec/commit_spec.rb",
     "spec/gitmine_spec.rb",
     "spec/issue_spec.rb",
     "spec/lib/branch_spec.rb",
     "spec/lib/config_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, [">= 0"])
      s.add_runtime_dependency(%q<grit>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["= 2.0.0"])
    else
      s.add_dependency(%q<httparty>, [">= 0"])
      s.add_dependency(%q<grit>, [">= 0"])
      s.add_dependency(%q<rspec>, ["= 2.0.0"])
    end
  else
    s.add_dependency(%q<httparty>, [">= 0"])
    s.add_dependency(%q<grit>, [">= 0"])
    s.add_dependency(%q<rspec>, ["= 2.0.0"])
  end
end

