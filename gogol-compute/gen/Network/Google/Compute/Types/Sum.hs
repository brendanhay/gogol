{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.Compute.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Compute.Types.Sum where

import           Network.Google.Prelude

-- | The type of configuration. The default and only option is
-- ONE_TO_ONE_NAT.
data AccessConfigType
    = ACTOneToOneNAT
      -- ^ @ONE_TO_ONE_NAT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccessConfigType

-- | [Output Only] The status of the address, which can be either IN_USE or
-- RESERVED. An address that is RESERVED is currently reserved and
-- available to use. An IN_USE address is currently being used by another
-- resource and is not available.
data AddressStatus
    = ASInUse
      -- ^ @IN_USE@
    | ASReserved
      -- ^ @RESERVED@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AddressStatus

-- | [Output Only] The warning type identifier for this warning.
data AddressesScopedListCodeWarning
    = ASLCWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | ASLCWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | ASLCWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | ASLCWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | ASLCWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | ASLCWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | ASLCWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | ASLCWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | ASLCWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | ASLCWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | ASLCWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | ASLCWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | ASLCWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | ASLCWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AddressesScopedListCodeWarning

data AttachedDiskInterface
    = ADINvme
      -- ^ @NVME@
    | ADIScsi
      -- ^ @SCSI@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AttachedDiskInterface

-- | The mode in which to attach this disk, either READ_WRITE or READ_ONLY.
-- If not specified, the default is to attach the disk in READ_WRITE mode.
data AttachedDiskMode
    = ADMReadOnly
      -- ^ @READ_ONLY@
    | ADMReadWrite
      -- ^ @READ_WRITE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AttachedDiskMode

-- | Specifies the type of the disk, either SCRATCH or PERSISTENT. If not
-- specified, the default is PERSISTENT.
data AttachedDiskType
    = ADTPersistent
      -- ^ @PERSISTENT@
    | ADTScratch
      -- ^ @SCRATCH@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AttachedDiskType

-- | [Output Only] The warning type identifier for this warning.
data AutoscalersScopedListCodeWarning
    = ADeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | ADiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | AInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | ANextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | ANextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | ANextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | ANextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | ANextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | ANotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | ANoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | ARequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | AResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | ASingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | AUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AutoscalersScopedListCodeWarning

-- | Defines type in which utilization_target is expressed.
data AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType
    = APCMUUTTDeltaPerMinute
      -- ^ @DELTA_PER_MINUTE@
    | APCMUUTTDeltaPerSecond
      -- ^ @DELTA_PER_SECOND@
    | APCMUUTTGauge
      -- ^ @GAUGE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType

-- | Specifies the balancing mode for this backend. The default is
-- UTILIZATION but available values are UTILIZATION and RATE.
data BackendBalancingMode
    = BBMRate
      -- ^ @RATE@
    | BBMUtilization
      -- ^ @UTILIZATION@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BackendBalancingMode

data BackendServiceProtocol
    = BSPHTTP
      -- ^ @HTTP@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BackendServiceProtocol

-- | The deprecation state of this resource. This can be DEPRECATED,
-- OBSOLETE, or DELETED. Operations which create a new resource using a
-- DEPRECATED resource will return successfully, but with a warning
-- indicating the deprecated resource and recommending its replacement.
-- Operations which use OBSOLETE or DELETED resources will be rejected and
-- result in an error.
data DeprecationStatusState
    = DSSDeleted
      -- ^ @DELETED@
    | DSSDeprecated
      -- ^ @DEPRECATED@
    | DSSObsolete
      -- ^ @OBSOLETE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeprecationStatusState

-- | [Output Only] The status of disk creation. Applicable statuses includes:
-- CREATING, FAILED, READY, RESTORING.
data DiskStatus
    = DSCreating
      -- ^ @CREATING@
    | DSFailed
      -- ^ @FAILED@
    | DSReady
      -- ^ @READY@
    | DSRestoring
      -- ^ @RESTORING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DiskStatus

-- | [Output Only] The warning type identifier for this warning.
data DiskTypesScopedListCodeWarning
    = DTSLCWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | DTSLCWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | DTSLCWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | DTSLCWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | DTSLCWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | DTSLCWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | DTSLCWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | DTSLCWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | DTSLCWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | DTSLCWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | DTSLCWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | DTSLCWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | DTSLCWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | DTSLCWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DiskTypesScopedListCodeWarning

-- | [Output Only] The warning type identifier for this warning.
data DisksScopedListCodeWarning
    = DSLCWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | DSLCWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | DSLCWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | DSLCWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | DSLCWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | DSLCWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | DSLCWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | DSLCWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | DSLCWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | DSLCWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | DSLCWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | DSLCWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | DSLCWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | DSLCWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DisksScopedListCodeWarning

-- | The IP protocol to which this rule applies. Valid options are TCP, UDP,
-- ESP, AH or SCTP.
data ForwardingRuleIPProtocol
    = FRIPAH
      -- ^ @AH@
    | FRIPEsp
      -- ^ @ESP@
    | FRIPSctp
      -- ^ @SCTP@
    | FRIPTCP
      -- ^ @TCP@
    | FRIPUdp
      -- ^ @UDP@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ForwardingRuleIPProtocol

-- | [Output Only] The warning type identifier for this warning.
data ForwardingRulesScopedListCodeWarning
    = FRSLCWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | FRSLCWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | FRSLCWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | FRSLCWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | FRSLCWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | FRSLCWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | FRSLCWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | FRSLCWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | FRSLCWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | FRSLCWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | FRSLCWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | FRSLCWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | FRSLCWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | FRSLCWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ForwardingRulesScopedListCodeWarning

-- | Health state of the instance.
data HealthStatusHealthState
    = HSHSHealthy
      -- ^ @HEALTHY@
    | HSHSUnhealthy
      -- ^ @UNHEALTHY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable HealthStatusHealthState

-- | The format used to encode and transmit the block device, which should be
-- TAR. This is just a container and transmission format and not a runtime
-- format. Provided by the client when the disk image is created.
data ImageContainerTypeRawDisk
    = ICTRDTAR
      -- ^ @TAR@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ImageContainerTypeRawDisk

-- | The type of the image used to create this disk. The default and only
-- value is RAW
data ImageSourceType
    = ISTRaw
      -- ^ @RAW@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ImageSourceType

-- | [Output Only] The status of the image. An image can be used to create
-- other resources, such as instances, only after the image has been
-- successfully created and the status is set to READY. Possible values are
-- FAILED, PENDING, or READY.
data ImageStatus
    = ISFailed
      -- ^ @FAILED@
    | ISPending
      -- ^ @PENDING@
    | ISReady
      -- ^ @READY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ImageStatus

-- | [Output Only] The warning type identifier for this warning.
data InstanceGroupManagersScopedListCodeWarning
    = IGMSLCWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | IGMSLCWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | IGMSLCWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | IGMSLCWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | IGMSLCWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | IGMSLCWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | IGMSLCWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | IGMSLCWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | IGMSLCWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | IGMSLCWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | IGMSLCWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | IGMSLCWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | IGMSLCWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | IGMSLCWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InstanceGroupManagersScopedListCodeWarning

-- | A filter for the state of the instances in the instance group. Valid
-- options are ALL or RUNNING. If you do not specify this parameter the
-- list includes all instances regardless of their state.
data InstanceGroupsListInstancesRequestInstanceState
    = IGLIRISAll
      -- ^ @ALL@
    | IGLIRISRunning
      -- ^ @RUNNING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InstanceGroupsListInstancesRequestInstanceState

-- | [Output Only] The warning type identifier for this warning.
data InstanceGroupsScopedListCodeWarning
    = IGSLCWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | IGSLCWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | IGSLCWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | IGSLCWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | IGSLCWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | IGSLCWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | IGSLCWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | IGSLCWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | IGSLCWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | IGSLCWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | IGSLCWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | IGSLCWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | IGSLCWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | IGSLCWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InstanceGroupsScopedListCodeWarning

-- | [Output Only] The status of the instance. One of the following values:
-- PROVISIONING, STAGING, RUNNING, STOPPING, and TERMINATED.
data InstanceStatus
    = ISProvisioning
      -- ^ @PROVISIONING@
    | ISRunning
      -- ^ @RUNNING@
    | ISStaging
      -- ^ @STAGING@
    | ISStopped
      -- ^ @STOPPED@
    | ISStopping
      -- ^ @STOPPING@
    | ISSuspended
      -- ^ @SUSPENDED@
    | ISSuspending
      -- ^ @SUSPENDING@
    | ISTerminated
      -- ^ @TERMINATED@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InstanceStatus

-- | The status of the instance.
data InstanceWithNamedPortsStatus
    = IWNPSProvisioning
      -- ^ @PROVISIONING@
    | IWNPSRunning
      -- ^ @RUNNING@
    | IWNPSStaging
      -- ^ @STAGING@
    | IWNPSStopped
      -- ^ @STOPPED@
    | IWNPSStopping
      -- ^ @STOPPING@
    | IWNPSSuspended
      -- ^ @SUSPENDED@
    | IWNPSSuspending
      -- ^ @SUSPENDING@
    | IWNPSTerminated
      -- ^ @TERMINATED@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InstanceWithNamedPortsStatus

-- | [Output Only] The warning type identifier for this warning.
data InstancesScopedListCodeWarning
    = ISLCWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | ISLCWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | ISLCWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | ISLCWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | ISLCWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | ISLCWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | ISLCWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | ISLCWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | ISLCWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | ISLCWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | ISLCWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | ISLCWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | ISLCWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | ISLCWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InstancesScopedListCodeWarning

-- | [Output Only] The warning type identifier for this warning.
data MachineTypesScopedListCodeWarning
    = MTSLCWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | MTSLCWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | MTSLCWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | MTSLCWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | MTSLCWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | MTSLCWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | MTSLCWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | MTSLCWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | MTSLCWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | MTSLCWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | MTSLCWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | MTSLCWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | MTSLCWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | MTSLCWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MachineTypesScopedListCodeWarning

-- | The current action that the managed instance group has scheduled for the
-- instance.
data ManagedInstanceCurrentAction
    = MICAAbandoning
      -- ^ @ABANDONING@
    | MICACreating
      -- ^ @CREATING@
    | MICADeleting
      -- ^ @DELETING@
    | MICANone
      -- ^ @NONE@
    | MICARecreating
      -- ^ @RECREATING@
    | MICARefreshing
      -- ^ @REFRESHING@
    | MICARestarting
      -- ^ @RESTARTING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ManagedInstanceCurrentAction

-- | The status of the instance (empty when instance does not exist).
data ManagedInstanceInstanceStatus
    = MIISProvisioning
      -- ^ @PROVISIONING@
    | MIISRunning
      -- ^ @RUNNING@
    | MIISStaging
      -- ^ @STAGING@
    | MIISStopped
      -- ^ @STOPPED@
    | MIISStopping
      -- ^ @STOPPING@
    | MIISSuspended
      -- ^ @SUSPENDED@
    | MIISSuspending
      -- ^ @SUSPENDING@
    | MIISTerminated
      -- ^ @TERMINATED@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ManagedInstanceInstanceStatus

-- | [Output Only] The warning type identifier for this warning.
data OperationCodeItemWarnings
    = OCIWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | OCIWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | OCIWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | OCIWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | OCIWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | OCIWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | OCIWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | OCIWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | OCIWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | OCIWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | OCIWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | OCIWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | OCIWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | OCIWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OperationCodeItemWarnings

-- | [Output Only] Status of the operation. Can be one of the following:
-- PENDING, RUNNING, or DONE.
data OperationStatus
    = OSDone
      -- ^ @DONE@
    | OSPending
      -- ^ @PENDING@
    | OSRunning
      -- ^ @RUNNING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OperationStatus

-- | [Output Only] The warning type identifier for this warning.
data OperationsScopedListCodeWarning
    = OSLCWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | OSLCWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | OSLCWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | OSLCWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | OSLCWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | OSLCWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | OSLCWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | OSLCWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | OSLCWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | OSLCWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | OSLCWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | OSLCWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | OSLCWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | OSLCWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OperationsScopedListCodeWarning

-- | [Output Only] Name of the quota metric.
data QuotaMetric
    = QMBackendServices
      -- ^ @BACKEND_SERVICES@
    | QMCPUs
      -- ^ @CPUS@
    | QMDisksTotalGb
      -- ^ @DISKS_TOTAL_GB@
    | QMFirewalls
      -- ^ @FIREWALLS@
    | QMForwardingRules
      -- ^ @FORWARDING_RULES@
    | QMHealthChecks
      -- ^ @HEALTH_CHECKS@
    | QMImages
      -- ^ @IMAGES@
    | QMInstances
      -- ^ @INSTANCES@
    | QMInstanceGroups
      -- ^ @INSTANCE_GROUPS@
    | QMInstanceGroupManagers
      -- ^ @INSTANCE_GROUP_MANAGERS@
    | QMInstanceTemplates
      -- ^ @INSTANCE_TEMPLATES@
    | QMInUseAddresses
      -- ^ @IN_USE_ADDRESSES@
    | QMLocalSsdTotalGb
      -- ^ @LOCAL_SSD_TOTAL_GB@
    | QMNetworks
      -- ^ @NETWORKS@
    | QMRoutes
      -- ^ @ROUTES@
    | QMSnapshots
      -- ^ @SNAPSHOTS@
    | QMSsdTotalGb
      -- ^ @SSD_TOTAL_GB@
    | QMStaticAddresses
      -- ^ @STATIC_ADDRESSES@
    | QMTargetHTTPProxies
      -- ^ @TARGET_HTTP_PROXIES@
    | QMTargetInstances
      -- ^ @TARGET_INSTANCES@
    | QMTargetPools
      -- ^ @TARGET_POOLS@
    | QMTargetVPNGateways
      -- ^ @TARGET_VPN_GATEWAYS@
    | QMURLMaps
      -- ^ @URL_MAPS@
    | QMVPNTunnels
      -- ^ @VPN_TUNNELS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable QuotaMetric

-- | [Output Only] Status of the region, either UP or DOWN.
data RegionStatus
    = RSDown
      -- ^ @DOWN@
    | RSUP
      -- ^ @UP@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RegionStatus

-- | [Output Only] The warning type identifier for this warning.
data RouteCodeItemWarnings
    = RCIWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | RCIWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | RCIWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | RCIWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | RCIWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | RCIWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | RCIWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | RCIWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | RCIWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | RCIWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | RCIWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | RCIWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | RCIWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | RCIWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RouteCodeItemWarnings

-- | Defines the maintenance behavior for this instance. For standard
-- instances, the default behavior is MIGRATE. For preemptible instances,
-- the default and only possible behavior is TERMINATE. For more
-- information, see Setting maintenance behavior.
data SchedulingOnHostMaintenance
    = SOHMMigrate
      -- ^ @MIGRATE@
    | SOHMTerminate
      -- ^ @TERMINATE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SchedulingOnHostMaintenance

-- | [Output Only] The status of the snapshot.
data SnapshotStatus
    = SSCreating
      -- ^ @CREATING@
    | SSDeleting
      -- ^ @DELETING@
    | SSFailed
      -- ^ @FAILED@
    | SSReady
      -- ^ @READY@
    | SSUploading
      -- ^ @UPLOADING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SnapshotStatus

-- | [Output Only] An indicator whether storageBytes is in a stable state or
-- it is being adjusted as a result of shared storage reallocation.
data SnapshotStorageBytesStatus
    = SSBSUpdating
      -- ^ @UPDATING@
    | SSBSUpToDate
      -- ^ @UP_TO_DATE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SnapshotStorageBytesStatus

-- | NAT option controlling how IPs are NAT\'ed to the instance. Currently
-- only NO_NAT (default value) is supported.
data TargetInstanceNatPolicy
    = TINPNoNAT
      -- ^ @NO_NAT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TargetInstanceNatPolicy

-- | [Output Only] The warning type identifier for this warning.
data TargetInstancesScopedListCodeWarning
    = TISLCWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | TISLCWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | TISLCWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | TISLCWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | TISLCWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | TISLCWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | TISLCWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | TISLCWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | TISLCWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | TISLCWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | TISLCWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | TISLCWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | TISLCWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | TISLCWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TargetInstancesScopedListCodeWarning

-- | Sesssion affinity option, must be one of the following values: NONE:
-- Connections from the same client IP may go to any instance in the pool;
-- CLIENT_IP: Connections from the same client IP will go to the same
-- instance in the pool while that instance remains healthy.
-- CLIENT_IP_PROTO: Connections from the same client IP with the same IP
-- protocol will go to the same instance in the pool while that instance
-- remains healthy.
data TargetPoolSessionAffinity
    = TPSAClientIP
      -- ^ @CLIENT_IP@
    | TPSAClientIPProto
      -- ^ @CLIENT_IP_PROTO@
    | TPSANone
      -- ^ @NONE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TargetPoolSessionAffinity

-- | [Output Only] The warning type identifier for this warning.
data TargetPoolsScopedListCodeWarning
    = TPSLCWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | TPSLCWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | TPSLCWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | TPSLCWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | TPSLCWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | TPSLCWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | TPSLCWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | TPSLCWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | TPSLCWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | TPSLCWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | TPSLCWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | TPSLCWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | TPSLCWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | TPSLCWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TargetPoolsScopedListCodeWarning

-- | [Output Only] The status of the VPN gateway.
data TargetVpnGatewayStatus
    = TVGSCreating
      -- ^ @CREATING@
    | TVGSDeleting
      -- ^ @DELETING@
    | TVGSFailed
      -- ^ @FAILED@
    | TVGSReady
      -- ^ @READY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TargetVpnGatewayStatus

-- | [Output Only] The warning type identifier for this warning.
data TargetVpnGatewaysScopedListCodeWarning
    = TVGSLCWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | TVGSLCWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | TVGSLCWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | TVGSLCWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | TVGSLCWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | TVGSLCWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | TVGSLCWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | TVGSLCWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | TVGSLCWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | TVGSLCWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | TVGSLCWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | TVGSLCWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | TVGSLCWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | TVGSLCWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TargetVpnGatewaysScopedListCodeWarning

-- | [Output Only] The status of the VPN tunnel.
data VpnTunnelStatus
    = VTSAuthorizationError
      -- ^ @AUTHORIZATION_ERROR@
    | VTSDeprovisioning
      -- ^ @DEPROVISIONING@
    | VTSEstablished
      -- ^ @ESTABLISHED@
    | VTSFailed
      -- ^ @FAILED@
    | VTSFirstHandshake
      -- ^ @FIRST_HANDSHAKE@
    | VTSNegotiationFailure
      -- ^ @NEGOTIATION_FAILURE@
    | VTSNetworkError
      -- ^ @NETWORK_ERROR@
    | VTSNoIncomingPackets
      -- ^ @NO_INCOMING_PACKETS@
    | VTSProvisioning
      -- ^ @PROVISIONING@
    | VTSRejected
      -- ^ @REJECTED@
    | VTSWaitingForFullConfig
      -- ^ @WAITING_FOR_FULL_CONFIG@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VpnTunnelStatus

-- | [Output Only] The warning type identifier for this warning.
data VpnTunnelsScopedListCodeWarning
    = VTSLCWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | VTSLCWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | VTSLCWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | VTSLCWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | VTSLCWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | VTSLCWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | VTSLCWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | VTSLCWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | VTSLCWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | VTSLCWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | VTSLCWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | VTSLCWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | VTSLCWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | VTSLCWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VpnTunnelsScopedListCodeWarning

-- | [Output Only] Status of the zone, either UP or DOWN.
data ZoneStatus
    = ZSDown
      -- ^ @DOWN@
    | ZSUP
      -- ^ @UP@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ZoneStatus
