// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React, { useEffect, useState } from 'react'
import ReactDOM from 'react-dom'
import ggl from 'graphql-tag'

import client from './client'

type Circles = {
  edges: {
    node: {
      id: string
      name: string
      booth: string
      books: {
        title: string
        description: string
      }[]
    }
  }[]
}

type CirclesResponse = {
  circles: Circles
}

const App = ()=> {
  const [circles, setCircles] = useState<Circles>()

  useEffect(() => {
    client.query<CirclesResponse>({
      query: ggl`
        query getCircles {
          circles {
            edges {
              node {
                id
                name
                booth
                books {
                  title
                  description
                }
              }
            }
          }
        }
      `
    })
      .then(({data}) => {
        console.log(data)
        setCircles(data.circles)
       })
      .catch(error => console.error(error))
  }, [])

  return <div>
    {circles &&
      <>
        {
          circles.edges.map((edge, index) => {
            const circle = edge.node
            return <div key={index}>
              <h2>{circle.name}</h2>
              <small>
                {circle.books.map(book => {
                  return <p>{book.title}</p>
                })}
              </small>
            </div>
          })
        }
      </>
    }
  </div>
}

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <App />,
    document.body.appendChild(document.createElement('div')),
  )
})
