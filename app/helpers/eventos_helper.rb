module EventosHelper  
  def tipo_select
    ['Oficina','Palestra','Curso','Demo/Apresentação','Desafio','Simulação de Voo','Bate Papos', 'Premiação', 'Espaço Telefônica'].sort
  end
  
  def area_select
    ['Software Livre','Modding','Campus Blog','Games','Robótica','Simulação','Design','Fotografia','Música','Vídeo','Desenvolvimento','Astronomia'].sort
  end
  
  def data_select
    ['Segunda', 'Terça','Quarta','Quinta','Sexta','Sábado', 'Domingo']
  end
  
  def area_table
    '<th>Area</th><th>' + area_select.join('</th><th></th> <th>')
  end
  
  def event_for(grade,dia,horario,area)
    if !grade[dia][horario][area].nil?
      return grade[dia][horario][area]
    end
    nil
  end
  
end
