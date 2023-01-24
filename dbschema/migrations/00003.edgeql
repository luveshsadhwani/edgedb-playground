CREATE MIGRATION m1om3deert5k5cuvagk2qqazyxyjiqd3tw4ejksbgtin2apc4n4n4q
    ONTO m1fnqvwr7esacpmznbhzlsk77b3stsopctidybjrtkgakiug5n6uhq
{
  CREATE ABSTRACT TYPE default::Content {
      CREATE MULTI LINK actors -> default::Person {
          CREATE PROPERTY character_name -> std::str;
      };
      CREATE REQUIRED PROPERTY title -> std::str;
  };
  ALTER TYPE default::Movie EXTENDING default::Content LAST;
  CREATE TYPE default::Show EXTENDING default::Content {
      CREATE PROPERTY num_episodes -> std::int32 {
          CREATE CONSTRAINT std::min_value(2);
      };
  };
  ALTER TYPE default::Movie {
      ALTER LINK actors {
          RESET CARDINALITY;
          DROP OWNED;
          RESET TYPE;
      };
  };
  ALTER TYPE default::Movie {
      ALTER PROPERTY title {
          RESET OPTIONALITY;
          DROP OWNED;
          RESET TYPE;
      };
  };
  ALTER TYPE default::Movie {
      CREATE LINK director -> default::Person;
  };
  ALTER TYPE default::Movie {
      CREATE PROPERTY release_year -> std::int32 {
          CREATE CONSTRAINT std::min_value(1900);
      };
  };
};
