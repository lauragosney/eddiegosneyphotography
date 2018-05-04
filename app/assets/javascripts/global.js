document.addEventListener('DOMContentLoaded', () => {

      inView('section')
        .on('enter', section => {
        section.classList.add('in-viewport')
        })
        .on('exit', section => {
            section.classList.remove('in-viewport')
        })
        inView.threshold(0.2)


        const sections = document.querySelectorAll('section')

        sections.forEach((section, index) => {

          const exhibitions = section.querySelectorAll('.exhibitions li')

          exhibitions.forEach((exhibition, index) => {

            const delay = index * 500
            exhibition.style.transitionDelay = delay + 'ms'
          })

          const photos = section.querySelectorAll('.photo')

          photos.forEach((photo, index) => {

            const delay = index * 300
            photo.style.transitionDelay = delay + 'ms'
          })

        })

      })
