let send_btn = document.querySelector('.send-btn');

send_btn.addEventListener('click', (event) => {
    event.preventDefault();

    document.forms['modal-form'].submit();
})

let cupcake_btn = document.querySelectorAll('.select-cupcake');
let cupcake_sect = document.querySelector('.cupcake-sect');

for(let i = 0; i < cupcake_btn.length; i++) {
    cupcake_btn[i].addEventListener('click', (event) => {
        event.preventDefault();

        cupcake_sect.style.display = 'block';
        bread_sect.style.display = 'none';
        macaroon_sect.style.display = 'none';
        cake_sect.style.display = 'none';
    });
}

let bread_btn = document.querySelectorAll('.select-bread');
let bread_sect = document.querySelector('.bread-sect');

for(let i = 0; i < bread_btn.length; i++) {
    bread_btn[i].addEventListener('click', (event) => {
        event.preventDefault();

        cupcake_sect.style.display = 'none';
        bread_sect.style.display = 'block';
        macaroon_sect.style.display = 'none';
        cake_sect.style.display = 'none';
    });
}

let macaroon_btn = document.querySelectorAll('.select-macaroon');
let macaroon_sect = document.querySelector('.macaroon-sect');

for(let i = 0; i < macaroon_btn.length; i++) {
    macaroon_btn[i].addEventListener('click', (event) => {
        event.preventDefault();

        cupcake_sect.style.display = 'none';
        bread_sect.style.display = 'none';
        macaroon_sect.style.display = 'block';
        cake_sect.style.display = 'none';
    });
}

let cake_btn = document.querySelectorAll('.select-cake');
let cake_sect = document.querySelector('.cake-sect');

for(let i = 0; i < cake_btn.length; i++) {
    cake_btn[i].addEventListener('click', (event) => {
        event.preventDefault();

        cupcake_sect.style.display = 'none';
        bread_sect.style.display = 'none';
        macaroon_sect.style.display = 'none';
        cake_sect.style.display = 'block';
    });
}
