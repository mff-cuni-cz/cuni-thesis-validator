FROM java:jre-alpine

COPY verapdf/ /usr/bin/verapdf
COPY verify /usr/bin/verify
COPY UK-7987-version1-custom8.xml uk-profile.xml

ENV PATH="/usr/bin/verapdf:${PATH}"


