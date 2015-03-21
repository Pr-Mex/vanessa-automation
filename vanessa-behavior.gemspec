Gem::Specification.new do |s|
  s.name = %q{vanessa-behavior}
  s.authors = ["Alexey Lustin","Leonid Pautov"]
  s.version = "0.4.3"
  s.date = %q{2015-03-21}
  s.summary = %q{cucumber wire server for 1C:Enterprise Platform www.1c.com}
  s.add_dependency 'cucumber', '~> 1.3'
  s.add_dependency 'allure-cucumber', '~> 0.4'
  s.rubygems_version = ">= 1.6.1"
  s.files            = Dir['**/*'].keep_if {|file| File.file?(file)}.delete_if {|path| path.include?('src/') || path.include?('gem')}
  s.test_files       = `git ls-files -- {features}/*`.split("\n")
  s.executables      = `git ls-files -- bin/*.exe`.split("\n").map{ |f| File.basename(f) }
  s.rdoc_options     = ["--charset=UTF-8"]
  s.require_path     = "lib"
  s.homepage  	     = "https://github.com/silverbulleters/vanessa-behavoir"
  s.license    		 = "Apache-2.0"
  s.description		 = "BDD, ATDD инструментарий для платформы 1С:Предприятие и для проекта 1Script"
  s.email			 = "team@silverbulleters.org"

  s.required_ruby_version = '~> 2.0'
  s.post_install_message = "You must install 1S:Enterprise platform to use vanessa-behavoir, please visit http://v8.1.ru"
end