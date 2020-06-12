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

  fun render : Html {
    <div>
      <h1><{ "5AM WORKS tradukoj" }></h1>

      case (page) {
        Page::Index => <div><{ "Index" }></div>
        Page::SerenitateSubLeKumei => <SerenitateSubLeKumei/>
      }
    </div>
  }
}