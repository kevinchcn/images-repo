FROM apache/airflow:2.2.4-python3.7
RUN rm -rf /home/airflow/.local/lib/python3.7/site-packages/slapdtest/certs/server.key
RUN rm -rf /home/airflow/.local/lib/python3.7/site-packages/distributed/tests/tls-self-signed-key.pem
RUN rm -rf /home/airflow/.local/lib/python3.7/site-packages/gevent/tests/server.key
RUN rm -rf /home/airflow/.local/lib/python3.7/site-packages/gevent/tests/2_7_keycert.pem
RUN rm -rf /home/airflow/.local/lib/python3.7/site-packages/tornado/test/test.key
RUN rm -rf /home/airflow/.local/lib/python3.7/site-packages/distributed/tests/tls-ca-key.pem
RUN rm -rf /home/airflow/.local/lib/python3.7/site-packages/distributed/tests/tls-key-cert.pem
RUN rm -rf /home/airflow/.local/lib/python3.7/site-packages/gevent/tests/test_server.key
RUN rm -rf /home/airflow/.local/lib/python3.7/site-packages/distributed/tests/tls-key.pem
RUN rm -rf /home/airflow/.local/lib/python3.7/site-packages/future/backports/test/keycert.passwd.pem
RUN rm -rf /home/airflow/.local/lib/python3.7/site-packages/gevent/tests/badcert.pem
RUN rm -rf /home/airflow/.local/lib/python3.7/site-packages/future/backports/test/badcert.pem
RUN rm -rf /home/airflow/.local/lib/python3.7/site-packages/gevent/tests/keycert.pem
RUN rm -rf /home/airflow/.local/lib/python3.7/site-packages/gevent/tests/wrongcert.pem
RUN rm -rf /home/airflow/.local/lib/python3.7/site-packages/future/backports/test/ssl_key.passwd.pem
RUN rm -rf /home/airflow/.local/lib/python3.7/site-packages/future/backports/test/ssl_key.pem
RUN rm -rf /home/airflow/.local/lib/python3.7/site-packages/slapdtest/certs/client.key
RUN rm -rf /home/airflow/.local/lib/python3.7/site-packages/future/backports/test/keycert2.pem
RUN rm -rf /home/airflow/.local/lib/python3.7/site-packages/future/backports/test/keycert.pem
USER root
#RUN apt remove openssl libssl1.1 libcurl4 -y
RUN apt update && apt install openssl libssl-dev libcurl4 -y
RUN rm -rf /var/lib/apt/lists/*
USER airflow
