# Germany Reports

This project is to present news for churches throughout Germany.

## UX for contributors
This project has the following goals:

- Aesthetic presentation
- Responsive UI
- Ease of contribution

The last point is important—we want as least-techinical people as possible able to contribute to this site. For this my thoughts are as follows:

- One html (slim) page per church
- No extra routing, controller, or navbar modifications should be required, only to add an html file to the views folder

## Design

- Nav is to the left, showing category boxes with their sub-categories listed underneath.
- Under articles' main heading will be the date. If more than one article exists, a dropdown will be there next to the date to see archived versions. Note that until we use these reports a second time we don't need to worry about it.
- General design is minimalist, simplistic, maximising ease of reading.
- Videos will be hosted on youtube
  - Click on "embed" to get embed code
  - Under embed code will be a "show more" that lets you disable next video suggestions
  - Actually better to copy embed code from existing video, and replace the unique code
- Images will be self-hosted, but must be as small as possible, using tinyjpg or tinypng etc.
