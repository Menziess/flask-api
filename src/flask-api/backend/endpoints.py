from flask import Blueprint, jsonify


routes = Blueprint('routes', __name__)


@routes.route("/")
@routes.route("/<string:name>")
def show_index(name="there"):
    return jsonify({
        'data': {
            'message': f"Hello {name}",
        }
    })
