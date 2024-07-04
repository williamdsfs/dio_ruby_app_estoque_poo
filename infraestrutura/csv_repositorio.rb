require 'csv'

class CsvRepositorio
  def self.ler(arquivo)
    unless File.exist?(arquivo)
      puts "O arquivo #{arquivo} não existe."
      return nil
    end

    begin
      data = CSV.read(arquivo, headers: true)
      return data.map(&:to_h)
    rescue CSV::MalformedCSVError => e
      puts "Erro ao analisar o arquivo CSV: #{e}"
      return nil
    end
  end

  def self.gravar(arquivo, array)
    headers = array.first.keys

    CSV.open(arquivo, 'w', write_headers: true, headers: headers) do |csv|
      array.each do |hash|
        csv << hash.values
      end
    end
  end

  def self.adicionar(arquivo, obj)
    data = ler(arquivo) || []

    data << obj

    self.gravar(arquivo, data)
  end
end
