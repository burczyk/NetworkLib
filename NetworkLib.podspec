Pod::Spec.new do |s|
  s.name         = "NetworkLib"
  s.version      = "0.0.1"
  s.summary      = "A short description of NetworkLib."

  s.description  = <<-DESC
                   A longer description of NetworkLib in Markdown format.
                   DESC

  s.license      = 'MIT (example)'
  s.author       = { "Kamil Burczyk" => "kamil.burczyk@sigmapoint.pl" }
  s.platform     = :ios, '7.0'
  s.source_files  = 'NetworkLib', 'NetworkLib/**/*.{h,m}'
  s.public_header_files = 'NetworkLib/**/*.h'
  s.resources    = "NetworkLib/*.png"
  s.framework    = 'SystemConfiguration'
  s.requires_arc = true

  s.dependency 'AFNetworking'
  s.dependency 'Google-Mobile-Ads-SDK'

end
