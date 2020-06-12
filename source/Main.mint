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

  style {
    
  }

  fun render : Html {
    <div>
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