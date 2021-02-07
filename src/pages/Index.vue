<template>
  <Layout>
    {{ $page.posts.edges }}
    <g-link v-for='post in $page.posts.edges' :key='post.id' :to='post.node.path'>
      <h2>{{ post.node.title }}</h2>
    </g-link>
  </Layout>
</template>

<page-query>
  query {
    posts: allPost {
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
