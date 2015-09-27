{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Compute
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | API for the Google Compute Engine service.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference>
module Network.Google.Compute
    (
    -- * Resources
      Compute
    , ImagesAPI
    , ImagesInsert
    , ImagesList
    , ImagesGet
    , ImagesDeprecate
    , ImagesDelete
    , UrlMapsAPI
    , UrlMapsInsert
    , UrlMapsList
    , UrlMapsPatch
    , UrlMapsGet
    , UrlMapsValidate
    , UrlMapsDelete
    , UrlMapsUpdate
    , InstanceTemplatesAPI
    , InstanceTemplatesInsert
    , InstanceTemplatesList
    , InstanceTemplatesGet
    , InstanceTemplatesDelete
    , RoutesAPI
    , RoutesInsert
    , RoutesList
    , RoutesGet
    , RoutesDelete
    , TargetVpnGatewaysAPI
    , TargetVpnGatewaysAggregatedList
    , TargetVpnGatewaysInsert
    , TargetVpnGatewaysList
    , TargetVpnGatewaysGet
    , TargetVpnGatewaysDelete
    , ZonesAPI
    , ZonesList
    , ZonesGet
    , GlobalForwardingRulesAPI
    , GlobalForwardingRulesInsert
    , GlobalForwardingRulesList
    , GlobalForwardingRulesGet
    , GlobalForwardingRulesSetTarget
    , GlobalForwardingRulesDelete
    , NetworksAPI
    , NetworksInsert
    , NetworksList
    , NetworksGet
    , NetworksDelete
    , AddressesAPI
    , AddressesAggregatedList
    , AddressesInsert
    , AddressesList
    , AddressesGet
    , AddressesDelete
    , VpnTunnelsAPI
    , VpnTunnelsAggregatedList
    , VpnTunnelsInsert
    , VpnTunnelsList
    , VpnTunnelsGet
    , VpnTunnelsDelete
    , RegionsAPI
    , RegionsList
    , RegionsGet
    , GlobalAddressesAPI
    , GlobalAddressesInsert
    , GlobalAddressesList
    , GlobalAddressesGet
    , GlobalAddressesDelete
    , TargetHttpProxiesAPI
    , TargetHttpProxiesInsert
    , TargetHttpProxiesList
    , TargetHttpProxiesSetUrlMap
    , TargetHttpProxiesGet
    , TargetHttpProxiesDelete
    , AutoscalersAPI
    , AutoscalersAggregatedList
    , AutoscalersInsert
    , AutoscalersList
    , AutoscalersPatch
    , AutoscalersGet
    , AutoscalersDelete
    , AutoscalersUpdate
    , DiskTypesAPI
    , DiskTypesAggregatedList
    , DiskTypesList
    , DiskTypesGet
    , RegionOperationsAPI
    , RegionOperationsList
    , RegionOperationsGet
    , RegionOperationsDelete
    , MachineTypesAPI
    , MachineTypesAggregatedList
    , MachineTypesList
    , MachineTypesGet
    , HttpHealthChecksAPI
    , HttpHealthChecksInsert
    , HttpHealthChecksList
    , HttpHealthChecksPatch
    , HttpHealthChecksGet
    , HttpHealthChecksDelete
    , HttpHealthChecksUpdate
    , SnapshotsAPI
    , SnapshotsList
    , SnapshotsGet
    , SnapshotsDelete
    , InstancesAPI
    , InstancesAddAccessConfig
    , InstancesAggregatedList
    , InstancesInsert
    , InstancesDetachDisk
    , InstancesList
    , InstancesStart
    , InstancesGet
    , InstancesDeleteAccessConfig
    , InstancesSetMetadata
    , InstancesSetScheduling
    , InstancesReset
    , InstancesStop
    , InstancesGetSerialPortOutput
    , InstancesSetTags
    , InstancesAttachDisk
    , InstancesDelete
    , InstancesSetDiskAutoDelete
    , BackendServicesAPI
    , BackendServicesInsert
    , BackendServicesList
    , BackendServicesGetHealth
    , BackendServicesPatch
    , BackendServicesGet
    , BackendServicesDelete
    , BackendServicesUpdate
    , InstanceGroupsAPI
    , InstanceGroupsRemoveInstances
    , InstanceGroupsAggregatedList
    , InstanceGroupsInsert
    , InstanceGroupsList
    , InstanceGroupsAddInstances
    , InstanceGroupsGet
    , InstanceGroupsListInstances
    , InstanceGroupsSetNamedPorts
    , InstanceGroupsDelete
    , GlobalOperationsAPI
    , GlobalOperationsAggregatedList
    , GlobalOperationsList
    , GlobalOperationsGet
    , GlobalOperationsDelete
    , FirewallsAPI
    , FirewallsInsert
    , FirewallsList
    , FirewallsPatch
    , FirewallsGet
    , FirewallsDelete
    , FirewallsUpdate
    , LicensesAPI
    , LicensesGet
    , ZoneOperationsAPI
    , ZoneOperationsList
    , ZoneOperationsGet
    , ZoneOperationsDelete
    , TargetInstancesAPI
    , TargetInstancesAggregatedList
    , TargetInstancesInsert
    , TargetInstancesList
    , TargetInstancesGet
    , TargetInstancesDelete
    , DisksAPI
    , DisksAggregatedList
    , DisksInsert
    , DisksList
    , DisksGet
    , DisksCreateSnapshot
    , DisksDelete
    , TargetPoolsAPI
    , TargetPoolsAggregatedList
    , TargetPoolsRemoveInstance
    , TargetPoolsInsert
    , TargetPoolsList
    , TargetPoolsGetHealth
    , TargetPoolsGet
    , TargetPoolsRemoveHealthCheck
    , TargetPoolsSetBackup
    , TargetPoolsAddInstance
    , TargetPoolsAddHealthCheck
    , TargetPoolsDelete
    , InstanceGroupManagersAPI
    , InstanceGroupManagersSetTargetPools
    , InstanceGroupManagersAggregatedList
    , InstanceGroupManagersInsert
    , InstanceGroupManagersResize
    , InstanceGroupManagersList
    , InstanceGroupManagersListManagedInstances
    , InstanceGroupManagersAbandonInstances
    , InstanceGroupManagersSetInstanceTemplate
    , InstanceGroupManagersGet
    , InstanceGroupManagersDeleteInstances
    , InstanceGroupManagersDelete
    , InstanceGroupManagersRecreateInstances
    , ProjectsAPI
    , ProjectsSetUsageExportBucket
    , ProjectsMoveInstance
    , ProjectsGet
    , ProjectsMoveDisk
    , ProjectsSetCommonInstanceMetadata
    , ForwardingRulesAPI
    , ForwardingRulesAggregatedList
    , ForwardingRulesInsert
    , ForwardingRulesList
    , ForwardingRulesGet
    , ForwardingRulesSetTarget
    , ForwardingRulesDelete

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
import           Network.Google.Prelude

{- $resources
TODO
-}

type Compute =
     ImagesAPI :<|> UrlMapsAPI :<|> InstanceTemplatesAPI
       :<|> RoutesAPI
       :<|> TargetVpnGatewaysAPI
       :<|> ZonesAPI
       :<|> GlobalForwardingRulesAPI
       :<|> NetworksAPI
       :<|> AddressesAPI
       :<|> VpnTunnelsAPI
       :<|> RegionsAPI
       :<|> GlobalAddressesAPI
       :<|> TargetHttpProxiesAPI
       :<|> AutoscalersAPI
       :<|> DiskTypesAPI
       :<|> RegionOperationsAPI
       :<|> MachineTypesAPI
       :<|> HttpHealthChecksAPI
       :<|> SnapshotsAPI
       :<|> InstancesAPI
       :<|> BackendServicesAPI
       :<|> InstanceGroupsAPI
       :<|> GlobalOperationsAPI
       :<|> FirewallsAPI
       :<|> LicensesAPI
       :<|> ZoneOperationsAPI
       :<|> TargetInstancesAPI
       :<|> DisksAPI
       :<|> TargetPoolsAPI
       :<|> InstanceGroupManagersAPI
       :<|> ProjectsAPI
       :<|> ForwardingRulesAPI

type ImagesAPI =
     ImagesInsert :<|> ImagesList :<|> ImagesGet :<|>
       ImagesDeprecate
       :<|> ImagesDelete

-- | Creates an image resource in the specified project using the data
-- included in the request.
type ImagesInsert =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "images" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Post '[JSON] Operation

-- | Retrieves the list of image resources available to the specified
-- project.
type ImagesList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "images" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] ImageList

-- | Returns the specified image resource.
type ImagesGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "images" :>
                 Capture "image" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Get '[JSON] Image

-- | Sets the deprecation status of an image. If an empty request body is
-- given, clears the deprecation status instead.
type ImagesDeprecate =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "images" :>
                 Capture "image" Text :>
                   "deprecate" :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Post '[JSON] Operation

-- | Deletes the specified image resource.
type ImagesDelete =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "images" :>
                 Capture "image" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Delete '[JSON] Operation

type UrlMapsAPI =
     UrlMapsInsert :<|> UrlMapsList :<|> UrlMapsPatch :<|>
       UrlMapsGet
       :<|> UrlMapsValidate
       :<|> UrlMapsDelete
       :<|> UrlMapsUpdate

-- | Creates a UrlMap resource in the specified project using the data
-- included in the request.
type UrlMapsInsert =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "urlMaps" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Post '[JSON] Operation

-- | Retrieves the list of UrlMap resources available to the specified
-- project.
type UrlMapsList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "urlMaps" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] UrlMapList

-- | Update the entire content of the UrlMap resource. This method supports
-- patch semantics.
type UrlMapsPatch =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "urlMaps" :>
                 Capture "urlMap" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Patch '[JSON] Operation

-- | Returns the specified UrlMap resource.
type UrlMapsGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "urlMaps" :>
                 Capture "urlMap" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Get '[JSON] UrlMap

-- | Run static validation for the UrlMap. In particular, the tests of the
-- provided UrlMap will be run. Calling this method does NOT create the
-- UrlMap.
type UrlMapsValidate =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "urlMaps" :>
                 Capture "urlMap" Text :>
                   "validate" :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Post '[JSON] UrlMapsValidateResponse

-- | Deletes the specified UrlMap resource.
type UrlMapsDelete =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "urlMaps" :>
                 Capture "urlMap" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Delete '[JSON] Operation

-- | Update the entire content of the UrlMap resource.
type UrlMapsUpdate =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "urlMaps" :>
                 Capture "urlMap" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Put '[JSON] Operation

type InstanceTemplatesAPI =
     InstanceTemplatesInsert :<|> InstanceTemplatesList
       :<|> InstanceTemplatesGet
       :<|> InstanceTemplatesDelete

-- | Creates an instance template in the specified project using the data
-- that is included in the request.
type InstanceTemplatesInsert =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "instanceTemplates" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Post '[JSON] Operation

-- | Retrieves a list of instance templates that are contained within the
-- specified project and zone.
type InstanceTemplatesList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "instanceTemplates" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] InstanceTemplateList

-- | Returns the specified instance template resource.
type InstanceTemplatesGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "instanceTemplates" :>
                 Capture "instanceTemplate" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :>
                                 Get '[JSON] InstanceTemplate

-- | Deletes the specified instance template.
type InstanceTemplatesDelete =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "instanceTemplates" :>
                 Capture "instanceTemplate" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Delete '[JSON] Operation

type RoutesAPI =
     RoutesInsert :<|> RoutesList :<|> RoutesGet :<|>
       RoutesDelete

-- | Creates a route resource in the specified project using the data
-- included in the request.
type RoutesInsert =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "routes" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Post '[JSON] Operation

-- | Retrieves the list of route resources available to the specified
-- project.
type RoutesList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "routes" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] RouteList

-- | Returns the specified route resource.
type RoutesGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "routes" :>
                 Capture "route" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Get '[JSON] Route

-- | Deletes the specified route resource.
type RoutesDelete =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "routes" :>
                 Capture "route" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Delete '[JSON] Operation

type TargetVpnGatewaysAPI =
     TargetVpnGatewaysAggregatedList :<|>
       TargetVpnGatewaysInsert
       :<|> TargetVpnGatewaysList
       :<|> TargetVpnGatewaysGet
       :<|> TargetVpnGatewaysDelete

-- | Retrieves the list of target VPN gateways grouped by scope.
type TargetVpnGatewaysAggregatedList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "targetVpnGateways" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] TargetVpnGatewayAggregatedList

-- | Creates a TargetVpnGateway resource in the specified project and region
-- using the data included in the request.
type TargetVpnGatewaysInsert =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetVpnGateways" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Post '[JSON] Operation

-- | Retrieves the list of TargetVpnGateway resources available to the
-- specified project and region.
type TargetVpnGatewaysList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetVpnGateways" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "filter" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "maxResults" Word32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Get '[JSON] TargetVpnGatewayList

-- | Returns the specified TargetVpnGateway resource.
type TargetVpnGatewaysGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetVpnGateways" :>
                   Capture "targetVpnGateway" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Get '[JSON] TargetVpnGateway

-- | Deletes the specified TargetVpnGateway resource.
type TargetVpnGatewaysDelete =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetVpnGateways" :>
                   Capture "targetVpnGateway" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Delete '[JSON] Operation

type ZonesAPI = ZonesList :<|> ZonesGet

-- | Retrieves the list of zone resources available to the specified project.
type ZonesList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "maxResults" Word32 :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Get '[JSON] ZoneList

-- | Returns the specified zone resource.
type ZonesGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Get '[JSON] Zone

type GlobalForwardingRulesAPI =
     GlobalForwardingRulesInsert :<|>
       GlobalForwardingRulesList
       :<|> GlobalForwardingRulesGet
       :<|> GlobalForwardingRulesSetTarget
       :<|> GlobalForwardingRulesDelete

-- | Creates a ForwardingRule resource in the specified project and region
-- using the data included in the request.
type GlobalForwardingRulesInsert =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "forwardingRules" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Post '[JSON] Operation

-- | Retrieves the list of ForwardingRule resources available to the
-- specified project.
type GlobalForwardingRulesList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "forwardingRules" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] ForwardingRuleList

-- | Returns the specified ForwardingRule resource.
type GlobalForwardingRulesGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "forwardingRules" :>
                 Capture "forwardingRule" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :>
                                 Get '[JSON] ForwardingRule

-- | Changes target url for forwarding rule.
type GlobalForwardingRulesSetTarget =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "forwardingRules" :>
                 Capture "forwardingRule" Text :>
                   "setTarget" :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Post '[JSON] Operation

-- | Deletes the specified ForwardingRule resource.
type GlobalForwardingRulesDelete =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "forwardingRules" :>
                 Capture "forwardingRule" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Delete '[JSON] Operation

type NetworksAPI =
     NetworksInsert :<|> NetworksList :<|> NetworksGet
       :<|> NetworksDelete

-- | Creates a network resource in the specified project using the data
-- included in the request.
type NetworksInsert =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "networks" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Post '[JSON] Operation

-- | Retrieves the list of network resources available to the specified
-- project.
type NetworksList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "networks" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] NetworkList

-- | Returns the specified network resource.
type NetworksGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "networks" :>
                 Capture "network" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Get '[JSON] Network

-- | Deletes the specified network resource.
type NetworksDelete =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "networks" :>
                 Capture "network" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Delete '[JSON] Operation

type AddressesAPI =
     AddressesAggregatedList :<|> AddressesInsert :<|>
       AddressesList
       :<|> AddressesGet
       :<|> AddressesDelete

-- | Retrieves the list of addresses grouped by scope.
type AddressesAggregatedList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "addresses" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] AddressAggregatedList

-- | Creates an address resource in the specified project using the data
-- included in the request.
type AddressesInsert =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "addresses" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Post '[JSON] Operation

-- | Retrieves the list of address resources contained within the specified
-- region.
type AddressesList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "addresses" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "filter" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "maxResults" Word32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Get '[JSON] AddressList

-- | Returns the specified address resource.
type AddressesGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "addresses" :>
                   Capture "address" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Get '[JSON] Address

-- | Deletes the specified address resource.
type AddressesDelete =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "addresses" :>
                   Capture "address" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Delete '[JSON] Operation

type VpnTunnelsAPI =
     VpnTunnelsAggregatedList :<|> VpnTunnelsInsert :<|>
       VpnTunnelsList
       :<|> VpnTunnelsGet
       :<|> VpnTunnelsDelete

-- | Retrieves the list of VPN tunnels grouped by scope.
type VpnTunnelsAggregatedList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "vpnTunnels" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] VpnTunnelAggregatedList

-- | Creates a VpnTunnel resource in the specified project and region using
-- the data included in the request.
type VpnTunnelsInsert =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "vpnTunnels" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Post '[JSON] Operation

-- | Retrieves the list of VpnTunnel resources contained in the specified
-- project and region.
type VpnTunnelsList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "vpnTunnels" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "filter" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "maxResults" Word32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Get '[JSON] VpnTunnelList

-- | Returns the specified VpnTunnel resource.
type VpnTunnelsGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "vpnTunnels" :>
                   Capture "vpnTunnel" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Get '[JSON] VpnTunnel

-- | Deletes the specified VpnTunnel resource.
type VpnTunnelsDelete =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "vpnTunnels" :>
                   Capture "vpnTunnel" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Delete '[JSON] Operation

type RegionsAPI = RegionsList :<|> RegionsGet

-- | Retrieves the list of region resources available to the specified
-- project.
type RegionsList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "maxResults" Word32 :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Get '[JSON] RegionList

-- | Returns the specified region resource.
type RegionsGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Get '[JSON] Region

type GlobalAddressesAPI =
     GlobalAddressesInsert :<|> GlobalAddressesList :<|>
       GlobalAddressesGet
       :<|> GlobalAddressesDelete

-- | Creates an address resource in the specified project using the data
-- included in the request.
type GlobalAddressesInsert =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "addresses" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Post '[JSON] Operation

-- | Retrieves the list of global address resources.
type GlobalAddressesList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "addresses" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] AddressList

-- | Returns the specified address resource.
type GlobalAddressesGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "addresses" :>
                 Capture "address" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Get '[JSON] Address

-- | Deletes the specified address resource.
type GlobalAddressesDelete =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "addresses" :>
                 Capture "address" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Delete '[JSON] Operation

type TargetHttpProxiesAPI =
     TargetHttpProxiesInsert :<|> TargetHttpProxiesList
       :<|> TargetHttpProxiesSetUrlMap
       :<|> TargetHttpProxiesGet
       :<|> TargetHttpProxiesDelete

-- | Creates a TargetHttpProxy resource in the specified project using the
-- data included in the request.
type TargetHttpProxiesInsert =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetHttpProxies" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Post '[JSON] Operation

-- | Retrieves the list of TargetHttpProxy resources available to the
-- specified project.
type TargetHttpProxiesList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetHttpProxies" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] TargetHttpProxyList

-- | Changes the URL map for TargetHttpProxy.
type TargetHttpProxiesSetUrlMap =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "targetHttpProxies" :>
               Capture "targetHttpProxy" Text :>
                 "setUrlMap" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Post '[JSON] Operation

-- | Returns the specified TargetHttpProxy resource.
type TargetHttpProxiesGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetHttpProxies" :>
                 Capture "targetHttpProxy" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :>
                                 Get '[JSON] TargetHttpProxy

-- | Deletes the specified TargetHttpProxy resource.
type TargetHttpProxiesDelete =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetHttpProxies" :>
                 Capture "targetHttpProxy" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Delete '[JSON] Operation

type AutoscalersAPI =
     AutoscalersAggregatedList :<|> AutoscalersInsert :<|>
       AutoscalersList
       :<|> AutoscalersPatch
       :<|> AutoscalersGet
       :<|> AutoscalersDelete
       :<|> AutoscalersUpdate

-- | Retrieves the list of autoscalers grouped by scope.
type AutoscalersAggregatedList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "autoscalers" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] AutoscalerAggregatedList

-- | Creates an autoscaler resource in the specified project using the data
-- included in the request.
type AutoscalersInsert =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "autoscalers" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Post '[JSON] Operation

-- | Retrieves the list of autoscaler resources contained within the
-- specified zone.
type AutoscalersList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "autoscalers" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "filter" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "maxResults" Word32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Get '[JSON] AutoscalerList

-- | Updates an autoscaler resource in the specified project using the data
-- included in the request. This method supports patch semantics.
type AutoscalersPatch =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "autoscalers" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "autoscaler" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Patch '[JSON] Operation

-- | Returns the specified autoscaler resource.
type AutoscalersGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "autoscalers" :>
                   Capture "autoscaler" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Get '[JSON] Autoscaler

-- | Deletes the specified autoscaler resource.
type AutoscalersDelete =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "autoscalers" :>
                   Capture "autoscaler" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Delete '[JSON] Operation

-- | Updates an autoscaler resource in the specified project using the data
-- included in the request.
type AutoscalersUpdate =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "autoscalers" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "autoscaler" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Put '[JSON] Operation

type DiskTypesAPI =
     DiskTypesAggregatedList :<|> DiskTypesList :<|>
       DiskTypesGet

-- | Retrieves the list of disk type resources grouped by scope.
type DiskTypesAggregatedList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "diskTypes" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] DiskTypeAggregatedList

-- | Retrieves the list of disk type resources available to the specified
-- project.
type DiskTypesList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "diskTypes" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "filter" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "maxResults" Word32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Get '[JSON] DiskTypeList

-- | Returns the specified disk type resource.
type DiskTypesGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "diskTypes" :>
                   Capture "diskType" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Get '[JSON] DiskType

type RegionOperationsAPI =
     RegionOperationsList :<|> RegionOperationsGet :<|>
       RegionOperationsDelete

-- | Retrieves the list of Operation resources contained within the specified
-- region.
type RegionOperationsList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "operations" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "filter" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "maxResults" Word32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Get '[JSON] OperationList

-- | Retrieves the specified region-specific Operations resource.
type RegionOperationsGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "operations" :>
                   Capture "operation" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Get '[JSON] Operation

-- | Deletes the specified region-specific Operations resource.
type RegionOperationsDelete =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "operations" :>
                   Capture "operation" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Delete '[JSON] ()

type MachineTypesAPI =
     MachineTypesAggregatedList :<|> MachineTypesList :<|>
       MachineTypesGet

-- | Retrieves the list of machine type resources grouped by scope.
type MachineTypesAggregatedList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "machineTypes" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] MachineTypeAggregatedList

-- | Retrieves the list of machine type resources available to the specified
-- project.
type MachineTypesList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "machineTypes" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "filter" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "maxResults" Word32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Get '[JSON] MachineTypeList

-- | Returns the specified machine type resource.
type MachineTypesGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "machineTypes" :>
                   Capture "machineType" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Get '[JSON] MachineType

type HttpHealthChecksAPI =
     HttpHealthChecksInsert :<|> HttpHealthChecksList :<|>
       HttpHealthChecksPatch
       :<|> HttpHealthChecksGet
       :<|> HttpHealthChecksDelete
       :<|> HttpHealthChecksUpdate

-- | Creates a HttpHealthCheck resource in the specified project using the
-- data included in the request.
type HttpHealthChecksInsert =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "httpHealthChecks" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Post '[JSON] Operation

-- | Retrieves the list of HttpHealthCheck resources available to the
-- specified project.
type HttpHealthChecksList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "httpHealthChecks" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] HttpHealthCheckList

-- | Updates a HttpHealthCheck resource in the specified project using the
-- data included in the request. This method supports patch semantics.
type HttpHealthChecksPatch =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "httpHealthChecks" :>
                 Capture "httpHealthCheck" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Patch '[JSON] Operation

-- | Returns the specified HttpHealthCheck resource.
type HttpHealthChecksGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "httpHealthChecks" :>
                 Capture "httpHealthCheck" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :>
                                 Get '[JSON] HttpHealthCheck

-- | Deletes the specified HttpHealthCheck resource.
type HttpHealthChecksDelete =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "httpHealthChecks" :>
                 Capture "httpHealthCheck" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Delete '[JSON] Operation

-- | Updates a HttpHealthCheck resource in the specified project using the
-- data included in the request.
type HttpHealthChecksUpdate =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "httpHealthChecks" :>
                 Capture "httpHealthCheck" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Put '[JSON] Operation

type SnapshotsAPI =
     SnapshotsList :<|> SnapshotsGet :<|> SnapshotsDelete

-- | Retrieves the list of Snapshot resources contained within the specified
-- project.
type SnapshotsList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "snapshots" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] SnapshotList

-- | Returns the specified Snapshot resource.
type SnapshotsGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "snapshots" :>
                 Capture "snapshot" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Get '[JSON] Snapshot

-- | Deletes the specified Snapshot resource. Keep in mind that deleting a
-- single snapshot might not necessarily delete all the data on that
-- snapshot. If any data on the snapshot that is marked for deletion is
-- needed for subsequent snapshots, the data will be moved to the next
-- corresponding snapshot. For more information, see Deleting snaphots.
type SnapshotsDelete =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "snapshots" :>
                 Capture "snapshot" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Delete '[JSON] Operation

type InstancesAPI =
     InstancesAddAccessConfig :<|> InstancesAggregatedList
       :<|> InstancesInsert
       :<|> InstancesDetachDisk
       :<|> InstancesList
       :<|> InstancesStart
       :<|> InstancesGet
       :<|> InstancesDeleteAccessConfig
       :<|> InstancesSetMetadata
       :<|> InstancesSetScheduling
       :<|> InstancesReset
       :<|> InstancesStop
       :<|> InstancesGetSerialPortOutput
       :<|> InstancesSetTags
       :<|> InstancesAttachDisk
       :<|> InstancesDelete
       :<|> InstancesSetDiskAutoDelete

-- | Adds an access config to an instance\'s network interface.
type InstancesAddAccessConfig =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "addAccessConfig" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "networkInterface" Text :>
                               QueryParam "key" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Post '[JSON] Operation

type InstancesAggregatedList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "instances" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] InstanceAggregatedList

-- | Creates an instance resource in the specified project using the data
-- included in the request.
type InstancesInsert =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Post '[JSON] Operation

-- | Detaches a disk from an instance.
type InstancesDetachDisk =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "detachDisk" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "deviceName" Text :>
                               QueryParam "key" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Post '[JSON] Operation

-- | Retrieves the list of instance resources contained within the specified
-- zone.
type InstancesList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "filter" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "maxResults" Word32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Get '[JSON] InstanceList

-- | This method starts an instance that was stopped using the using the
-- instances().stop method. For more information, see Restart an instance.
type InstancesStart =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "start" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] Operation

-- | Returns the specified instance resource.
type InstancesGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Get '[JSON] Instance

-- | Deletes an access config from an instance\'s network interface.
type InstancesDeleteAccessConfig =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "deleteAccessConfig" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "networkInterface" Text :>
                               QueryParam "key" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "accessConfig" Text :>
                                     QueryParam "fields" Text :>
                                       QueryParam "alt" Text :>
                                         Post '[JSON] Operation

-- | Sets metadata for the specified instance to the data included in the
-- request.
type InstancesSetMetadata =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "setMetadata" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] Operation

-- | Sets an instance\'s scheduling options.
type InstancesSetScheduling =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "setScheduling" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] Operation

-- | Performs a hard reset on the instance.
type InstancesReset =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "reset" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] Operation

-- | This method stops a running instance, shutting it down cleanly, and
-- allows you to restart the instance at a later time. Stopped instances do
-- not incur per-minute, virtual machine usage charges while they are
-- stopped, but any resources that the virtual machine is using, such as
-- persistent disks and static IP addresses,will continue to be charged
-- until they are deleted. For more information, see Stopping an instance.
type InstancesStop =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "stop" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] Operation

-- | Returns the specified instance\'s serial port output.
type InstancesGetSerialPortOutput =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "serialPort" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     QueryParam "port" Natural :>
                                       Get '[JSON] SerialPortOutput

-- | Sets tags for the specified instance to the data included in the
-- request.
type InstancesSetTags =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "setTags" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] Operation

-- | Attaches a Disk resource to an instance.
type InstancesAttachDisk =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "attachDisk" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] Operation

-- | Deletes the specified Instance resource. For more information, see
-- Shutting down an instance.
type InstancesDelete =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Delete '[JSON] Operation

-- | Sets the auto-delete flag for a disk attached to an instance.
type InstancesSetDiskAutoDelete =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "setDiskAutoDelete" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "autoDelete" Bool :>
                               QueryParam "deviceName" Text :>
                                 QueryParam "key" Text :>
                                   QueryParam "oauth_token" Text :>
                                     QueryParam "fields" Text :>
                                       QueryParam "alt" Text :>
                                         Post '[JSON] Operation

type BackendServicesAPI =
     BackendServicesInsert :<|> BackendServicesList :<|>
       BackendServicesGetHealth
       :<|> BackendServicesPatch
       :<|> BackendServicesGet
       :<|> BackendServicesDelete
       :<|> BackendServicesUpdate

-- | Creates a BackendService resource in the specified project using the
-- data included in the request.
type BackendServicesInsert =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "backendServices" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Post '[JSON] Operation

-- | Retrieves the list of BackendService resources available to the
-- specified project.
type BackendServicesList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "backendServices" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] BackendServiceList

-- | Gets the most recent health check results for this BackendService.
type BackendServicesGetHealth =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "backendServices" :>
                 Capture "backendService" Text :>
                   "getHealth" :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Post '[JSON] BackendServiceGroupHealth

-- | Update the entire content of the BackendService resource. This method
-- supports patch semantics.
type BackendServicesPatch =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "backendServices" :>
                 Capture "backendService" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Patch '[JSON] Operation

-- | Returns the specified BackendService resource.
type BackendServicesGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "backendServices" :>
                 Capture "backendService" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :>
                                 Get '[JSON] BackendService

-- | Deletes the specified BackendService resource.
type BackendServicesDelete =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "backendServices" :>
                 Capture "backendService" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Delete '[JSON] Operation

-- | Update the entire content of the BackendService resource.
type BackendServicesUpdate =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "backendServices" :>
                 Capture "backendService" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Put '[JSON] Operation

type InstanceGroupsAPI =
     InstanceGroupsRemoveInstances :<|>
       InstanceGroupsAggregatedList
       :<|> InstanceGroupsInsert
       :<|> InstanceGroupsList
       :<|> InstanceGroupsAddInstances
       :<|> InstanceGroupsGet
       :<|> InstanceGroupsListInstances
       :<|> InstanceGroupsSetNamedPorts
       :<|> InstanceGroupsDelete

-- | Removes a list of instances from an instance group.
type InstanceGroupsRemoveInstances =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroups" :>
                   Capture "instanceGroup" Text :>
                     "removeInstances" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] Operation

-- | Retrieves the list of instance groups, and sorts them by zone.
type InstanceGroupsAggregatedList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "instanceGroups" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] InstanceGroupAggregatedList

-- | Creates an instance group in the specified project using the parameters
-- that are included in the request.
type InstanceGroupsInsert =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroups" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Post '[JSON] Operation

-- | Retrieves the list of instance groups that are located in the specified
-- project and zone.
type InstanceGroupsList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroups" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "filter" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "maxResults" Word32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Get '[JSON] InstanceGroupList

-- | Adds a list of instances to an instance group. All of the instances in
-- the instance group must be in the same network.
type InstanceGroupsAddInstances =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroups" :>
                   Capture "instanceGroup" Text :>
                     "addInstances" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] Operation

-- | Returns the specified instance group resource.
type InstanceGroupsGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroups" :>
                   Capture "instanceGroup" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Get '[JSON] InstanceGroup

-- | Lists instances in an instance group. The parameters for this method
-- specify whether the list filters instances by state and named ports
-- information.
type InstanceGroupsListInstances =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroups" :>
                   Capture "instanceGroup" Text :>
                     "listInstances" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "filter" Text :>
                                 QueryParam "pageToken" Text :>
                                   QueryParam "oauth_token" Text :>
                                     QueryParam "maxResults" Word32 :>
                                       QueryParam "fields" Text :>
                                         QueryParam "alt" Text :>
                                           Post '[JSON]
                                             InstanceGroupsListInstances

-- | Sets the named ports in an instance group.
type InstanceGroupsSetNamedPorts =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroups" :>
                   Capture "instanceGroup" Text :>
                     "setNamedPorts" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] Operation

-- | Deletes the specified instance group.
type InstanceGroupsDelete =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroups" :>
                   Capture "instanceGroup" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Delete '[JSON] Operation

type GlobalOperationsAPI =
     GlobalOperationsAggregatedList :<|>
       GlobalOperationsList
       :<|> GlobalOperationsGet
       :<|> GlobalOperationsDelete

-- | Retrieves the list of all operations grouped by scope.
type GlobalOperationsAggregatedList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "operations" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] OperationAggregatedList

-- | Retrieves the list of Operation resources contained within the specified
-- project.
type GlobalOperationsList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "operations" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] OperationList

-- | Retrieves the specified Operations resource.
type GlobalOperationsGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "operations" :>
                 Capture "operation" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Get '[JSON] Operation

-- | Deletes the specified Operations resource.
type GlobalOperationsDelete =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "operations" :>
                 Capture "operation" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Delete '[JSON] ()

type FirewallsAPI =
     FirewallsInsert :<|> FirewallsList :<|>
       FirewallsPatch
       :<|> FirewallsGet
       :<|> FirewallsDelete
       :<|> FirewallsUpdate

-- | Creates a firewall resource in the specified project using the data
-- included in the request.
type FirewallsInsert =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "firewalls" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Post '[JSON] Operation

-- | Retrieves the list of firewall resources available to the specified
-- project.
type FirewallsList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "firewalls" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] FirewallList

-- | Updates the specified firewall resource with the data included in the
-- request. This method supports patch semantics.
type FirewallsPatch =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "firewalls" :>
                 Capture "firewall" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Patch '[JSON] Operation

-- | Returns the specified firewall resource.
type FirewallsGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "firewalls" :>
                 Capture "firewall" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Get '[JSON] Firewall

-- | Deletes the specified firewall resource.
type FirewallsDelete =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "firewalls" :>
                 Capture "firewall" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Delete '[JSON] Operation

-- | Updates the specified firewall resource with the data included in the
-- request.
type FirewallsUpdate =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "firewalls" :>
                 Capture "firewall" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Put '[JSON] Operation

type LicensesAPI = LicensesGet

-- | Returns the specified license resource.
type LicensesGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "licenses" :>
                 Capture "license" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Get '[JSON] License

type ZoneOperationsAPI =
     ZoneOperationsList :<|> ZoneOperationsGet :<|>
       ZoneOperationsDelete

-- | Retrieves the list of Operation resources contained within the specified
-- zone.
type ZoneOperationsList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "operations" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "filter" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "maxResults" Word32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Get '[JSON] OperationList

-- | Retrieves the specified zone-specific Operations resource.
type ZoneOperationsGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "operations" :>
                   Capture "operation" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Get '[JSON] Operation

-- | Deletes the specified zone-specific Operations resource.
type ZoneOperationsDelete =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "operations" :>
                   Capture "operation" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Delete '[JSON] ()

type TargetInstancesAPI =
     TargetInstancesAggregatedList :<|>
       TargetInstancesInsert
       :<|> TargetInstancesList
       :<|> TargetInstancesGet
       :<|> TargetInstancesDelete

-- | Retrieves the list of target instances grouped by scope.
type TargetInstancesAggregatedList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "targetInstances" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] TargetInstanceAggregatedList

-- | Creates a TargetInstance resource in the specified project and zone
-- using the data included in the request.
type TargetInstancesInsert =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "targetInstances" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Post '[JSON] Operation

-- | Retrieves the list of TargetInstance resources available to the
-- specified project and zone.
type TargetInstancesList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "targetInstances" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "filter" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "maxResults" Word32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Get '[JSON] TargetInstanceList

-- | Returns the specified TargetInstance resource.
type TargetInstancesGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "targetInstances" :>
                   Capture "targetInstance" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Get '[JSON] TargetInstance

-- | Deletes the specified TargetInstance resource.
type TargetInstancesDelete =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "targetInstances" :>
                   Capture "targetInstance" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Delete '[JSON] Operation

type DisksAPI =
     DisksAggregatedList :<|> DisksInsert :<|> DisksList
       :<|> DisksGet
       :<|> DisksCreateSnapshot
       :<|> DisksDelete

-- | Retrieves the list of disks grouped by scope.
type DisksAggregatedList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "disks" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] DiskAggregatedList

-- | Creates a persistent disk in the specified project using the data
-- included in the request.
type DisksInsert =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "disks" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "sourceImage" Text :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Post '[JSON] Operation

-- | Retrieves the list of persistent disks contained within the specified
-- zone.
type DisksList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "disks" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "filter" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "maxResults" Word32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Get '[JSON] DiskList

-- | Returns a specified persistent disk.
type DisksGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "disks" :>
                   Capture "disk" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Get '[JSON] Disk

-- | Creates a snapshot of this disk.
type DisksCreateSnapshot =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "disks" :>
                   Capture "disk" Text :>
                     "createSnapshot" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] Operation

-- | Deletes the specified persistent disk. Deleting a disk removes its data
-- permanently and is irreversible. However, deleting a disk does not
-- delete any snapshots previously made from the disk. You must separately
-- delete snapshots.
type DisksDelete =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "disks" :>
                   Capture "disk" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Delete '[JSON] Operation

type TargetPoolsAPI =
     TargetPoolsAggregatedList :<|>
       TargetPoolsRemoveInstance
       :<|> TargetPoolsInsert
       :<|> TargetPoolsList
       :<|> TargetPoolsGetHealth
       :<|> TargetPoolsGet
       :<|> TargetPoolsRemoveHealthCheck
       :<|> TargetPoolsSetBackup
       :<|> TargetPoolsAddInstance
       :<|> TargetPoolsAddHealthCheck
       :<|> TargetPoolsDelete

-- | Retrieves the list of target pools grouped by scope.
type TargetPoolsAggregatedList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "targetPools" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] TargetPoolAggregatedList

-- | Removes instance URL from targetPool.
type TargetPoolsRemoveInstance =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetPools" :>
                   Capture "targetPool" Text :>
                     "removeInstance" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] Operation

-- | Creates a TargetPool resource in the specified project and region using
-- the data included in the request.
type TargetPoolsInsert =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetPools" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Post '[JSON] Operation

-- | Retrieves the list of TargetPool resources available to the specified
-- project and region.
type TargetPoolsList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetPools" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "filter" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "maxResults" Word32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Get '[JSON] TargetPoolList

-- | Gets the most recent health check results for each IP for the given
-- instance that is referenced by given TargetPool.
type TargetPoolsGetHealth =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetPools" :>
                   Capture "targetPool" Text :>
                     "getHealth" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] TargetPoolInstanceHealth

-- | Returns the specified TargetPool resource.
type TargetPoolsGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetPools" :>
                   Capture "targetPool" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Get '[JSON] TargetPool

-- | Removes health check URL from targetPool.
type TargetPoolsRemoveHealthCheck =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetPools" :>
                   Capture "targetPool" Text :>
                     "removeHealthCheck" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] Operation

-- | Changes backup pool configurations.
type TargetPoolsSetBackup =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetPools" :>
                   Capture "targetPool" Text :>
                     "setBackup" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "failoverRatio" Float :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Post '[JSON] Operation

-- | Adds instance url to targetPool.
type TargetPoolsAddInstance =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetPools" :>
                   Capture "targetPool" Text :>
                     "addInstance" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] Operation

-- | Adds health check URL to targetPool.
type TargetPoolsAddHealthCheck =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetPools" :>
                   Capture "targetPool" Text :>
                     "addHealthCheck" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] Operation

-- | Deletes the specified TargetPool resource.
type TargetPoolsDelete =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetPools" :>
                   Capture "targetPool" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Delete '[JSON] Operation

type InstanceGroupManagersAPI =
     InstanceGroupManagersSetTargetPools :<|>
       InstanceGroupManagersAggregatedList
       :<|> InstanceGroupManagersInsert
       :<|> InstanceGroupManagersResize
       :<|> InstanceGroupManagersList
       :<|> InstanceGroupManagersListManagedInstances
       :<|> InstanceGroupManagersAbandonInstances
       :<|> InstanceGroupManagersSetInstanceTemplate
       :<|> InstanceGroupManagersGet
       :<|> InstanceGroupManagersDeleteInstances
       :<|> InstanceGroupManagersDelete
       :<|> InstanceGroupManagersRecreateInstances

-- | Modifies the target pools to which all new instances in this group are
-- assigned. The target pools for existing instances in the group do not
-- change unless you recreate them.
type InstanceGroupManagersSetTargetPools =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "setTargetPools" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] Operation

-- | Retrieves the list of managed instance groups, and groups them by
-- project and zone.
type InstanceGroupManagersAggregatedList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "instanceGroupManagers" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON]
                                       InstanceGroupManagerAggregatedList

-- | Creates a managed instance group resource in the specified project using
-- the data that is included in the request.
type InstanceGroupManagersInsert =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Post '[JSON] Operation

-- | Resizes the managed instance group. If you increase the size, the group
-- creates new instances using the current instance template. If you
-- decrease the size, the group removes instances in the order that is
-- outlined in Resizing a managed instance group.
type InstanceGroupManagersResize =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "resize" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "size" Int32 :>
                             QueryParam "userIp" Text :>
                               QueryParam "key" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Post '[JSON] Operation

-- | Retrieves a list of managed instance groups that are contained within
-- the specified project and zone.
type InstanceGroupManagersList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "filter" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "maxResults" Word32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Get '[JSON] InstanceGroupManagerList

-- | Lists managed instances.
type InstanceGroupManagersListManagedInstances =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "listManagedInstances" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON]
                                       InstanceGroupManagersListManagedInstancesResponse

-- | Removes the specified instances from the managed instance group, and
-- from any target pools where they are a member. The instances are not
-- deleted. The managed instance group automatically reduces its targetSize
-- value by the number of instances that you abandon from the group.
type InstanceGroupManagersAbandonInstances =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "abandonInstances" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] Operation

-- | Specifies the instance template to use when creating new instances in
-- this group. The templates for existing instances in the group do not
-- change unless you recreate them.
type InstanceGroupManagersSetInstanceTemplate =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "setInstanceTemplate" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] Operation

-- | Returns the specified managed instance group resource.
type InstanceGroupManagersGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Get '[JSON] InstanceGroupManager

-- | Deletes the specified instances. The instances are deleted and removed
-- from the instance group and any target pools where they are a member.
-- The managed instance group automatically reduces its targetSize value by
-- the number of instances that you delete.
type InstanceGroupManagersDeleteInstances =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "deleteInstances" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] Operation

-- | Deletes the specified managed instance group resource.
type InstanceGroupManagersDelete =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Delete '[JSON] Operation

-- | Recreates the specified instances. The instances are deleted, then
-- recreated using the managed instance group\'s current instance template.
type InstanceGroupManagersRecreateInstances =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "recreateInstances" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] Operation

type ProjectsAPI =
     ProjectsSetUsageExportBucket :<|>
       ProjectsMoveInstance
       :<|> ProjectsGet
       :<|> ProjectsMoveDisk
       :<|> ProjectsSetCommonInstanceMetadata

-- | Enables the usage export feature and sets the usage export bucket where
-- reports are stored. If you provide an empty request body using this
-- method, the usage export feature will be disabled.
type ProjectsSetUsageExportBucket =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "setUsageExportBucket" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :> Post '[JSON] Operation

-- | Moves an instance and its attached persistent disks from one zone to
-- another.
type ProjectsMoveInstance =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "moveInstance" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :> Post '[JSON] Operation

-- | Returns the specified project resource.
type ProjectsGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :> Get '[JSON] Project

-- | Moves a persistent disk from one zone to another.
type ProjectsMoveDisk =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "moveDisk" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :> Post '[JSON] Operation

-- | Sets metadata common to all instances within the specified project using
-- the data included in the request.
type ProjectsSetCommonInstanceMetadata =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "setCommonInstanceMetadata" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :> Post '[JSON] Operation

type ForwardingRulesAPI =
     ForwardingRulesAggregatedList :<|>
       ForwardingRulesInsert
       :<|> ForwardingRulesList
       :<|> ForwardingRulesGet
       :<|> ForwardingRulesSetTarget
       :<|> ForwardingRulesDelete

-- | Retrieves the list of forwarding rules grouped by scope.
type ForwardingRulesAggregatedList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "forwardingRules" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] ForwardingRuleAggregatedList

-- | Creates a ForwardingRule resource in the specified project and region
-- using the data included in the request.
type ForwardingRulesInsert =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "forwardingRules" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Post '[JSON] Operation

-- | Retrieves the list of ForwardingRule resources available to the
-- specified project and region.
type ForwardingRulesList =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "forwardingRules" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "filter" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "maxResults" Word32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Get '[JSON] ForwardingRuleList

-- | Returns the specified ForwardingRule resource.
type ForwardingRulesGet =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "forwardingRules" :>
                   Capture "forwardingRule" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Get '[JSON] ForwardingRule

-- | Changes target url for forwarding rule.
type ForwardingRulesSetTarget =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "forwardingRules" :>
                   Capture "forwardingRule" Text :>
                     "setTarget" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] Operation

-- | Deletes the specified ForwardingRule resource.
type ForwardingRulesDelete =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "forwardingRules" :>
                   Capture "forwardingRule" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Delete '[JSON] Operation
