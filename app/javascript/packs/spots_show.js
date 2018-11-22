document.getElementById("showbgimage").addEventListener("mouseover", (event) => {
  console.log(event.currentTarget);
  event.currentTarget.classList.add('show-banner-expand');;
});

document.getElementById("showbgimage").addEventListener("mouseout", (event) => {
  console.log(event.currentTarget);
  event.currentTarget.classList.remove('show-banner-expand');;
});
