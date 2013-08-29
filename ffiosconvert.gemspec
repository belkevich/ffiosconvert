Gem::Specification.new do |s|
  s.name          = 'ffiosconvert'
  s.version       = '0.0.1'
  s.date          = '2013-08-29'
  s.summary       = 'FFMpeg based script for video conversion to iOS devices format'
  s.description   = 'FFMpeg based script for video conversion to iOS devices (iPad, iPad mini, iPhone5, iPhone/iPod retina, iPhone/iPod) format'
  s.authors       = ["Alexey Belkevich"]
  s.email         = 'belkevich@okolodev.org'
  s.files         = [ 
    "lib/converter.rb" 
  ]
  s.executables   << 'ffiosconvert'
  s.homepage      = 'https://github.com/belkevich/ffiosconvert'
  s.license       = 'MIT'
end
