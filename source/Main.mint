routes {
  / {
    Application.setPage(Page::Index)
  }

  /serenitatesublekumei {
    Application.setPage(Page::SerenitateSubLeKumei)
  }
}

component Main {
  connect Application exposing { page }

  style main {
    font-family: "Nunito", sans-serif;
    max-width: 800px;
    margin: 0 auto;

    h1, h2 {
      text-align: center;
    }
  }

  fun render : Html {
    <div::main>
      <h1><{ "5AM WORKS tradukoj" }></h1>

      case (page) {
        Page::Index => <Index/>
        Page::SerenitateSubLeKumei => <SerenitateSubLeKumei/>
      }
    </div>
  }
}

component Index {
  fun render : Html {
    <div>
      <ul>
        <li>
          <a href="/serenitatesublekumei"><{ "Serenitate sub le kumei" }></a>
        </li>
      </ul>
    </div>
  }
}