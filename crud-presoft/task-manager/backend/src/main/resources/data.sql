CREATE TABLE IF NOT EXISTS task (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    due_date DATE NOT NULL,
    completed BOOLEAN NOT NULL DEFAULT FALSE
);

INSERT INTO task (title, description, due_date, completed) 
VALUES 
    ('Finalizar documentação', 'Completar a documentação do projeto até o fim do dia.', '2024-08-18', FALSE),
    ('Reunião com equipe', 'Reunião semanal com a equipe de desenvolvimento.', '2024-08-20', FALSE),
    ('Atualizar dependências do projeto', 'Verificar e atualizar as dependências do projeto.', '2024-08-17', TRUE),
    ('Planejar sprint', 'Definir as tarefas e metas para a próxima sprint.', '2024-08-19', FALSE),
    ('Revisar código', 'Revisar o código submetido no último PR.', '2024-08-21', FALSE),
    ('Implementar autenticação', 'Adicionar funcionalidade de autenticação de usuários ao sistema.', '2024-08-22', FALSE),
    ('Backup do banco de dados', 'Realizar backup completo do banco de dados.', '2024-08-17', TRUE),
    ('Enviar relatório mensal', 'Preparar e enviar o relatório de desempenho do sistema.', '2024-08-18', FALSE),
    ('Configurar ambiente de produção', 'Configurar o ambiente de produção para o novo deploy.', '2024-08-23', FALSE),
    ('Resolver bugs críticos', 'Priorizar e resolver bugs críticos reportados pelos usuários.', '2024-08-16', FALSE);

INSERT INTO task (title, description, due_date, completed) 
VALUES 
    ('Corrigir erro na API', 'Erro identificado na API de autenticação corrigido.', '2024-08-14', TRUE),
    ('Testes unitários', 'Adicionar e rodar testes unitários para novos componentes.', '2024-08-15', TRUE);

INSERT INTO task (title, description, due_date, completed) 
VALUES 
    ('Deploy em staging', 'Realizar o deploy da nova versão na área de staging.', '2024-08-15', FALSE),
    ('Criar script de migração', 'Desenvolver script para migrar os dados antigos para o novo modelo.', '2024-08-16', FALSE);

INSERT INTO task (title, due_date, completed) 
VALUES 
    ('Configurar CI/CD', '2024-08-17', FALSE);
