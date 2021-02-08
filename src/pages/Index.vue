<template>
  <Layout>
    <g-link v-for='article in $page.articles.edges' :key='article.id' :to='article.node.path'>
      <h2>{{ article.node.title }}</h2>
    </g-link>
  </Layout>
</template>

<script>
  export default {
    metaInfo: {
      title: 'Index.vue',
      meta: [
        { name: 'author', content: 'John Doe' }
      ]
    }
  };
</script>

<page-query>
  query {
   articles: allArticle {
      edges {
        node {
          id
          title
          path
        }
      }
    }
  }
</page-query>
