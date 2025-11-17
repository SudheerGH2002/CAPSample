namespace my.bookshop;


@odata.draft.enabled
entity Books {
  key ID : Integer;
  title  : String;
  author : Association to Authors;
}
entity Authors {
  key ID : Integer;
  name   : String;
}
