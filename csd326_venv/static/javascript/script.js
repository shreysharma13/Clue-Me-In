
function btn_clicked(i) {
  const buttonId = i;
  console.log('Button clicked with ID:', buttonId);
  window.location.href = "/public_dashboard/" + buttonId;
}

    