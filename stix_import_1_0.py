from selenium import webdriver
from config import CONFIG
from selenium.webdriver.chrome.options import Options
import time, login, os
import logging
import stix_parser


script = "stix_import_1.0.py.log"
logging.basicConfig(filename='./files/test_logs/%s.log' % script, format='%(asctime)s - %(levelname)s - %(message)s', level=logging.INFO)
logger = logging.getLogger('test')

if CONFIG.WEBDRIVER == "Chrome":
    _chrome_options = Options()
    _chrome_options.add_argument('--start-fullscreen')
    driver = webdriver.Chrome(chrome_options=_chrome_options)

elif CONFIG.WEBDRIVER == "Firefox":

    driver = webdriver.Firefox()

else:

    logger.warning('No valid Webdrive was provided. ')

# driver.set_window_size(1440, 1200)
driver.implicitly_wait(CONFIG.waittime)
# time.sleep(2)

host = CONFIG.HOST

cwd = os.getcwd()

stix = [
        ["files/STIX/Samples/Eng Sample Files/TTP/Mandiant_APT1_Report.xml", 45],
        ["files/STIX/Samples/Eng Sample Files/TTP/TTP.xml", 6],
        ["files/STIX/Samples/Eng Sample Files/TTP/TTP-maec.xml", 1],
        ["files/STIX/Samples/Eng Sample Files/TLP/TLP-header-less-restrict-ind.xml", 55],
        ["files/STIX/Samples/Eng Sample Files/TLP/TLP-header-more-restrict-ind.xml", 55],
        ["files/STIX/Samples/Eng Sample Files/TLP/TLP-header-multiple-no-ind.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/TLP/TLP-header-no-ind.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/Threat Actors/ThreatActor-detailed-single.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/Threat Actors/ThreatActor-detailed-with-associated-single-idref.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/Threat Actors/ThreatActor-multiple.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/Threat Actors/ThreatActor-single-tlp.xml", 0],
        ["files/STIX/Samples/Eng Sample Files/Threat Actors/ThreatActor-with-associated-multiple-embed.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/Threat Actors/ThreatActor-with-associated-multiple-idref.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/Indicators-Observables/Indicator-IP-KillChain-inline.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/Indicators-Observables/Indicator-IP-KillChain-ref.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/Indicators-Observables/Indicator-IP-LikelyImpact.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/Indicators-Observables/Network/Indicator-Domain-Single-Obv.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/Indicators-Observables/Network/Indicator-IP-Multiple-Obv-related.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/Indicators-Observables/Network/Indicator-IP-Related-Object-embed.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/Indicators-Observables/Network/Indicator-IP-Single-Obv.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/Indicators-Observables/Network/Indicator-URI-Multiple-Obv-related.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/Indicators-Observables/Network/Indicator-URI-Single-Obv.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/Indicators-Observables/Network/Indicator-UserAgent-Multiple-Obv-related.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/Indicators-Observables/Network/Indicator-UserAgent-Single-Obv.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/Indicators-Observables/Network/Indicator-with-associated-idref.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/Indicators-Observables/Network/Multiple-Indicator-Observable-Network.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/Indicators-Observables/Network/Observable-Domain-Single.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/Indicators-Observables/Network/Observable-IP-Connection.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/Indicators-Observables/File/Indicator-Observable-File.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/Indicators-Observables/File/Indicator-Observable-File-win.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/Indicators-Observables/File/Multiple-Indicator-Observable-Hashes.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/Indicators-Observables/Email/Indicator-Observable-Email.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/Indicators-Observables/Email/Indicator-Observable-Email-with-Relation-inline.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/Indicators-Observables/Email/Indicator-Observable-Email-with-Relation-noninline.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/Incident/Incident-related-obv-ind-ta-inc-ttp-coa.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/Exploit Targets/ET.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/Courses of Action/coa-related-obv-coa-indicator-suggested-coa.xml", 20],
        ["files/STIX/Samples/Eng Sample Files/Campaigns/Campaigns.xml", 20],
        ["files/STIX/Samples/FireEye Poison Ivy Report/fireeye-pivy-indicators.xml", 20],
        ["files/STIX/Samples/FireEye Poison Ivy Report/fireeye-pivy-observables.xml", 20],
        ["files/STIX/Samples/FireEye Poison Ivy Report/fireeye-pivy-report.xml", 20],
        ["files/STIX/Samples/FireEye Poison Ivy Report/fireeye-pivy-report-with-indicators.xml", 20],
        ["files/STIX/Samples/Mandiant APT1 Report/Appendix_D_FQDNs.xml", 20],
        ["files/STIX/Samples/Mandiant APT1 Report/Appendix_E_MD5s.xml", 20],
        ["files/STIX/Samples/Mandiant APT1 Report/Appendix_F_SSLCertificates.xml", 20],
        # too large ["files/STIX/Samples/Mandiant APT1 Report/Appendix_G_IOCs_Full.xml", 20],
        ["files/STIX/Samples/Mandiant APT1 Report/Appendix_G_IOCs_No_Observables.xml", 20],
        # too large ["files/STIX/Samples/Mandiant APT1 Report/Appendix_G_IOCs_No_OpenIOC.xml", 20],
        ["files/STIX/Samples/Mandiant APT1 Report/Mandiant_APT1_Report.xml", 20],
        ["files/STIX/Samples/Mitre STIX Examples/STIX_Domain_Watchlist.xml", 20],
        # 0 objects ["files/STIX/Samples/Mitre STIX Examples/STIX_Email_wAttachment.xml", 20],
        # 0 objects ["files/STIX/Samples/Mitre STIX Examples/STIX_Email_wFullAttachment.xml", 20],
        ["files/STIX/Samples/Mitre STIX Examples/STIX_Email_wLink.xml", 20],
        ["files/STIX/Samples/Mitre STIX Examples/STIX_FileHash_Watchlist.xml", 20],
        ["files/STIX/Samples/Mitre STIX Examples/STIX_Indicator_Snort.xml", 20],
        ["files/STIX/Samples/Mitre STIX Examples/STIX_IP_Watchlist.xml", 20],
        ["files/STIX/Samples/Mitre STIX Examples/STIX_Malware_Sample.xml", 20],
        ["files/STIX/Samples/Mitre STIX Examples/STIX_Phishing_Indicator.xml", 20],
        ["files/STIX/Samples/Mitre STIX Examples/STIX_Snippet_Confidence.xml", 20],
        ["files/STIX/Samples/Mitre STIX Examples/STIX_Snippet_Controlled_Vocabulary_Specification.xml", 20],
        ["files/STIX/Samples/Mitre STIX Examples/STIX_Snippet_ControlledVocab.xml", 20],
        ["files/STIX/Samples/Mitre STIX Examples/STIX_Snippet_Handling.xml", 20],
        ["files/STIX/Samples/Mitre STIX Examples/STIX_Snippet_Sightings.xml", 20],
        ["files/STIX/Samples/Mitre STIX Examples/STIX_Snippet_XsiType.xml", 20],
        ["files/STIX/Samples/Mitre STIX Examples/STIX_URL_Watchlist.xml", 20],
        ["files/STIX/Samples/AIS_Bundle_Marking_1.1.1_v1.0.xsd.xml", 20],
        ["files/STIX/Samples/analyst-exercise(1).xml", 20],
        ["files/STIX/Samples/analyst-exercise.xml", 20],
        ["files/STIX/Samples/coa_ind_malicious_file.xml", 20],
        ["files/STIX/Samples/example_email_indicator_with_observable.xml", 20],
        ["files/STIX/Samples/exmaple_email_indicator_with_attachment.xml", 20],
        ["files/STIX/Samples/guest.phishtank_com_STIX111_t2017_07_06T18_27_01_995003_00_00.xml", 20],
        ["files/STIX/Samples/IB1610284.xml", 20],
        ["files/STIX/Samples/IB1610349.xml", 20],
        ["files/STIX/Samples/IB-17-20294A.stix.xml", 20],
        # ["files/STIX/Samples/IB-17-20384.xml", 20],
        ["files/STIX/Samples/IB-18-20069.stix.xml", 20],
        ["files/STIX/Samples/incident_vs_indicator.xml", 20],
        ["files/STIX/Samples/ind_fsisac_indicator-1b7f1ea4-d589-4413-82aa-b38438df9859.xml", 20],
        ["files/STIX/Samples/indicators.xml", 20],
        ["files/STIX/Samples/IR-ALERT-MED-17-093-01-C.XML", 20],
        ["files/STIX/Samples/isight_14-31270.xml", 20],
        ["files/STIX/Samples/JAR-16-20296A.xml", 20],
        ["files/STIX/Samples/MAR-10132963_stix.xml", 20],
        ["files/STIX/Samples/MAR-10132963_stix_0.xml", 20],
        ["files/STIX/Samples/MAR-10135536-A_WHITE_stix.xml", 20],
        ["files/STIX/Samples/MAR-10135536-D_WHITE_stix.xml", 20],
        ["files/STIX/Samples/MAR-10135536-F_WHITE_stix.xml", 20],
        ["files/STIX/Samples/MIFR-10127623_TLP_WHITE_stix.xml", 20],
        ["files/STIX/Samples/MIFR-10128327_TLP_WHITE_stix.xml", 20],
        ["files/STIX/Samples/MIFR-10128336_TLP_WHITE_stix.xml", 20],
        ["files/STIX/Samples/MIFR-10128830_TLP_WHITE_stix.xml", 20],
        ["files/STIX/Samples/MIFR-10128883_TLP_WHITE_stix.xml", 20],
        ["files/STIX/Samples/MIFR-10130295_stix.xml", 20],
        ["files/STIX/Samples/MIFR-10135300_TLP_WHITE_stix.xml", 20],
        ["files/STIX/Samples/MIFR-10150558_stix.xml", 20],
        ["files/STIX/Samples/random1.xml", 20],
        ["files/STIX/Samples/TA FALLCHILL IOCs.xml", 20],
        ["files/STIX/Samples/TA VOLGMER IOCs.xml", 20],
        ["files/STIX/Samples/TA17-132A_stix.xml", 20],
        ["files/STIX/Samples/TA17-132A_WannaCry_stix.xml", 20],
        ["files/STIX/Samples/TA17-293A _TLP_ WHITE.xml", 20],
        ["files/STIX/Samples/TA-17-163A_IOCs.stix.XML", 20],
        ["files/STIX/Samples/TA-17-164A_stix.xml", 20],
        ["files/STIX/Samples/TA-17-318A-IOCs.xml", 20],
        ["files/STIX/Samples/TA-17-318B-IOCs.xml", 20],
        ["files/STIX/Samples/temp.xml", 20],
        ["files/STIX/Samples/test2.xml", 20],
        ["files/STIX/Samples/tlp-no-control.xml", 20],
        ["files/STIX/STIX files/act_threatq_threatactor-c53824db-c405-445b-9d3f-d4973bae7870.xml", 20],
        ["files/STIX/STIX files/cam_threatq_campaign-8a566072-5b81-4faf-ace4-16525b6ff144.xml", 20],
        # timeout ["files/STIX/STIX files/cam_threatq_campaign-d7a825ba-8a0a-4cfa-9763-465ec66e558f.xml", 20],
        ["files/STIX/STIX files/Campaign.xml", 20],
        ["files/STIX/STIX files/coa_threatq_coa-ccf236e2-3126-43aa-aa59-43728f7c4068.xml", 20],
        ["files/STIX/STIX files/ind_threatq_indicator-443e4e99-7b29-4243-8e80-5af3b7f07a34.xml", 20],
        ["files/STIX/STIX files/ind_threatq_indicator-20788288-969b-4766-a314-6b8a18325a91.xml", 20],
        ["files/STIX/STIX files/ind_threatq_indicator-cfbc9fcd-d068-4dc8-a57b-cda54868bf28.xml", 20],
        # timeout ["files/STIX/STIX files/ind_TQ_indicator-1db66126-e641-4884-b9f7-1a958869e9bb.xml", 20],
        ["files/STIX/STIX files/ind_TQ_indicator-f7482b0c-1d87-4019-a645-ff2d9c4d2b27.xml", 20],
        ["files/STIX/STIX files/multi_package_related_package.xml", 20],
        ["files/STIX/STIX files/tgt_threatq_et-cabbb0d2-2f16-4321-89cc-b33415a63891.xml", 20],
        ["files/STIX/STIX files/TTP-maec.xml", 0]
        ]

# Run test steps here

login.login(logger, host, driver, usr=CONFIG.USER[0], pssword=CONFIG.USER[1], SAML=CONFIG.SAML)

time.sleep(8)

count = 1

logger.info("Start STIX import test")


for STIX in stix:

    stixfile = cwd + os.sep + STIX[0]
    print (stixfile)

    try:

        status = stix_parser.stix_import(driver, logger, stixfile, count)

    except Exception as e:
        logger.warn('%s %s ' % (e, str(STIX[0])))
        print(e)

    driver.get(host)
    # print ("sleep 5")
    time.sleep(5)

    count += 1
    # print count
    if CONFIG.LONGRUN:

        time.sleep(1200)

    if count % 80 == 0:

        login.logout(logger, driver)
        time.sleep(1)
        login.login(logger, host, driver, usr=CONFIG.USER[0], pssword=CONFIG.USER[1])


logger.info("End STIX import test")

# close the browser window
driver.quit()
