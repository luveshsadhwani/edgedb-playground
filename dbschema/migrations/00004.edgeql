CREATE MIGRATION m1wu5cyqg44fhh6zwrc57dio4ae2bjcf2to7fft6275xqmae5aw7ca
    ONTO m1om3deert5k5cuvagk2qqazyxyjiqd3tw4ejksbgtin2apc4n4n4q
{
  ALTER TYPE default::Person {
      ALTER PROPERTY name {
          CREATE CONSTRAINT std::exclusive;
      };
  };
};
