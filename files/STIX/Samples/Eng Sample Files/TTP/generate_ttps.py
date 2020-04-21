from cybox.core import Observable, Observables
from cybox.objects.domain_name_object import DomainName
from stix.common.identity import Identity
from stix.common.kill_chains import (KillChainPhase, KillChainPhaseReference,
                                     KillChainPhasesReference)
from stix.common.related import RelatedTTP
from stix.common.tools import ToolInformation
from stix.common.vocabs import (AttackerInfrastructureType, AttackerToolType,
                                InformationType, IntendedEffect, MalwareType,
                                SystemType)
from stix.core import STIXPackage
from stix.exploit_target import ExploitTarget
from stix.extensions.identity.ciq_identity_3_0 import (Address,
                                                       CIQIdentity3_0Instance,
                                                       ElectronicAddressIdentifier,
                                                       OrganisationInfo,
                                                       PartyName,
                                                       STIXCIQIdentity3_0)
from stix.extensions.malware.maec_4_1_malware import MAECInstance
from stix.threat_actor import ThreatActor
from stix.ttp import TTP, Behavior
from stix.ttp.behavior import AttackPattern, Exploit, MalwareInstance
from stix.ttp.infrastructure import Infrastructure
from stix.ttp.resource import Personas, Resource, Tools
from stix.ttp.victim_targeting import VictimTargeting

# TTP (Phishing)
ttp = TTP(title='Phishing')
ttp.description = 'Integer posuere erat a ante venenatis dapibus posuere velit aliquet.'
ttp.short_description = 'Etiam Vestibulum Elit Ligula'

ttp.add_intended_effect(IntendedEffect('Account Takeover'))

# TTP - Attack Pattern
attack_pattern = AttackPattern()
attack_pattern.capec_id = 'CAPEC-98'
attack_pattern.description = 'Phishing'
attack_pattern.short_description = 'Phishing'
ttp.behavior = Behavior()
ttp.behavior.add_attack_pattern(attack_pattern)

# TTP - Kill Chain Phase
phase = KillChainPhase(name='Infect Machine', phase_id='example:TTP-7a0fb8e4-a778-4c79-9c7e-8747675da5f1')
kc_phases = KillChainPhasesReference()
kc_phases.append(KillChainPhaseReference(name=phase.name))
ttp.kill_chain_phases = kc_phases

# TTP - Resource (Tool, Infrastructure, Personas)
resource = Resource()
tool = ToolInformation(title='malware.exe')
tool.type_ = AttackerToolType('Malware')
tool.description = 'Tool Description'
tool.short_description = 'Tool Short Description'

infrastructure = Infrastructure(title='Leveraged Domains')
infrastructure.types = AttackerInfrastructureType('Domain Registration')
infrastructure.description = 'Infrastructure Description'
infrastructure.short_description = 'Infrastructure Short Description'
domain = DomainName()
domain.value = 'totally-not-malware.biz'
observable = Observable(domain)
infrastructure.observable_characterization = Observables(Observable(idref=observable.id_))

personas = Personas()
personas.append(Identity(name='Stephen Golub'))

resource = Resource(tools=Tools(tool), infrastructure=infrastructure, personas=personas)
ttp.resources = resource


related_ttp = RelatedTTP(TTP(idref=ttp.id_))

# TTP - Related Threat Actor (basic; by id)
ta = ThreatActor(title='Adversary Bravo')
ta.observed_ttps.append(related_ttp)


# TTP - Related TTP2 (Malware; by id)
ttp2 = TTP(title='Poison Ivy Variant')
malware_instance = MalwareInstance(title='Poison Ivy Variant d1c6')
malware_instance.description = 'Attack Pattern Description'
malware_instance.short_description = 'Attack Pattern Short Description'
malware_instance.add_type(MalwareType('Remote Access Trojan'))

maec = MAECInstance()
maec.add_name('Poison Ivy Variant v4392-acc')
maec.add_type(MalwareType('Exploit Kits'))

ttp2.behavior = Behavior()
ttp2.behavior.add_malware_instance(malware_instance)
ttp2.behavior.add_malware_instance(maec)

# TTP2 - Victim Targeting
victim_targeting = VictimTargeting()
victim_targeting.add_targeted_system(SystemType('Enterprise Systems'))
victim_targeting.add_targeted_information(InformationType('Information Assets - User Credentials'))

identity = CIQIdentity3_0Instance()
# identity.name = 'Bob Ricca'

identity_spec = STIXCIQIdentity3_0()
identity_spec.add_address(Address(country='Germany'))
identity_spec.add_address(Address(country='United States'))
identity_spec.add_language('German')
identity_spec.add_language('English')
identity_spec.add_nationality('American')
identity_spec.add_contact_number('727-867-5309')
identity_spec.add_electronic_address_identifier('bricca')
identity_spec.add_electronic_address_identifier(ElectronicAddressIdentifier(value='bricca@threatq.com', type_='Email'))
party_name = PartyName()
party_name.add_person_name('Bob Ricca')
party_name.add_person_name('Robert Ricca')
party_name.add_organisation_name('ThreatQuotient')
identity_spec.party_name = party_name
organization = OrganisationInfo(industry_type='Cybersecurity')
identity_spec.organisation_info = organization
identity.specification = identity_spec
victim_targeting.identity = identity
domain2 = DomainName()
domain2.value = 'www.bobricca.com'
observable2 = Observable(domain2)
victim_targeting.targeted_technical_details = Observables(Observable(idref=observable2.id_))
ttp2.victim_targeting = victim_targeting

ttp2.related_ttps.append(related_ttp)

# Related TTP (Exploit; by id)
ttp3 = TTP(title='Remote Exploit of Server Software')
exploit = Exploit(title='Exploit Apache')
exploit.description = 'Exploit Description'
exploit.short_description = 'Short Description'
ttp3.behavior = Behavior()
ttp3.behavior.add_exploit(exploit)
vt3 = VictimTargeting()
vt3.identity = Identity(name='Steve Franchak')
ttp3.victim_targeting = vt3

# TTP 3 - Related Exploit Target
et = ExploitTarget(title='Apache HTTP Vulnerability - CVE-2018-1312')
ttp3.exploit_targets.append(ExploitTarget(idref=et.id_))

# Generate STIX Package
stix_package = STIXPackage()
stix_package.add_ttp(ttp)
stix_package.add_ttp(ttp2)
stix_package.add_ttp(ttp3)
stix_package.add_threat_actor(ta)
stix_package.add_observable(observable)
stix_package.add_observable(observable2)
stix_package.add_exploit_target(et)

print(stix_package.to_xml().decode())
