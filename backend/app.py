#!flask/bin/python
import pypyodbc
from flask import Flask, jsonify, request

connection = pypyodbc.connect(
  'Driver={ODBC Driver 17 for SQL Server};'
  'Server=localhost;'
  'Database=BDSpotPer;'
  'uid=sa;pwd=Admin@123'
)

app = Flask(__name__)

def exec_sql(command: str):
  cursor = connection.cursor()
  results = cursor.execute(command)
  return [dict(zip([key[0] for key in cursor.description], row)) for row in results]

@app.route('/')
def index():
  return "Backend SpotPer"

@app.route('/faixas', methods=['GET'])
def get_faixas():
  sql_query = '''
  SELECT a.cod_album, a.descricao, f.descricao, f.n_faixa, f.tempo_exec 
  FROM album a INNER JOIN faixa f ON f.cod_album = a.cod_album'''

  results = exec_sql(sql_query)
  return jsonify(results)

@app.route('/faixas/<string:cod_playlist>', methods=['GET'])
def get_faixas_playlist(cod_playlist):

  sql_query = '''
  SELECT f.cod_album, f.n_faixa, f.descricao, f.tempo_exec FROM faixa f 
  INNER JOIN faixa_pertence_playlist fpp ON 
  fpp.cod_album = f.cod_album and fpp.n_faixa=f.n_faixa and fpp.cod_playlist = ''' + cod_playlist

  results = exec_sql(sql_query)
  return jsonify(results)

@app.route('/album/<string:id>', methods=['GET'])
def get_vendedores(id):
  results = exec_sql('SELECT * FROM album WHERE cod_album=' + id)
  return jsonify(results)

if __name__ == '__main__':
  app.run(debug=True)

connection.close()
