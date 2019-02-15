from flask import Flask, jsonify
from backend import endpoints

# Boot app
app = Flask(__name__)

# Register routes
app.register_blueprint(endpoints.routes)

# Handle generic 404
@app.errorhandler(404)
def not_found(e):
    return jsonify({
        'title': e.name,
        'status': e.code,
        'detail': e.description,
    })


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000, debug=True)
