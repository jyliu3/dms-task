const express = require('express');
const { postgraphile } = require('postgraphile');
const PgSimplifyInflectorPlugin = require('@graphile-contrib/pg-simplify-inflector');


const app = express();
app.use(
  postgraphile(process.env.DATABASE_URL, 'public', {
    graphiql: true,
    appendPlugins: [PgSimplifyInflectorPlugin],
  })
);

app.listen(3000, () => {
    console.log('GraphQL server running on port 3000');
  });