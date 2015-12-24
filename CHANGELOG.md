V0.3
 - Fixed a timing issue which meant that if your call connected within the
   first 2 seconds of a 10 second block, the time would be announced
   incorrectly (2 seconds late)
 - Function to timeout a call after 3 minutes now actually works.
 - re-trimed all samples to be exactly the right length (to minimise drift
   for non-asterisk implementations)

V0.2
 - 35.wav corrected so it says 35 and not 36 (doh!)
 - Timezone support added to the macro
 - Macro rewritten to not reply on step numbering (labels ftw!)
 - Changelog added

V0.1
 - Audio samples provided by Andy Emmerson from the TIM2000 project
 - Bare bones speaking clock macro cribbed from an anonymous forum post
 - Most of the macro rewritten to work with our samples and timing
 - Beta release to THG membership 2012-08-24

