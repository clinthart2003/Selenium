from stix.campaign import Activity, Attribution, Campaign, Names
from stix.campaign import AssociatedCampaigns as CAssociatedCampaigns
from stix.common.vocabs import IntendedEffect, CampaignStatus, HighMediumLow
from stix.core import STIXPackage
from stix.incident import Incident, Time
from stix.threat_actor import ThreatActor
from stix.threat_actor import AssociatedCampaigns as TAssociatedCampaigns
from stix.ttp import TTP
from stix.common.related import RelatedTTP, RelatedIncident, RelatedIndicator, RelatedCampaign
from stix.indicator import Indicator, RelatedCampaignRef
from cybox.objects.address_object import Address
from faker import Faker
from stix.common import CampaignRef

# Basics
campaign = Campaign(title='Compromise Machines')
campaign.description = 'Vestibulum id ligula porta felis euismod semper. Cras mattis consectetur purus sit amet fermentum.'
campaign.short_description = 'Mattis Ipsum Ultricies Quam Malesuada'

# Attributes
names = Names()
names.name = ['Operation Sparky', 'Operation Dingo']
campaign.names = names
activity = Activity()
activity.description = 'Foo'
campaign.add_activity(activity)
campaign.add_intended_effect(IntendedEffect('Extortion'))
campaign.status = CampaignStatus('Ongoing')
campaign.confidence = HighMediumLow('Medium')

# Related TTP (basic; by id)
ttp = TTP(title="Malware Variant XYZ")
related_ttp = RelatedTTP(TTP(idref=ttp.id_))
campaign.related_ttps.append(related_ttp)

# Related Incident (basic; by id)
incident = Incident(title='We got hacked')
t = Time()
t.incident_opened = '2018-09-11'
incident.time = t
related_incident = RelatedIncident(Incident(idref=incident.id_))
campaign.related_incidents.append(related_incident)

# Related Indicator (by id)
fake = Faker()
indicator = Indicator()
addr2 = Address(address_value=fake.ipv4(), category=Address.CAT_IPV4)
indicator.add_observable(addr2)
related_indicator = RelatedIndicator(Indicator(idref=indicator.id_))
campaign.related_indicators.append(related_indicator)

# Related Threat Actor (by id)
ta = ThreatActor(title='Albino Rhino')
attrib_ta = Attribution()
attrib_ta.append(ThreatActor(idref=ta.id_))
campaign.attribution.append(attrib_ta)

# Related Campaign (basic; by id)
campaign2 = Campaign(title='Another Campaign')
cassoc_campaign = CAssociatedCampaigns()
cassoc_campaign.append(RelatedCampaign(Campaign(idref=campaign2.id_)))
campaign.associated_campaigns = cassoc_campaign

# Related Other Objects to Campaign (by id)
campaign3 = Campaign(title='Another Another Campaign')
tassoc_campaign = TAssociatedCampaigns()
tassoc_campaign.append(RelatedCampaign(Campaign(idref=campaign3.id_)))
ta.associated_campaigns = tassoc_campaign
r = RelatedCampaignRef(CampaignRef(idref=campaign3.id_))
indicator.add_related_campaign(r)

# Generate STIX Package
stix_package = STIXPackage()
stix_package.add_campaign(campaign)
stix_package.add_ttp(ttp)
stix_package.add_incident(incident)
stix_package.add_indicator(indicator)
stix_package.add_threat_actor(ta)
stix_package.add_campaign(campaign2)

print(stix_package.to_xml().decode())
