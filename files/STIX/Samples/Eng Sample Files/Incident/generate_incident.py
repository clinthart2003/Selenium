from cybox.core import Observable
from cybox.objects.address_object import Address
from faker import Faker
from stix.common import Identity, InformationSource
from stix.common.related import (RelatedIndicator, RelatedObservable,
                                 RelatedThreatActor, RelatedIncident, RelatedTTP)
from stix.core import STIXPackage
from stix.incident import AttributedThreatActors, Incident, LeveragedTTPs, Time
from stix.indicator import Indicator
from stix.threat_actor import ThreatActor
from stix.ttp import TTP, Behavior
from stix.ttp.behavior import AttackPattern
from stix.coa import CourseOfAction

fake = Faker()

# Basics
incident = Incident(title='We got hacked')
incident.description = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'

# Dates/Times
t1 = '2018-08-23T14:00:05.470947+00:00'
t2 = '2018-08-22T14:00:05.470947+00:00'
t3 = '2018-08-24T14:00:05.470947+00:00'
t = Time()
t.incident_opened = t1
t.incident_discovery = t1
t.incident_reported = t1
t.first_malicious_action = t2
t.initial_compromise = t2
t.first_data_exfiltration = t2
t.containment_achieved = t3
t.restoration_achieved = t3
t.incident_closed = t3
incident.time = t

# Additional Attributes
incident.add_category('Unauthorized Access')
incident.add_intended_effect('Destruction')
incident.confidence = 'High'
incident.add_discovery_method('NIDS')

# People
incident.add_coordinator(InformationSource(identity=Identity(name='Fred')))
incident.add_responder(InformationSource(identity=Identity(name='Frank')))
incident.reporter = InformationSource(identity=Identity(name='Alice'))
incident.add_victim(Identity(name='Bob'))

# Related Observable (by id)
addr1 = Address(address_value=fake.ipv4(), category=Address.CAT_IPV4)
observable = Observable(addr1)
related_observable = RelatedObservable(Observable(idref=observable.id_))
incident.related_observables.append(related_observable)

# Related Indicator (by id)
indicator = Indicator()
addr2 = Address(address_value=fake.ipv4(), category=Address.CAT_IPV4)
indicator.add_observable(addr2)
related_indicator = RelatedIndicator(Indicator(idref=indicator.id_))
incident.related_indicators.append(related_indicator)

# Related Threat Actor (by id)
ta = ThreatActor(title='Albino Rhino')
attrib_ta = AttributedThreatActors()
related_ta = RelatedThreatActor(ThreatActor(idref=ta.id_))
attrib_ta.append(related_ta)
incident.attributed_threat_actors = attrib_ta

# Related Incident (basic; by id)
incident2 = Incident(title='Malware outbreak')
incident2.time = '2018-06-12T11:00:05.470947+00:00'
related_incident = RelatedIncident(Incident(idref=incident2.id_))
incident.add_related_incidents(related_incident)

# Related TTP (basic; by id)
ttp = TTP(title='Phishing')
beh = Behavior()
attack_pattern = AttackPattern()
attack_pattern.capec_id = 'CAPEC-98'
attack_pattern.description = 'Phishing'
beh.add_attack_pattern(attack_pattern)
ttp.behavior = beh
leveraged_ttps = LeveragedTTPs()
related_ttp = RelatedTTP(TTP(idref=ttp.id_))
leveraged_ttps.append(related_ttp)
incident.leveraged_ttps = leveraged_ttps

# Related CoA (basic; by id)
coa = CourseOfAction(title='Block traffic')
related_coa = CourseOfAction(idref=coa.id_)
incident.add_coa_requested(related_coa)
incident.add_coa_taken(related_coa)

# Generate STIX Package
stix_package = STIXPackage()
stix_package.add_observable(observable)
stix_package.add_indicator(indicator)
stix_package.add_threat_actor(ta)
stix_package.add_incident(incident)
stix_package.add_incident(incident2)
stix_package.add_ttp(ttp)
stix_package.add_course_of_action(coa)

print(stix_package.to_xml().decode())
