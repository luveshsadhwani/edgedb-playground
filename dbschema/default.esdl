module default {
    type Person {
        required property name -> str {
            constraint exclusive;
        }
    }

    type Movie extending Content {
        link director -> Person;
        property release_year -> int32 {
            constraint min_value(1900);
        }
    }

    type Show extending Content {
        property num_episodes -> int32 {
            constraint min_value(2);
        }
    }

    abstract type Content {
        required property title -> str;
        multi link actors -> Person {
            property character_name -> str;
        }
    }
}
