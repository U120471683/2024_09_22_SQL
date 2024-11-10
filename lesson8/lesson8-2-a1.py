import streamlit as st  # 引入套件  streamlit       
import psycopg2
from dotenv import load_dotenv

import os
load_dotenv()

conn = psycopg2.connect(
    host=os.environ['HOST1'],
    database=os.environ['DATABASE1'],
    user=os.environ['USER1'],
    password=os.environ['PASSWORD1']
)
with conn:
    with conn.cursor() as cursor:
        sql = '''
        SELECT * FROM 市場
        '''
        cursor.execute(sql)
        all_country = cursor.fetchall() # all_country is a list of dict 是TUPLE
conn.close()

def user_select():
    print('使用者選擇了')

st.title('世界大盤分析')
with st.sidebar:
    st.title('請選擇股票市場:')
    input_dict = dict(all_country)  #TypeError: cannot convert dictionary update sequence element #0 to a sequence

    options = st.multiselect("請選擇",input_dict.values(),
                             default='台灣',
                             placeholder="請選擇市場",
                             label_visibility='hidden',
                             on_change=user_select)
    #print(type(options))
    st.write(options)
