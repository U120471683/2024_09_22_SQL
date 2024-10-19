import streamlit as st
import cv2
import time


# 初始化視頻捕捉
cap = cv2.VideoCapture(0)

# 定義按鈕回調函數
def open_door():
    st.session_state['door_status'] = '開'

def close_door():
    st.session_state['door_status'] = '關'

def stop_door():
    st.session_state['door_status'] = '停'

# 初始化會話狀態
if 'door_status' not in st.session_state:
    st.session_state['door_status'] = '停'

# 創建三列佈局
col1, col2, col3 = st.columns(3)

with col1:
    st.button('電動門開啟', on_click=open_door)
with col2:
    st.button('電動門關閉', on_click=close_door)
with col3:
    st.button('電動門停止', on_click=stop_door)

# 顯示當前門狀態
st.write(f"當前門狀態: {st.session_state['door_status']}")

# 顯示視頻
stframe = st.empty()
while True:
    ret, frame = cap.read()
    if not ret:
        break
    stframe.image(frame, channels='BGR')