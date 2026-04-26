FROM nginx

RUN apt-get update && apt-get install curl

ENV NODE_ENV=development

ENV PORT=5000

CMD ['nginx', '-g', '-daemon.off;']

EXPOSE 5000
