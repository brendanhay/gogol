-- |
-- Module      : Network.Google.Compute
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- API for the Google Compute Engine service.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference>
module Network.Google.Compute
    (
    -- * API Definition
      Compute



    -- * Types

    -- ** AccessConfig
    , AccessConfig
    , accessConfig
    , acKind
    , acName
    , acNatIP
    , acType

    -- ** AccessConfigType
    , AccessConfigType (..)

    -- ** Address
    , Address
    , address
    , addStatus
    , addUsers
    , addKind
    , addAddress
    , addSelfLink
    , addName
    , addCreationTimestamp
    , addId
    , addRegion
    , addDescription

    -- ** AddressAggregatedList
    , AddressAggregatedList
    , addressAggregatedList
    , aalNextPageToken
    , aalKind
    , aalItems
    , aalSelfLink
    , aalId

    -- ** AddressAggregatedListItems
    , AddressAggregatedListItems
    , addressAggregatedListItems

    -- ** AddressList
    , AddressList
    , addressList
    , alNextPageToken
    , alKind
    , alItems
    , alSelfLink
    , alId

    -- ** AddressStatus
    , AddressStatus (..)

    -- ** AddressesScopedList
    , AddressesScopedList
    , addressesScopedList
    , aslAddresses
    , aslWarning

    -- ** AddressesScopedListCodeWarning
    , AddressesScopedListCodeWarning (..)

    -- ** AddressesScopedListItemDataWarning
    , AddressesScopedListItemDataWarning
    , addressesScopedListItemDataWarning
    , aslidwValue
    , aslidwKey

    -- ** AddressesScopedListWarning
    , AddressesScopedListWarning
    , addressesScopedListWarning
    , aslwData
    , aslwCode
    , aslwMessage

    -- ** AttachedDisk
    , AttachedDisk
    , attachedDisk
    , adKind
    , adMode
    , adBoot
    , adAutoDelete
    , adInitializeParams
    , adDeviceName
    , adInterface
    , adSource
    , adLicenses
    , adType
    , adIndex

    -- ** AttachedDiskInitializeParams
    , AttachedDiskInitializeParams
    , attachedDiskInitializeParams
    , adipSourceImage
    , adipDiskSizeGb
    , adipDiskName
    , adipDiskType

    -- ** AttachedDiskInterface
    , AttachedDiskInterface (..)

    -- ** AttachedDiskMode
    , AttachedDiskMode (..)

    -- ** AttachedDiskType
    , AttachedDiskType (..)

    -- ** Autoscaler
    , Autoscaler
    , autoscaler
    , autKind
    , autZone
    , autSelfLink
    , autName
    , autCreationTimestamp
    , autAutoscalingPolicy
    , autId
    , autDescription
    , autTarget

    -- ** AutoscalerAggregatedList
    , AutoscalerAggregatedList
    , autoscalerAggregatedList
    , aalaNextPageToken
    , aalaKind
    , aalaItems
    , aalaSelfLink
    , aalaId

    -- ** AutoscalerAggregatedListItems
    , AutoscalerAggregatedListItems
    , autoscalerAggregatedListItems

    -- ** AutoscalerList
    , AutoscalerList
    , autoscalerList
    , aNextPageToken
    , aKind
    , aItems
    , aSelfLink
    , aId

    -- ** AutoscalersScopedList
    , AutoscalersScopedList
    , autoscalersScopedList
    , aAutoscalers
    , aWarning

    -- ** AutoscalersScopedListCodeWarning
    , AutoscalersScopedListCodeWarning (..)

    -- ** AutoscalersScopedListItemDataWarning
    , AutoscalersScopedListItemDataWarning
    , autoscalersScopedListItemDataWarning
    , aValue
    , aKey

    -- ** AutoscalersScopedListWarning
    , AutoscalersScopedListWarning
    , autoscalersScopedListWarning
    , aData
    , aCode
    , aMessage

    -- ** AutoscalingPolicy
    , AutoscalingPolicy
    , autoscalingPolicy
    , apCustomMetricUtilizations
    , apMaxNumReplicas
    , apCpuUtilization
    , apLoadBalancingUtilization
    , apMinNumReplicas
    , apCoolDownPeriodSec

    -- ** AutoscalingPolicyCpuUtilization
    , AutoscalingPolicyCpuUtilization
    , autoscalingPolicyCpuUtilization
    , apcuUtilizationTarget

    -- ** AutoscalingPolicyCustomMetricUtilization
    , AutoscalingPolicyCustomMetricUtilization
    , autoscalingPolicyCustomMetricUtilization
    , apcmuUtilizationTarget
    , apcmuMetric
    , apcmuUtilizationTargetType

    -- ** AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType
    , AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType (..)

    -- ** AutoscalingPolicyLoadBalancingUtilization
    , AutoscalingPolicyLoadBalancingUtilization
    , autoscalingPolicyLoadBalancingUtilization
    , aplbuUtilizationTarget

    -- ** Backend
    , Backend
    , backend
    , bGroup
    , bBalancingMode
    , bMaxUtilization
    , bMaxRate
    , bMaxRatePerInstance
    , bDescription
    , bCapacityScaler

    -- ** BackendBalancingMode
    , BackendBalancingMode (..)

    -- ** BackendService
    , BackendService
    , backendService
    , bsBackends
    , bsKind
    , bsFingerprint
    , bsProtocol
    , bsSelfLink
    , bsName
    , bsCreationTimestamp
    , bsId
    , bsTimeoutSec
    , bsDescription
    , bsPortName
    , bsHealthChecks
    , bsPort

    -- ** BackendServiceGroupHealth
    , BackendServiceGroupHealth
    , backendServiceGroupHealth
    , bsghKind
    , bsghHealthStatus

    -- ** BackendServiceList
    , BackendServiceList
    , backendServiceList
    , bslNextPageToken
    , bslKind
    , bslItems
    , bslSelfLink
    , bslId

    -- ** BackendServiceProtocol
    , BackendServiceProtocol (..)

    -- ** DeprecationStatus
    , DeprecationStatus
    , deprecationStatus
    , dsState
    , dsDeleted
    , dsReplacement
    , dsObsolete
    , dsDeprecated

    -- ** DeprecationStatusState
    , DeprecationStatusState (..)

    -- ** Disk
    , Disk
    , disk
    , dStatus
    , dSourceSnapshotId
    , dLastAttachTimestamp
    , dUsers
    , dSourceImage
    , dSizeGb
    , dKind
    , dLastDetachTimestamp
    , dZone
    , dSelfLink
    , dName
    , dSourceImageId
    , dCreationTimestamp
    , dId
    , dLicenses
    , dOptions
    , dType
    , dDescription
    , dSourceSnapshot

    -- ** DiskAggregatedList
    , DiskAggregatedList
    , diskAggregatedList
    , dalNextPageToken
    , dalKind
    , dalItems
    , dalSelfLink
    , dalId

    -- ** DiskAggregatedListItems
    , DiskAggregatedListItems
    , diskAggregatedListItems

    -- ** DiskList
    , DiskList
    , diskList
    , dlNextPageToken
    , dlKind
    , dlItems
    , dlSelfLink
    , dlId

    -- ** DiskMoveRequest
    , DiskMoveRequest
    , diskMoveRequest
    , dmrTargetDisk
    , dmrDestinationZone

    -- ** DiskStatus
    , DiskStatus (..)

    -- ** DiskType
    , DiskType
    , diskType
    , dtKind
    , dtZone
    , dtSelfLink
    , dtName
    , dtCreationTimestamp
    , dtId
    , dtValidDiskSize
    , dtDescription
    , dtDefaultDiskSizeGb
    , dtDeprecated

    -- ** DiskTypeAggregatedList
    , DiskTypeAggregatedList
    , diskTypeAggregatedList
    , dtalNextPageToken
    , dtalKind
    , dtalItems
    , dtalSelfLink
    , dtalId

    -- ** DiskTypeAggregatedListItems
    , DiskTypeAggregatedListItems
    , diskTypeAggregatedListItems

    -- ** DiskTypeList
    , DiskTypeList
    , diskTypeList
    , dtlNextPageToken
    , dtlKind
    , dtlItems
    , dtlSelfLink
    , dtlId

    -- ** DiskTypesScopedList
    , DiskTypesScopedList
    , diskTypesScopedList
    , dtslDiskTypes
    , dtslWarning

    -- ** DiskTypesScopedListCodeWarning
    , DiskTypesScopedListCodeWarning (..)

    -- ** DiskTypesScopedListItemDataWarning
    , DiskTypesScopedListItemDataWarning
    , diskTypesScopedListItemDataWarning
    , dtslidwValue
    , dtslidwKey

    -- ** DiskTypesScopedListWarning
    , DiskTypesScopedListWarning
    , diskTypesScopedListWarning
    , dtslwData
    , dtslwCode
    , dtslwMessage

    -- ** DisksScopedList
    , DisksScopedList
    , disksScopedList
    , dslWarning
    , dslDisks

    -- ** DisksScopedListCodeWarning
    , DisksScopedListCodeWarning (..)

    -- ** DisksScopedListItemDataWarning
    , DisksScopedListItemDataWarning
    , disksScopedListItemDataWarning
    , dslidwValue
    , dslidwKey

    -- ** DisksScopedListWarning
    , DisksScopedListWarning
    , disksScopedListWarning
    , dslwData
    , dslwCode
    , dslwMessage

    -- ** Firewall
    , Firewall
    , firewall
    , fSourceTags
    , fKind
    , fTargetTags
    , fNetwork
    , fSourceRanges
    , fSelfLink
    , fName
    , fCreationTimestamp
    , fId
    , fAllowed
    , fDescription

    -- ** FirewallItemAllowed
    , FirewallItemAllowed
    , firewallItemAllowed
    , fiaIPProtocol
    , fiaPorts

    -- ** FirewallList
    , FirewallList
    , firewallList
    , flNextPageToken
    , flKind
    , flItems
    , flSelfLink
    , flId

    -- ** ForwardingRule
    , ForwardingRule
    , forwardingRule
    , frIPAddress
    , frKind
    , frPortRange
    , frSelfLink
    , frName
    , frIPProtocol
    , frCreationTimestamp
    , frId
    , frRegion
    , frDescription
    , frTarget

    -- ** ForwardingRuleAggregatedList
    , ForwardingRuleAggregatedList
    , forwardingRuleAggregatedList
    , fralNextPageToken
    , fralKind
    , fralItems
    , fralSelfLink
    , fralId

    -- ** ForwardingRuleAggregatedListItems
    , ForwardingRuleAggregatedListItems
    , forwardingRuleAggregatedListItems

    -- ** ForwardingRuleIPProtocol
    , ForwardingRuleIPProtocol (..)

    -- ** ForwardingRuleList
    , ForwardingRuleList
    , forwardingRuleList
    , frlNextPageToken
    , frlKind
    , frlItems
    , frlSelfLink
    , frlId

    -- ** ForwardingRulesScopedList
    , ForwardingRulesScopedList
    , forwardingRulesScopedList
    , frslWarning
    , frslForwardingRules

    -- ** ForwardingRulesScopedListCodeWarning
    , ForwardingRulesScopedListCodeWarning (..)

    -- ** ForwardingRulesScopedListItemDataWarning
    , ForwardingRulesScopedListItemDataWarning
    , forwardingRulesScopedListItemDataWarning
    , frslidwValue
    , frslidwKey

    -- ** ForwardingRulesScopedListWarning
    , ForwardingRulesScopedListWarning
    , forwardingRulesScopedListWarning
    , frslwData
    , frslwCode
    , frslwMessage

    -- ** HealthCheckReference
    , HealthCheckReference
    , healthCheckReference
    , hcrHealthCheck

    -- ** HealthStatus
    , HealthStatus
    , healthStatus
    , hsIpAddress
    , hsHealthState
    , hsPort
    , hsInstance

    -- ** HealthStatusHealthState
    , HealthStatusHealthState (..)

    -- ** HostRule
    , HostRule
    , hostRule
    , hrHosts
    , hrDescription
    , hrPathMatcher

    -- ** HttpHealthCheck
    , HttpHealthCheck
    , httpHealthCheck
    , hhcHealthyThreshold
    , hhcKind
    , hhcRequestPath
    , hhcSelfLink
    , hhcCheckIntervalSec
    , hhcName
    , hhcCreationTimestamp
    , hhcId
    , hhcHost
    , hhcTimeoutSec
    , hhcDescription
    , hhcUnhealthyThreshold
    , hhcPort

    -- ** HttpHealthCheckList
    , HttpHealthCheckList
    , httpHealthCheckList
    , hhclNextPageToken
    , hhclKind
    , hhclItems
    , hhclSelfLink
    , hhclId

    -- ** Image
    , Image
    , image
    , imaStatus
    , imaDiskSizeGb
    , imaSourceType
    , imaSourceDiskId
    , imaKind
    , imaArchiveSizeBytes
    , imaRawDisk
    , imaSelfLink
    , imaName
    , imaCreationTimestamp
    , imaId
    , imaLicenses
    , imaSourceDisk
    , imaDescription
    , imaDeprecated

    -- ** ImageContainerTypeRawDisk
    , ImageContainerTypeRawDisk (..)

    -- ** ImageList
    , ImageList
    , imageList
    , illNextPageToken
    , illKind
    , illItems
    , illSelfLink
    , illId

    -- ** ImageRawDisk
    , ImageRawDisk
    , imageRawDisk
    , irdContainerType
    , irdSource
    , irdSha1Checksum

    -- ** ImageSourceType
    , ImageSourceType (..)

    -- ** ImageStatus
    , ImageStatus (..)

    -- ** Instance
    , Instance
    , instance'
    , iStatus
    , iServiceAccounts
    , iNetworkInterfaces
    , iKind
    , iZone
    , iCpuPlatform
    , iSelfLink
    , iName
    , iStatusMessage
    , iCreationTimestamp
    , iMachineType
    , iMetadata
    , iId
    , iScheduling
    , iDisks
    , iCanIpForward
    , iDescription
    , iTags

    -- ** InstanceAggregatedList
    , InstanceAggregatedList
    , instanceAggregatedList
    , ialNextPageToken
    , ialKind
    , ialItems
    , ialSelfLink
    , ialId

    -- ** InstanceAggregatedListItems
    , InstanceAggregatedListItems
    , instanceAggregatedListItems

    -- ** InstanceGroup
    , InstanceGroup
    , instanceGroup
    , igSize
    , igKind
    , igFingerprint
    , igNetwork
    , igZone
    , igSelfLink
    , igName
    , igCreationTimestamp
    , igId
    , igDescription
    , igNamedPorts

    -- ** InstanceGroupAggregatedList
    , InstanceGroupAggregatedList
    , instanceGroupAggregatedList
    , igalNextPageToken
    , igalKind
    , igalItems
    , igalSelfLink
    , igalId

    -- ** InstanceGroupAggregatedListItems
    , InstanceGroupAggregatedListItems
    , instanceGroupAggregatedListItems

    -- ** InstanceGroupList
    , InstanceGroupList
    , instanceGroupList
    , iglNextPageToken
    , iglKind
    , iglItems
    , iglSelfLink
    , iglId

    -- ** InstanceGroupManager
    , InstanceGroupManager
    , instanceGroupManager
    , igmKind
    , igmFingerprint
    , igmBaseInstanceName
    , igmZone
    , igmInstanceTemplate
    , igmTargetSize
    , igmSelfLink
    , igmCurrentActions
    , igmName
    , igmCreationTimestamp
    , igmId
    , igmTargetPools
    , igmDescription
    , igmInstanceGroup

    -- ** InstanceGroupManagerActionsSummary
    , InstanceGroupManagerActionsSummary
    , instanceGroupManagerActionsSummary
    , igmasDeleting
    , igmasRestarting
    , igmasNone
    , igmasCreating
    , igmasRefreshing
    , igmasRecreating
    , igmasAbandoning

    -- ** InstanceGroupManagerAggregatedList
    , InstanceGroupManagerAggregatedList
    , instanceGroupManagerAggregatedList
    , igmalNextPageToken
    , igmalKind
    , igmalItems
    , igmalSelfLink
    , igmalId

    -- ** InstanceGroupManagerAggregatedListItems
    , InstanceGroupManagerAggregatedListItems
    , instanceGroupManagerAggregatedListItems

    -- ** InstanceGroupManagerList
    , InstanceGroupManagerList
    , instanceGroupManagerList
    , igmlNextPageToken
    , igmlKind
    , igmlItems
    , igmlSelfLink
    , igmlId

    -- ** InstanceGroupManagersAbandonInstancesRequest
    , InstanceGroupManagersAbandonInstancesRequest
    , instanceGroupManagersAbandonInstancesRequest
    , igmairInstances

    -- ** InstanceGroupManagersDeleteInstancesRequest
    , InstanceGroupManagersDeleteInstancesRequest
    , instanceGroupManagersDeleteInstancesRequest
    , igmdirInstances

    -- ** InstanceGroupManagersListManagedInstancesResponse
    , InstanceGroupManagersListManagedInstancesResponse
    , instanceGroupManagersListManagedInstancesResponse
    , igmlmirManagedInstances

    -- ** InstanceGroupManagersRecreateInstancesRequest
    , InstanceGroupManagersRecreateInstancesRequest
    , instanceGroupManagersRecreateInstancesRequest
    , igmrirInstances

    -- ** InstanceGroupManagersScopedList
    , InstanceGroupManagersScopedList
    , instanceGroupManagersScopedList
    , igmslWarning
    , igmslInstanceGroupManagers

    -- ** InstanceGroupManagersScopedListCodeWarning
    , InstanceGroupManagersScopedListCodeWarning (..)

    -- ** InstanceGroupManagersScopedListItemDataWarning
    , InstanceGroupManagersScopedListItemDataWarning
    , instanceGroupManagersScopedListItemDataWarning
    , igmslidwValue
    , igmslidwKey

    -- ** InstanceGroupManagersScopedListWarning
    , InstanceGroupManagersScopedListWarning
    , instanceGroupManagersScopedListWarning
    , igmslwData
    , igmslwCode
    , igmslwMessage

    -- ** InstanceGroupManagersSetInstanceTemplateRequest
    , InstanceGroupManagersSetInstanceTemplateRequest
    , instanceGroupManagersSetInstanceTemplateRequest
    , igmsitrInstanceTemplate

    -- ** InstanceGroupManagersSetTargetPoolsRequest
    , InstanceGroupManagersSetTargetPoolsRequest
    , instanceGroupManagersSetTargetPoolsRequest
    , igmstprFingerprint
    , igmstprTargetPools

    -- ** InstanceGroupsAddInstancesRequest
    , InstanceGroupsAddInstancesRequest
    , instanceGroupsAddInstancesRequest
    , igairInstances

    -- ** InstanceGroupsListInstances
    , InstanceGroupsListInstances
    , instanceGroupsListInstances
    , igliNextPageToken
    , igliKind
    , igliItems
    , igliSelfLink
    , igliId

    -- ** InstanceGroupsListInstancesRequest
    , InstanceGroupsListInstancesRequest
    , instanceGroupsListInstancesRequest
    , iglirInstanceState

    -- ** InstanceGroupsListInstancesRequestInstanceState
    , InstanceGroupsListInstancesRequestInstanceState (..)

    -- ** InstanceGroupsRemoveInstancesRequest
    , InstanceGroupsRemoveInstancesRequest
    , instanceGroupsRemoveInstancesRequest
    , igrirInstances

    -- ** InstanceGroupsScopedList
    , InstanceGroupsScopedList
    , instanceGroupsScopedList
    , igslWarning
    , igslInstanceGroups

    -- ** InstanceGroupsScopedListCodeWarning
    , InstanceGroupsScopedListCodeWarning (..)

    -- ** InstanceGroupsScopedListItemDataWarning
    , InstanceGroupsScopedListItemDataWarning
    , instanceGroupsScopedListItemDataWarning
    , igslidwValue
    , igslidwKey

    -- ** InstanceGroupsScopedListWarning
    , InstanceGroupsScopedListWarning
    , instanceGroupsScopedListWarning
    , igslwData
    , igslwCode
    , igslwMessage

    -- ** InstanceGroupsSetNamedPortsRequest
    , InstanceGroupsSetNamedPortsRequest
    , instanceGroupsSetNamedPortsRequest
    , igsnprFingerprint
    , igsnprNamedPorts

    -- ** InstanceList
    , InstanceList
    , instanceList
    , ilNextPageToken
    , ilKind
    , ilItems
    , ilSelfLink
    , ilId

    -- ** InstanceMoveRequest
    , InstanceMoveRequest
    , instanceMoveRequest
    , imrTargetInstance
    , imrDestinationZone

    -- ** InstanceProperties
    , InstanceProperties
    , instanceProperties
    , ipServiceAccounts
    , ipNetworkInterfaces
    , ipMachineType
    , ipMetadata
    , ipScheduling
    , ipDisks
    , ipCanIpForward
    , ipDescription
    , ipTags

    -- ** InstanceReference
    , InstanceReference
    , instanceReference
    , irInstance

    -- ** InstanceStatus
    , InstanceStatus (..)

    -- ** InstanceTemplate
    , InstanceTemplate
    , instanceTemplate
    , itKind
    , itSelfLink
    , itName
    , itCreationTimestamp
    , itId
    , itDescription
    , itProperties

    -- ** InstanceTemplateList
    , InstanceTemplateList
    , instanceTemplateList
    , itlNextPageToken
    , itlKind
    , itlItems
    , itlSelfLink
    , itlId

    -- ** InstanceWithNamedPorts
    , InstanceWithNamedPorts
    , instanceWithNamedPorts
    , iwnpStatus
    , iwnpNamedPorts
    , iwnpInstance

    -- ** InstanceWithNamedPortsStatus
    , InstanceWithNamedPortsStatus (..)

    -- ** InstancesScopedList
    , InstancesScopedList
    , instancesScopedList
    , islWarning
    , islInstances

    -- ** InstancesScopedListCodeWarning
    , InstancesScopedListCodeWarning (..)

    -- ** InstancesScopedListItemDataWarning
    , InstancesScopedListItemDataWarning
    , instancesScopedListItemDataWarning
    , islidwValue
    , islidwKey

    -- ** InstancesScopedListWarning
    , InstancesScopedListWarning
    , instancesScopedListWarning
    , islwData
    , islwCode
    , islwMessage

    -- ** License
    , License
    , license
    , lChargesUseFee
    , lKind
    , lSelfLink
    , lName

    -- ** MachineType
    , MachineType
    , machineType
    , mtKind
    , mtImageSpaceGb
    , mtZone
    , mtSelfLink
    , mtName
    , mtCreationTimestamp
    , mtScratchDisks
    , mtId
    , mtGuestCpus
    , mtMaximumPersistentDisksSizeGb
    , mtMaximumPersistentDisks
    , mtMemoryMb
    , mtDescription
    , mtDeprecated

    -- ** MachineTypeAggregatedList
    , MachineTypeAggregatedList
    , machineTypeAggregatedList
    , mtalNextPageToken
    , mtalKind
    , mtalItems
    , mtalSelfLink
    , mtalId

    -- ** MachineTypeAggregatedListItems
    , MachineTypeAggregatedListItems
    , machineTypeAggregatedListItems

    -- ** MachineTypeItemScratchDisks
    , MachineTypeItemScratchDisks
    , machineTypeItemScratchDisks
    , mtisdDiskGb

    -- ** MachineTypeList
    , MachineTypeList
    , machineTypeList
    , mtlNextPageToken
    , mtlKind
    , mtlItems
    , mtlSelfLink
    , mtlId

    -- ** MachineTypesScopedList
    , MachineTypesScopedList
    , machineTypesScopedList
    , mtslMachineTypes
    , mtslWarning

    -- ** MachineTypesScopedListCodeWarning
    , MachineTypesScopedListCodeWarning (..)

    -- ** MachineTypesScopedListItemDataWarning
    , MachineTypesScopedListItemDataWarning
    , machineTypesScopedListItemDataWarning
    , mtslidwValue
    , mtslidwKey

    -- ** MachineTypesScopedListWarning
    , MachineTypesScopedListWarning
    , machineTypesScopedListWarning
    , mtslwData
    , mtslwCode
    , mtslwMessage

    -- ** ManagedInstance
    , ManagedInstance
    , managedInstance
    , miLastAttempt
    , miCurrentAction
    , miId
    , miInstanceStatus
    , miInstance

    -- ** ManagedInstanceCurrentAction
    , ManagedInstanceCurrentAction (..)

    -- ** ManagedInstanceInstanceStatus
    , ManagedInstanceInstanceStatus (..)

    -- ** ManagedInstanceLastAttempt
    , ManagedInstanceLastAttempt
    , managedInstanceLastAttempt
    , milaErrors

    -- ** ManagedInstanceLastAttemptErrors
    , ManagedInstanceLastAttemptErrors
    , managedInstanceLastAttemptErrors
    , milaeErrors

    -- ** ManagedInstanceLastAttemptItemErrorsErrors
    , ManagedInstanceLastAttemptItemErrorsErrors
    , managedInstanceLastAttemptItemErrorsErrors
    , milaieeLocation
    , milaieeCode
    , milaieeMessage

    -- ** Metadata
    , Metadata
    , metadata
    , mKind
    , mFingerprint
    , mItems

    -- ** MetadataItemItems
    , MetadataItemItems
    , metadataItemItems
    , miiValue
    , miiKey

    -- ** NamedPort
    , NamedPort
    , namedPort
    , npName
    , npPort

    -- ** Network
    , Network
    , network
    , nKind
    , nIPv4Range
    , nSelfLink
    , nName
    , nCreationTimestamp
    , nId
    , nGatewayIPv4
    , nDescription

    -- ** NetworkInterface
    , NetworkInterface
    , networkInterface
    , niNetwork
    , niName
    , niNetworkIP
    , niAccessConfigs

    -- ** NetworkList
    , NetworkList
    , networkList
    , nlNextPageToken
    , nlKind
    , nlItems
    , nlSelfLink
    , nlId

    -- ** Operation
    , Operation
    , operation
    , oTargetId
    , oStatus
    , oInsertTime
    , oProgress
    , oStartTime
    , oKind
    , oError
    , oHttpErrorMessage
    , oZone
    , oWarnings
    , oHttpErrorStatusCode
    , oUser
    , oSelfLink
    , oName
    , oStatusMessage
    , oCreationTimestamp
    , oEndTime
    , oId
    , oOperationType
    , oRegion
    , oTargetLink
    , oClientOperationId

    -- ** OperationAggregatedList
    , OperationAggregatedList
    , operationAggregatedList
    , oalNextPageToken
    , oalKind
    , oalItems
    , oalSelfLink
    , oalId

    -- ** OperationAggregatedListItems
    , OperationAggregatedListItems
    , operationAggregatedListItems

    -- ** OperationCodeItemWarnings
    , OperationCodeItemWarnings (..)

    -- ** OperationError
    , OperationError
    , operationError
    , oeErrors

    -- ** OperationItemDataItemWarnings
    , OperationItemDataItemWarnings
    , operationItemDataItemWarnings
    , oidiwValue
    , oidiwKey

    -- ** OperationItemErrorsError
    , OperationItemErrorsError
    , operationItemErrorsError
    , oieeLocation
    , oieeCode
    , oieeMessage

    -- ** OperationItemWarnings
    , OperationItemWarnings
    , operationItemWarnings
    , oiwData
    , oiwCode
    , oiwMessage

    -- ** OperationList
    , OperationList
    , operationList
    , olNextPageToken
    , olKind
    , olItems
    , olSelfLink
    , olId

    -- ** OperationStatus
    , OperationStatus (..)

    -- ** OperationsScopedList
    , OperationsScopedList
    , operationsScopedList
    , oslWarning
    , oslOperations

    -- ** OperationsScopedListCodeWarning
    , OperationsScopedListCodeWarning (..)

    -- ** OperationsScopedListItemDataWarning
    , OperationsScopedListItemDataWarning
    , operationsScopedListItemDataWarning
    , oslidwValue
    , oslidwKey

    -- ** OperationsScopedListWarning
    , OperationsScopedListWarning
    , operationsScopedListWarning
    , oslwData
    , oslwCode
    , oslwMessage

    -- ** PathMatcher
    , PathMatcher
    , pathMatcher
    , pmDefaultService
    , pmName
    , pmPathRules
    , pmDescription

    -- ** PathRule
    , PathRule
    , pathRule
    , prService
    , prPaths

    -- ** Project
    , Project
    , project
    , pKind
    , pUsageExportLocation
    , pSelfLink
    , pName
    , pCreationTimestamp
    , pEnabledFeatures
    , pQuotas
    , pId
    , pDescription
    , pCommonInstanceMetadata

    -- ** Quota
    , Quota
    , quota
    , qMetric
    , qLimit
    , qUsage

    -- ** QuotaMetric
    , QuotaMetric (..)

    -- ** Region
    , Region
    , region
    , rStatus
    , rZones
    , rKind
    , rSelfLink
    , rName
    , rCreationTimestamp
    , rQuotas
    , rId
    , rDescription
    , rDeprecated

    -- ** RegionList
    , RegionList
    , regionList
    , rlNextPageToken
    , rlKind
    , rlItems
    , rlSelfLink
    , rlId

    -- ** RegionStatus
    , RegionStatus (..)

    -- ** ResourceGroupReference
    , ResourceGroupReference
    , resourceGroupReference
    , rgrGroup

    -- ** Route
    , Route
    , route
    , rrPriority
    , rrKind
    , rrNextHopGateway
    , rrNextHopNetwork
    , rrNetwork
    , rrWarnings
    , rrNextHopIp
    , rrDestRange
    , rrSelfLink
    , rrName
    , rrCreationTimestamp
    , rrId
    , rrNextHopVpnTunnel
    , rrDescription
    , rrTags
    , rrNextHopInstance

    -- ** RouteCodeItemWarnings
    , RouteCodeItemWarnings (..)

    -- ** RouteItemDataItemWarnings
    , RouteItemDataItemWarnings
    , routeItemDataItemWarnings
    , ridiwValue
    , ridiwKey

    -- ** RouteItemWarnings
    , RouteItemWarnings
    , routeItemWarnings
    , riwData
    , riwCode
    , riwMessage

    -- ** RouteList
    , RouteList
    , routeList
    , rouNextPageToken
    , rouKind
    , rouItems
    , rouSelfLink
    , rouId

    -- ** Scheduling
    , Scheduling
    , scheduling
    , sAutomaticRestart
    , sOnHostMaintenance
    , sPreemptible

    -- ** SchedulingOnHostMaintenance
    , SchedulingOnHostMaintenance (..)

    -- ** SerialPortOutput
    , SerialPortOutput
    , serialPortOutput
    , spoContents
    , spoKind
    , spoSelfLink

    -- ** ServiceAccount
    , ServiceAccount
    , serviceAccount
    , saEmail
    , saScopes

    -- ** Snapshot
    , Snapshot
    , snapshot
    , sStorageBytesStatus
    , sStatus
    , sDiskSizeGb
    , sSourceDiskId
    , sKind
    , sStorageBytes
    , sSelfLink
    , sName
    , sCreationTimestamp
    , sId
    , sLicenses
    , sSourceDisk
    , sDescription

    -- ** SnapshotList
    , SnapshotList
    , snapshotList
    , slNextPageToken
    , slKind
    , slItems
    , slSelfLink
    , slId

    -- ** SnapshotStatus
    , SnapshotStatus (..)

    -- ** SnapshotStorageBytesStatus
    , SnapshotStorageBytesStatus (..)

    -- ** Tags
    , Tags
    , tags
    , tFingerprint
    , tItems

    -- ** TargetHttpProxy
    , TargetHttpProxy
    , targetHttpProxy
    , thpUrlMap
    , thpKind
    , thpSelfLink
    , thpName
    , thpCreationTimestamp
    , thpId
    , thpDescription

    -- ** TargetHttpProxyList
    , TargetHttpProxyList
    , targetHttpProxyList
    , thplNextPageToken
    , thplKind
    , thplItems
    , thplSelfLink
    , thplId

    -- ** TargetInstance
    , TargetInstance
    , targetInstance
    , tiKind
    , tiNatPolicy
    , tiZone
    , tiSelfLink
    , tiName
    , tiCreationTimestamp
    , tiId
    , tiDescription
    , tiInstance

    -- ** TargetInstanceAggregatedList
    , TargetInstanceAggregatedList
    , targetInstanceAggregatedList
    , tialNextPageToken
    , tialKind
    , tialItems
    , tialSelfLink
    , tialId

    -- ** TargetInstanceAggregatedListItems
    , TargetInstanceAggregatedListItems
    , targetInstanceAggregatedListItems

    -- ** TargetInstanceList
    , TargetInstanceList
    , targetInstanceList
    , tilNextPageToken
    , tilKind
    , tilItems
    , tilSelfLink
    , tilId

    -- ** TargetInstanceNatPolicy
    , TargetInstanceNatPolicy (..)

    -- ** TargetInstancesScopedList
    , TargetInstancesScopedList
    , targetInstancesScopedList
    , tislWarning
    , tislTargetInstances

    -- ** TargetInstancesScopedListCodeWarning
    , TargetInstancesScopedListCodeWarning (..)

    -- ** TargetInstancesScopedListItemDataWarning
    , TargetInstancesScopedListItemDataWarning
    , targetInstancesScopedListItemDataWarning
    , tislidwValue
    , tislidwKey

    -- ** TargetInstancesScopedListWarning
    , TargetInstancesScopedListWarning
    , targetInstancesScopedListWarning
    , tislwData
    , tislwCode
    , tislwMessage

    -- ** TargetPool
    , TargetPool
    , targetPool
    , tpSessionAffinity
    , tpBackupPool
    , tpKind
    , tpSelfLink
    , tpName
    , tpCreationTimestamp
    , tpInstances
    , tpId
    , tpFailoverRatio
    , tpRegion
    , tpDescription
    , tpHealthChecks

    -- ** TargetPoolAggregatedList
    , TargetPoolAggregatedList
    , targetPoolAggregatedList
    , tpalNextPageToken
    , tpalKind
    , tpalItems
    , tpalSelfLink
    , tpalId

    -- ** TargetPoolAggregatedListItems
    , TargetPoolAggregatedListItems
    , targetPoolAggregatedListItems

    -- ** TargetPoolInstanceHealth
    , TargetPoolInstanceHealth
    , targetPoolInstanceHealth
    , tpihKind
    , tpihHealthStatus

    -- ** TargetPoolList
    , TargetPoolList
    , targetPoolList
    , tplNextPageToken
    , tplKind
    , tplItems
    , tplSelfLink
    , tplId

    -- ** TargetPoolSessionAffinity
    , TargetPoolSessionAffinity (..)

    -- ** TargetPoolsAddHealthCheckRequest
    , TargetPoolsAddHealthCheckRequest
    , targetPoolsAddHealthCheckRequest
    , tpahcrHealthChecks

    -- ** TargetPoolsAddInstanceRequest
    , TargetPoolsAddInstanceRequest
    , targetPoolsAddInstanceRequest
    , tpairInstances

    -- ** TargetPoolsRemoveHealthCheckRequest
    , TargetPoolsRemoveHealthCheckRequest
    , targetPoolsRemoveHealthCheckRequest
    , tprhcrHealthChecks

    -- ** TargetPoolsRemoveInstanceRequest
    , TargetPoolsRemoveInstanceRequest
    , targetPoolsRemoveInstanceRequest
    , tprirInstances

    -- ** TargetPoolsScopedList
    , TargetPoolsScopedList
    , targetPoolsScopedList
    , tpslWarning
    , tpslTargetPools

    -- ** TargetPoolsScopedListCodeWarning
    , TargetPoolsScopedListCodeWarning (..)

    -- ** TargetPoolsScopedListItemDataWarning
    , TargetPoolsScopedListItemDataWarning
    , targetPoolsScopedListItemDataWarning
    , tpslidwValue
    , tpslidwKey

    -- ** TargetPoolsScopedListWarning
    , TargetPoolsScopedListWarning
    , targetPoolsScopedListWarning
    , tpslwData
    , tpslwCode
    , tpslwMessage

    -- ** TargetReference
    , TargetReference
    , targetReference
    , trTarget

    -- ** TargetVpnGateway
    , TargetVpnGateway
    , targetVpnGateway
    , tvgStatus
    , tvgKind
    , tvgNetwork
    , tvgSelfLink
    , tvgName
    , tvgCreationTimestamp
    , tvgId
    , tvgRegion
    , tvgTunnels
    , tvgDescription
    , tvgForwardingRules

    -- ** TargetVpnGatewayAggregatedList
    , TargetVpnGatewayAggregatedList
    , targetVpnGatewayAggregatedList
    , tvgalNextPageToken
    , tvgalKind
    , tvgalItems
    , tvgalSelfLink
    , tvgalId

    -- ** TargetVpnGatewayAggregatedListItems
    , TargetVpnGatewayAggregatedListItems
    , targetVpnGatewayAggregatedListItems

    -- ** TargetVpnGatewayList
    , TargetVpnGatewayList
    , targetVpnGatewayList
    , tvglNextPageToken
    , tvglKind
    , tvglItems
    , tvglSelfLink
    , tvglId

    -- ** TargetVpnGatewayStatus
    , TargetVpnGatewayStatus (..)

    -- ** TargetVpnGatewaysScopedList
    , TargetVpnGatewaysScopedList
    , targetVpnGatewaysScopedList
    , tvgslTargetVpnGateways
    , tvgslWarning

    -- ** TargetVpnGatewaysScopedListCodeWarning
    , TargetVpnGatewaysScopedListCodeWarning (..)

    -- ** TargetVpnGatewaysScopedListItemDataWarning
    , TargetVpnGatewaysScopedListItemDataWarning
    , targetVpnGatewaysScopedListItemDataWarning
    , tvgslidwValue
    , tvgslidwKey

    -- ** TargetVpnGatewaysScopedListWarning
    , TargetVpnGatewaysScopedListWarning
    , targetVpnGatewaysScopedListWarning
    , tvgslwData
    , tvgslwCode
    , tvgslwMessage

    -- ** TestFailure
    , TestFailure
    , testFailure
    , tfPath
    , tfExpectedService
    , tfHost
    , tfActualService

    -- ** UrlMap
    , UrlMap
    , urlMap
    , umTests
    , umKind
    , umFingerprint
    , umDefaultService
    , umSelfLink
    , umName
    , umCreationTimestamp
    , umPathMatchers
    , umId
    , umHostRules
    , umDescription

    -- ** UrlMapList
    , UrlMapList
    , urlMapList
    , umlNextPageToken
    , umlKind
    , umlItems
    , umlSelfLink
    , umlId

    -- ** UrlMapReference
    , UrlMapReference
    , urlMapReference
    , umrUrlMap

    -- ** UrlMapTest
    , UrlMapTest
    , urlMapTest
    , umtPath
    , umtService
    , umtHost
    , umtDescription

    -- ** UrlMapValidationResult
    , UrlMapValidationResult
    , urlMapValidationResult
    , umvrLoadErrors
    , umvrLoadSucceeded
    , umvrTestPassed
    , umvrTestFailures

    -- ** UrlMapsValidateRequest
    , UrlMapsValidateRequest
    , urlMapsValidateRequest
    , umvrResource

    -- ** UrlMapsValidateResponse
    , UrlMapsValidateResponse
    , urlMapsValidateResponse
    , umvrResult

    -- ** UsageExportLocation
    , UsageExportLocation
    , usageExportLocation
    , uelReportNamePrefix
    , uelBucketName

    -- ** VpnTunnel
    , VpnTunnel
    , vpnTunnel
    , vtDetailedStatus
    , vtStatus
    , vtKind
    , vtPeerIp
    , vtTargetVpnGateway
    , vtSelfLink
    , vtSharedSecret
    , vtName
    , vtCreationTimestamp
    , vtSharedSecretHash
    , vtId
    , vtIkeVersion
    , vtRegion
    , vtDescription

    -- ** VpnTunnelAggregatedList
    , VpnTunnelAggregatedList
    , vpnTunnelAggregatedList
    , vtalNextPageToken
    , vtalKind
    , vtalItems
    , vtalSelfLink
    , vtalId

    -- ** VpnTunnelAggregatedListItems
    , VpnTunnelAggregatedListItems
    , vpnTunnelAggregatedListItems

    -- ** VpnTunnelList
    , VpnTunnelList
    , vpnTunnelList
    , vtlNextPageToken
    , vtlKind
    , vtlItems
    , vtlSelfLink
    , vtlId

    -- ** VpnTunnelStatus
    , VpnTunnelStatus (..)

    -- ** VpnTunnelsScopedList
    , VpnTunnelsScopedList
    , vpnTunnelsScopedList
    , vtslVpnTunnels
    , vtslWarning

    -- ** VpnTunnelsScopedListCodeWarning
    , VpnTunnelsScopedListCodeWarning (..)

    -- ** VpnTunnelsScopedListItemDataWarning
    , VpnTunnelsScopedListItemDataWarning
    , vpnTunnelsScopedListItemDataWarning
    , vtslidwValue
    , vtslidwKey

    -- ** VpnTunnelsScopedListWarning
    , VpnTunnelsScopedListWarning
    , vpnTunnelsScopedListWarning
    , vtslwData
    , vtslwCode
    , vtslwMessage

    -- ** Zone
    , Zone
    , zone
    , zStatus
    , zMaintenanceWindows
    , zKind
    , zSelfLink
    , zName
    , zCreationTimestamp
    , zId
    , zRegion
    , zDescription
    , zDeprecated

    -- ** ZoneItemMaintenanceWindows
    , ZoneItemMaintenanceWindows
    , zoneItemMaintenanceWindows
    , zimwBeginTime
    , zimwName
    , zimwEndTime
    , zimwDescription

    -- ** ZoneList
    , ZoneList
    , zoneList
    , zlNextPageToken
    , zlKind
    , zlItems
    , zlSelfLink
    , zlId

    -- ** ZoneStatus
    , ZoneStatus (..)
    ) where

import           Network.Google.Compute.Types

{- $resources
TODO
-}

type Compute = ()

compute :: Proxy Compute
compute = Proxy




