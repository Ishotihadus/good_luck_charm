# frozen_string_literal: true

require_relative 'lib/good_luck_charm/version'

Gem::Specification.new do |spec|
  spec.name = 'good_luck_charm'
  spec.version = GoodLuckCharm::VERSION
  spec.authors = ['Ishotihadus']
  spec.email = ['hanachan.pao@gmail.com']

  spec.summary = 'おまじない'
  spec.description = 'おまじない'
  spec.homepage = 'https://github.com/Ishotihadus/good_luck_charm'
  spec.required_ruby_version = '>= 3.1.0'

  spec.metadata['allowed_push_host'] = ''

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/Ishotihadus/good_luck_charm'

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) {|f| File.basename(f)}
  spec.require_paths = ['lib']

  spec.add_dependency 'rounding'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'timecop'
end
