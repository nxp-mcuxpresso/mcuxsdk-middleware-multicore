# Remote Processor Messaging Lite \(RPMsg-Lite\)

RPMsg-Lite is a lightweight implementation of the RPMsg protocol. The RPMsg protocol defines a standardized binary interface used to communicate between multiple cores in a heterogeneous multicore system. Compared to the legacy OpenAMP implementation, RPMsg-Lite offers a code size reduction, API simplification, and improved modularity.

The main RPMsg protocol features:

-   Shared memory interprocessor communication.
-   Virtio-based messaging bus.
-   Application-defined messages sent between endpoints.
-   Portable to different environments/platforms.
-   Available in upstream Linux OS.

The RPMsg-Lite library is located in the *<MCUXpressoSDK\_install\_dir\>/middleware/multicore/rpmsg-lite* folder. For detailed information about the RPMsg-Lite, see the RPMsg-Lite User’s Guide located in the *<MCUXpressoSDK\_install\_dir\>/middleware/multicore/rpmsg\_lite/doc* folder.

**Parent topic:**[Multicore SDK \(MCSDK\) components](../topics/multicore_sdk_mcsdk_components.md)

