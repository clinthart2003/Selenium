from datetime import datetime
from random import choice, randint

from cybox.objects.address_object import Address
from cybox.objects.domain_name_object import DomainName
from cybox.objects.http_session_object import (HTTPClientRequest,
                                               HTTPRequestHeader,
                                               HTTPRequestHeaderFields,
                                               HTTPRequestResponse,
                                               HTTPSession)
from cybox.objects.uri_object import URI
from faker import Faker
from stix.common import Confidence, Identity
from stix.common.kill_chains import (KillChainPhaseReference,
                                     KillChainPhasesReference)
from stix.common.kill_chains.lmco import LMCO_KILL_CHAIN_PHASES
from stix.core import STIXPackage
from stix.indicator import Indicator


class STIXPackageGenerator():
    def __init__(self):
        self.fake = Faker()

    def gen_ips(self, count):
        '''Generate list of IP Addresses'''
        ip_addresses = []
        for i in range(0, count):
            addr = Address(address_value=self.fake.ipv4(), category=Address.CAT_IPV4)
            addr.condition = 'Equals'

            ip_addresses.append(addr)

        return ip_addresses

    def gen_fqdns(self, count):
        '''Generate list of FQDNs'''
        domains = []
        for i in range(0, count):
            domain = DomainName()
            domain.value = self.fake.domain_name()
            domains.append(domain)

        return domains

    def gen_urls(self, count):
        '''Generate list of URLs'''
        urls = []
        for i in range(0, count):
            uri = URI(type_='URL')
            uri.value = self.fake.uri()
            urls.append(uri)

        return urls

    def gen_user_agents(self, count):
        '''Generate list of User-Agents'''
        user_agents = []
        for i in range(0, count):
            http_session = HTTPSession()
            http_request_response = HTTPRequestResponse()
            http_request = HTTPClientRequest()
            http_request_header = HTTPRequestHeader()
            parsed_header = HTTPRequestHeaderFields()

            parsed_header.user_agent = self.fake.user_agent()
            http_request_header.parsed_header = parsed_header
            http_request.http_request_header = http_request_header
            http_request_response.http_client_request = http_request
            http_session.http_request_response = http_request_response

            user_agents.append(http_session)

        return user_agents

    def generate_indicators(self, count):
        '''Generate a list of STIX Indicators'''
        indicators = []
        for i in range(0, count):
            indicator = Indicator(title='Multiple indicator types')
            indicator.set_producer_identity(Identity(name='Secret Source'))
            indicator.set_produced_time(datetime.today())
            indicator.add_indicator_type(choice(['Malware Artifacts', 'C2', 'Exfiltration']))
            indicator.add_short_description('Short description...')
            indicator.add_description('Long description...')
            indicator.confidence = Confidence(choice(['High', 'Medium', 'Low', 'None', 'Unknown']))
            kill_chain_phase = choice(LMCO_KILL_CHAIN_PHASES)
            indicator.kill_chain_phases = KillChainPhasesReference(
                [KillChainPhaseReference(name=kill_chain_phase.name)])
            ips = self.gen_ips(randint(0, 5))
            for ip in ips:
                indicator.add_observable(ip)

            # user_agents = self.gen_user_agents(randint(0, 5))
            # for ua in user_agents:
            #     indicator.add_observable(ua)

            # fqnds = self.gen_fqdns(randint(0, 5))
            # for f in fqnds:
            #     indicator.add_observable(f)

            # urls = self.gen_urls(randint(0, 5))
            # for u in urls:
            #     indicator.add_observable(u)

            indicators.append(indicator)

        return indicators

    def generate_package(self):
        '''Generate a STIX Package'''
        stix_package = STIXPackage()
        inds = self.generate_indicators(randint(1, 1))
        for i in inds:
            stix_package.add_indicator(i)

        return stix_package


spg = STIXPackageGenerator()
p = spg.generate_package()
print(p.to_xml().decode('utf-8'))
