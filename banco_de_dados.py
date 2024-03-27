import supabase
from datetime import datetime
import json
import ast
class Supabase:
    def __init__(self, url='https://xijncckxwylzgsiedtat.supabase.co', api_key='eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inhpam5jY2t4d3lsemdzaWVkdGF0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTIxNDc0MTQsImV4cCI6MjAwNzcyMzQxNH0.rgAIX3myU_s3TV80W6hb9BbAP1NZXtxgbqxFFAifwMU'):
        self.connection = supabase.create_client(url, api_key)

    def inserirUsuario(self, arroba, seguindo=False):
        # Defina a tabela 'escola'
        tabela = 'usuario'

        # Dados a serem inseridos
        dados = {'arroba': arroba, 'seguindo': seguindo}

        # Executar a inserção
        try:
            resultado = self.connection.table(tabela).insert(dados).execute()
        except:
            print('erro ao inserir')


    def achar_quantidade_de_usuario_seguindo(self, seguindo ):
        # Defina a tabela 'usuario'
        tabela_usuario = 'usuario'


        # Execute a consulta para encontrar o 'id_escola' onde 'numero' é igual ao passado
        resultado = self.connection.table(tabela_usuario).select('arroba').eq('seguindo', seguindo ).execute()
        dados_str = str(resultado).split("data=")[1].split(" count=")[0]

        # Converter a string em uma lista de dicionários usando ast.literal_eval
        dados_lista = ast.literal_eval(dados_str)
        dados_tratados_somente_arroba=[]
        for dados in dados_lista:
            dados=dados['arroba']

            dados_tratados_somente_arroba.append(dados)



        return dados_tratados_somente_arroba


    def achar_publicacoes_visualizadas(self, visualizacao ):
        # Defina a tabela 'usuario'
        tabela_usuario = 'publicacao'


        # Execute a consulta para encontrar o 'id_escola' onde 'numero' é igual ao passado
        resultado = self.connection.table(tabela_usuario).select('link').eq('visualizacao', visualizacao ).execute()
        dados_str = str(resultado).split("data=")[1].split(" count=")[0]

        # Converter a string em uma lista de dicionários usando ast.literal_eval
        dados_lista = ast.literal_eval(dados_str)
        dados_tratados_somente_arroba=[]
        for dados in dados_lista:
            dados=dados['link']

            dados_tratados_somente_arroba.append(dados)



        return dados_tratados_somente_arroba

    def inserirPublicacao(self, link):
        # Defina a tabela 'escola'
        tabela = 'publicacao'

        # Dados a serem inseridos
        dados = {'link': link,}

        # Executar a inserção

        resultado = self.connection.table(tabela).insert(dados).execute()


    def alterar_publicacao_mundando_visualizacao(self, link):

        data_e_hora_atual = datetime.now().strftime("%Y-%m-%dT%H:%M:%S")

        # Atualiza a tabela 'publicacao'
        self.connection.table('publicacao') \
            .update({'visualizacao': True, 'data_hora': data_e_hora_atual}) \
            .eq('link', link) \
            .execute()

    def alterar_usuario_comecar_a_seguir(self, arroba):
        # Atualiza a tabela 'publicacao'
        self.connection.table('usuario').update({'seguindo': True}).eq('arroba', arroba).execute()



    def login(self, login, senha):
        # Defina a tabela 'administrador'
        tabela_administrador = 'administrador'

        # Execute a consulta para encontrar o 'id' onde 'login' e 'senha' são iguais aos passados
        resultado = self.connection.table(tabela_administrador).select('id').eq('login', login).eq('senha',
                                                                                                   senha).execute()
        dados_str = str(resultado).split("data=")[1].split(" count=")[0]

        # Converter a string em uma lista de dicionários usando ast.literal_eval
        dados_lista = ast.literal_eval(dados_str)

        # Verificar se há algum resultado
        if dados_lista:
            # Retorna o primeiro ID encontrado (assumindo que 'id' é um campo na tabela)
            return dados_lista[0]['id']
        else:
            # Retorna None se não houver correspondência
            return None

    def inserir_comentario(self, conteudo, perfil_parceiro, com_user):
        # Defina a tabela 'comentario'
        tabela_comentario = 'comentario'

        # Dados do comentário a serem inseridos
        dados_comentario = {'conteudo': conteudo, 'perfil_parceiro': perfil_parceiro, 'com_user':com_user}

        # Executar a inserção do comentário
        try:
            resultado_comentario = self.connection.table(tabela_comentario).insert(dados_comentario).execute()
            print('Comentário inserido com sucesso!')
        except Exception as e:
            print(f'Erro ao inserir comentário: {e}')
            return

    def inserir_comentario_publicacao(self,  url):
        # Defina a tabela 'comentario_publicacao'
        tabela_comentario_publicacao = 'comentario_publicacao'

        # Dados do comentário a serem inseridos
        dados_comentario_publicacao = {'url': url}

        # Executar a inserção do comentário
        try:
            resultado_comentario_publicacao = self.connection.table(tabela_comentario_publicacao).insert(
                dados_comentario_publicacao).execute()
            print('Comentário de publicação inserido com sucesso!')
        except Exception as e:
            print(f'Erro ao inserir comentário de publicação: {e}')
            return

    def inserir_url_localizacao(self, url):
        # Defina a tabela 'localizacao'
        tabela_localizacao = 'localizacao'

        # Dados da localização a serem inseridos
        dados_localizacao = {'url': url}

        # Executar a inserção da localização
        try:
            resultado_localizacao = self.connection.table(tabela_localizacao).insert(
                dados_localizacao).execute()
            print('URL de localização inserida com sucesso!')
        except Exception as e:
            print(f'Erro ao inserir URL de localização: {e}')
            return

    def pegar_urls_comentario_publicacao(self, get_coment=False):
        try:

            tabela_comentario_publicacao = 'comentario_publicacao'

            # Lista para armazenar as URLs encontradas
            urls_comentario_publicacao = []


            # Execute a consulta para encontrar as URLs na tabela 'comentario_publicacao' associadas à arroba
            resultado = self.connection.table(tabela_comentario_publicacao).select('url').eq('get_coment', get_coment).execute()
            dados_str = str(resultado).split("data=")[1].split(" count=")[0]

            # Converte a string em uma lista de dicionários usando ast.literal_eval
            dados_lista = ast.literal_eval(dados_str)

            # Extrai o campo 'conteudo' de cada dicionário na lista
            urls_encontradas = [dados['url'] for dados in dados_lista]
            urls_comentario_publicacao.extend(urls_encontradas)

            return urls_comentario_publicacao
        except:
            return []

    def pegar_urls_localizacao(self):
        # Obtém uma lista de arrobas seguindo


        # Defina a tabela 'localizacao'
        tabela_localizacao = 'localizacao'

        # Lista para armazenar as URLs encontradas
        urls_localizacao = []

        # Itera sobre as arrobas seguindo

            # Execute a consulta para encontrar as URLs na tabela 'localizacao' associadas à arroba
        resultado = self.connection.table(tabela_localizacao).select('url').execute()
        dados_str = str(resultado).split("data=")[1].split(" count=")[0]

        # Converte a string em uma lista de dicionários usando ast.literal_eval
        dados_lista = ast.literal_eval(dados_str)

        # Extrai o campo 'conteudo' de cada dicionário na lista
        urls_encontradas = [dados['url'] for dados in dados_lista]
        urls_localizacao.extend(urls_encontradas)

        return urls_localizacao

    from collections import Counter

    def pegar_conteudo_comentarios(self):
        # Defina a tabela 'comentarios'
        tabela_comentarios = 'comentario'

        # Execute a consulta para obter o campo 'conteudo' da tabela 'comentarios'
        resultado = self.connection.table(tabela_comentarios).select('conteudo').execute()

        # Extrai os conteúdos da consulta
        dados_str = str(resultado).split("data=")[1].split(" count=")[0]

        # Converte a string em uma lista de dicionários usando ast.literal_eval
        dados_lista = ast.literal_eval(dados_str)

        # Extrai o campo 'conteudo' de cada dicionário na lista
        conteudos_comentarios = [dados['conteudo'] for dados in dados_lista]

        return conteudos_comentarios

    def marcar_url_como_processada(self, url):
        try:
            tabela_comentario_publicacao = 'comentario_publicacao'
            data_e_hora_atual = datetime.now().strftime("%Y-%m-%dT%H:%M:%S")

            # Atualiza a tabela 'comentario_publicacao'
            self.connection.table(tabela_comentario_publicacao) \
                .update({'get_coment': True}) \
                .eq('url', url) \
                .execute()

            print(f"A URL {url} foi marcada como processada.")

        except Exception as e:
            print(f"Ocorreu um erro ao tentar marcar a URL {url} como processada: {str(e)}")


sp=Supabase()
print(sp.marcar_url_como_processada('https://www.instagram.com/p/C2e-US2L23I/'))