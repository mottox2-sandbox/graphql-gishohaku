import ApolloClient from 'apollo-boost'

const csrfToken = (document.getElementsByName('csrf-token')[0] as any).content


const port = window.location.port
const client = new ApolloClient({
  uri: `http://localhost:${port}/graphql`,
  headers: {
    'X-CSRF-Token': csrfToken
  }
})

export default client
