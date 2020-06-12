enum Page {
   Index
   SerenitateSubLeKumei
}

store Application {
   state page : Page = Page::Index

   fun setPage(page : Page): Promise(Never, Void) {
      next { page = page }
   }
}