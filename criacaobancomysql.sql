CREATE TABLE IF NOT EXISTS agendamentos (
	idAgendamento INT PRIMARY KEY AUTO_INCREMENT,
    dataAgendamento DATE NOT NULL,
    horario TIME NOT NULL,
    duracao DECIMAL DEFAULT 1,
    cpf CHARACTER NOT NULL,
    nomePaciente CHARACTER NOT NULL,
    telefone CHARACTER,
    dataNasc DATE,
    nomeProfissional CHARACTER NOT NULL,
    tipo CHARACTER,
    valorConsulta DECIMAL NOT NULL DEFAULT 200,
    porcDesconto INTEGER,
    convenio INTEGER DEFAULT 0
    );
    
    
    