
function btn_clicked(i) {
  const buttonId = i;
  console.log('Button clicked with ID:', buttonId);
  window.location.href = "/public_dashboard/" + buttonId;
}
// used for mypage buttons to access private dashboards
function btn_clicked_pvt(i) {
  const buttonId = i;
  console.log('Button clicked with ID:', buttonId);
  window.location.href = "/pvt_dashboard/" + buttonId;
}

    