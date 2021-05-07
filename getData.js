var xhr = new XMLHttpRequest();
xhr.onreadystatechange = function ()
{
  if(this.status == 200 && this.readyState == 4)
  {
      document.getElementById('result').innerHTML = this.responseText;
  }
};

var yearDropDown = document.getElementById('godina');

yearDropDown.addEventListener("change", getData);
window.addEventListener("load", getData);

function getData(){
    xhr.open("GET", "getData.php?year=" + yearDropDown.value);
    xhr.send();
}