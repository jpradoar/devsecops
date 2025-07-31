from flask import Flask, request
import os

app = Flask(__name__)

#------------------------------------------
# Mala práctica: credenciales hardcodeadas
DB_PASSWORD = "SuperSecretPassword1234!"
#------------------------------------------

@app.route("/")
def index():
    return """
        <h1>Insecure App</h1>
        <form action="/run" method="post">
            <input name="cmd" placeholder="Command to run">
            <input type="submit" value="Run">
        </form>
    """

@app.route("/run", methods=["POST"])
def run_command():
    #------------------------------------------
    # Vuln: ejecución de comandos sin validar input del usuario (Command Injection)
    #------------------------------------------
    cmd = request.form["cmd"]
    result = os.popen(cmd).read()
    return f"<pre>{result}</pre>"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
