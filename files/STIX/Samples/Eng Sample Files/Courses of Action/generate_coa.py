from cybox.core import Observable, Observables
from cybox.objects.address_object import Address
from cybox.objects.domain_name_object import DomainName
from faker import Faker
from stix.coa import CourseOfAction, Objective
from stix.common import Confidence
from stix.common.related import RelatedCOA
from stix.common.vocabs import COAStage, CourseOfActionType, HighMediumLow
from stix.core import STIXPackage
from stix.indicator import Indicator

# Generate IP Address and FQDN
fake = Faker()
ip = fake.ipv4()
domain = fake.domain_name()

# Basics
coa = CourseOfAction(title='Block traffic to Malicious C2 Server ({})'.format(ip))
coa.description = 'Maecenas sed diam eget risus varius blandit sit amet non magna.'
coa.short_description = 'Tristique Venenatis Tortor Mollis Vestibulum'

# Objective
obj = Objective()
obj.description = 'Block communication between the infected agents and the C2 Server'
obj.short_description = 'Block traffic'
obj.applicability_confidence = Confidence(HighMediumLow('High'))
coa.objective = obj

# Attributes
coa.impact = HighMediumLow('Medium')
coa.cost = HighMediumLow('Low')
coa.efficacy = HighMediumLow('High')
coa.stage = COAStage('Response')
coa.type_ = CourseOfActionType('Perimeter Blocking')

# Related Observable (by id)
addr = Address(address_value=ip, category=Address.CAT_IPV4)
observable = Observable(addr)
coa.parameter_observables = Observables(observables=Observable(idref=observable.id_))

# Related CoA (basic; by id)
coa2 = CourseOfAction(title='Block domain traffic to {}'.format(domain))
related_coa = RelatedCOA(CourseOfAction(idref=coa2.id_))
coa.related_coas.append(related_coa)

# Indicator
indicator = Indicator(title='Indicator')
domain_name = DomainName()
domain_name.value = domain
indicator.add_observable(domain_name)
indicator.suggested_coas.append(CourseOfAction(idref=coa2.id_))

# Generate STIX Package
stix_package = STIXPackage()
stix_package.add_observable(observable)
stix_package.add_course_of_action(coa)
stix_package.add_course_of_action(coa2)
stix_package.add_indicator(indicator)

print(stix_package.to_xml().decode())
