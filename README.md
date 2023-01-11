# RTSP_Client

測試用於 RTSP Client 建立連線時，解析收到的 SDP(Session Description Protocol) 包，
主要用於解析出 'sprop-parameters-set' 參數的值，此值代表 h264 的 sps + pps,
播放功能未實作，僅做到建立連線並取得 SDP 內容。

測試平台 : Linux - Ubuntu 18.04
編譯 : gcc

## Build code please refer Makefile, need add folder : bin, include, obj ##
