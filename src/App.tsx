import React from 'react';
import logo from './logo.svg';
import './App.css';


function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        
        <p>{window._env_.AWS_REGION}</p>
        <p>{window._env_.AWS_COGNITO_CLIENT_ID}</p>
        <p>{window._env_.AWS_COGNITO_USER_POOL_ID}</p>
        <p>{window._env_.BASEURL}</p>
      </header>
    </div>
  );
}

export default App;
