import "./App.css";
import Header from "./components/Header";
import Main from "./components/Main";
import data from "./components/data";

function App() {
  const cards = data.map((item) => {
    return (
        <Main
         key = {item.id}
         {...item}
        />
     );
  });

  return (
    <div className="App">
      <Header />
      <section>{cards}</section>
    </div>
  );
}

export default App;
