
import streamlit as st

import psycopg2
conn = psycopg2.connect(
    host='dpg-cseffitsvqrc73f2h1gg-a.singapore-postgres.render.com',
    database='render_chilee',
    user='render_chilee_user',
    password='a7aokiI9bERdgv5QFW3Jujv9uBFI7U3X'
)
cur = conn.cursor()
cur.execute("SELECT * FROM stations;")
rows = cur.fetchall()
names = []
for row in rows:
    names.append(row[2])
    
st.write(names)