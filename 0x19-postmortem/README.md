POSTMORTEM
This was in a angular application where a freshman developer created a screen and due to circumstance he decided to refresh the whole screen (recreate all components in DOM etc...) when new data came. The bug was that each time the user would update some value in a datagrid all list boxes/tables would 'move back up' or 'reset to default'

Timeline (South African Time)
01:00 pm: Deployment done
05:00 pm: Bug noticed
07:00 am: Bug patched
08:00 pm: Bug fixed, users 100% online

Root Cause
The recreation of all components in Dom caused this problem. To fix this you need to remember the state of ALL components (scroll locations, selected items etc...) and often not supplied by these components.
