//UTILS
function s(arg){
    return document.querySelector(arg)
}

function c(arg){
    return document.createElement(arg)
}

// let aInfo;
// function render(){
//     fetch(`http://localhost:3000/api/v1/addresses`)
//     .then(res => res.json())
  
// }
// render()


let form = s('.postcardform')
let button = s('#postcardbutton')

form.addEventListener('submit', (e) => {
        e.preventDefault();
        let split = e.target.city.value.split(', ')
        let city = split[0]
        let address = split[1].split(' ')
        let state = address[0]
        let zip = address[1]
        let addressData = {
            street: e.target.street.value,
            city: city,
            state: state,
            zip: zip
        }


        let states = []

    fetch(`http://localhost:3000/api/v1/states`)
        .then(res => res.json())
        .then(res => states = res)

    .then(fetch(`http://localhost:3000/api/v1/addresses`, {
            method: 'POST',
            headers: {
                "Content-type": 'application/json'
            },
            body: JSON.stringify(addressData)
        })

        .then(res => res.json())
        .then(res => {
            states.forEach(state => {
                if(state.name === res.state){
                 postCardData = {
                    message: e.target.message.value,
                    name: e.target.name.value,
                    address_id: res.id,
                    state_id: state.id
                }
            }
            }) 
            fetch(`http://localhost:3000/api/v1/postcards`, {
                method: 'POST',
            headers: {
                "Content-type": 'application/json'
            },
            body: JSON.stringify(postCardData)
            })
            // .then(console.log(postCardData)) 
            }))
         
    })

  
    // fetch(`http://localhost:3000/api/v1/addresses`, {
        //     method: 'POST',
        //     headers: {
        //         "Content-type": 'application/json'
        //     },
        //     body: JSON.stringify(addressData)
        // })
        // .then(res => res.json())
        // .then(res => {
        //     let postCardData = {
        //         message: e.target.message.value,
        //         name: e.target.name.value,
        //         address_id: res.id
        //     }
        //     fetch(`http://localhost:3000/api/v1/postcards`, {
        //         method: 'POST',
        //     headers: {
        //         "Content-type": 'application/json'
        //     },
        //     body: JSON.stringify(postCardData)
        //     })
        //     .then(console.log(postCardData))
        // })

    // let states = []
    // fetch(`http://localhost:3000/api/v1/states`)
    //     .then(res => res.json())
    //     .then(res => states = res)
    //     .then(res => {
    //         fetch(`http://localhost:3000/api/v1/addresses`, {
    //         method: 'POST',
    //         headers: {
    //             "Content-type": 'application/json'
    //         },
    //         body: JSON.stringify(addressData)
    //     })
    //     .then(res => res.json())
    //     .then(res => {
    //         states.forEach(state => {
    //             if(state.name === res.state)
    //             let postCardData = {
    //                 message: e.target.message.value,
    //                 name: e.target.name.value,
    //                 address_id: res.id,
    //                 state_id: state.id
    //             }
    //         }) 
    //         fetch(`http://localhost:3000/api/v1/postcards`, {
    //             method: 'POST',
    //         headers: {
    //             "Content-type": 'application/json'
    //         },
    //         body: JSON.stringify(postCardData)
    //         })
    //         .then(console.log(postCardData))
    //     })




