import mysql.connector
import json

#Connect to Mysql Database

conn = mysql.connector.connect(
    host="localhost", # Database host (e.g., localhost)
    user="root",       # Your MySQL username
    password="root",      # Your MySQL password
    database="mydata", # Database name
)

# Create a cursor object to interact with the database
cursor = conn.cursor(dictionary=True)

#Execute the sql query
cursor.execute("SELECT * FROM books")

#fetch all rows
rows = cursor.fetchall()

#Display raw data from the database
print(rows)

# Convert the MySQL data into a JSON string
json_data = json.dumps({"books": rows}, indent=4)

# Display the JSON output
print(json_data)

# Parse the JSON string back into a Python object
parsed_data = json.loads(json_data)

# Loop through each student and display their info
for books in parsed_data["books"]:
    print("Title:", books["titleBooks"])
    print("Genre:", books["genreBooks"])
    print("Volume:", books["Bookscol"])
for row in rows:
    if 'datePublishers' in row:
        del row['datePublishers']


#save as json file
with open("books.json", "w") as file:
 file.write(json_data)

#close connections
cursor.close()
conn.close()