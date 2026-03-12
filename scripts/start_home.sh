#!/bin/bash
FLAG_FILE="/home/ec2-user/home/update_flag"
JAR_FILE="/home/ec2-user/home/home_project.jar"

if [ -f "$FLAG_FILE" ]; then
    echo "Home 프로젝트 변경 감지. 재기동을 시작합니다."
    
    # 1. 기존 프로세스 종료 (stop_home.sh 호출 또는 직접 종료)
    #PIDS=$(pgrep -f "home_project.jar")
    #if [ -n "$PIDS" ]; then
    #    kill -15 $PIDS
    #    sleep 5
    #fi
    
    # 2. Java 8로 기동
    #nohup /usr/bin/java8-path -jar $JAR_FILE > /home/ec2-user/home/home.out 2>&1 &
    cd /home/ec2-user
    echo "java8 test ok" >> java8_test.txt

    # 3. 플래그 삭제
    rm "$FLAG_FILE"
    echo "Home 기동 완료."
else
    echo "Home 프로젝트 변경사항 없음. 스킵합니다."
fi