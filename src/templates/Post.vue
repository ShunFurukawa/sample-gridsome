<template>
  <Layout>
    <article>
      <h1>{{ $page.post.title }}</h1>
      <VueRemarkContent />
    </article>
  </Layout>
</template>

<page-query>
  query Post ($id: ID!) {
    post (id: $id) {
      title
      content
    }
  }
</page-query>
