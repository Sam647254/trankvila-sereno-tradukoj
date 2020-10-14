enum Page {
   Index
   SerenitateSubLeKumei
   Metilmo
}

store Application {
   state page : Page = Page::Index

   fun setPage(page : Page): Promise(Never, Void) {
      next { page = page }
   }
}