def test_01(session_uuid, module_uuid, class_uuid, function_uuid, manifests):
    print("*"*50)
    print("* Session UUID: {}".format(session_uuid))
    print("* Module UUID: {}".format(module_uuid))
    print("* Class UUID: {}".format(class_uuid))
    print("* Function UUID: {}".format(function_uuid))
    for manifest in manifests:
        print(manifest)
    print("*"*50)

