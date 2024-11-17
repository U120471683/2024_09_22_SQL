from dotenv import load_dotenv
import streamlit as st
import os
# import time
from time import sleep
from datasources import get_data    #從datasources.py中import get_data函數
load_dotenv()    #m模擬環境變數 


placeholder=st.empty()
with placeholder:
    with st.spinner('下載資料中...'):
        get_data()
        #sleep(5)
        # st.success('完成!')           
    st.success('下載完成!',icon='🎉')  #icon='🎉' 代表成功的icon
    sleep(3)

placeholder.empty()
