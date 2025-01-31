FROM denoland/deno:2.1.9

WORKDIR /app
COPY src ./src
RUN deno cache src/app.ts
CMD ["run", "--allow-net", "src/app.ts"]

EXPOSE 8000
