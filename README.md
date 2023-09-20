# Momenturn

> "Keep the windmill turning and defend it at all cost!"

This game was created in 3 hours as part of [Trijam #237](https://itch.io/jam/trijam-237/rate/2265262) with the theme "***Keep the momentum***".

![Momenturn Screenshot](https://img.itch.zone/aW1hZ2UvMjI2NTI2Mi8xMzQyNjg0OC5wbmc=/original/r2ijW0.png)

## Gameplay

You are tasked with keeping a windmill turning while defending it against pesky birds.

- **Controls**: Move the fan with your mouse.
- **Blow on the windmill's blade** to make it turn faster.
- **Defend against birds**: When birds crash into the windmill, it slows down.
- **Objective**: Keep the speed from dropping to zero. If it does, you lose!

Play the game [here](https://blatalzar.itch.io/momenturn).

## Features

- **Gameplay**: Manage defense and windmill momentum.
- **Art**: Assets made with Midjourney.

## Technical Details

- **Platform**: HTML5 (Playable in browser)
- **Engine**: Made with [Godot](https://godotengine.org/)
- **Genre**: Adventure (!)
- **Input**: Mouse
- **Average Game Session**: A few seconds

## Roadmap

### UI Improvements:
- [ ] **Menus**:
  - [x] Implement a start button
  - [x] Provide instructions to the player.
  - [ ] Introduce a pause menu.
  - [x] Implement a replay button.
- [ ] **Feedback Mechanisms**:
  - [ ] Develop a clearer display of the windmill's speed, including the impact of hits on its performance.
  - [ ] Have a better display of the score.
  - [ ] Provide explicit feedback when the windmill or an adversary is impacted, aiding player comprehension.

### Scoring Mechanics:
- [ ] **Shift from Survival Time to Score Mechanic**: Introduce a score that represents the efficiency of the windmill.
- [ ] **Visual Representation of Score**:
  - [ ] Slow windmill speed produces strands of wheat.
  - [ ] Moderate speed creates bundled wheat.
  - [ ] High speed results in sacks of wheat.
  
### Gameplay Enhancements:
- [ ] **Rat Threats**: Rats target and consume the wheat, reducing the player's score. Use the fan to fend them off and protect your score.
- [ ] **Score Milestones**: Unlock game perks upon reaching certain scores, akin to mechanics found in clicker/roguelite games such as Brotato and Vampire Survivor.
- [ ] **Improved Fan Controls**: Utilize arrow keys to adjust the fan's orientation for more precision.
- [ ] **Varied Enemies**: Introduce different types of threats to the windmill.
- [ ] **Wind Beam Dynamics**: Thicker wind beams provide weaker push, while thin beams provide stronger thrust.
- [ ] **Windmill Dynamics**: Blowing against the windmill's rotation slows it down.
  
### Bug Fixes:
- [x] **Fan Behavior**: Address the issue where the fan switches rapidly between left and right when the mouse is stationary.
- [ ] **Feedback on Blades**: Enhance visual or audio cues to clearly indicate when the windmill blades are being influenced by the fan.
- [ ] **Bird Dynamics**:
  - [ ] Equip birds with a life attribute. When blown upon sufficiently, the bird perishes (utilizing the available dead bird sprite) and falls to the screen's base.
  - [ ] Save and display high scores.
  
### Visual and Audio Enhancements:
- [ ] **Parallax Clouds**: Add moving cloud layers in the background for a more immersive experience.
- [ ] **Sound and Music**: Incorporate background music and sound effects to enrich the gameplay experience.
  

(Note: Let's be real, this was a 3-hour game jam project. Thise roadmap will most likely never be followed. But if you're feeling adventurous, PRs are welcome!)


## Credits

- **Developers**: 
  - ![Balatzar](https://github.com/Balatzar)
  - ![Mouchoir](https://github.com/Mouchoir)


## Feedback and Support

Feel free to [leave a comment](https://blatalzar.itch.io/momenturn) on our itch.io page. 

