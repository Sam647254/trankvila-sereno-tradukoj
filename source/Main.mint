routes {
  / {
    Application.setPage(Page::Index)
  }

  /serenitatesublekumei {
    Application.setPage(Page::SerenitateSubLeKumei)
  }

  /metilmo {
    Application.setPage(Page::Metilmo)
  }
}

component Main {
  connect Application exposing { page }

  style main {
    font-family: "Nunito", sans-serif;
    max-width: 700px;
    margin: 0 auto;

    h1, h2, h3, h4 {
      text-align: center;
    }

    p {
      font-family: "Roboto Slab", serif;
    }
  }

  fun render : Html {
    <div::main>
      <h1><{ "5AM WORKS tradukoj" }></h1>

      case (page) {
        Page::Index => <Index/>
        Page::SerenitateSubLeKumei => <SerenitateSubLeKumei/>
        Page::Metilmo => <Metilmo/>
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
        <li>
          <a href="/metilmo"><{ "Seven pieces of Metilmo" }></a>
        </li>
      </ul>
    </div>
  }
}