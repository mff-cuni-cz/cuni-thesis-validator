FROM ibmjava:jre

COPY verapdf/ /usr/bin/verapdf
COPY verify /usr/bin/verify
COPY UK-7987-version1-custom9.xml /opt/uk-profile.xml

ENV PATH="/usr/bin/verapdf:${PATH}"
