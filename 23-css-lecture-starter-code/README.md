# CSS Styling

## CSS Basics

- Why are CSS Grids useful? 
  1. Dynamic styling with webpage (`auto` functionality gives major freedom). 
  2. Instead of defining rows & columns in HTML, it is defined in CSS. 
  3. Controlled overlapping of divs. 
  4. Ease of inherited functionality. 

### Lecture Talking Points

- [] Inline / internal styling within existing trivia app HTML tags.
    - style="property:value;"
    - `margin` versus `padding`.
- [] Navigate Chrome DevTools HTML inpsector. 
    - Functionality is useful for trials on CSS changes. 
    - Short is `CMD+OPTION+J`. 
- [] External styling via a CSS file. 
    - Needs to be imported into `.erb` file. 
    - `class` versus `id` hierarchy and syntax for selectors. 
    - Inheritance from a parent tag. 
- [] Introduce Grids and how to design the layout of a page prior to choosing number of rows & columns. 
    - It's best to complete a rough wireframe or page layout to determine approximate number of rows and columns that are necessary. 
    - As columns are "consumed", remaining divs are displaced to new rows - if a size is not set for these rows, they will default to the size of the largest div within that row. 
    - Can use auto, percentages, fractions, & pixels to define div size. 
        - Container holds the grid size information (`grid-column-template`, `grid-auto-rows`, `grid-gap`, `grid-template-areas`). 
        - Individual divs hold `grid-column`, `grid-row`, `grid-area` information. 
    - Lines divide the grids and determine selection of rows & columns. 
    - Nested grids and inherited styling. 

### Resources

- [CSS Grid Basics](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Basic_Concepts_of_Grid_Layout)
- [Wireframe Tool](https://wireframe.cc/)
- [CSS Animations](https://www.w3schools.com/css/css3_animations.asp)
- [CSS Grid Generator @LucySuddenly ftw](https://cssgrid-generator.netlify.com/)
- [CSS Grid Syntax](http://grid.malven.co/)
- [Diff Between Justify Self / Content](https://stackoverflow.com/questions/48535585/the-difference-between-justify-self-justify-items-and-justify-content-in-css-gr)