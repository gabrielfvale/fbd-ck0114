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
  #results = cursor.fetchall()
  return [dict(zip([key[0] for key in cursor.description], row)) for row in results]

@app.route('/')
def index():
  return "Backend SpotPer"

@app.route('/album/<string:id>', methods=['GET'])
def get_vendedores(id):
  cursor = connection.cursor()
  cursor.description
  results = exec_sql('SELECT * FROM album WHERE cod_album=' + id)
  print(results)
  return jsonify(results)

if __name__ == '__main__':
  app.run(debug=True)

connection.close()
