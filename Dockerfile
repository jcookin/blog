FROM peaceiris/mdbook:v0.4.34 AS build

WORKDIR /workspace

COPY . .

RUN rm -rf book

RUN mdbook build -d /workspace/book

# ENTRYPOINT [ "mdbook", "serve", "--hostname", "0.0.0.0" ]

FROM nginx:alpine3.18-slim AS prod

COPY --from=build /workspace/book /usr/share/nginx/html
