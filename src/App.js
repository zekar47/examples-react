import React, { useState } from 'react';
import './App.css';

function App() {
  const [count, setCount] = useState(0);
  return (
    <div className="App">
      <header className="App-header">
        <h1>Mi App En React esta funcionando</h1>
        <p>Has hecho click {count} veces</p>


        <div>
          <button onClick={ () => setCount(count + 1)}>
            Increase
            </button>
          <button onClick={ () => setCount(count - 1)}>
            Decrease
            </button>
        </div>
      </header>
    </div>
  );
}

export default App;
