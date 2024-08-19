# Aplicação de Gerenciamento de Tarefas

1. Introdução

Esta aplicação web foi desenvolvida para gerenciar tarefas, permitindo que os usuários adicionem, visualizem, editem, excluam e marquem tarefas como concluídas. O projeto é dividido em duas partes principais:

Backend: Desenvolvido com Spring Boot e Java, oferece APIs RESTful para gerenciar as tarefas.
Frontend: Desenvolvido com Vue.js e JavaScript, oferece uma interface de usuário para interação com as APIs.

2. Tecnologias Utilizadas

Backend:
Linguagem: Java
Framework: Spring Boot
Banco de Dados: MySQL, PostgreSQL ou H2 (em memória)
ORM: Hibernate (JPA)

Frontend:
Linguagem: JavaScript
Framework: Vue.js
Gerenciamento de Estado: Nativo do Vue.js
HTTP Client: Axios

3. Configuração do Ambiente

Backend (Spring Boot)
Pré-requisitos:
JDK 11 ou superior
Maven 3.6+
MySQL ou PostgreSQL (opcionalmente H2 para simplificação)

Configuração do Banco de Dados:
Se estiver usando MySQL ou PostgreSQL, configure as credenciais no arquivo application.properties:
properties

spring.datasource.url=jdbc:mysql://localhost:3306/taskdb
spring.datasource.username=root
spring.datasource.password=senha
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true

Para usar H2 (banco de dados em memória), utilize:
properties

spring.datasource.url=jdbc:h2:mem:taskdb
spring.datasource.driverClassName=org.h2.Driver
spring.datasource.username=sa
spring.datasource.password=password
spring.jpa.database-platform=org.hibernate.dialect.H2Dialect
spring.h2.console.enabled=true

Construção e Execução:

mvn clean install
mvn spring-boot:run
Frontend (Vue.js)
Pré-requisitos:
Node.js 16.x ou superior
npm 7.x ou superior

Instalação de Dependências:

npm install

Execução em Ambiente de Desenvolvimento:

npm run serve

Construção para Produção:

npm run build

4. Executando o Projeto

Backend
Após configurar o banco de dados e as dependências, execute o projeto com:

mvn spring-boot:run
A aplicação estará disponível em http://localhost:8080.

Frontend
Execute o servidor de desenvolvimento com:

npm run serve
A aplicação estará disponível em http://localhost:8081.

5. APIs RESTful

Endpoints
GET /api/tasks: Retorna uma lista de todas as tarefas.
GET /api/tasks/{id}: Retorna os detalhes de uma tarefa específica.
POST /api/tasks: Adiciona uma nova tarefa.
PUT /api/tasks/{id}: Atualiza uma tarefa existente.
DELETE /api/tasks/{id}: Exclui uma tarefa.
PUT /api/tasks/{id}/complete: Marca uma tarefa como concluída ou não concluída.

Estrutura de Dados
Tarefa (Task):

{
  "id": 1,
  "title": "Finalizar documentação",
  "description": "Completar a documentação do projeto até o fim do dia.",
  "dueDate": "2024-08-18",
  "completed": false
}

6. Interface de Usuário

Adicionar Tarefa
Um formulário para adicionar uma nova tarefa, incluindo:
Título: Campo de texto.
Descrição: Campo de texto.
Data de Vencimento: Campo de data.
Listar Tarefas
Exibe uma lista de tarefas mostrando:
Título
Descrição
Data de Vencimento
Status: Concluída/Não Concluída
Atrasada: Indica se a tarefa está atrasada com base na data atual.
Editar Tarefa
Permite editar uma tarefa existente. Abre o formulário de adição com os valores atuais preenchidos.
Excluir Tarefa
Permite excluir uma tarefa. Um botão "Excluir" ao lado de cada tarefa.
Marcar como Concluída
Um botão para marcar uma tarefa como concluída ou desmarcar como não concluída.

7. Considerações Finais

Autenticação e Autorização: Para simplificação, a aplicação não implementa autenticação. Em um ambiente real, recomenda-se adicionar autenticação e controle de acesso.
Validação: É importante validar as entradas do usuário no frontend e no backend para garantir integridade.
Testes: Recomendável adicionar testes unitários e de integração para garantir a qualidade e robustez da aplicação.
