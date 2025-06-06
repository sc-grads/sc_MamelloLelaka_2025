from dataclasses import dataclass, field
from typing import List

@dataclass
class Team:
    name: str
    members: List[str] = field(default_factory=list)

# Each Team gets its own list:
t1 = Team("Alpha")
t2 = Team("Bravo")

t1.members.append("Alice")
print(t1)  # Team(name='Alpha', members=['Alice'])
print(t2)  # Team(name='Bravo', members=[])