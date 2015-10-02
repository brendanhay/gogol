{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Compute.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Compute.Types
    (
    -- * Service URL
      computeURL

    -- * InstanceGroupList
    , InstanceGroupList
    , instanceGroupList
    , iglNextPageToken
    , iglKind
    , iglItems
    , iglSelfLink
    , iglId

    -- * DiskTypeAggregatedListItems
    , DiskTypeAggregatedListItems
    , diskTypeAggregatedListItems

    -- * InstancesScopedListWarning
    , InstancesScopedListWarning
    , instancesScopedListWarning
    , islwData
    , islwCode
    , islwMessage

    -- * InstanceGroupManagersSetInstanceTemplateRequest
    , InstanceGroupManagersSetInstanceTemplateRequest
    , instanceGroupManagersSetInstanceTemplateRequest
    , igmsitrInstanceTemplate

    -- * OperationWarnings
    , OperationWarnings
    , operationWarnings
    , owData
    , owCode
    , owMessage

    -- * MachineTypeAggregatedListItems
    , MachineTypeAggregatedListItems
    , machineTypeAggregatedListItems

    -- * InstanceGroupManagersAbandonInstancesRequest
    , InstanceGroupManagersAbandonInstancesRequest
    , instanceGroupManagersAbandonInstancesRequest
    , igmairInstances

    -- * AutoscalerAggregatedListItems
    , AutoscalerAggregatedListItems
    , autoscalerAggregatedListItems

    -- * AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType
    , AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType (..)

    -- * AddressesScopedList
    , AddressesScopedList
    , addressesScopedList
    , aslAddresses
    , aslWarning

    -- * InstancesScopedListWarningData
    , InstancesScopedListWarningData
    , instancesScopedListWarningData
    , islwdValue
    , islwdKey

    -- * SchedulingOnHostMaintenance
    , SchedulingOnHostMaintenance (..)

    -- * Snapshot
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

    -- * FirewallList
    , FirewallList
    , firewallList
    , flNextPageToken
    , flKind
    , flItems
    , flSelfLink
    , flId

    -- * DeprecationStatus
    , DeprecationStatus
    , deprecationStatus
    , dsState
    , dsDeleted
    , dsReplacement
    , dsObsolete
    , dsDeprecated

    -- * OperationWarningsData
    , OperationWarningsData
    , operationWarningsData
    , owdValue
    , owdKey

    -- * InstanceGroupAggregatedListItems
    , InstanceGroupAggregatedListItems
    , instanceGroupAggregatedListItems

    -- * MachineTypeScratchDisks
    , MachineTypeScratchDisks
    , machineTypeScratchDisks
    , mtsdDiskGb

    -- * BackendServiceProtocol
    , BackendServiceProtocol (..)

    -- * OperationList
    , OperationList
    , operationList
    , olNextPageToken
    , olKind
    , olItems
    , olSelfLink
    , olId

    -- * VPNTunnelsScopedList
    , VPNTunnelsScopedList
    , vPNTunnelsScopedList
    , vtslVPNTunnels
    , vtslWarning

    -- * InstanceGroupsAddInstancesRequest
    , InstanceGroupsAddInstancesRequest
    , instanceGroupsAddInstancesRequest
    , igairInstances

    -- * TargetPoolList
    , TargetPoolList
    , targetPoolList
    , tplNextPageToken
    , tplKind
    , tplItems
    , tplSelfLink
    , tplId

    -- * DiskList
    , DiskList
    , diskList
    , dlNextPageToken
    , dlKind
    , dlItems
    , dlSelfLink
    , dlId

    -- * AttachedDiskType
    , AttachedDiskType (..)

    -- * TargetPoolsAddInstanceRequest
    , TargetPoolsAddInstanceRequest
    , targetPoolsAddInstanceRequest
    , tpairInstances

    -- * ForwardingRuleList
    , ForwardingRuleList
    , forwardingRuleList
    , frlNextPageToken
    , frlKind
    , frlItems
    , frlSelfLink
    , frlId

    -- * URLMap
    , URLMap
    , uRLMap
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

    -- * InstanceGroupManagerList
    , InstanceGroupManagerList
    , instanceGroupManagerList
    , igmlNextPageToken
    , igmlKind
    , igmlItems
    , igmlSelfLink
    , igmlId

    -- * InstanceGroupsSetNamedPortsRequest
    , InstanceGroupsSetNamedPortsRequest
    , instanceGroupsSetNamedPortsRequest
    , igsnprFingerprint
    , igsnprNamedPorts

    -- * AutoscalingPolicyCustomMetricUtilization
    , AutoscalingPolicyCustomMetricUtilization
    , autoscalingPolicyCustomMetricUtilization
    , apcmuUtilizationTarget
    , apcmuMetric
    , apcmuUtilizationTargetType

    -- * Image
    , Image
    , image
    , iStatus
    , iDiskSizeGb
    , iSourceType
    , iSourceDiskId
    , iKind
    , iArchiveSizeBytes
    , iRawDisk
    , iSelfLink
    , iName
    , iCreationTimestamp
    , iId
    , iLicenses
    , iSourceDisk
    , iDescription
    , iDeprecated

    -- * TargetInstanceAggregatedList
    , TargetInstanceAggregatedList
    , targetInstanceAggregatedList
    , tialNextPageToken
    , tialKind
    , tialItems
    , tialSelfLink
    , tialId

    -- * ForwardingRulesScopedList
    , ForwardingRulesScopedList
    , forwardingRulesScopedList
    , frslWarning
    , frslForwardingRules

    -- * DiskAggregatedList
    , DiskAggregatedList
    , diskAggregatedList
    , dalNextPageToken
    , dalKind
    , dalItems
    , dalSelfLink
    , dalId

    -- * InstanceReference
    , InstanceReference
    , instanceReference
    , irInstance

    -- * InstanceWithNamedPorts
    , InstanceWithNamedPorts
    , instanceWithNamedPorts
    , iwnpStatus
    , iwnpNamedPorts
    , iwnpInstance

    -- * InstanceGroupManagersScopedList
    , InstanceGroupManagersScopedList
    , instanceGroupManagersScopedList
    , igmslWarning
    , igmslInstanceGroupManagers

    -- * InstanceGroupManagerAggregatedList
    , InstanceGroupManagerAggregatedList
    , instanceGroupManagerAggregatedList
    , igmalNextPageToken
    , igmalKind
    , igmalItems
    , igmalSelfLink
    , igmalId

    -- * DisksScopedList
    , DisksScopedList
    , disksScopedList
    , dslWarning
    , dslDisks

    -- * NamedPort
    , NamedPort
    , namedPort
    , npName
    , npPort

    -- * ImageSourceType
    , ImageSourceType (..)

    -- * TargetPoolsScopedList
    , TargetPoolsScopedList
    , targetPoolsScopedList
    , tpslWarning
    , tpslTargetPools

    -- * OperationsScopedList
    , OperationsScopedList
    , operationsScopedList
    , oslWarning
    , oslOperations

    -- * OperationAggregatedList
    , OperationAggregatedList
    , operationAggregatedList
    , oalNextPageToken
    , oalKind
    , oalItems
    , oalSelfLink
    , oalId

    -- * ForwardingRuleAggregatedList
    , ForwardingRuleAggregatedList
    , forwardingRuleAggregatedList
    , fralNextPageToken
    , fralKind
    , fralItems
    , fralSelfLink
    , fralId

    -- * TargetInstanceList
    , TargetInstanceList
    , targetInstanceList
    , tilNextPageToken
    , tilKind
    , tilItems
    , tilSelfLink
    , tilId

    -- * TargetReference
    , TargetReference
    , targetReference
    , trTarget

    -- * TargetPoolAggregatedList
    , TargetPoolAggregatedList
    , targetPoolAggregatedList
    , tpalNextPageToken
    , tpalKind
    , tpalItems
    , tpalSelfLink
    , tpalId

    -- * ImageList
    , ImageList
    , imageList
    , ilNextPageToken
    , ilKind
    , ilItems
    , ilSelfLink
    , ilId

    -- * TargetPool
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

    -- * DisksScopedListWarningCode
    , DisksScopedListWarningCode (..)

    -- * TargetPoolsScopedListWarningCode
    , TargetPoolsScopedListWarningCode (..)

    -- * Disk
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

    -- * VPNTunnelsScopedListWarningData
    , VPNTunnelsScopedListWarningData
    , vPNTunnelsScopedListWarningData
    , vtslwdValue
    , vtslwdKey

    -- * AutoscalingPolicyLoadBalancingUtilization
    , AutoscalingPolicyLoadBalancingUtilization
    , autoscalingPolicyLoadBalancingUtilization
    , aplbuUtilizationTarget

    -- * InstanceGroupManager
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

    -- * TargetVPNGatewayStatus
    , TargetVPNGatewayStatus (..)

    -- * InstanceGroupManagersScopedListWarningCode
    , InstanceGroupManagersScopedListWarningCode (..)

    -- * ForwardingRulesScopedListWarningCode
    , ForwardingRulesScopedListWarningCode (..)

    -- * ForwardingRule
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

    -- * DiskMoveRequest
    , DiskMoveRequest
    , diskMoveRequest
    , dmrTargetDisk
    , dmrDestinationZone

    -- * VPNTunnelsScopedListWarning
    , VPNTunnelsScopedListWarning
    , vPNTunnelsScopedListWarning
    , vtslwData
    , vtslwCode
    , vtslwMessage

    -- * Operation
    , Operation
    , operation
    , oTargetId
    , oStatus
    , oInsertTime
    , oProgress
    , oStartTime
    , oKind
    , oError
    , oHTTPErrorMessage
    , oZone
    , oWarnings
    , oHTTPErrorStatusCode
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

    -- * Project
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

    -- * OperationsScopedListWarningCode
    , OperationsScopedListWarningCode (..)

    -- * URLMapList
    , URLMapList
    , uRLMapList
    , umlNextPageToken
    , umlKind
    , umlItems
    , umlSelfLink
    , umlId

    -- * TargetPoolsRemoveInstanceRequest
    , TargetPoolsRemoveInstanceRequest
    , targetPoolsRemoveInstanceRequest
    , tprirInstances

    -- * RouteWarnings
    , RouteWarnings
    , routeWarnings
    , rwData
    , rwCode
    , rwMessage

    -- * InstanceProperties
    , InstanceProperties
    , instanceProperties
    , ipServiceAccounts
    , ipNetworkInterfaces
    , ipMachineType
    , ipMetadata
    , ipScheduling
    , ipDisks
    , ipCanIPForward
    , ipDescription
    , ipTags

    -- * TargetInstancesScopedListWarningCode
    , TargetInstancesScopedListWarningCode (..)

    -- * SnapshotStorageBytesStatus
    , SnapshotStorageBytesStatus (..)

    -- * DiskTypesScopedListWarning
    , DiskTypesScopedListWarning
    , diskTypesScopedListWarning
    , dtslwData
    , dtslwCode
    , dtslwMessage

    -- * RouteWarningsData
    , RouteWarningsData
    , routeWarningsData
    , rwdValue
    , rwdKey

    -- * InstanceAggregatedListItems
    , InstanceAggregatedListItems
    , instanceAggregatedListItems

    -- * MachineTypesScopedListWarning
    , MachineTypesScopedListWarning
    , machineTypesScopedListWarning
    , mtslwData
    , mtslwCode
    , mtslwMessage

    -- * MachineTypesScopedListWarningData
    , MachineTypesScopedListWarningData
    , machineTypesScopedListWarningData
    , mtslwdValue
    , mtslwdKey

    -- * ManagedInstanceLastAttemptErrors
    , ManagedInstanceLastAttemptErrors
    , managedInstanceLastAttemptErrors
    , milaeErrors

    -- * SnapshotStatus
    , SnapshotStatus (..)

    -- * TargetPoolInstanceHealth
    , TargetPoolInstanceHealth
    , targetPoolInstanceHealth
    , tpihKind
    , tpihHealthStatus

    -- * TargetInstance
    , TargetInstance
    , targetInstance
    , tiKind
    , tiNATPolicy
    , tiZone
    , tiSelfLink
    , tiName
    , tiCreationTimestamp
    , tiId
    , tiDescription
    , tiInstance

    -- * AutoscalersScopedListWarning
    , AutoscalersScopedListWarning
    , autoscalersScopedListWarning
    , aslwData
    , aslwCode
    , aslwMessage

    -- * DiskTypesScopedListWarningData
    , DiskTypesScopedListWarningData
    , diskTypesScopedListWarningData
    , dtslwdValue
    , dtslwdKey

    -- * InstanceGroupManagersListManagedInstancesResponse
    , InstanceGroupManagersListManagedInstancesResponse
    , instanceGroupManagersListManagedInstancesResponse
    , igmlmirManagedInstances

    -- * InstanceGroupsRemoveInstancesRequest
    , InstanceGroupsRemoveInstancesRequest
    , instanceGroupsRemoveInstancesRequest
    , igrirInstances

    -- * AutoscalersScopedListWarningData
    , AutoscalersScopedListWarningData
    , autoscalersScopedListWarningData
    , aslwdValue
    , aslwdKey

    -- * AttachedDiskInitializeParams
    , AttachedDiskInitializeParams
    , attachedDiskInitializeParams
    , adipSourceImage
    , adipDiskSizeGb
    , adipDiskName
    , adipDiskType

    -- * NetworkInterface
    , NetworkInterface
    , networkInterface
    , nNetwork
    , nName
    , nNetworkIP
    , nAccessConfigs

    -- * TargetInstanceNATPolicy
    , TargetInstanceNATPolicy (..)

    -- * InstanceTemplateList
    , InstanceTemplateList
    , instanceTemplateList
    , itlNextPageToken
    , itlKind
    , itlItems
    , itlSelfLink
    , itlId

    -- * TargetPoolsRemoveHealthCheckRequest
    , TargetPoolsRemoveHealthCheckRequest
    , targetPoolsRemoveHealthCheckRequest
    , tprhcrHealthChecks

    -- * ManagedInstanceCurrentAction
    , ManagedInstanceCurrentAction (..)

    -- * ImageStatus
    , ImageStatus (..)

    -- * RouteList
    , RouteList
    , routeList
    , rlNextPageToken
    , rlKind
    , rlItems
    , rlSelfLink
    , rlId

    -- * DeprecationStatusState
    , DeprecationStatusState (..)

    -- * AddressesScopedListWarningCode
    , AddressesScopedListWarningCode (..)

    -- * TargetVPNGatewayList
    , TargetVPNGatewayList
    , targetVPNGatewayList
    , tvglNextPageToken
    , tvglKind
    , tvglItems
    , tvglSelfLink
    , tvglId

    -- * HealthStatusHealthState
    , HealthStatusHealthState (..)

    -- * Address
    , Address
    , address
    , aStatus
    , aUsers
    , aKind
    , aAddress
    , aSelfLink
    , aName
    , aCreationTimestamp
    , aId
    , aRegion
    , aDescription

    -- * AddressesScopedListWarningData
    , AddressesScopedListWarningData
    , addressesScopedListWarningData
    , aValue
    , aKey

    -- * AccessConfigType
    , AccessConfigType (..)

    -- * InstanceAggregatedList
    , InstanceAggregatedList
    , instanceAggregatedList
    , ialNextPageToken
    , ialKind
    , ialItems
    , ialSelfLink
    , ialId

    -- * InstancesScopedList
    , InstancesScopedList
    , instancesScopedList
    , islWarning
    , islInstances

    -- * Zone
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

    -- * ImageRawDisk
    , ImageRawDisk
    , imageRawDisk
    , irdContainerType
    , irdSource
    , irdSha1Checksum

    -- * InstanceGroupManagersRecreateInstancesRequest
    , InstanceGroupManagersRecreateInstancesRequest
    , instanceGroupManagersRecreateInstancesRequest
    , igmrirInstances

    -- * Network
    , Network
    , network
    , netKind
    , netIPv4Range
    , netSelfLink
    , netName
    , netCreationTimestamp
    , netId
    , netGatewayIPv4
    , netDescription

    -- * FirewallAllowed
    , FirewallAllowed
    , firewallAllowed
    , faIPProtocol
    , faPorts

    -- * AddressesScopedListWarning
    , AddressesScopedListWarning
    , addressesScopedListWarning
    , aData
    , aCode
    , aMessage

    -- * TargetInstanceAggregatedListItems
    , TargetInstanceAggregatedListItems
    , targetInstanceAggregatedListItems

    -- * DiskStatus
    , DiskStatus (..)

    -- * ManagedInstanceInstanceStatus
    , ManagedInstanceInstanceStatus (..)

    -- * OperationStatus
    , OperationStatus (..)

    -- * Route
    , Route
    , route
    , rPriority
    , rKind
    , rNextHopGateway
    , rNextHopNetwork
    , rNetwork
    , rWarnings
    , rNextHopIP
    , rDestRange
    , rSelfLink
    , rName
    , rCreationTimestamp
    , rId
    , rNextHopVPNTunnel
    , rDescription
    , rTags
    , rNextHopInstance

    -- * InstanceTemplate
    , InstanceTemplate
    , instanceTemplate
    , itKind
    , itSelfLink
    , itName
    , itCreationTimestamp
    , itId
    , itDescription
    , itProperties

    -- * TargetVPNGatewaysScopedListWarningCode
    , TargetVPNGatewaysScopedListWarningCode (..)

    -- * HealthCheckReference
    , HealthCheckReference
    , healthCheckReference
    , hcrHealthCheck

    -- * URLMapsValidateResponse
    , URLMapsValidateResponse
    , uRLMapsValidateResponse
    , umvrResult

    -- * InstanceGroupAggregatedList
    , InstanceGroupAggregatedList
    , instanceGroupAggregatedList
    , igalNextPageToken
    , igalKind
    , igalItems
    , igalSelfLink
    , igalId

    -- * TargetVPNGateway
    , TargetVPNGateway
    , targetVPNGateway
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

    -- * AttachedDiskMode
    , AttachedDiskMode (..)

    -- * OperationAggregatedListItems
    , OperationAggregatedListItems
    , operationAggregatedListItems

    -- * UsageExportLocation
    , UsageExportLocation
    , usageExportLocation
    , uelReportNamePrefix
    , uelBucketName

    -- * DiskAggregatedListItems
    , DiskAggregatedListItems
    , diskAggregatedListItems

    -- * InstanceGroupManagersDeleteInstancesRequest
    , InstanceGroupManagersDeleteInstancesRequest
    , instanceGroupManagersDeleteInstancesRequest
    , igmdirInstances

    -- * ManagedInstance
    , ManagedInstance
    , managedInstance
    , miLastAttempt
    , miCurrentAction
    , miId
    , miInstanceStatus
    , miInstance

    -- * InstanceGroupsListInstancesRequest
    , InstanceGroupsListInstancesRequest
    , instanceGroupsListInstancesRequest
    , iglirInstanceState

    -- * AddressList
    , AddressList
    , addressList
    , alNextPageToken
    , alKind
    , alItems
    , alSelfLink
    , alId

    -- * ForwardingRuleAggregatedListItems
    , ForwardingRuleAggregatedListItems
    , forwardingRuleAggregatedListItems

    -- * ZoneList
    , ZoneList
    , zoneList
    , zlNextPageToken
    , zlKind
    , zlItems
    , zlSelfLink
    , zlId

    -- * TargetVPNGatewaysScopedListWarningData
    , TargetVPNGatewaysScopedListWarningData
    , targetVPNGatewaysScopedListWarningData
    , tvgslwdValue
    , tvgslwdKey

    -- * InstanceGroupManagerActionsSummary
    , InstanceGroupManagerActionsSummary
    , instanceGroupManagerActionsSummary
    , igmasDeleting
    , igmasRestarting
    , igmasNone
    , igmasCreating
    , igmasRefreshing
    , igmasRecreating
    , igmasAbandoning

    -- * URLMapReference
    , URLMapReference
    , uRLMapReference
    , umrURLMap

    -- * VPNTunnelStatus
    , VPNTunnelStatus (..)

    -- * ZoneMaintenanceWindows
    , ZoneMaintenanceWindows
    , zoneMaintenanceWindows
    , zmwBeginTime
    , zmwName
    , zmwEndTime
    , zmwDescription

    -- * TargetPoolsAddHealthCheckRequest
    , TargetPoolsAddHealthCheckRequest
    , targetPoolsAddHealthCheckRequest
    , tpahcrHealthChecks

    -- * NetworkList
    , NetworkList
    , networkList
    , nlNextPageToken
    , nlKind
    , nlItems
    , nlSelfLink
    , nlId

    -- * ServiceAccount
    , ServiceAccount
    , serviceAccount
    , saEmail
    , saScopes

    -- * InstanceGroupManagerAggregatedListItems
    , InstanceGroupManagerAggregatedListItems
    , instanceGroupManagerAggregatedListItems

    -- * TargetVPNGatewaysScopedListWarning
    , TargetVPNGatewaysScopedListWarning
    , targetVPNGatewaysScopedListWarning
    , tvgslwData
    , tvgslwCode
    , tvgslwMessage

    -- * Backend
    , Backend
    , backend
    , bGroup
    , bBalancingMode
    , bMaxUtilization
    , bMaxRate
    , bMaxRatePerInstance
    , bDescription
    , bCapacityScaler

    -- * BackendBalancingMode
    , BackendBalancingMode (..)

    -- * RegionStatus
    , RegionStatus (..)

    -- * TargetPoolAggregatedListItems
    , TargetPoolAggregatedListItems
    , targetPoolAggregatedListItems

    -- * TargetInstancesScopedList
    , TargetInstancesScopedList
    , targetInstancesScopedList
    , tislWarning
    , tislTargetInstances

    -- * MachineTypeList
    , MachineTypeList
    , machineTypeList
    , mtlNextPageToken
    , mtlKind
    , mtlItems
    , mtlSelfLink
    , mtlId

    -- * DiskTypeList
    , DiskTypeList
    , diskTypeList
    , dtlNextPageToken
    , dtlKind
    , dtlItems
    , dtlSelfLink
    , dtlId

    -- * VPNTunnelAggregatedList
    , VPNTunnelAggregatedList
    , vPNTunnelAggregatedList
    , vtalNextPageToken
    , vtalKind
    , vtalItems
    , vtalSelfLink
    , vtalId

    -- * AutoscalerList
    , AutoscalerList
    , autoscalerList
    , autNextPageToken
    , autKind
    , autItems
    , autSelfLink
    , autId

    -- * AttachedDisk
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

    -- * TargetHTTPProxyList
    , TargetHTTPProxyList
    , targetHTTPProxyList
    , thttpplNextPageToken
    , thttpplKind
    , thttpplItems
    , thttpplSelfLink
    , thttpplId

    -- * AddressAggregatedListItems
    , AddressAggregatedListItems
    , addressAggregatedListItems

    -- * MachineTypesScopedList
    , MachineTypesScopedList
    , machineTypesScopedList
    , mtslMachineTypes
    , mtslWarning

    -- * VPNTunnelList
    , VPNTunnelList
    , vPNTunnelList
    , vtlNextPageToken
    , vtlKind
    , vtlItems
    , vtlSelfLink
    , vtlId

    -- * BackendServiceGroupHealth
    , BackendServiceGroupHealth
    , backendServiceGroupHealth
    , bsghKind
    , bsghHealthStatus

    -- * QuotaMetric
    , QuotaMetric (..)

    -- * InstanceGroupsListInstancesRequestInstanceState
    , InstanceGroupsListInstancesRequestInstanceState (..)

    -- * ZoneStatus
    , ZoneStatus (..)

    -- * DiskTypeAggregatedList
    , DiskTypeAggregatedList
    , diskTypeAggregatedList
    , dtalNextPageToken
    , dtalKind
    , dtalItems
    , dtalSelfLink
    , dtalId

    -- * AddressStatus
    , AddressStatus (..)

    -- * HTTPHealthCheck
    , HTTPHealthCheck
    , hTTPHealthCheck
    , httphcHealthyThreshold
    , httphcKind
    , httphcRequestPath
    , httphcSelfLink
    , httphcCheckIntervalSec
    , httphcName
    , httphcCreationTimestamp
    , httphcId
    , httphcHost
    , httphcTimeoutSec
    , httphcDescription
    , httphcUnhealthyThreshold
    , httphcPort

    -- * AutoscalingPolicy
    , AutoscalingPolicy
    , autoscalingPolicy
    , apCustomMetricUtilizations
    , apMaxNumReplicas
    , apCPUUtilization
    , apLoadBalancingUtilization
    , apMinNumReplicas
    , apCoolDownPeriodSec

    -- * ForwardingRuleIPProtocol
    , ForwardingRuleIPProtocol (..)

    -- * AttachedDiskInterface
    , AttachedDiskInterface (..)

    -- * AutoscalersScopedList
    , AutoscalersScopedList
    , autoscalersScopedList
    , aAutoscalers
    , aWarning

    -- * DiskTypesScopedList
    , DiskTypesScopedList
    , diskTypesScopedList
    , dtslDiskTypes
    , dtslWarning

    -- * AutoscalerAggregatedList
    , AutoscalerAggregatedList
    , autoscalerAggregatedList
    , aalNextPageToken
    , aalKind
    , aalItems
    , aalSelfLink
    , aalId

    -- * MachineTypeAggregatedList
    , MachineTypeAggregatedList
    , machineTypeAggregatedList
    , mtalNextPageToken
    , mtalKind
    , mtalItems
    , mtalSelfLink
    , mtalId

    -- * RegionList
    , RegionList
    , regionList
    , regNextPageToken
    , regKind
    , regItems
    , regSelfLink
    , regId

    -- * MachineTypesScopedListWarningCode
    , MachineTypesScopedListWarningCode (..)

    -- * OperationError
    , OperationError
    , operationError
    , oeErrors

    -- * MachineType
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
    , mtGuestCPUs
    , mtMaximumPersistentDisksSizeGb
    , mtMaximumPersistentDisks
    , mtMemoryMb
    , mtDescription
    , mtDeprecated

    -- * DiskType
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

    -- * URLMapValidationResult
    , URLMapValidationResult
    , uRLMapValidationResult
    , umvrLoadErrors
    , umvrLoadSucceeded
    , umvrTestPassed
    , umvrTestFailures

    -- * AutoscalersScopedListWarningCode
    , AutoscalersScopedListWarningCode (..)

    -- * TargetInstancesScopedListWarning
    , TargetInstancesScopedListWarning
    , targetInstancesScopedListWarning
    , tislwData
    , tislwCode
    , tislwMessage

    -- * Autoscaler
    , Autoscaler
    , autoscaler
    , aaKind
    , aaZone
    , aaSelfLink
    , aaName
    , aaCreationTimestamp
    , aaAutoscalingPolicy
    , aaId
    , aaDescription
    , aaTarget

    -- * RouteWarningsCode
    , RouteWarningsCode (..)

    -- * InstanceGroupsListInstances
    , InstanceGroupsListInstances
    , instanceGroupsListInstances
    , igliNextPageToken
    , igliKind
    , igliItems
    , igliSelfLink
    , igliId

    -- * TargetInstancesScopedListWarningData
    , TargetInstancesScopedListWarningData
    , targetInstancesScopedListWarningData
    , tislwdValue
    , tislwdKey

    -- * Metadata
    , Metadata
    , metadata
    , mKind
    , mFingerprint
    , mItems

    -- * DiskTypesScopedListWarningCode
    , DiskTypesScopedListWarningCode (..)

    -- * InstanceStatus
    , InstanceStatus (..)

    -- * TargetHTTPProxy
    , TargetHTTPProxy
    , targetHTTPProxy
    , thttppURLMap
    , thttppKind
    , thttppSelfLink
    , thttppName
    , thttppCreationTimestamp
    , thttppId
    , thttppDescription

    -- * Region
    , Region
    , region
    , rrStatus
    , rrZones
    , rrKind
    , rrSelfLink
    , rrName
    , rrCreationTimestamp
    , rrQuotas
    , rrId
    , rrDescription
    , rrDeprecated

    -- * OperationsScopedListWarningData
    , OperationsScopedListWarningData
    , operationsScopedListWarningData
    , oslwdValue
    , oslwdKey

    -- * DisksScopedListWarningData
    , DisksScopedListWarningData
    , disksScopedListWarningData
    , dslwdValue
    , dslwdKey

    -- * ForwardingRulesScopedListWarning
    , ForwardingRulesScopedListWarning
    , forwardingRulesScopedListWarning
    , frslwData
    , frslwCode
    , frslwMessage

    -- * VPNTunnel
    , VPNTunnel
    , vPNTunnel
    , vtDetailedStatus
    , vtStatus
    , vtKind
    , vtPeerIP
    , vtTargetVPNGateway
    , vtSelfLink
    , vtSharedSecret
    , vtName
    , vtCreationTimestamp
    , vtSharedSecretHash
    , vtId
    , vtIkeVersion
    , vtRegion
    , vtDescription

    -- * VPNTunnelsScopedListWarningCode
    , VPNTunnelsScopedListWarningCode (..)

    -- * OperationsScopedListWarning
    , OperationsScopedListWarning
    , operationsScopedListWarning
    , oslwData
    , oslwCode
    , oslwMessage

    -- * TargetPoolsScopedListWarningData
    , TargetPoolsScopedListWarningData
    , targetPoolsScopedListWarningData
    , tpslwdValue
    , tpslwdKey

    -- * Scheduling
    , Scheduling
    , scheduling
    , sAutomaticRestart
    , sOnHostMaintenance
    , sPreemptible

    -- * ForwardingRulesScopedListWarningData
    , ForwardingRulesScopedListWarningData
    , forwardingRulesScopedListWarningData
    , frslwdValue
    , frslwdKey

    -- * TargetPoolsScopedListWarning
    , TargetPoolsScopedListWarning
    , targetPoolsScopedListWarning
    , tpslwData
    , tpslwCode
    , tpslwMessage

    -- * InstanceGroupManagersScopedListWarningData
    , InstanceGroupManagersScopedListWarningData
    , instanceGroupManagersScopedListWarningData
    , igmslwdValue
    , igmslwdKey

    -- * HealthStatus
    , HealthStatus
    , healthStatus
    , hsIPAddress
    , hsHealthState
    , hsPort
    , hsInstance

    -- * TargetVPNGatewayAggregatedListItems
    , TargetVPNGatewayAggregatedListItems
    , targetVPNGatewayAggregatedListItems

    -- * DisksScopedListWarning
    , DisksScopedListWarning
    , disksScopedListWarning
    , dslwData
    , dslwCode
    , dslwMessage

    -- * InstanceGroupManagersScopedListWarning
    , InstanceGroupManagersScopedListWarning
    , instanceGroupManagersScopedListWarning
    , igmslwData
    , igmslwCode
    , igmslwMessage

    -- * HTTPHealthCheckList
    , HTTPHealthCheckList
    , hTTPHealthCheckList
    , httphclNextPageToken
    , httphclKind
    , httphclItems
    , httphclSelfLink
    , httphclId

    -- * URLMapsValidateRequest
    , URLMapsValidateRequest
    , uRLMapsValidateRequest
    , umvrResource

    -- * PathRule
    , PathRule
    , pathRule
    , prService
    , prPaths

    -- * BackendServiceList
    , BackendServiceList
    , backendServiceList
    , bslNextPageToken
    , bslKind
    , bslItems
    , bslSelfLink
    , bslId

    -- * ManagedInstanceLastAttemptErrorsErrors
    , ManagedInstanceLastAttemptErrorsErrors
    , managedInstanceLastAttemptErrorsErrors
    , milaeeLocation
    , milaeeCode
    , milaeeMessage

    -- * InstanceGroupsScopedListWarning
    , InstanceGroupsScopedListWarning
    , instanceGroupsScopedListWarning
    , igslwData
    , igslwCode
    , igslwMessage

    -- * MetadataItems
    , MetadataItems
    , metadataItems
    , miValue
    , miKey

    -- * License
    , License
    , license
    , lChargesUseFee
    , lKind
    , lSelfLink
    , lName

    -- * InstanceGroupsScopedListWarningData
    , InstanceGroupsScopedListWarningData
    , instanceGroupsScopedListWarningData
    , igslwdValue
    , igslwdKey

    -- * InstanceList
    , InstanceList
    , instanceList
    , insNextPageToken
    , insKind
    , insItems
    , insSelfLink
    , insId

    -- * ManagedInstanceLastAttempt
    , ManagedInstanceLastAttempt
    , managedInstanceLastAttempt
    , milaErrors

    -- * InstanceGroupManagersSetTargetPoolsRequest
    , InstanceGroupManagersSetTargetPoolsRequest
    , instanceGroupManagersSetTargetPoolsRequest
    , igmstprFingerprint
    , igmstprTargetPools

    -- * TargetVPNGatewayAggregatedList
    , TargetVPNGatewayAggregatedList
    , targetVPNGatewayAggregatedList
    , tvgalNextPageToken
    , tvgalKind
    , tvgalItems
    , tvgalSelfLink
    , tvgalId

    -- * InstanceGroup
    , InstanceGroup
    , instanceGroup
    , ig1Size
    , ig1Kind
    , ig1Fingerprint
    , ig1Network
    , ig1Zone
    , ig1SelfLink
    , ig1Name
    , ig1CreationTimestamp
    , ig1Id
    , ig1Description
    , ig1NamedPorts

    -- * HostRule
    , HostRule
    , hostRule
    , hrHosts
    , hrDescription
    , hrPathMatcher

    -- * OperationErrorErrors
    , OperationErrorErrors
    , operationErrorErrors
    , oeeLocation
    , oeeCode
    , oeeMessage

    -- * InstanceWithNamedPortsStatus
    , InstanceWithNamedPortsStatus (..)

    -- * SerialPortOutput
    , SerialPortOutput
    , serialPortOutput
    , spoContents
    , spoKind
    , spoSelfLink

    -- * TestFailure
    , TestFailure
    , testFailure
    , tfPath
    , tfExpectedService
    , tfHost
    , tfActualService

    -- * TargetVPNGatewaysScopedList
    , TargetVPNGatewaysScopedList
    , targetVPNGatewaysScopedList
    , tvgslTargetVPNGateways
    , tvgslWarning

    -- * InstanceGroupsScopedListWarningCode
    , InstanceGroupsScopedListWarningCode (..)

    -- * Quota
    , Quota
    , quota
    , qMetric
    , qLimit
    , qUsage

    -- * SnapshotList
    , SnapshotList
    , snapshotList
    , slNextPageToken
    , slKind
    , slItems
    , slSelfLink
    , slId

    -- * AutoscalingPolicyCPUUtilization
    , AutoscalingPolicyCPUUtilization
    , autoscalingPolicyCPUUtilization
    , apcuUtilizationTarget

    -- * AccessConfig
    , AccessConfig
    , accessConfig
    , acKind
    , acName
    , acNATIP
    , acType

    -- * ResourceGroupReference
    , ResourceGroupReference
    , resourceGroupReference
    , rgrGroup

    -- * Firewall
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

    -- * TargetPoolSessionAffinity
    , TargetPoolSessionAffinity (..)

    -- * AddressAggregatedList
    , AddressAggregatedList
    , addressAggregatedList
    , addNextPageToken
    , addKind
    , addItems
    , addSelfLink
    , addId

    -- * ImageRawDiskContainerType
    , ImageRawDiskContainerType (..)

    -- * Tags
    , Tags
    , tags
    , tFingerprint
    , tItems

    -- * BackendService
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

    -- * URLMapTest
    , URLMapTest
    , uRLMapTest
    , umtPath
    , umtService
    , umtHost
    , umtDescription

    -- * InstanceMoveRequest
    , InstanceMoveRequest
    , instanceMoveRequest
    , imrTargetInstance
    , imrDestinationZone

    -- * Instance
    , Instance
    , instance'
    , i1Status
    , i1ServiceAccounts
    , i1NetworkInterfaces
    , i1Kind
    , i1Zone
    , i1CPUPlatform
    , i1SelfLink
    , i1Name
    , i1StatusMessage
    , i1CreationTimestamp
    , i1MachineType
    , i1Metadata
    , i1Id
    , i1Scheduling
    , i1Disks
    , i1CanIPForward
    , i1Description
    , i1Tags

    -- * InstancesScopedListWarningCode
    , InstancesScopedListWarningCode (..)

    -- * VPNTunnelAggregatedListItems
    , VPNTunnelAggregatedListItems
    , vPNTunnelAggregatedListItems

    -- * PathMatcher
    , PathMatcher
    , pathMatcher
    , pmDefaultService
    , pmName
    , pmPathRules
    , pmDescription

    -- * InstanceGroupsScopedList
    , InstanceGroupsScopedList
    , instanceGroupsScopedList
    , igslWarning
    , igslInstanceGroups

    -- * OperationWarningsCode
    , OperationWarningsCode (..)
    ) where

import           Network.Google.Compute.Types.Product
import           Network.Google.Compute.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1' of the Compute Engine API.
computeURL :: BaseUrl
computeURL
  = BaseUrl Https
      "https://www.googleapis.com/compute/v1/projects/"
      443
