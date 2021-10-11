CREATE TABLE `ca_tribes` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `region` VARCHAR(50),
    `tribe_name` VARCHAR(100) NOT NULL,
    `website` VARCHAR(255),
    PRIMARY KEY (`id`)
);

INSERT INTO `ca_tribes` (`region`, `tribe_name`, `website`) VALUES
    ('West Central Region', 
    'Big Valley Band of Pomo Indians of the Big Valley Rancheria',
    'http://nahc.ca.gov/resources/california-indian-history/'),
    ('West Central Region',
    'Cachil DeHe Band of Wintun Indians of the Colusa Indian Community of the Colusa Rancheria',
    'https://www.colusa-nsn.gov/government/'),
    ('Southern Region',
    'Agua Caliente Band of Cahuilla Indians of the Agua Caliente Indian Reservation',
    'https://www.aguacaliente.org'),
    ('Southern Region',
    'Augustine Band of Cahuilla Indians',
    'https://augustinetribe-nsn.gov'),
    ('Northern Region',
    'Alturas Indian Rancheria',
    'https://www.bia.gov/tribal-leaders/alturas'),
    ('Northern Region',
    'Bear River Band of the Rohnerville Rancheria',
    'http://www.brb-nsn.gov'),
    ('East Central Region',
    'Berry Creek Rancheria of Maidu Indians of California',
    'https://www.berrycreekmaiduindians.org'),
    ('East Central Region',
    'Big Pine Paiute Tribe of the Owens Valley',
    'https://bigpinepaiute.org');
