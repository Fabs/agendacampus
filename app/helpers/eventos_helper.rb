module EventosHelper
  
  def tipo_select
    ['Oficina','Palestra','Curso','Demo/Apresentação',"Desafio","Simulação de Voo","Bate Papos", "Premiação", "Espaço Telefônica"].sort
  end
  
  def area_select
    ['Software Livre','Modding','Campus Blog','Games','Robótica','Simulação','Design','Fotografia','Música','Vídeo','Desenvolvimento'].sort
  end
  
end
