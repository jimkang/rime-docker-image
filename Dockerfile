FROM jkang/headporters

# cwd is /usr/src/app
RUN npm install rime@1.1.0
RUN cd node_modules/rime && make build-word-phoneme-map
RUN cd node_modules/rime && make data/syllables-for-words.json
