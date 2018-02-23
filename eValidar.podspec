
Pod::Spec.new do |s|

  s.name         = "eValidar"
  s.version      = "0.0.1"
  s.summary      = "Classe para validar Dados como CPF"

  s.description  = "Validar Dados de entrada, CPF, Data, CNPJ, Double"

  s.homepage     = "https://github.com/eriquecosta/eValidar"

   s.license      = { :type => "MIT", :file => "LICENCE" }


  s.author             = { "Erique Costa" => "eriquec@gmail.com" }
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/eriquecosta/eValidar.git", :tag => "#{s.version}" }

  s.swift_version = "4.0"

  s.source_files  = "eValidar", "eValidar/**/*.{swift}"
  

end
