From registry.access.redhat.com/ubi9/nodejs-18:1-80.1699550448
USER 0
RUN sed -i 's/npm install/npm install --legacy-peer-deps/g' /usr/libexec/s2i/assemble
RUN sed -i 's/npm prune/npm prune --legacy-peer-deps/g' /usr/libexec/s2i/assemble
USER 1001
