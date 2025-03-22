let city = 'Sefton';

const form = document.querySelector('.weather_search');
const searchInput = document.getElementById('weather_searchform');
const cityDisplay = document.getElementById('weather_city');
const weatherDate = document.getElementById('weather_datetime');


const getWeather = async function(API_URL) {
  const response = await fetch(API_URL);
  const data = await response.json();
  console.log(data);

  if(data.cod == "404"){

    console.log("error")
    document.getElementsByClassName("weather_body")[0].innerHTML=`City not found!`   
    }
  cityDisplay.textContent = data.name;

  const temp = document.querySelector('.weather_temperature');
  temp.innerHTML = `${data.main.temp} &#176C`;

  const humidity = document.getElementById('weather_humidity');
  humidity.innerHTML = `${data.main.humidity}%`;

  const pressure = document.getElementById('weather_pressure');
  pressure.innerHTML = `${data.main.pressure} hPa`;

  const wind = document.getElementById('weather_wind');
  wind.innerHTML = `${data.wind.speed} m/s`;

  document.getElementById("weatherB").innerHTML = `<img src="https://openweathermap.org/img/w/${data.weather[0].icon}.png">`;
//   weatherDate.innerHTML = new Date().toLocaleString('en-US', { hour: 'numeric', minute: 'numeric', hour12: true });
  document.getElementById("weather_condition").innerHTML = `${data.weather[0].description}`
  const { "1h": rain1h, "3h": rain3h } = data.rain || {}; 
  const rainfall = rain1h ? rain1h + " mm (1h)" : rain3h ? rain3h + " mm (3h)" : "N/A";
  document.getElementById("weather_rain").innerHTML = rainfall;
        
  const currentDate = new Date();
  const currentDay = currentDate.toLocaleDateString('en-US', { weekday: 'long' });
  const currentMonth = currentDate.toLocaleDateString('en-US', { month: 'long' });
  const currentDateNum = currentDate.toLocaleDateString('en-US', { day: 'numeric' });
  document.getElementById("date").innerHTML = `${currentMonth} ${currentDateNum}`;
  document.getElementById("days").innerHTML = currentDay;
  


};

form.addEventListener('submit', (event) => {
  event.preventDefault();
  const API_KEY = '2c4794b819ef45030c24d05cc15edb4a';
  city = searchInput.value;
  const API_URL = `https://api.openweathermap.org/data/2.5/weather?q=${city}&units=metric&appid=${API_KEY}`;

  getWeather(API_URL);
});

getWeather(`https://api.openweathermap.org/data/2.5/weather?q=${city}&units=metric&appid=2c4794b819ef45030c24d05cc15edb4a`);