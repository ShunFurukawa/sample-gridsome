<template>
  <Layout>
    <article>
      <h1>{{ $page.article.title }}</h1>
      <article v-html='$page.article.content' />
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
      content
      tags {
        id
      }
    }
  }
</page-query>
