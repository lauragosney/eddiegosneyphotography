const navLinks = document.querySelectorAll('header a')


navLinks.forEach(link => {

  link.addEventListener('click', (event) => {
      event.preventDefault()

      const href = link.getAttribute('href')

      document.querySelector(href).setTimeout(() => {
          window.location = href
        }, 1500)

       const content = document.querySelectorAll('section')
       content.classList.add('fadeIn')

    })

  })
