
FROM img-gen-base:2 as app

WORKDIR /home/root

COPY webui.sh .
RUN chmod a+x ./webui.sh
RUN ./webui.sh -f --skip-torch-cuda-test --install-only

CMD ["echo", "-=DONE=-"]
