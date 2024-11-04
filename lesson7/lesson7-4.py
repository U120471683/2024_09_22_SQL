


import streamlit as st  # 引入套件  streamlit       
import psycopg2
from dotenv import load_dotenv

import os
load_dotenv()

conn = psycopg2.connect(
    host=os.environ['HOST'],
    database=os.environ['DATABASE'],
    user=os.environ['USER'],
    password=os.environ['PASSWORD']
)
with conn:
    with conn.cursor() as cursor:
        sql='''
        SELECT * FROM 市場

        '''   
        cursor.execute(sql)
        all_country= cursor.fetchall()
conn.close()


st.title('世界大盤分析')
with st.sidebar:
    st.title('請選擇股票市場:')
    st.write('## 台灣')

    #st.write(all_country)   #TypeError: Object of type 'psycopg2.extras.RealDictRow' is not JSON serializable 是因為all_country是一個list of dict
    st.write(dict(all_country)) #TypeError: cannot convert dictionary update sequence element #0 to a sequence             