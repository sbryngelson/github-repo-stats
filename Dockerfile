FROM jgehrcke/github-repo-stats-base@sha256:ea042d75edb57cd14a30a761bd33846744bdce8f997fd4d928debfe0b4100b0f

COPY fetch.py /fetch.py
COPY analyze.py /analyze.py
COPY pdf.py /pdf.py
COPY entrypoint.sh /entrypoint.sh
COPY resources /resources

RUN mkdir /rundir && cd /rundir
WORKDIR /rundir
ENTRYPOINT ["/entrypoint.sh"]
