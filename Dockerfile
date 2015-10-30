FROM jkang/headporters

# cwd is /usr/src/app
RUN npm install rime
RUN cd node_modules/rime && make build-word-phoneme-map
RUN cd node_modules/rime && make data/syllables-for-words.json
