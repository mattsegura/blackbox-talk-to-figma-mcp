# Figma Design Generation - Prompt Cheatsheet

## 🎨 Design Patterns

### Buttons

**Basic Button:**
```
Create a button in Figma:
- Position: (100, 100)
- Size: 200x50px
- Background: #0066FF
- Text: "Click Me" (white, 16px, bold)
- Corner radius: 8px
```

**Button with States:**
```
Create 3 button variants in Figma:
1. Default: Blue background (#0066FF)
2. Hover: Darker blue (#0052CC)
3. Disabled: Gray (#CCCCCC)
Position them horizontally with 20px spacing
```

### Input Fields

**Text Input:**
```
Create a text input field:
- Container frame 300x50px
- White background
- 1px gray border (#DDDDDD)
- Placeholder text "Enter email"
- 12px padding
- 4px corner radius
```

**Input with Label:**
```
Create an input field with label:
- Label text "Email Address" (14px, gray)
- Input field below (300x50px)
- 8px spacing between label and input
- Group in auto-layout frame
```

### Cards

**Simple Card:**
```
Create a card component:
- Frame 300x200px
- White background
- Shadow: 0px 2px 8px rgba(0,0,0,0.1)
- 16px padding
- Title text at top (18px, bold)
- Description below (14px, gray)
- 12px spacing between elements
```

**Product Card:**
```
Create a product card:
- Frame 280x400px
- Image placeholder at top (280x200px, gray)
- Product name (16px, bold)
- Price (18px, blue)
- "Add to Cart" button at bottom
- 16px padding, auto-layout vertical
```

### Forms

**Login Form:**
```
Create a login form:
- Container 400x500px, centered
- Logo/title at top
- Email input field
- Password input field
- "Remember me" checkbox
- Login button (full width)
- "Forgot password?" link
- 16px spacing between elements
```

**Contact Form:**
```
Create a contact form with:
- Name field
- Email field
- Phone field
- Message textarea (height: 120px)
- Submit button
- All fields with labels
- Consistent styling and spacing
```

### Navigation

**Top Navigation Bar:**
```
Create a navigation bar:
- Full width, 80px height
- Logo on left
- Menu items in center (Home, About, Services, Contact)
- CTA button on right
- White background, subtle bottom border
```

**Sidebar Navigation:**
```
Create a sidebar:
- Width: 250px
- Dark background (#1A1A1A)
- Logo at top
- 5 menu items with icons
- Active state highlighted
- User profile at bottom
```

### Layouts

**Dashboard Layout:**
```
Create a dashboard layout:
- Header bar (full width, 80px)
- Sidebar (250px wide, dark)
- Main content area
- 3 stat cards in a row (equal width)
- Chart area below
- Use auto-layout for responsiveness
```

**Grid Layout:**
```
Create a 3-column grid:
- 3 cards per row
- 20px gap between cards
- Each card 300x250px
- Auto-layout with wrap
- Responsive spacing
```

## 🎯 Design System Elements

### Typography Scale
```
Create a typography scale:
- H1: 48px, bold
- H2: 36px, bold
- H3: 24px, semibold
- Body: 16px, regular
- Small: 14px, regular
- Caption: 12px, regular
Show examples of each
```

### Color Palette
```
Create a color palette:
- Primary: #0066FF
- Secondary: #00CC88
- Error: #FF3333
- Warning: #FFAA00
- Success: #00CC66
- Neutral: #666666
Display as color swatches with labels
```

### Spacing System
```
Create a spacing reference:
- XS: 4px
- S: 8px
- M: 16px
- L: 24px
- XL: 32px
- XXL: 48px
Show visual examples with boxes
```

## 🚀 Complex Components

### Modal Dialog
```
Create a modal dialog:
- Overlay (semi-transparent black)
- Modal container (500x300px, white, centered)
- Close button (top-right)
- Title text
- Content area
- Action buttons at bottom (Cancel, Confirm)
- 24px padding
```

### Dropdown Menu
```
Create a dropdown menu:
- Trigger button
- Menu container (200px wide)
- 5 menu items
- Hover states
- Divider between items
- Icons on left of text
```

### Tab Navigation
```
Create tab navigation:
- 4 tabs (Overview, Details, Reviews, Related)
- Active tab highlighted
- Bottom border indicator
- Content area below
- Smooth transitions
```

### Data Table
```
Create a data table:
- Header row (bold, gray background)
- 5 data rows
- 4 columns (Name, Email, Status, Actions)
- Alternating row colors
- Action buttons in last column
```

## 💡 Pro Tips

### Use Auto-Layout
```
Always specify auto-layout for containers:
- Direction (horizontal/vertical)
- Spacing between items
- Padding
- Alignment
- Sizing (hug/fill/fixed)
```

### Consistent Spacing
```
Use multiples of 8px for spacing:
- 8px, 16px, 24px, 32px, 48px
Maintains visual rhythm
```

### Color Format
```
Use hex colors for consistency:
- #0066FF (blue)
- #FF3333 (red)
- #00CC88 (green)
Or RGBA: { r: 0, g: 0.4, b: 1, a: 1 }
```

### Naming Convention
```
Use descriptive names:
- "Login Button" not "Rectangle 1"
- "Email Input" not "Frame 2"
- "Header Container" not "Group 3"
```

## 🎨 Design Workflow

### 1. Start with Container
```
Create main container frame first
Set dimensions and background
```

### 2. Add Structure
```
Create child frames for sections
Use auto-layout for flexibility
```

### 3. Add Content
```
Add text, buttons, inputs
Apply consistent styling
```

### 4. Refine Details
```
Adjust spacing, colors, shadows
Ensure visual hierarchy
```

### 5. Test & Iterate
```
Export preview
Check alignment and spacing
Make adjustments
```

---

**Remember:** Be specific with dimensions, colors, and spacing in your prompts for best results!
