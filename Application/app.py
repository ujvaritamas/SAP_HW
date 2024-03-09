import os
from flask import Flask, jsonify

app = Flask(__name__)

# Define the file path using an environment variable
file_path = os.environ.get('FILE_PATH')

@app.route('/')
def read_file():
    try:
        # Read the contents of the file
        with open(file_path, 'r') as file:
            file_contents = file.read()
        return jsonify({'file_content': file_contents}), 200
    except Exception as e:
        return jsonify({'error': str(e)}), 500

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)