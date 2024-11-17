from dotenv import load_dotenv      #從dotenv模組中import load_dotenv函數
import streamlit as st               #import streamlit模組
from time import sleep                          #從time模組中import sleep函數
from tools.datasource import get_data         #從tools(package))中的datasources.py中import get_data函數              
load_dotenv()                                #模擬環境變數


@st.dialog("目前發生問題,請稍後再試")   #自訂的dialog               
def alert():                          #定義alert函數                             
        st.write('連線有問題')  #顯示連線有問題
        st.stop()        #停止程式

with st.spinner('下載資料中...'):      #顯示spinner                          
        get_data()                      #呼叫datasource.py中的get_data函數  #此函數會sleep 5秒
alert()                                     #呼叫alert函數
st.write('顯示頁面')              #顯示顯示頁面


