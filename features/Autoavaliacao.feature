Scenario: Preenchimento correto da auto-avaliação 
Given O aluno “Matheus dos Santos” ainda não preencheu sua auto-avaliação da disciplina “ESS”
And A disciplina “ESS” possui “4” metas
And Ele está na página “Auto-avaliação” para a disciplina “ESS"
When o aluno “Matheus dos Santos” preenche sua auto-avaliação com os conceitos “MA”, “MA”,”MA”,”MA”
And Seleciona a opção de “Salvar”
Then Ele vê uma mensagem de confirmação.
And Ele vai para a página “Notas”.

Scenario: Preenchimento correto da auto-avaliação (Controller)
Given O aluno “Matheus dos Santos” ainda não preencheu sua auto-avaliação da disciplina “ESS”
And A disciplina “ESS” possui “4” metas
When o aluno “Matheus dos Santos” preenche sua auto-avaliação com os conceitos “MA”, “MA”,”MA”,”MA”
Then o sistema salva os conceitos “MA”, “MA”,”MA”,”MA” auto-avaliados para o aluno “Matheus dos Santos” na disciplina de “ESS”.

Scenario: Preenchimento incorreto da auto-avaliação 
Given O aluno “Matheus dos Santos” ainda não preencheu sua auto-avaliação da disciplina “ESS”
And A disciplina “ESS” possui “4” metas
And Ele está na página “Auto-avaliação” para a disciplina “ESS"
When o aluno “Matheus dos Santos” preenche sua auto-avaliação com os conceitos “MA”, “MA”,”MA”
And Seleciona a opção de “Salvar”
Then Ele vê uma mensagem de erro.
And Ele segue na página de “Auto-avaliação” da disciplina “ESS”

