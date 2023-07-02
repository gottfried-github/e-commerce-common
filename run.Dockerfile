FROM node

ENV APP_DB_USER a
ENV APP_DB_PASS a
ENV APP_DB_NAME a
ENV NET_NAME a
ENV SESSION_SECRETS a

CMD ["bash", "-c", "node /app/e-commerce-app/index.js"]