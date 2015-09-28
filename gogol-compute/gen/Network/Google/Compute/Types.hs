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

    -- * InstanceGroupsListInstancesRequest
    , InstanceGroupsListInstancesRequest
    , instanceGroupsListInstancesRequest
    , iglirInstanceState

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

    -- * NetworkList
    , NetworkList
    , networkList
    , nlNextPageToken
    , nlKind
    , nlItems
    , nlSelfLink
    , nlId

    -- * ZoneList
    , ZoneList
    , zoneList
    , zlNextPageToken
    , zlKind
    , zlItems
    , zlSelfLink
    , zlId

    -- * ManagedInstance
    , ManagedInstance
    , managedInstance
    , miLastAttempt
    , miCurrentAction
    , miId
    , miInstanceStatus
    , miInstance

    -- * ServiceAccount
    , ServiceAccount
    , serviceAccount
    , saEmail
    , saScopes

    -- * TargetPoolsAddHealthCheckRequest
    , TargetPoolsAddHealthCheckRequest
    , targetPoolsAddHealthCheckRequest
    , tpahcrHealthChecks

    -- * UsageExportLocation
    , UsageExportLocation
    , usageExportLocation
    , uelReportNamePrefix
    , uelBucketName

    -- * UrlMapReference
    , UrlMapReference
    , urlMapReference
    , umrUrlMap

    -- * AddressList
    , AddressList
    , addressList
    , alNextPageToken
    , alKind
    , alItems
    , alSelfLink
    , alId

    -- * InstanceGroupManagersDeleteInstancesRequest
    , InstanceGroupManagersDeleteInstancesRequest
    , instanceGroupManagersDeleteInstancesRequest
    , igmdirInstances

    -- * AddressAggregatedListItems
    , AddressAggregatedListItems
    , addressAggregatedListItems

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

    -- * DiskTypeAggregatedListItems
    , DiskTypeAggregatedListItems
    , diskTypeAggregatedListItems

    -- * AttachedDiskMode
    , AttachedDiskMode (..)

    -- * TargetInstancesScopedList
    , TargetInstancesScopedList
    , targetInstancesScopedList
    , tislWarning
    , tislTargetInstances

    -- * OperationItemDataItemWarnings
    , OperationItemDataItemWarnings
    , operationItemDataItemWarnings
    , oidiwValue
    , oidiwKey

    -- * TargetHttpProxyList
    , TargetHttpProxyList
    , targetHttpProxyList
    , thplNextPageToken
    , thplKind
    , thplItems
    , thplSelfLink
    , thplId

    -- * TargetVpnGatewaysScopedListWarning
    , TargetVpnGatewaysScopedListWarning
    , targetVpnGatewaysScopedListWarning
    , tvgslwData
    , tvgslwCode
    , tvgslwMessage

    -- * BackendBalancingMode
    , BackendBalancingMode (..)

    -- * VpnTunnelAggregatedList
    , VpnTunnelAggregatedList
    , vpnTunnelAggregatedList
    , vtalNextPageToken
    , vtalKind
    , vtalItems
    , vtalSelfLink
    , vtalId

    -- * MachineTypeList
    , MachineTypeList
    , machineTypeList
    , mtlNextPageToken
    , mtlKind
    , mtlItems
    , mtlSelfLink
    , mtlId

    -- * SchedulingOnHostMaintenance
    , SchedulingOnHostMaintenance (..)

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

    -- * AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType
    , AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType (..)

    -- * DiskTypeList
    , DiskTypeList
    , diskTypeList
    , dtlNextPageToken
    , dtlKind
    , dtlItems
    , dtlSelfLink
    , dtlId

    -- * AutoscalerAggregatedListItems
    , AutoscalerAggregatedListItems
    , autoscalerAggregatedListItems

    -- * AutoscalerList
    , AutoscalerList
    , autoscalerList
    , aNextPageToken
    , aKind
    , aItems
    , aSelfLink
    , aId

    -- * OperationCodeItemWarnings
    , OperationCodeItemWarnings (..)

    -- * OperationAggregatedListItems
    , OperationAggregatedListItems
    , operationAggregatedListItems

    -- * RegionStatus
    , RegionStatus (..)

    -- * TargetPoolAggregatedList
    , TargetPoolAggregatedList
    , targetPoolAggregatedList
    , tpalNextPageToken
    , tpalKind
    , tpalItems
    , tpalSelfLink
    , tpalId

    -- * InstanceGroupManagerAggregatedList
    , InstanceGroupManagerAggregatedList
    , instanceGroupManagerAggregatedList
    , igmalNextPageToken
    , igmalKind
    , igmalItems
    , igmalSelfLink
    , igmalId

    -- * TargetPoolsScopedList
    , TargetPoolsScopedList
    , targetPoolsScopedList
    , tpslWarning
    , tpslTargetPools

    -- * OperationAggregatedList
    , OperationAggregatedList
    , operationAggregatedList
    , oalNextPageToken
    , oalKind
    , oalItems
    , oalSelfLink
    , oalId

    -- * TargetInstanceList
    , TargetInstanceList
    , targetInstanceList
    , tilNextPageToken
    , tilKind
    , tilItems
    , tilSelfLink
    , tilId

    -- * ImageContainerTypeRawDisk
    , ImageContainerTypeRawDisk (..)

    -- * InstancesScopedListItemDataWarning
    , InstancesScopedListItemDataWarning
    , instancesScopedListItemDataWarning
    , islidwValue
    , islidwKey

    -- * InstanceGroupManagersScopedList
    , InstanceGroupManagersScopedList
    , instanceGroupManagersScopedList
    , igmslWarning
    , igmslInstanceGroupManagers

    -- * OperationsScopedList
    , OperationsScopedList
    , operationsScopedList
    , oslWarning
    , oslOperations

    -- * OperationItemWarnings
    , OperationItemWarnings
    , operationItemWarnings
    , oiwData
    , oiwCode
    , oiwMessage

    -- * ZoneItemMaintenanceWindows
    , ZoneItemMaintenanceWindows
    , zoneItemMaintenanceWindows
    , zimwBeginTime
    , zimwName
    , zimwEndTime
    , zimwDescription

    -- * TargetPoolSessionAffinity
    , TargetPoolSessionAffinity (..)

    -- * TargetReference
    , TargetReference
    , targetReference
    , trTarget

    -- * InstanceWithNamedPorts
    , InstanceWithNamedPorts
    , instanceWithNamedPorts
    , iwnpStatus
    , iwnpNamedPorts
    , iwnpInstance

    -- * ForwardingRuleAggregatedList
    , ForwardingRuleAggregatedList
    , forwardingRuleAggregatedList
    , fralNextPageToken
    , fralKind
    , fralItems
    , fralSelfLink
    , fralId

    -- * InstancesScopedListCodeWarning
    , InstancesScopedListCodeWarning (..)

    -- * ForwardingRulesScopedList
    , ForwardingRulesScopedList
    , forwardingRulesScopedList
    , frslWarning
    , frslForwardingRules

    -- * InstanceReference
    , InstanceReference
    , instanceReference
    , irInstance

    -- * NamedPort
    , NamedPort
    , namedPort
    , npName
    , npPort

    -- * Alt
    , Alt (..)

    -- * DiskStatus
    , DiskStatus (..)

    -- * DisksScopedList
    , DisksScopedList
    , disksScopedList
    , dslWarning
    , dslDisks

    -- * DiskAggregatedList
    , DiskAggregatedList
    , diskAggregatedList
    , dalNextPageToken
    , dalKind
    , dalItems
    , dalSelfLink
    , dalId

    -- * ImageRawDisk
    , ImageRawDisk
    , imageRawDisk
    , irdContainerType
    , irdSource
    , irdSha1Checksum

    -- * Autoscaler
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

    -- * UrlMapValidationResult
    , UrlMapValidationResult
    , urlMapValidationResult
    , umvrLoadErrors
    , umvrLoadSucceeded
    , umvrTestPassed
    , umvrTestFailures

    -- * AddressesScopedListWarning
    , AddressesScopedListWarning
    , addressesScopedListWarning
    , aslwData
    , aslwCode
    , aslwMessage

    -- * AccessConfigType
    , AccessConfigType (..)

    -- * InstanceGroupsListInstances
    , InstanceGroupsListInstances
    , instanceGroupsListInstances
    , igliNextPageToken
    , igliKind
    , igliItems
    , igliSelfLink
    , igliId

    -- * TargetHttpProxy
    , TargetHttpProxy
    , targetHttpProxy
    , thpUrlMap
    , thpKind
    , thpSelfLink
    , thpName
    , thpCreationTimestamp
    , thpId
    , thpDescription

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
    , mtGuestCpus
    , mtMaximumPersistentDisksSizeGb
    , mtMaximumPersistentDisks
    , mtMemoryMb
    , mtDescription
    , mtDeprecated

    -- * Metadata
    , Metadata
    , metadata
    , mKind
    , mFingerprint
    , mItems

    -- * HealthStatus
    , HealthStatus
    , healthStatus
    , hsIpAddress
    , hsHealthState
    , hsPort
    , hsInstance

    -- * VpnTunnel
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

    -- * AddressesScopedListItemDataWarning
    , AddressesScopedListItemDataWarning
    , addressesScopedListItemDataWarning
    , aslidwValue
    , aslidwKey

    -- * Region
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

    -- * ImageStatus
    , ImageStatus (..)

    -- * TargetInstanceNatPolicy
    , TargetInstanceNatPolicy (..)

    -- * HealthStatusHealthState
    , HealthStatusHealthState (..)

    -- * Scheduling
    , Scheduling
    , scheduling
    , sAutomaticRestart
    , sOnHostMaintenance
    , sPreemptible

    -- * AddressesScopedListCodeWarning
    , AddressesScopedListCodeWarning (..)

    -- * OperationItemErrorsError
    , OperationItemErrorsError
    , operationItemErrorsError
    , oieeLocation
    , oieeCode
    , oieeMessage

    -- * HttpHealthCheckList
    , HttpHealthCheckList
    , httpHealthCheckList
    , hhclNextPageToken
    , hhclKind
    , hhclItems
    , hhclSelfLink
    , hhclId

    -- * TargetInstancesScopedListItemDataWarning
    , TargetInstancesScopedListItemDataWarning
    , targetInstancesScopedListItemDataWarning
    , tislidwValue
    , tislidwKey

    -- * TargetInstancesScopedListCodeWarning
    , TargetInstancesScopedListCodeWarning (..)

    -- * RouteCodeItemWarnings
    , RouteCodeItemWarnings (..)

    -- * DisksScopedListWarning
    , DisksScopedListWarning
    , disksScopedListWarning
    , dslwData
    , dslwCode
    , dslwMessage

    -- * RouteItemDataItemWarnings
    , RouteItemDataItemWarnings
    , routeItemDataItemWarnings
    , ridiwValue
    , ridiwKey

    -- * BackendServiceList
    , BackendServiceList
    , backendServiceList
    , bslNextPageToken
    , bslKind
    , bslItems
    , bslSelfLink
    , bslId

    -- * ManagedInstanceLastAttempt
    , ManagedInstanceLastAttempt
    , managedInstanceLastAttempt
    , milaErrors

    -- * TargetPoolsScopedListWarning
    , TargetPoolsScopedListWarning
    , targetPoolsScopedListWarning
    , tpslwData
    , tpslwCode
    , tpslwMessage

    -- * InstanceGroupManagersSetTargetPoolsRequest
    , InstanceGroupManagersSetTargetPoolsRequest
    , instanceGroupManagersSetTargetPoolsRequest
    , igmstprFingerprint
    , igmstprTargetPools

    -- * MachineTypesScopedListWarning
    , MachineTypesScopedListWarning
    , machineTypesScopedListWarning
    , mtslwData
    , mtslwCode
    , mtslwMessage

    -- * VpnTunnelsScopedListItemDataWarning
    , VpnTunnelsScopedListItemDataWarning
    , vpnTunnelsScopedListItemDataWarning
    , vtslidwValue
    , vtslidwKey

    -- * InstanceGroupManagersScopedListWarning
    , InstanceGroupManagersScopedListWarning
    , instanceGroupManagersScopedListWarning
    , igmslwData
    , igmslwCode
    , igmslwMessage

    -- * VpnTunnelsScopedListCodeWarning
    , VpnTunnelsScopedListCodeWarning (..)

    -- * PathRule
    , PathRule
    , pathRule
    , prService
    , prPaths

    -- * License
    , License
    , license
    , lChargesUseFee
    , lKind
    , lSelfLink
    , lName

    -- * ForwardingRulesScopedListWarning
    , ForwardingRulesScopedListWarning
    , forwardingRulesScopedListWarning
    , frslwData
    , frslwCode
    , frslwMessage

    -- * InstanceAggregatedListItems
    , InstanceAggregatedListItems
    , instanceAggregatedListItems

    -- * InstanceList
    , InstanceList
    , instanceList
    , ilNextPageToken
    , ilKind
    , ilItems
    , ilSelfLink
    , ilId

    -- * UrlMapsValidateRequest
    , UrlMapsValidateRequest
    , urlMapsValidateRequest
    , umvrResource

    -- * InstanceGroupManagersScopedListCodeWarning
    , InstanceGroupManagersScopedListCodeWarning (..)

    -- * OperationError
    , OperationError
    , operationError
    , oeErrors

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

    -- * TargetInstancesScopedListWarning
    , TargetInstancesScopedListWarning
    , targetInstancesScopedListWarning
    , tislwData
    , tislwCode
    , tislwMessage

    -- * InstanceStatus
    , InstanceStatus (..)

    -- * MachineTypesScopedListCodeWarning
    , MachineTypesScopedListCodeWarning (..)

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

    -- * MachineTypesScopedListItemDataWarning
    , MachineTypesScopedListItemDataWarning
    , machineTypesScopedListItemDataWarning
    , mtslidwValue
    , mtslidwKey

    -- * TargetPoolsScopedListCodeWarning
    , TargetPoolsScopedListCodeWarning (..)

    -- * InstanceGroupManagersRecreateInstancesRequest
    , InstanceGroupManagersRecreateInstancesRequest
    , instanceGroupManagersRecreateInstancesRequest
    , igmrirInstances

    -- * DisksScopedListItemDataWarning
    , DisksScopedListItemDataWarning
    , disksScopedListItemDataWarning
    , dslidwValue
    , dslidwKey

    -- * ForwardingRulesScopedListCodeWarning
    , ForwardingRulesScopedListCodeWarning (..)

    -- * InstanceGroupManagersScopedListItemDataWarning
    , InstanceGroupManagersScopedListItemDataWarning
    , instanceGroupManagersScopedListItemDataWarning
    , igmslidwValue
    , igmslidwKey

    -- * TargetPoolsScopedListItemDataWarning
    , TargetPoolsScopedListItemDataWarning
    , targetPoolsScopedListItemDataWarning
    , tpslidwValue
    , tpslidwKey

    -- * Address
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

    -- * ForwardingRulesScopedListItemDataWarning
    , ForwardingRulesScopedListItemDataWarning
    , forwardingRulesScopedListItemDataWarning
    , frslidwValue
    , frslidwKey

    -- * VpnTunnelsScopedListWarning
    , VpnTunnelsScopedListWarning
    , vpnTunnelsScopedListWarning
    , vtslwData
    , vtslwCode
    , vtslwMessage

    -- * Network
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

    -- * DisksScopedListCodeWarning
    , DisksScopedListCodeWarning (..)

    -- * ForwardingRuleIPProtocol
    , ForwardingRuleIPProtocol (..)

    -- * Instance
    , Instance
    , instance'
    , iiStatus
    , iiServiceAccounts
    , iiNetworkInterfaces
    , iiKind
    , iiZone
    , iiCpuPlatform
    , iiSelfLink
    , iiName
    , iiStatusMessage
    , iiCreationTimestamp
    , iiMachineType
    , iiMetadata
    , iiId
    , iiScheduling
    , iiDisks
    , iiCanIpForward
    , iiDescription
    , iiTags

    -- * InstanceMoveRequest
    , InstanceMoveRequest
    , instanceMoveRequest
    , imrTargetInstance
    , imrDestinationZone

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

    -- * PathMatcher
    , PathMatcher
    , pathMatcher
    , pmDefaultService
    , pmName
    , pmPathRules
    , pmDescription

    -- * Tags
    , Tags
    , tags
    , tFingerprint
    , tItems

    -- * UrlMapTest
    , UrlMapTest
    , urlMapTest
    , umtPath
    , umtService
    , umtHost
    , umtDescription

    -- * ImageSourceType
    , ImageSourceType (..)

    -- * ZoneStatus
    , ZoneStatus (..)

    -- * AddressAggregatedList
    , AddressAggregatedList
    , addressAggregatedList
    , aalNextPageToken
    , aalKind
    , aalItems
    , aalSelfLink
    , aalId

    -- * InstanceGroupsScopedList
    , InstanceGroupsScopedList
    , instanceGroupsScopedList
    , igslWarning
    , igslInstanceGroups

    -- * DeprecationStatus
    , DeprecationStatus
    , deprecationStatus
    , dsState
    , dsDeleted
    , dsReplacement
    , dsObsolete
    , dsDeprecated

    -- * InstanceGroupManagersSetInstanceTemplateRequest
    , InstanceGroupManagersSetInstanceTemplateRequest
    , instanceGroupManagersSetInstanceTemplateRequest
    , igmsitrInstanceTemplate

    -- * InstanceGroupList
    , InstanceGroupList
    , instanceGroupList
    , iglNextPageToken
    , iglKind
    , iglItems
    , iglSelfLink
    , iglId

    -- * InstanceGroupManagersAbandonInstancesRequest
    , InstanceGroupManagersAbandonInstancesRequest
    , instanceGroupManagersAbandonInstancesRequest
    , igmairInstances

    -- * BackendServiceProtocol
    , BackendServiceProtocol (..)

    -- * FirewallList
    , FirewallList
    , firewallList
    , flNextPageToken
    , flKind
    , flItems
    , flSelfLink
    , flId

    -- * AttachedDiskType
    , AttachedDiskType (..)

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

    -- * InstanceGroupAggregatedListItems
    , InstanceGroupAggregatedListItems
    , instanceGroupAggregatedListItems

    -- * AddressesScopedList
    , AddressesScopedList
    , addressesScopedList
    , aslAddresses
    , aslWarning

    -- * UrlMap
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

    -- * DiskList
    , DiskList
    , diskList
    , dlNextPageToken
    , dlKind
    , dlItems
    , dlSelfLink
    , dlId

    -- * TargetPoolAggregatedListItems
    , TargetPoolAggregatedListItems
    , targetPoolAggregatedListItems

    -- * InstanceGroupsAddInstancesRequest
    , InstanceGroupsAddInstancesRequest
    , instanceGroupsAddInstancesRequest
    , igairInstances

    -- * DiskAggregatedListItems
    , DiskAggregatedListItems
    , diskAggregatedListItems

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

    -- * VpnTunnelsScopedList
    , VpnTunnelsScopedList
    , vpnTunnelsScopedList
    , vtslVpnTunnels
    , vtslWarning

    -- * InstancesScopedListWarning
    , InstancesScopedListWarning
    , instancesScopedListWarning
    , islwData
    , islwCode
    , islwMessage

    -- * TargetPoolList
    , TargetPoolList
    , targetPoolList
    , tplNextPageToken
    , tplKind
    , tplItems
    , tplSelfLink
    , tplId

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

    -- * ForwardingRuleAggregatedListItems
    , ForwardingRuleAggregatedListItems
    , forwardingRuleAggregatedListItems

    -- * OperationList
    , OperationList
    , operationList
    , olNextPageToken
    , olKind
    , olItems
    , olSelfLink
    , olId

    -- * InstanceGroupManagerList
    , InstanceGroupManagerList
    , instanceGroupManagerList
    , igmlNextPageToken
    , igmlKind
    , igmlItems
    , igmlSelfLink
    , igmlId

    -- * TargetPoolsAddInstanceRequest
    , TargetPoolsAddInstanceRequest
    , targetPoolsAddInstanceRequest
    , tpairInstances

    -- * InstanceGroupManagerAggregatedListItems
    , InstanceGroupManagerAggregatedListItems
    , instanceGroupManagerAggregatedListItems

    -- * MachineTypeAggregatedListItems
    , MachineTypeAggregatedListItems
    , machineTypeAggregatedListItems

    -- * ForwardingRuleList
    , ForwardingRuleList
    , forwardingRuleList
    , frlNextPageToken
    , frlKind
    , frlItems
    , frlSelfLink
    , frlId

    -- * VpnTunnelStatus
    , VpnTunnelStatus (..)

    -- * TargetVpnGatewaysScopedListItemDataWarning
    , TargetVpnGatewaysScopedListItemDataWarning
    , targetVpnGatewaysScopedListItemDataWarning
    , tvgslidwValue
    , tvgslidwKey

    -- * RegionList
    , RegionList
    , regionList
    , rlNextPageToken
    , rlKind
    , rlItems
    , rlSelfLink
    , rlId

    -- * MachineTypesScopedList
    , MachineTypesScopedList
    , machineTypesScopedList
    , mtslMachineTypes
    , mtslWarning

    -- * BackendServiceGroupHealth
    , BackendServiceGroupHealth
    , backendServiceGroupHealth
    , bsghKind
    , bsghHealthStatus

    -- * VpnTunnelAggregatedListItems
    , VpnTunnelAggregatedListItems
    , vpnTunnelAggregatedListItems

    -- * TargetVpnGatewaysScopedListCodeWarning
    , TargetVpnGatewaysScopedListCodeWarning (..)

    -- * AutoscalingPolicy
    , AutoscalingPolicy
    , autoscalingPolicy
    , apCustomMetricUtilizations
    , apMaxNumReplicas
    , apCpuUtilization
    , apLoadBalancingUtilization
    , apMinNumReplicas
    , apCoolDownPeriodSec

    -- * DiskTypeAggregatedList
    , DiskTypeAggregatedList
    , diskTypeAggregatedList
    , dtalNextPageToken
    , dtalKind
    , dtalItems
    , dtalSelfLink
    , dtalId

    -- * TargetInstanceAggregatedListItems
    , TargetInstanceAggregatedListItems
    , targetInstanceAggregatedListItems

    -- * AutoscalerAggregatedList
    , AutoscalerAggregatedList
    , autoscalerAggregatedList
    , aalaNextPageToken
    , aalaKind
    , aalaItems
    , aalaSelfLink
    , aalaId

    -- * ManagedInstanceInstanceStatus
    , ManagedInstanceInstanceStatus (..)

    -- * VpnTunnelList
    , VpnTunnelList
    , vpnTunnelList
    , vtlNextPageToken
    , vtlKind
    , vtlItems
    , vtlSelfLink
    , vtlId

    -- * HttpHealthCheck
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

    -- * MachineTypeAggregatedList
    , MachineTypeAggregatedList
    , machineTypeAggregatedList
    , mtalNextPageToken
    , mtalKind
    , mtalItems
    , mtalSelfLink
    , mtalId

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

    -- * OperationStatus
    , OperationStatus (..)

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

    -- * MetadataItemItems
    , MetadataItemItems
    , metadataItemItems
    , miiValue
    , miiKey

    -- * InstanceGroupsScopedListItemDataWarning
    , InstanceGroupsScopedListItemDataWarning
    , instanceGroupsScopedListItemDataWarning
    , igslidwValue
    , igslidwKey

    -- * InstanceGroupsScopedListCodeWarning
    , InstanceGroupsScopedListCodeWarning (..)

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

    -- * AutoscalingPolicyLoadBalancingUtilization
    , AutoscalingPolicyLoadBalancingUtilization
    , autoscalingPolicyLoadBalancingUtilization
    , aplbuUtilizationTarget

    -- * InstanceWithNamedPortsStatus
    , InstanceWithNamedPortsStatus (..)

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

    -- * UrlMapList
    , UrlMapList
    , urlMapList
    , umlNextPageToken
    , umlKind
    , umlItems
    , umlSelfLink
    , umlId

    -- * ManagedInstanceLastAttemptItemErrorsErrors
    , ManagedInstanceLastAttemptItemErrorsErrors
    , managedInstanceLastAttemptItemErrorsErrors
    , milaieeLocation
    , milaieeCode
    , milaieeMessage

    -- * ImageList
    , ImageList
    , imageList
    , imaNextPageToken
    , imaKind
    , imaItems
    , imaSelfLink
    , imaId

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

    -- * InstanceGroupManagersListManagedInstancesResponse
    , InstanceGroupManagersListManagedInstancesResponse
    , instanceGroupManagersListManagedInstancesResponse
    , igmlmirManagedInstances

    -- * TargetPoolInstanceHealth
    , TargetPoolInstanceHealth
    , targetPoolInstanceHealth
    , tpihKind
    , tpihHealthStatus

    -- * InstanceGroupsScopedListWarning
    , InstanceGroupsScopedListWarning
    , instanceGroupsScopedListWarning
    , igslwData
    , igslwCode
    , igslwMessage

    -- * InstanceProperties
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

    -- * DeprecationStatusState
    , DeprecationStatusState (..)

    -- * FirewallItemAllowed
    , FirewallItemAllowed
    , firewallItemAllowed
    , fiaIPProtocol
    , fiaPorts

    -- * TargetPoolsRemoveInstanceRequest
    , TargetPoolsRemoveInstanceRequest
    , targetPoolsRemoveInstanceRequest
    , tprirInstances

    -- * TargetInstance
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

    -- * InstanceGroupsRemoveInstancesRequest
    , InstanceGroupsRemoveInstancesRequest
    , instanceGroupsRemoveInstancesRequest
    , igrirInstances

    -- * ManagedInstanceCurrentAction
    , ManagedInstanceCurrentAction (..)

    -- * OperationsScopedListWarning
    , OperationsScopedListWarning
    , operationsScopedListWarning
    , oslwData
    , oslwCode
    , oslwMessage

    -- * ManagedInstanceLastAttemptErrors
    , ManagedInstanceLastAttemptErrors
    , managedInstanceLastAttemptErrors
    , milaeErrors

    -- * AutoscalersScopedListWarning
    , AutoscalersScopedListWarning
    , autoscalersScopedListWarning
    , aData
    , aCode
    , aMessage

    -- * TargetPoolsRemoveHealthCheckRequest
    , TargetPoolsRemoveHealthCheckRequest
    , targetPoolsRemoveHealthCheckRequest
    , tprhcrHealthChecks

    -- * TargetVpnGatewayList
    , TargetVpnGatewayList
    , targetVpnGatewayList
    , tvglNextPageToken
    , tvglKind
    , tvglItems
    , tvglSelfLink
    , tvglId

    -- * InstanceTemplateList
    , InstanceTemplateList
    , instanceTemplateList
    , itlNextPageToken
    , itlKind
    , itlItems
    , itlSelfLink
    , itlId

    -- * SnapshotStorageBytesStatus
    , SnapshotStorageBytesStatus (..)

    -- * DiskTypesScopedListWarning
    , DiskTypesScopedListWarning
    , diskTypesScopedListWarning
    , dtslwData
    , dtslwCode
    , dtslwMessage

    -- * AttachedDiskInitializeParams
    , AttachedDiskInitializeParams
    , attachedDiskInitializeParams
    , adipSourceImage
    , adipDiskSizeGb
    , adipDiskName
    , adipDiskType

    -- * RouteList
    , RouteList
    , routeList
    , rouNextPageToken
    , rouKind
    , rouItems
    , rouSelfLink
    , rouId

    -- * NetworkInterface
    , NetworkInterface
    , networkInterface
    , niNetwork
    , niName
    , niNetworkIP
    , niAccessConfigs

    -- * TargetVpnGatewayAggregatedListItems
    , TargetVpnGatewayAggregatedListItems
    , targetVpnGatewayAggregatedListItems

    -- * SnapshotStatus
    , SnapshotStatus (..)

    -- * SnapshotList
    , SnapshotList
    , snapshotList
    , slNextPageToken
    , slKind
    , slItems
    , slSelfLink
    , slId

    -- * AccessConfig
    , AccessConfig
    , accessConfig
    , acKind
    , acName
    , acNatIP
    , acType

    -- * AutoscalersScopedListItemDataWarning
    , AutoscalersScopedListItemDataWarning
    , autoscalersScopedListItemDataWarning
    , autValue
    , autKey

    -- * Quota
    , Quota
    , quota
    , qMetric
    , qLimit
    , qUsage

    -- * DiskTypesScopedListItemDataWarning
    , DiskTypesScopedListItemDataWarning
    , diskTypesScopedListItemDataWarning
    , dtslidwValue
    , dtslidwKey

    -- * SerialPortOutput
    , SerialPortOutput
    , serialPortOutput
    , spoContents
    , spoKind
    , spoSelfLink

    -- * HostRule
    , HostRule
    , hostRule
    , hrHosts
    , hrDescription
    , hrPathMatcher

    -- * TestFailure
    , TestFailure
    , testFailure
    , tfPath
    , tfExpectedService
    , tfHost
    , tfActualService

    -- * TargetVpnGatewayStatus
    , TargetVpnGatewayStatus (..)

    -- * ResourceGroupReference
    , ResourceGroupReference
    , resourceGroupReference
    , rgrGroup

    -- * AutoscalingPolicyCpuUtilization
    , AutoscalingPolicyCpuUtilization
    , autoscalingPolicyCpuUtilization
    , apcuUtilizationTarget

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

    -- * TargetVpnGatewaysScopedList
    , TargetVpnGatewaysScopedList
    , targetVpnGatewaysScopedList
    , tvgslTargetVpnGateways
    , tvgslWarning

    -- * DiskTypesScopedListCodeWarning
    , DiskTypesScopedListCodeWarning (..)

    -- * OperationsScopedListCodeWarning
    , OperationsScopedListCodeWarning (..)

    -- * RouteItemWarnings
    , RouteItemWarnings
    , routeItemWarnings
    , riwData
    , riwCode
    , riwMessage

    -- * AutoscalersScopedListCodeWarning
    , AutoscalersScopedListCodeWarning (..)

    -- * InstanceGroup
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

    -- * OperationsScopedListItemDataWarning
    , OperationsScopedListItemDataWarning
    , operationsScopedListItemDataWarning
    , oslidwValue
    , oslidwKey

    -- * TargetVpnGatewayAggregatedList
    , TargetVpnGatewayAggregatedList
    , targetVpnGatewayAggregatedList
    , tvgalNextPageToken
    , tvgalKind
    , tvgalItems
    , tvgalSelfLink
    , tvgalId

    -- * HealthCheckReference
    , HealthCheckReference
    , healthCheckReference
    , hcrHealthCheck

    -- * UrlMapsValidateResponse
    , UrlMapsValidateResponse
    , urlMapsValidateResponse
    , umvrResult

    -- * AddressStatus
    , AddressStatus (..)

    -- * MachineTypeItemScratchDisks
    , MachineTypeItemScratchDisks
    , machineTypeItemScratchDisks
    , mtisdDiskGb

    -- * AttachedDiskInterface
    , AttachedDiskInterface (..)

    -- * Route
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

    -- * InstanceGroupsListInstancesRequestInstanceState
    , InstanceGroupsListInstancesRequestInstanceState (..)

    -- * InstanceGroupAggregatedList
    , InstanceGroupAggregatedList
    , instanceGroupAggregatedList
    , igalNextPageToken
    , igalKind
    , igalItems
    , igalSelfLink
    , igalId

    -- * QuotaMetric
    , QuotaMetric (..)

    -- * TargetVpnGateway
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
