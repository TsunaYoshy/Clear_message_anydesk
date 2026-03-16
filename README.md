# clear_message_anydesk

Script simples em **Batch (.bat)** para limpar arquivos de configuração e histórico do **AnyDesk** no Windows.

O script remove automaticamente os arquivos responsáveis por armazenar algumas configurações e registros locais do aplicativo.

---

## 📌 Funcionalidade

O script realiza:

* Verificação da pasta **AppData do usuário**
* Verificação da pasta **ProgramData do sistema**
* Remoção automática dos arquivos:

  * `service.conf`
  * `system.conf`
* Execução segura (não gera erro se os arquivos não existirem)

---

## 📂 Diretórios verificados

O script verifica os seguintes caminhos padrão utilizados pelo AnyDesk:

### 1️⃣ Diretório do usuário

```
%APPDATA%\AnyDesk
```

Normalmente corresponde a:

```
C:\Users\SEU_USUARIO\AppData\Roaming\AnyDesk
```

### 2️⃣ Diretório global do sistema

```
C:\ProgramData\AnyDesk
```

Esse diretório existe quando o AnyDesk foi instalado no sistema.

---

## 🚀 Como usar

1. Baixe ou clone este repositório:

```
git clone https://github.com/TsunaYoshy/clear_message_anydesk.git
```

2. Acesse a pasta do projeto.

3. Execute o script:

```
clear_message_anydesk.bat
```

⚠️ Recomenda-se executar **como Administrador**, pois o diretório `ProgramData` pode exigir permissões elevadas.

---

## 🖥️ Exemplo de execução

```
===== Limpeza de arquivos do AnyDesk =====

Verificando AppData\AnyDesk
service.conf removido de AppData
system.conf removido de AppData

Verificando C:\ProgramData\AnyDesk
Arquivo não encontrado

Processo finalizado.
```

---

## 📁 Estrutura do projeto

```
clear_message_anydesk
 ├── clear_message_anydesk.bat
 └── README.md
```

---

## ⚠️ Aviso

Este script é fornecido para **fins educacionais e de automação de manutenção do sistema**.

Use por sua própria responsabilidade.

---

## 📄 Licença

Este projeto pode ser utilizado livremente para estudos e automação pessoal.
