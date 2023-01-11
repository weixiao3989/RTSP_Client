# RTSP_Client

測試用於 RTSP Client 解析建立連線時，解析收到的 SDP 包，
主要用於解析出 'sprop-parameters-set' 參數的值，此值代表 h264 的 sps + pps,
播放功能未實作，僅做到建立連線並取得 SDP 內容。
