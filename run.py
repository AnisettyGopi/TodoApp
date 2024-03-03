from application import app



if __name__ == "__main__":
    print("running")
    app.run(debug=True, port=5000, host="0.0.0.0")