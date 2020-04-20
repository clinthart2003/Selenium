

def main():

    # import setup_over_ssh   Must Run this Manually!!!

    # import dynamic_icons    Must Run this Manually!!!

    # try:
    #     import operations_setup
    # except Exception as e:
    #    print e

    # try:
    #     import addUsers
    # except Exception as e:
    #     print e

    try:
        import Feeds
    except Exception as e:
        print e

    # try:
    #     import mailServerConfig
    # except Exception as e:
    #     print e

    try:
        import events
    except Exception as e:
        print e

    try:
        import adversaries
    except Exception as e:
        print e

    try:
        import Signatures
    except Exception as e:
        print e

    try:
        import Indicators
    except Exception as e:
        print e

    try:
        import stix_import_1_0
    except Exception as e:
        print e

    try:
        import stix_import_2_0
    except Exception as e:
        print e

    try:
        import Events_Relationships
    except Exception as e:
        print e

    try:
        import tasks
    except Exception as e:
        print e

    try:
        import AdversaryRelations
    except Exception as e:
        print e

    try:
        import Signatures_yara
    except Exception as e:
        print e

    try:
        import attack_pattern         # Data is imported from STIX Import now
    except Exception as e:
        print e

    try:
        import ttp                    # Data is imported from STIX Import now
    except Exception as e:
        print e

    try:
        import campaign               # Data is imported from STIX Import now
    except Exception as e:
        print e

    try:
        import exploitTarget          # Data is imported from STIX Import now
    except Exception as e:
        print e

    try:
        import courseOfAction         # Data is imported from STIX Import now
    except Exception as e:
        print e

    try:
        import incident               # Data is imported from STIX Import now
    except Exception as e:
        print e


if __name__ == "__main__":

    main()
