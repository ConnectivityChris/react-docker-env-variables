import React from 'react';
import logo from './logo.svg';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        
        <p>{process.env.REACT_APP_AWS_REGION}</p>
        <p>{process.env.REACT_APP_AWS_COGNITO_CLIENT_ID}</p>
        <p>{process.env.REACT_APP_AWS_COGNITO_USER_POOL_ID}</p>
        <p>{process.env.REACT_APP_BASEURL}</p>
      </header>
    </div>
  );
}

export default App;
