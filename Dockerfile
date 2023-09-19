FROM peaceiris/mdbook:v0.4.34 AS build

WORKDIR /workspace

COPY . .

RUN rm -rf book

RUN mdbook build -d /workspace/book

ENTRYPOINT [ "mdbook", "serve", "--hostname", "0.0.0.0" ]
