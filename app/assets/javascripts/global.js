document.addEventListener('DOMContentLoaded', () => {

    const navlinks = document.querySelectorAll('header a')


    navlinks.forEach(link => {

      link.addEventListener('click', (event) => {

            event.preventDefault()

            const content = document.querySelectorAll(‘section’)
            content.classList.add(‘fadeIn’)



        })
      })
    })
