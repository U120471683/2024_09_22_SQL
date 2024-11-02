
import streamlit as st      # 導入 streamlit 套件

import psycopg2     
conn = psycopg2.connect(
    host='dpg-cseffitsvqrc73f2h1gg-a.singapore-postgres.render.com',
    database='render_chilee',
    user='render_chilee_user',
    password='a7aokiI9bERdgv5QFW3Jujv9uBFI7U3X'
)                                                                       # 連接資料庫                    
cur = conn.cursor()                                                # 創建 cursor 物件
cur.execute("SELECT * FROM stations;")          # 執行 SQL 查詢
rows = cur.fetchall()                                       # 取得所有查詢結果
names = []                                                        # 創建空串列
for row in rows:                                            # 逐一取出查詢結果
    names.append(row[2])                          # 將車站名稱加入串列
    
option = st.selectbox(      # 創建下拉式選單
"請選擇您最愛的車站?",
names
)                                    # 選項為 names 串列

st.write("您的最愛是:", option)                         # 顯示選擇結果                