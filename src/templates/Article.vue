<template>
  <Layout>
    <article>
      <h1>hoge</h1>
      {{ $page }}
    </article>
  </Layout>
</template>

<script>
  export default {
    metaInfo() {
      return {
        title: this.$page.article.title,
        meta: [
          { name: 'description', content: this.$page.article.description }
        ]
      }
    }
  }
</script>

<page-query>
  query Article($id: ID) {
    article: article(id: $id) {
      title
      description
      tags {
        id
      }
    }
  }
</page-query>
