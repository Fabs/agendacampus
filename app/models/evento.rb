class Evento < ActiveRecord::Base
  
  validates_presence_of :titulo, :palestrante, :data,:inicio,:fim,:cor,:area
  
  def cor
    cores = {
      'Oficina' => '#E0FFFF',
      'Palestra' => '#FFE4B5',
      'Curso' => '#E6E6FA',
      'Demo/Apresentação' => '#87CEEB',
      'Desafio' => '#FFA500',
      'Simulação de Voo' => '#90EE90',
      'Bate Papos' => '#8FBC8F',
      'Premiação' => 'aqua',
      'Espaço Telefônica' => 'silver'
    }
    cores[self.tipo]
  end
  
  def as_key
    key = ""
    if  self.inicio.hour < 10
      key += "0"+ self.inicio.hour.to_s
    else
      key += self.inicio.hour.to_s
    end
    key += ":"
    if self.inicio.min < 10
      key += "0"+ self.inicio.min.to_s
    else
      key += self.inicio.min.to_s
    end
    key
  end
  
end
