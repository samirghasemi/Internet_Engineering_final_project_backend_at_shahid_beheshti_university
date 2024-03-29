FROM bitwalker/alpine-elixir-phoenix:latest
WORKDIR /app
RUN mix do local.hex --force, local.rebar --force

COPY ./mix.exs /app/
RUN mix deps.get
RUN mix compile

ARG TELEGRAM_BOT_TOKEN
ARG LOG_TELEGRAM_FAILURE_INTERVAL
ARG LOG_TELEGRAM_CHANNEL_ID=0
ARG LOG_TELEGRAM_FAILURE_TIME=0
ARG LOG_TELEGRAM_SUCCESS_TIME=0
ARG LOG_TELEGRAM_LOG_TIME=0

ENV DATABASE_NAME=nothing
ENV DATABASE_USERNAME=nothing
ENV DATABASE_PASSWORD=nothing
ENV DATABASE_ENDPOINT=http://nothing:80
ENV POOL_SIZE=10
ENV TELEGRAM_BOT_TOKEN=nothing
ENV HEX_HTTP_TIMEOUT=240

COPY . /app
RUN mix deps.get
# RUN mix compile
EXPOSE 4000
ENTRYPOINT ["mix","phx.server"]

