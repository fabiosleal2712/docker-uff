# Docker Taxifort

Este repositório contém a configuração necessária para executar o projeto **Taxifort** utilizando Docker. Ele inclui uma aplicação ASP.NET Core e um banco de dados MSSQL.

## Estrutura do Projeto

- **docker-compose.yml**: Arquivo para orquestrar os serviços Docker.
- **Dockerfile**: Define a imagem Docker para a aplicação ASP.NET Core.
- **.env**: Arquivo de variáveis de ambiente para configurar os serviços.
- **mssql-data**: Diretório para armazenar os dados do banco MSSQL.
- **mssql-system**: Diretório para armazenar arquivos de sistema do MSSQL.

## Pré-requisitos

- Docker e Docker Compose instalados.
- Acesso ao arquivo `.env` com as variáveis de ambiente configuradas.
- Certificado SSL (`aspnetapp.pfx`) disponível no diretório correto.

## Configuração

1. Clone o repositório:
   ```bash
   git clone git@gitlab.com:fabiosleal2712/docker-taxifort.git
   cd docker-taxifort
   ```

2. Configure o arquivo `.env` com as variáveis necessárias:
   ```properties
   ASPNETCORE_ENVIRONMENT=Production
   DB_HOST=mssql
   DB_NAME=TaxifortD01
   DB_USER=sa
   DB_PASSWORD=YourPasswordHere
   PFX_PASSWORD=YourPfxPasswordHere
   GRAYLOG_HOST=YourGraylogHostHere
   ```

3. Certifique-se de que os diretórios `mssql-data` e `mssql-system` existem:
   ```bash
   mkdir -p mssql-data mssql-system
   chmod -R 755 mssql-data mssql-system
   ```

4. Coloque o arquivo `aspnetapp.pfx` no diretório raiz do projeto.

## Uso

1. Inicie os serviços:
   ```bash
   docker-compose up -d
   ```

2. Acesse a aplicação:
   - HTTP: [http://localhost:8288](http://localhost:8288)
   - HTTPS: [https://localhost:8643](https://localhost:8643)

3. Para verificar os logs:
   ```bash
   docker-compose logs -f
   ```

4. Para parar os serviços:
   ```bash
   docker-compose down
   ```

## Estrutura do Docker Compose

- **taxifort**: Serviço principal que executa a aplicação ASP.NET Core.
- **mssql**: Banco de dados MSSQL configurado com persistência de dados.

## CI/CD

O projeto utiliza Jenkins e GitLab CI/CD para automação de deploy. Veja os arquivos:
- `Jenkinsfile`: Configuração do pipeline Jenkins.
- `.gitlab-ci.yml`: Configuração do pipeline GitLab.

## Suporte

Para dúvidas ou problemas, entre em contato com o mantenedor do projeto ou abra uma issue no repositório.

## Licença

Este projeto está licenciado sob [MIT License](LICENSE).
# docker-uff
