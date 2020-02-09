CREATE TABLE person (
  id      serial PRIMARY KEY,
  name    text   NOT NULL,
  twitter text   NOT NULL,
  lang    text   NOT NULL,

  CONSTRAINT unique_twitter_handle UNIQUE (twitter),
  CONSTRAINT valid_twitter_handle CHECK (
    twitter LIKE '@%'
  ),
  CONSTRAINT valid_language CHECK (
    lang IN ('JavaScript', 'Java', 'SQL', 'Go', 'PHP', 'Ada')
  )
);
