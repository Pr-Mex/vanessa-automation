Gem::Specification.new do |s|
  s.name = %q{vanessa-behavior}
  s.authors = ["Alexey Lustin","Leonid Pautov"]
  s.version = "0.4.1"
  s.date = %q{2015-03-21}
  s.summary = %q{cucumber wire server for 1C:Enterprise Platform www.1c.com}
  s.add_dependency 'cucumber', '>= 1.3.15'
  s.add_dependency 'rubyzip'
  s.add_dependency 'allure-cucumber'
  s.rubygems_version = ">= 1.6.1"
  s.files            = Dir['**/*'].keep_if {|file| File.file?(file)}.delete_if {|path| path.start_with?('src')}
  s.test_files       = `git ls-files -- {features}/*`.split("\n")
  s.executables      = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.rdoc_options     = ["--charset=UTF-8"]
  s.require_path     = "lib"
  s.homepage  	     = "https://github.com/silverbulleters/vanessa-behavoir"
  s.license    		 = "Apache-2.0"
  s.description		 = "BDD, ATDD инструментарий для платформы 1С:Предприятие и для проекта 1Script"
  s.email			 = "team@silverbulleters.org"
end