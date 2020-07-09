-- Ex 01 --
SELECT dataAgendamento as 'Data',
duracao as 'Duração',
nomePaciente AS 'Paciente',
valorConsulta AS 'Valor Consulta'
FROM agendamentos
WHERE nomeProfissional = '?'
ORDER BY idAgendamento DESC;
-- Ex 02 - -
SELECT nomeProfissional AS 'Profissional',
dataAgendamento AS 'Data',
horario AS 'Horário',
nomePaciente AS 'Paciente'
FROM agendamentos
WHERE dataAgendamento >= '?'
AND dataAgendamento <= '?'
ORDER BY nomeProfissional;
-- Ex 03 --
SELECT  nomeProfissional AS 'Profissional', 
dataAgendamento as 'Data',
horario AS 'Horário',
duracao AS 'Duração',
nomePaciente AS 'Paciente'
FROM agendamentos
WHERE tipo = '?'
AND dataAgendamento >= '?' 
AND dataAgendamento <= '?'
ORDER BY dataAgendamento, Horario ASC;
-- Ex 04 --
SELECT cpf AS 'CPF',
nomePaciente AS 'Paciente',
telefone AS 'Telefone',
dataNasc AS 'Data',
idade(dataNasc - curdate()) AS 'Idade'
FROM agendamentos
WHERE MONTH(dataNasc) = '?';
-- Ex 05 --
SELECT nomeProfissional AS 'Profissional' 
FROM agendamentos 
WHERE nomeProfissional LIKE '%?%';
-- Ex 06 --
SELECT SUM(idAgendamento) AS 'Total Agendamentos'
FROM agendamentos
WHERE porcDesconto != 0 
AND convenio = '';
-- Ex 07 --
SELECT nomeProfissional AS 'Profissional', 
AVG(valorConsulta) AS 'Média de Preços',
SUM(idAgendamento) AS 'Total Consultas'
FROM agendamentos
WHERE nomeProfissional = '?'
GROUP BY tipo
ORDER BY nomeProfissional;
-- Ex 08 -- 
SELECT nomeProfissional AS 'Profissional',
SUM(valorConsulta) AS 'Valor Total de Consultas'
FROM agendamentos
GROUP BY nomeProfissional
HAVING SUM(valorConsulta) > 500
ORDER BY nomeProfissional;
-- Ex 09 -- 
SELECT SUM(idAgendamento) AS 'Total Agendamentos',
SUM(valorConsulta * porcDesconto) AS 'Valor Total Agendamentos'
FROM agendamentos
WHERE MONTH(dataAgendamento) = '?';
-- Ex 10 -- 
SELECT nomeProfissional AS 'Profissional', 
COUNT(idAgendamento) AS 'Total Agendamentos'
FROM agendamentos
WHERE MONTH(dataAgendamento) = '?'
GROUP BY nomeProfissional 
HAVING COUNT(idAgendamento) >= 10;

