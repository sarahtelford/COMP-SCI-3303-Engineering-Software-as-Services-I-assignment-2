Feature: Testing existing features

  I want to test the show, edit, destroy and add new movies functions

  Background: Movies in my database

    Given the following movies exist:
      | title                                             | rating | description                                                                                                                                                                                                         | release_date | created_at | updated_at     | director       |
      | Soul                                              | G      | After landing the gig of a lifetime, a New York jazz pianist suddenly finds himself trapped in a strange land between Earth and the afterlife.                                                                      | 11/10/2022   |11/10/2022' | 11/10/2022'    |                |
      | The Lord of the Rings: The Fellowship of the Ring | PG     | The Fellowship of the Ring embark on a journey to destroy the One Ring and end Saurons reign over Middle-earth. A young Hobbit known as Frodo has been thrown on an amazing adventure, when he is appointed the job | 8/10/2009    | 11/10/2022 | 11/10/2022     |                |
      | Encanto                                           | G      | The Madrigals are an extraordinary family who live hidden in the mountains of Colombia in a charmed place called the Encanto.                                                                                       | 2/1/2022     | 11/10/2022 | 11/10/2022     |                |
      | Moana                                             | G      | Moana, daughter of chief Tui, embarks on a journey to return the heart of goddess Te Fitti from Maui, a demigod, after the plants and the fish on her island start dying due to a blight.                           | 23/11/2016   | 11/10/2022 | 11/10/2022     |                |
      | Mulan                                             | PG     | Young Mulan is distraught to learn that her weak father must join the army to fight the invading Huns. Unwilling to endanger his life, she disguises herself as a man and joins the army in his place.              | 5/6/1989     | 11/10/2022 | 11/10/2022     |                |
      | Saw                                               | PG-13  | Saw is a 2004 American horror film directed by James Wan, in his feature directorial debut, and written by Leigh Whannell from a story by Wan and Whannell.                                                         | 5/6/2004     | 11/10/2022 | 11/10/2022     |                |
      | Saw II                                            | PG-13  | Saw II is a 2005 horror film directed by Darren Lynn Bousman and written by Leigh Whannell and Bousman. It is the sequel to 2004s Saw and the second installment in the Saw film series.                            | 2/1/2005     | 11/10/2022 | 11/10/2022     |                |
      | Tangled                                           | G      | Rapunzel, a naive and young girl, is locked up by her overly protective mother                                                                                                                                      | 9/9/2010     | 11/10/2022 | 11/10/2022     |                |
      | Spirited Away                                     | PG-13  | Ten-year-old Chihiro and her parents end up at an abandoned amusement park inhabited by supernatural beings.                                                                                                        | 12/12/2002   | 11/10/2022 | 11/10/2022     |                |
      | Howels Moving Castle                              | PG-13  | Jealous of Sophies closeness to Howl, a wizard, the Witch of Waste transforms her into an old lady.                                                                                                                 | 22/8/2005    | 11/10/2022 | 11/10/2022     | Hayao Miyazaki |
      | One Direction: Live on Tour                       | PG-13  | Up All Night: The Live Tour is a video album documenting the 3 January 2012 show of English-Irish boy band One Directions Up All Night Tour.                                                                        | 3/1/2011     | 11/10/2022 | 11/10/2022     |                |
      | Nightmare on elm street                           | R      | A young girl realises that she has to stay awake at any cost to avoid the clawed killer who is butchering her friends one by one in their dreams.                                                                   | 2/1/1998     | 11/10/2022 | 11/10/2022     |                |

  Scenario: I want to show a movie to the database
    Given I am on the home page
    When I press the Show on "Encanto"
    Then the information about "Encanto" will be displayed

  Scenario: I want to add a movie to the database
    Given I am on the home page
    When I press the New Movie
    And I fill in the form with information about the movie
    Then the new movie will be displayed on the home page

  Scenario: I want to destroy a movie from the database
    Given I am on the home page
    When I press the destroy on "Tangled"
    Then The home page should not have "Tangled"

  Scenario: I want to edit a movie in the database
    Given I am on the home page
    When I press the edit on "Moana"
    Then I change the information for "Moana"
    Then "Moana" should be updated with the new information
