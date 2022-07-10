# CelestialBodiesDatabase-FCC :stars:

### This database contains interesting tables about the space:rocket:.

## Database Structure

```
.
└── Universe
    ├── blackholes
    │   ├── blackholes_id (type = INT)       ----> foreign key
    │   ├── name (type = VARCHAR(30))                ----> 
    │   └── light_years_earth (type = NUMERIC)   ---->
    ├── galaxy
    │   ├── galaxy_id (type = INT)
    │   ├── name (type = VARCHAR(30))
    │   ├── radius_light_years (type = INT)
    │   ├── age (type = NUMERIC)
    │   └── type (type = TEXT)
    └── moon
        ├── moon_id (type = INT)
        ├── name (type = VARCHAR(30))
        ├── planet_id (type = INT)
        ├── galaxy_id (type = INT)
        └── star_id (type = INT)
```