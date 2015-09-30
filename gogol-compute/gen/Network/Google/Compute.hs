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
    -- * API
      ComputeAPI
    , computeAPI
    , computeURL

    -- * Service Methods

    -- * REST Resources

    -- ** ComputeAddressesAggregatedList
    , module Compute.Addresses.AggregatedList

    -- ** ComputeAddressesDelete
    , module Compute.Addresses.Delete

    -- ** ComputeAddressesGet
    , module Compute.Addresses.Get

    -- ** ComputeAddressesInsert
    , module Compute.Addresses.Insert

    -- ** ComputeAddressesList
    , module Compute.Addresses.List

    -- ** ComputeAutoscalersAggregatedList
    , module Compute.Autoscalers.AggregatedList

    -- ** ComputeAutoscalersDelete
    , module Compute.Autoscalers.Delete

    -- ** ComputeAutoscalersGet
    , module Compute.Autoscalers.Get

    -- ** ComputeAutoscalersInsert
    , module Compute.Autoscalers.Insert

    -- ** ComputeAutoscalersList
    , module Compute.Autoscalers.List

    -- ** ComputeAutoscalersPatch
    , module Compute.Autoscalers.Patch

    -- ** ComputeAutoscalersUpdate
    , module Compute.Autoscalers.Update

    -- ** ComputeBackendServicesDelete
    , module Compute.BackendServices.Delete

    -- ** ComputeBackendServicesGet
    , module Compute.BackendServices.Get

    -- ** ComputeBackendServicesGetHealth
    , module Compute.BackendServices.GetHealth

    -- ** ComputeBackendServicesInsert
    , module Compute.BackendServices.Insert

    -- ** ComputeBackendServicesList
    , module Compute.BackendServices.List

    -- ** ComputeBackendServicesPatch
    , module Compute.BackendServices.Patch

    -- ** ComputeBackendServicesUpdate
    , module Compute.BackendServices.Update

    -- ** ComputeDiskTypesAggregatedList
    , module Compute.DiskTypes.AggregatedList

    -- ** ComputeDiskTypesGet
    , module Compute.DiskTypes.Get

    -- ** ComputeDiskTypesList
    , module Compute.DiskTypes.List

    -- ** ComputeDisksAggregatedList
    , module Compute.Disks.AggregatedList

    -- ** ComputeDisksCreateSnapshot
    , module Compute.Disks.CreateSnapshot

    -- ** ComputeDisksDelete
    , module Compute.Disks.Delete

    -- ** ComputeDisksGet
    , module Compute.Disks.Get

    -- ** ComputeDisksInsert
    , module Compute.Disks.Insert

    -- ** ComputeDisksList
    , module Compute.Disks.List

    -- ** ComputeFirewallsDelete
    , module Compute.Firewalls.Delete

    -- ** ComputeFirewallsGet
    , module Compute.Firewalls.Get

    -- ** ComputeFirewallsInsert
    , module Compute.Firewalls.Insert

    -- ** ComputeFirewallsList
    , module Compute.Firewalls.List

    -- ** ComputeFirewallsPatch
    , module Compute.Firewalls.Patch

    -- ** ComputeFirewallsUpdate
    , module Compute.Firewalls.Update

    -- ** ComputeForwardingRulesAggregatedList
    , module Compute.ForwardingRules.AggregatedList

    -- ** ComputeForwardingRulesDelete
    , module Compute.ForwardingRules.Delete

    -- ** ComputeForwardingRulesGet
    , module Compute.ForwardingRules.Get

    -- ** ComputeForwardingRulesInsert
    , module Compute.ForwardingRules.Insert

    -- ** ComputeForwardingRulesList
    , module Compute.ForwardingRules.List

    -- ** ComputeForwardingRulesSetTarget
    , module Compute.ForwardingRules.SetTarget

    -- ** ComputeGlobalAddressesDelete
    , module Compute.GlobalAddresses.Delete

    -- ** ComputeGlobalAddressesGet
    , module Compute.GlobalAddresses.Get

    -- ** ComputeGlobalAddressesInsert
    , module Compute.GlobalAddresses.Insert

    -- ** ComputeGlobalAddressesList
    , module Compute.GlobalAddresses.List

    -- ** ComputeGlobalForwardingRulesDelete
    , module Compute.GlobalForwardingRules.Delete

    -- ** ComputeGlobalForwardingRulesGet
    , module Compute.GlobalForwardingRules.Get

    -- ** ComputeGlobalForwardingRulesInsert
    , module Compute.GlobalForwardingRules.Insert

    -- ** ComputeGlobalForwardingRulesList
    , module Compute.GlobalForwardingRules.List

    -- ** ComputeGlobalForwardingRulesSetTarget
    , module Compute.GlobalForwardingRules.SetTarget

    -- ** ComputeGlobalOperationsAggregatedList
    , module Compute.GlobalOperations.AggregatedList

    -- ** ComputeGlobalOperationsDelete
    , module Compute.GlobalOperations.Delete

    -- ** ComputeGlobalOperationsGet
    , module Compute.GlobalOperations.Get

    -- ** ComputeGlobalOperationsList
    , module Compute.GlobalOperations.List

    -- ** ComputeHTTPHealthChecksDelete
    , module Compute.HTTPHealthChecks.Delete

    -- ** ComputeHTTPHealthChecksGet
    , module Compute.HTTPHealthChecks.Get

    -- ** ComputeHTTPHealthChecksInsert
    , module Compute.HTTPHealthChecks.Insert

    -- ** ComputeHTTPHealthChecksList
    , module Compute.HTTPHealthChecks.List

    -- ** ComputeHTTPHealthChecksPatch
    , module Compute.HTTPHealthChecks.Patch

    -- ** ComputeHTTPHealthChecksUpdate
    , module Compute.HTTPHealthChecks.Update

    -- ** ComputeImagesDelete
    , module Compute.Images.Delete

    -- ** ComputeImagesDeprecate
    , module Compute.Images.Deprecate

    -- ** ComputeImagesGet
    , module Compute.Images.Get

    -- ** ComputeImagesInsert
    , module Compute.Images.Insert

    -- ** ComputeImagesList
    , module Compute.Images.List

    -- ** ComputeInstanceGroupManagersAbandonInstances
    , module Compute.InstanceGroupManagers.AbandonInstances

    -- ** ComputeInstanceGroupManagersAggregatedList
    , module Compute.InstanceGroupManagers.AggregatedList

    -- ** ComputeInstanceGroupManagersDelete
    , module Compute.InstanceGroupManagers.Delete

    -- ** ComputeInstanceGroupManagersDeleteInstances
    , module Compute.InstanceGroupManagers.DeleteInstances

    -- ** ComputeInstanceGroupManagersGet
    , module Compute.InstanceGroupManagers.Get

    -- ** ComputeInstanceGroupManagersInsert
    , module Compute.InstanceGroupManagers.Insert

    -- ** ComputeInstanceGroupManagersList
    , module Compute.InstanceGroupManagers.List

    -- ** ComputeInstanceGroupManagersListManagedInstances
    , module Compute.InstanceGroupManagers.ListManagedInstances

    -- ** ComputeInstanceGroupManagersRecreateInstances
    , module Compute.InstanceGroupManagers.RecreateInstances

    -- ** ComputeInstanceGroupManagersResize
    , module Compute.InstanceGroupManagers.Resize

    -- ** ComputeInstanceGroupManagersSetInstanceTemplate
    , module Compute.InstanceGroupManagers.SetInstanceTemplate

    -- ** ComputeInstanceGroupManagersSetTargetPools
    , module Compute.InstanceGroupManagers.SetTargetPools

    -- ** ComputeInstanceGroupsAddInstances
    , module Compute.InstanceGroups.AddInstances

    -- ** ComputeInstanceGroupsAggregatedList
    , module Compute.InstanceGroups.AggregatedList

    -- ** ComputeInstanceGroupsDelete
    , module Compute.InstanceGroups.Delete

    -- ** ComputeInstanceGroupsGet
    , module Compute.InstanceGroups.Get

    -- ** ComputeInstanceGroupsInsert
    , module Compute.InstanceGroups.Insert

    -- ** ComputeInstanceGroupsList
    , module Compute.InstanceGroups.List

    -- ** ComputeInstanceGroupsListInstances
    , module Compute.InstanceGroups.ListInstances

    -- ** ComputeInstanceGroupsRemoveInstances
    , module Compute.InstanceGroups.RemoveInstances

    -- ** ComputeInstanceGroupsSetNamedPorts
    , module Compute.InstanceGroups.SetNamedPorts

    -- ** ComputeInstanceTemplatesDelete
    , module Compute.InstanceTemplates.Delete

    -- ** ComputeInstanceTemplatesGet
    , module Compute.InstanceTemplates.Get

    -- ** ComputeInstanceTemplatesInsert
    , module Compute.InstanceTemplates.Insert

    -- ** ComputeInstanceTemplatesList
    , module Compute.InstanceTemplates.List

    -- ** ComputeInstancesAddAccessConfig
    , module Compute.Instances.AddAccessConfig

    -- ** ComputeInstancesAggregatedList
    , module Compute.Instances.AggregatedList

    -- ** ComputeInstancesAttachDisk
    , module Compute.Instances.AttachDisk

    -- ** ComputeInstancesDelete
    , module Compute.Instances.Delete

    -- ** ComputeInstancesDeleteAccessConfig
    , module Compute.Instances.DeleteAccessConfig

    -- ** ComputeInstancesDetachDisk
    , module Compute.Instances.DetachDisk

    -- ** ComputeInstancesGet
    , module Compute.Instances.Get

    -- ** ComputeInstancesGetSerialPortOutput
    , module Compute.Instances.GetSerialPortOutput

    -- ** ComputeInstancesInsert
    , module Compute.Instances.Insert

    -- ** ComputeInstancesList
    , module Compute.Instances.List

    -- ** ComputeInstancesReset
    , module Compute.Instances.Reset

    -- ** ComputeInstancesSetDiskAutoDelete
    , module Compute.Instances.SetDiskAutoDelete

    -- ** ComputeInstancesSetMetadata
    , module Compute.Instances.SetMetadata

    -- ** ComputeInstancesSetScheduling
    , module Compute.Instances.SetScheduling

    -- ** ComputeInstancesSetTags
    , module Compute.Instances.SetTags

    -- ** ComputeInstancesStart
    , module Compute.Instances.Start

    -- ** ComputeInstancesStop
    , module Compute.Instances.Stop

    -- ** ComputeLicensesGet
    , module Compute.Licenses.Get

    -- ** ComputeMachineTypesAggregatedList
    , module Compute.MachineTypes.AggregatedList

    -- ** ComputeMachineTypesGet
    , module Compute.MachineTypes.Get

    -- ** ComputeMachineTypesList
    , module Compute.MachineTypes.List

    -- ** ComputeNetworksDelete
    , module Compute.Networks.Delete

    -- ** ComputeNetworksGet
    , module Compute.Networks.Get

    -- ** ComputeNetworksInsert
    , module Compute.Networks.Insert

    -- ** ComputeNetworksList
    , module Compute.Networks.List

    -- ** ComputeProjectsGet
    , module Compute.Projects.Get

    -- ** ComputeProjectsMoveDisk
    , module Compute.Projects.MoveDisk

    -- ** ComputeProjectsMoveInstance
    , module Compute.Projects.MoveInstance

    -- ** ComputeProjectsSetCommonInstanceMetadata
    , module Compute.Projects.SetCommonInstanceMetadata

    -- ** ComputeProjectsSetUsageExportBucket
    , module Compute.Projects.SetUsageExportBucket

    -- ** ComputeRegionOperationsDelete
    , module Compute.RegionOperations.Delete

    -- ** ComputeRegionOperationsGet
    , module Compute.RegionOperations.Get

    -- ** ComputeRegionOperationsList
    , module Compute.RegionOperations.List

    -- ** ComputeRegionsGet
    , module Compute.Regions.Get

    -- ** ComputeRegionsList
    , module Compute.Regions.List

    -- ** ComputeRoutesDelete
    , module Compute.Routes.Delete

    -- ** ComputeRoutesGet
    , module Compute.Routes.Get

    -- ** ComputeRoutesInsert
    , module Compute.Routes.Insert

    -- ** ComputeRoutesList
    , module Compute.Routes.List

    -- ** ComputeSnapshotsDelete
    , module Compute.Snapshots.Delete

    -- ** ComputeSnapshotsGet
    , module Compute.Snapshots.Get

    -- ** ComputeSnapshotsList
    , module Compute.Snapshots.List

    -- ** ComputeTargetHTTPProxiesDelete
    , module Compute.TargetHTTPProxies.Delete

    -- ** ComputeTargetHTTPProxiesGet
    , module Compute.TargetHTTPProxies.Get

    -- ** ComputeTargetHTTPProxiesInsert
    , module Compute.TargetHTTPProxies.Insert

    -- ** ComputeTargetHTTPProxiesList
    , module Compute.TargetHTTPProxies.List

    -- ** ComputeTargetHTTPProxiesSetURLMap
    , module Compute.TargetHTTPProxies.SetURLMap

    -- ** ComputeTargetInstancesAggregatedList
    , module Compute.TargetInstances.AggregatedList

    -- ** ComputeTargetInstancesDelete
    , module Compute.TargetInstances.Delete

    -- ** ComputeTargetInstancesGet
    , module Compute.TargetInstances.Get

    -- ** ComputeTargetInstancesInsert
    , module Compute.TargetInstances.Insert

    -- ** ComputeTargetInstancesList
    , module Compute.TargetInstances.List

    -- ** ComputeTargetPoolsAddHealthCheck
    , module Compute.TargetPools.AddHealthCheck

    -- ** ComputeTargetPoolsAddInstance
    , module Compute.TargetPools.AddInstance

    -- ** ComputeTargetPoolsAggregatedList
    , module Compute.TargetPools.AggregatedList

    -- ** ComputeTargetPoolsDelete
    , module Compute.TargetPools.Delete

    -- ** ComputeTargetPoolsGet
    , module Compute.TargetPools.Get

    -- ** ComputeTargetPoolsGetHealth
    , module Compute.TargetPools.GetHealth

    -- ** ComputeTargetPoolsInsert
    , module Compute.TargetPools.Insert

    -- ** ComputeTargetPoolsList
    , module Compute.TargetPools.List

    -- ** ComputeTargetPoolsRemoveHealthCheck
    , module Compute.TargetPools.RemoveHealthCheck

    -- ** ComputeTargetPoolsRemoveInstance
    , module Compute.TargetPools.RemoveInstance

    -- ** ComputeTargetPoolsSetBackup
    , module Compute.TargetPools.SetBackup

    -- ** ComputeTargetVPNGatewaysAggregatedList
    , module Compute.TargetVPNGateways.AggregatedList

    -- ** ComputeTargetVPNGatewaysDelete
    , module Compute.TargetVPNGateways.Delete

    -- ** ComputeTargetVPNGatewaysGet
    , module Compute.TargetVPNGateways.Get

    -- ** ComputeTargetVPNGatewaysInsert
    , module Compute.TargetVPNGateways.Insert

    -- ** ComputeTargetVPNGatewaysList
    , module Compute.TargetVPNGateways.List

    -- ** ComputeURLMapsDelete
    , module Compute.URLMaps.Delete

    -- ** ComputeURLMapsGet
    , module Compute.URLMaps.Get

    -- ** ComputeURLMapsInsert
    , module Compute.URLMaps.Insert

    -- ** ComputeURLMapsList
    , module Compute.URLMaps.List

    -- ** ComputeURLMapsPatch
    , module Compute.URLMaps.Patch

    -- ** ComputeURLMapsUpdate
    , module Compute.URLMaps.Update

    -- ** ComputeURLMapsValidate
    , module Compute.URLMaps.Validate

    -- ** ComputeVPNTunnelsAggregatedList
    , module Compute.VPNTunnels.AggregatedList

    -- ** ComputeVPNTunnelsDelete
    , module Compute.VPNTunnels.Delete

    -- ** ComputeVPNTunnelsGet
    , module Compute.VPNTunnels.Get

    -- ** ComputeVPNTunnelsInsert
    , module Compute.VPNTunnels.Insert

    -- ** ComputeVPNTunnelsList
    , module Compute.VPNTunnels.List

    -- ** ComputeZoneOperationsDelete
    , module Compute.ZoneOperations.Delete

    -- ** ComputeZoneOperationsGet
    , module Compute.ZoneOperations.Get

    -- ** ComputeZoneOperationsList
    , module Compute.ZoneOperations.List

    -- ** ComputeZonesGet
    , module Compute.Zones.Get

    -- ** ComputeZonesList
    , module Compute.Zones.List

    -- * Types

    -- ** InstanceGroupList
    , InstanceGroupList
    , instanceGroupList
    , iglNextPageToken
    , iglKind
    , iglItems
    , iglSelfLink
    , iglId

    -- ** InstanceGroupManagersSetInstanceTemplateRequest
    , InstanceGroupManagersSetInstanceTemplateRequest
    , instanceGroupManagersSetInstanceTemplateRequest
    , igmsitrInstanceTemplate

    -- ** InstanceGroupManagersAbandonInstancesRequest
    , InstanceGroupManagersAbandonInstancesRequest
    , instanceGroupManagersAbandonInstancesRequest
    , igmairInstances

    -- ** AddressesScopedList
    , AddressesScopedList
    , addressesScopedList
    , aslAddresses
    , aslWarning

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

    -- ** FirewallList
    , FirewallList
    , firewallList
    , flNextPageToken
    , flKind
    , flItems
    , flSelfLink
    , flId

    -- ** DeprecationStatus
    , DeprecationStatus
    , deprecationStatus
    , dsState
    , dsDeleted
    , dsReplacement
    , dsObsolete
    , dsDeprecated

    -- ** OperationList
    , OperationList
    , operationList
    , olNextPageToken
    , olKind
    , olItems
    , olSelfLink
    , olId

    -- ** VPNTunnelsScopedList
    , VPNTunnelsScopedList
    , vPNTunnelsScopedList
    , vtslVpnTunnels
    , vtslWarning

    -- ** InstanceGroupsAddInstancesRequest
    , InstanceGroupsAddInstancesRequest
    , instanceGroupsAddInstancesRequest
    , igairInstances

    -- ** TargetPoolList
    , TargetPoolList
    , targetPoolList
    , tplNextPageToken
    , tplKind
    , tplItems
    , tplSelfLink
    , tplId

    -- ** DiskList
    , DiskList
    , diskList
    , dlNextPageToken
    , dlKind
    , dlItems
    , dlSelfLink
    , dlId

    -- ** TargetPoolsAddInstanceRequest
    , TargetPoolsAddInstanceRequest
    , targetPoolsAddInstanceRequest
    , tpairInstances

    -- ** ForwardingRuleList
    , ForwardingRuleList
    , forwardingRuleList
    , frlNextPageToken
    , frlKind
    , frlItems
    , frlSelfLink
    , frlId

    -- ** URLMap
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

    -- ** InstanceGroupManagerList
    , InstanceGroupManagerList
    , instanceGroupManagerList
    , igmlNextPageToken
    , igmlKind
    , igmlItems
    , igmlSelfLink
    , igmlId

    -- ** InstanceGroupsSetNamedPortsRequest
    , InstanceGroupsSetNamedPortsRequest
    , instanceGroupsSetNamedPortsRequest
    , igsnprFingerprint
    , igsnprNamedPorts

    -- ** AutoscalingPolicyCustomMetricUtilization
    , AutoscalingPolicyCustomMetricUtilization
    , autoscalingPolicyCustomMetricUtilization
    , apcmuUtilizationTarget
    , apcmuMetric
    , apcmuUtilizationTargetType

    -- ** Image
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

    -- ** TargetInstanceAggregatedList
    , TargetInstanceAggregatedList
    , targetInstanceAggregatedList
    , tialNextPageToken
    , tialKind
    , tialItems
    , tialSelfLink
    , tialId

    -- ** ForwardingRulesScopedList
    , ForwardingRulesScopedList
    , forwardingRulesScopedList
    , frslWarning
    , frslForwardingRules

    -- ** DiskAggregatedList
    , DiskAggregatedList
    , diskAggregatedList
    , dalNextPageToken
    , dalKind
    , dalItems
    , dalSelfLink
    , dalId

    -- ** InstanceReference
    , InstanceReference
    , instanceReference
    , irInstance

    -- ** InstanceWithNamedPorts
    , InstanceWithNamedPorts
    , instanceWithNamedPorts
    , iwnpStatus
    , iwnpNamedPorts
    , iwnpInstance

    -- ** InstanceGroupManagersScopedList
    , InstanceGroupManagersScopedList
    , instanceGroupManagersScopedList
    , igmslWarning
    , igmslInstanceGroupManagers

    -- ** InstanceGroupManagerAggregatedList
    , InstanceGroupManagerAggregatedList
    , instanceGroupManagerAggregatedList
    , igmalNextPageToken
    , igmalKind
    , igmalItems
    , igmalSelfLink
    , igmalId

    -- ** DisksScopedList
    , DisksScopedList
    , disksScopedList
    , dslWarning
    , dslDisks

    -- ** NamedPort
    , NamedPort
    , namedPort
    , npName
    , npPort

    -- ** TargetPoolsScopedList
    , TargetPoolsScopedList
    , targetPoolsScopedList
    , tpslWarning
    , tpslTargetPools

    -- ** OperationsScopedList
    , OperationsScopedList
    , operationsScopedList
    , oslWarning
    , oslOperations

    -- ** OperationAggregatedList
    , OperationAggregatedList
    , operationAggregatedList
    , oalNextPageToken
    , oalKind
    , oalItems
    , oalSelfLink
    , oalId

    -- ** ForwardingRuleAggregatedList
    , ForwardingRuleAggregatedList
    , forwardingRuleAggregatedList
    , fralNextPageToken
    , fralKind
    , fralItems
    , fralSelfLink
    , fralId

    -- ** TargetInstanceList
    , TargetInstanceList
    , targetInstanceList
    , tilNextPageToken
    , tilKind
    , tilItems
    , tilSelfLink
    , tilId

    -- ** TargetReference
    , TargetReference
    , targetReference
    , trTarget

    -- ** TargetPoolAggregatedList
    , TargetPoolAggregatedList
    , targetPoolAggregatedList
    , tpalNextPageToken
    , tpalKind
    , tpalItems
    , tpalSelfLink
    , tpalId

    -- ** ImageList
    , ImageList
    , imageList
    , ilNextPageToken
    , ilKind
    , ilItems
    , ilSelfLink
    , ilId

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

    -- ** AutoscalingPolicyLoadBalancingUtilization
    , AutoscalingPolicyLoadBalancingUtilization
    , autoscalingPolicyLoadBalancingUtilization
    , aplbuUtilizationTarget

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

    -- ** DiskMoveRequest
    , DiskMoveRequest
    , diskMoveRequest
    , dmrTargetDisk
    , dmrDestinationZone

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

    -- ** URLMapList
    , URLMapList
    , uRLMapList
    , umlNextPageToken
    , umlKind
    , umlItems
    , umlSelfLink
    , umlId

    -- ** TargetPoolsRemoveInstanceRequest
    , TargetPoolsRemoveInstanceRequest
    , targetPoolsRemoveInstanceRequest
    , tprirInstances

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

    -- ** TargetPoolInstanceHealth
    , TargetPoolInstanceHealth
    , targetPoolInstanceHealth
    , tpihKind
    , tpihHealthStatus

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

    -- ** InstanceGroupManagersListManagedInstancesResponse
    , InstanceGroupManagersListManagedInstancesResponse
    , instanceGroupManagersListManagedInstancesResponse
    , igmlmirManagedInstances

    -- ** InstanceGroupsRemoveInstancesRequest
    , InstanceGroupsRemoveInstancesRequest
    , instanceGroupsRemoveInstancesRequest
    , igrirInstances

    -- ** AttachedDiskInitializeParams
    , AttachedDiskInitializeParams
    , attachedDiskInitializeParams
    , adipSourceImage
    , adipDiskSizeGb
    , adipDiskName
    , adipDiskType

    -- ** NetworkInterface
    , NetworkInterface
    , networkInterface
    , niNetwork
    , niName
    , niNetworkIP
    , niAccessConfigs

    -- ** InstanceTemplateList
    , InstanceTemplateList
    , instanceTemplateList
    , itlNextPageToken
    , itlKind
    , itlItems
    , itlSelfLink
    , itlId

    -- ** TargetPoolsRemoveHealthCheckRequest
    , TargetPoolsRemoveHealthCheckRequest
    , targetPoolsRemoveHealthCheckRequest
    , tprhcrHealthChecks

    -- ** RouteList
    , RouteList
    , routeList
    , rlNextPageToken
    , rlKind
    , rlItems
    , rlSelfLink
    , rlId

    -- ** TargetVPNGatewayList
    , TargetVPNGatewayList
    , targetVPNGatewayList
    , tvglNextPageToken
    , tvglKind
    , tvglItems
    , tvglSelfLink
    , tvglId

    -- ** Address
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

    -- ** InstanceAggregatedList
    , InstanceAggregatedList
    , instanceAggregatedList
    , ialNextPageToken
    , ialKind
    , ialItems
    , ialSelfLink
    , ialId

    -- ** InstancesScopedList
    , InstancesScopedList
    , instancesScopedList
    , islWarning
    , islInstances

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

    -- ** InstanceGroupManagersRecreateInstancesRequest
    , InstanceGroupManagersRecreateInstancesRequest
    , instanceGroupManagersRecreateInstancesRequest
    , igmrirInstances

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

    -- ** Route
    , Route
    , route
    , rPriority
    , rKind
    , rNextHopGateway
    , rNextHopNetwork
    , rNetwork
    , rWarnings
    , rNextHopIp
    , rDestRange
    , rSelfLink
    , rName
    , rCreationTimestamp
    , rId
    , rNextHopVpnTunnel
    , rDescription
    , rTags
    , rNextHopInstance

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

    -- ** HealthCheckReference
    , HealthCheckReference
    , healthCheckReference
    , hcrHealthCheck

    -- ** URLMapsValidateResponse
    , URLMapsValidateResponse
    , uRLMapsValidateResponse
    , umvrResult

    -- ** InstanceGroupAggregatedList
    , InstanceGroupAggregatedList
    , instanceGroupAggregatedList
    , igalNextPageToken
    , igalKind
    , igalItems
    , igalSelfLink
    , igalId

    -- ** TargetVPNGateway
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

    -- ** UsageExportLocation
    , UsageExportLocation
    , usageExportLocation
    , uelReportNamePrefix
    , uelBucketName

    -- ** InstanceGroupManagersDeleteInstancesRequest
    , InstanceGroupManagersDeleteInstancesRequest
    , instanceGroupManagersDeleteInstancesRequest
    , igmdirInstances

    -- ** ManagedInstance
    , ManagedInstance
    , managedInstance
    , miLastAttempt
    , miCurrentAction
    , miId
    , miInstanceStatus
    , miInstance

    -- ** InstanceGroupsListInstancesRequest
    , InstanceGroupsListInstancesRequest
    , instanceGroupsListInstancesRequest
    , iglirInstanceState

    -- ** AddressList
    , AddressList
    , addressList
    , alNextPageToken
    , alKind
    , alItems
    , alSelfLink
    , alId

    -- ** ZoneList
    , ZoneList
    , zoneList
    , zlNextPageToken
    , zlKind
    , zlItems
    , zlSelfLink
    , zlId

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

    -- ** URLMapReference
    , URLMapReference
    , uRLMapReference
    , umrUrlMap

    -- ** TargetPoolsAddHealthCheckRequest
    , TargetPoolsAddHealthCheckRequest
    , targetPoolsAddHealthCheckRequest
    , tpahcrHealthChecks

    -- ** NetworkList
    , NetworkList
    , networkList
    , nlNextPageToken
    , nlKind
    , nlItems
    , nlSelfLink
    , nlId

    -- ** ServiceAccount
    , ServiceAccount
    , serviceAccount
    , saEmail
    , saScopes

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

    -- ** TargetInstancesScopedList
    , TargetInstancesScopedList
    , targetInstancesScopedList
    , tislWarning
    , tislTargetInstances

    -- ** MachineTypeList
    , MachineTypeList
    , machineTypeList
    , mtlNextPageToken
    , mtlKind
    , mtlItems
    , mtlSelfLink
    , mtlId

    -- ** DiskTypeList
    , DiskTypeList
    , diskTypeList
    , dtlNextPageToken
    , dtlKind
    , dtlItems
    , dtlSelfLink
    , dtlId

    -- ** VPNTunnelAggregatedList
    , VPNTunnelAggregatedList
    , vPNTunnelAggregatedList
    , vtalNextPageToken
    , vtalKind
    , vtalItems
    , vtalSelfLink
    , vtalId

    -- ** AutoscalerList
    , AutoscalerList
    , autoscalerList
    , autNextPageToken
    , autKind
    , autItems
    , autSelfLink
    , autId

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

    -- ** TargetHTTPProxyList
    , TargetHTTPProxyList
    , targetHTTPProxyList
    , thttpplNextPageToken
    , thttpplKind
    , thttpplItems
    , thttpplSelfLink
    , thttpplId

    -- ** MachineTypesScopedList
    , MachineTypesScopedList
    , machineTypesScopedList
    , mtslMachineTypes
    , mtslWarning

    -- ** VPNTunnelList
    , VPNTunnelList
    , vPNTunnelList
    , vtlNextPageToken
    , vtlKind
    , vtlItems
    , vtlSelfLink
    , vtlId

    -- ** BackendServiceGroupHealth
    , BackendServiceGroupHealth
    , backendServiceGroupHealth
    , bsghKind
    , bsghHealthStatus

    -- ** DiskTypeAggregatedList
    , DiskTypeAggregatedList
    , diskTypeAggregatedList
    , dtalNextPageToken
    , dtalKind
    , dtalItems
    , dtalSelfLink
    , dtalId

    -- ** HTTPHealthCheck
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

    -- ** AutoscalingPolicy
    , AutoscalingPolicy
    , autoscalingPolicy
    , apCustomMetricUtilizations
    , apMaxNumReplicas
    , apCpuUtilization
    , apLoadBalancingUtilization
    , apMinNumReplicas
    , apCoolDownPeriodSec

    -- ** AutoscalersScopedList
    , AutoscalersScopedList
    , autoscalersScopedList
    , aAutoscalers
    , aWarning

    -- ** DiskTypesScopedList
    , DiskTypesScopedList
    , diskTypesScopedList
    , dtslDiskTypes
    , dtslWarning

    -- ** AutoscalerAggregatedList
    , AutoscalerAggregatedList
    , autoscalerAggregatedList
    , aalNextPageToken
    , aalKind
    , aalItems
    , aalSelfLink
    , aalId

    -- ** MachineTypeAggregatedList
    , MachineTypeAggregatedList
    , machineTypeAggregatedList
    , mtalNextPageToken
    , mtalKind
    , mtalItems
    , mtalSelfLink
    , mtalId

    -- ** RegionList
    , RegionList
    , regionList
    , regNextPageToken
    , regKind
    , regItems
    , regSelfLink
    , regId

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

    -- ** URLMapValidationResult
    , URLMapValidationResult
    , uRLMapValidationResult
    , umvrLoadErrors
    , umvrLoadSucceeded
    , umvrTestPassed
    , umvrTestFailures

    -- ** Autoscaler
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

    -- ** InstanceGroupsListInstances
    , InstanceGroupsListInstances
    , instanceGroupsListInstances
    , igliNextPageToken
    , igliKind
    , igliItems
    , igliSelfLink
    , igliId

    -- ** Metadata
    , Metadata
    , metadata
    , mKind
    , mFingerprint
    , mItems

    -- ** TargetHTTPProxy
    , TargetHTTPProxy
    , targetHTTPProxy
    , thttppUrlMap
    , thttppKind
    , thttppSelfLink
    , thttppName
    , thttppCreationTimestamp
    , thttppId
    , thttppDescription

    -- ** Region
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

    -- ** VPNTunnel
    , VPNTunnel
    , vPNTunnel
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

    -- ** Scheduling
    , Scheduling
    , scheduling
    , sAutomaticRestart
    , sOnHostMaintenance
    , sPreemptible

    -- ** HealthStatus
    , HealthStatus
    , healthStatus
    , hsIpAddress
    , hsHealthState
    , hsPort
    , hsInstance

    -- ** HTTPHealthCheckList
    , HTTPHealthCheckList
    , hTTPHealthCheckList
    , httphclNextPageToken
    , httphclKind
    , httphclItems
    , httphclSelfLink
    , httphclId

    -- ** URLMapsValidateRequest
    , URLMapsValidateRequest
    , uRLMapsValidateRequest
    , umvrResource

    -- ** PathRule
    , PathRule
    , pathRule
    , prService
    , prPaths

    -- ** BackendServiceList
    , BackendServiceList
    , backendServiceList
    , bslNextPageToken
    , bslKind
    , bslItems
    , bslSelfLink
    , bslId

    -- ** License
    , License
    , license
    , lChargesUseFee
    , lKind
    , lSelfLink
    , lName

    -- ** InstanceList
    , InstanceList
    , instanceList
    , insNextPageToken
    , insKind
    , insItems
    , insSelfLink
    , insId

    -- ** ManagedInstanceLastAttempt
    , ManagedInstanceLastAttempt
    , managedInstanceLastAttempt
    , milaErrors

    -- ** InstanceGroupManagersSetTargetPoolsRequest
    , InstanceGroupManagersSetTargetPoolsRequest
    , instanceGroupManagersSetTargetPoolsRequest
    , igmstprFingerprint
    , igmstprTargetPools

    -- ** TargetVPNGatewayAggregatedList
    , TargetVPNGatewayAggregatedList
    , targetVPNGatewayAggregatedList
    , tvgalNextPageToken
    , tvgalKind
    , tvgalItems
    , tvgalSelfLink
    , tvgalId

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

    -- ** HostRule
    , HostRule
    , hostRule
    , hrHosts
    , hrDescription
    , hrPathMatcher

    -- ** SerialPortOutput
    , SerialPortOutput
    , serialPortOutput
    , spoContents
    , spoKind
    , spoSelfLink

    -- ** TestFailure
    , TestFailure
    , testFailure
    , tfPath
    , tfExpectedService
    , tfHost
    , tfActualService

    -- ** TargetVPNGatewaysScopedList
    , TargetVPNGatewaysScopedList
    , targetVPNGatewaysScopedList
    , tvgslTargetVpnGateways
    , tvgslWarning

    -- ** Quota
    , Quota
    , quota
    , qMetric
    , qLimit
    , qUsage

    -- ** SnapshotList
    , SnapshotList
    , snapshotList
    , slNextPageToken
    , slKind
    , slItems
    , slSelfLink
    , slId

    -- ** AutoscalingPolicyCPUUtilization
    , AutoscalingPolicyCPUUtilization
    , autoscalingPolicyCPUUtilization
    , apcuUtilizationTarget

    -- ** AccessConfig
    , AccessConfig
    , accessConfig
    , acKind
    , acName
    , acNatIP
    , acType

    -- ** ResourceGroupReference
    , ResourceGroupReference
    , resourceGroupReference
    , rgrGroup

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

    -- ** AddressAggregatedList
    , AddressAggregatedList
    , addressAggregatedList
    , addNextPageToken
    , addKind
    , addItems
    , addSelfLink
    , addId

    -- ** Tags
    , Tags
    , tags
    , tFingerprint
    , tItems

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

    -- ** URLMapTest
    , URLMapTest
    , uRLMapTest
    , umtPath
    , umtService
    , umtHost
    , umtDescription

    -- ** InstanceMoveRequest
    , InstanceMoveRequest
    , instanceMoveRequest
    , imrTargetInstance
    , imrDestinationZone

    -- ** Instance
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

    -- ** PathMatcher
    , PathMatcher
    , pathMatcher
    , pmDefaultService
    , pmName
    , pmPathRules
    , pmDescription

    -- ** InstanceGroupsScopedList
    , InstanceGroupsScopedList
    , instanceGroupsScopedList
    , igslWarning
    , igslInstanceGroups
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Compute.Addresses.AggregatedList
import           Network.Google.Resource.Compute.Addresses.Delete
import           Network.Google.Resource.Compute.Addresses.Get
import           Network.Google.Resource.Compute.Addresses.Insert
import           Network.Google.Resource.Compute.Addresses.List
import           Network.Google.Resource.Compute.Autoscalers.AggregatedList
import           Network.Google.Resource.Compute.Autoscalers.Delete
import           Network.Google.Resource.Compute.Autoscalers.Get
import           Network.Google.Resource.Compute.Autoscalers.Insert
import           Network.Google.Resource.Compute.Autoscalers.List
import           Network.Google.Resource.Compute.Autoscalers.Patch
import           Network.Google.Resource.Compute.Autoscalers.Update
import           Network.Google.Resource.Compute.BackendServices.Delete
import           Network.Google.Resource.Compute.BackendServices.Get
import           Network.Google.Resource.Compute.BackendServices.GetHealth
import           Network.Google.Resource.Compute.BackendServices.Insert
import           Network.Google.Resource.Compute.BackendServices.List
import           Network.Google.Resource.Compute.BackendServices.Patch
import           Network.Google.Resource.Compute.BackendServices.Update
import           Network.Google.Resource.Compute.Disks.AggregatedList
import           Network.Google.Resource.Compute.Disks.CreateSnapshot
import           Network.Google.Resource.Compute.Disks.Delete
import           Network.Google.Resource.Compute.Disks.Get
import           Network.Google.Resource.Compute.Disks.Insert
import           Network.Google.Resource.Compute.Disks.List
import           Network.Google.Resource.Compute.DiskTypes.AggregatedList
import           Network.Google.Resource.Compute.DiskTypes.Get
import           Network.Google.Resource.Compute.DiskTypes.List
import           Network.Google.Resource.Compute.Firewalls.Delete
import           Network.Google.Resource.Compute.Firewalls.Get
import           Network.Google.Resource.Compute.Firewalls.Insert
import           Network.Google.Resource.Compute.Firewalls.List
import           Network.Google.Resource.Compute.Firewalls.Patch
import           Network.Google.Resource.Compute.Firewalls.Update
import           Network.Google.Resource.Compute.ForwardingRules.AggregatedList
import           Network.Google.Resource.Compute.ForwardingRules.Delete
import           Network.Google.Resource.Compute.ForwardingRules.Get
import           Network.Google.Resource.Compute.ForwardingRules.Insert
import           Network.Google.Resource.Compute.ForwardingRules.List
import           Network.Google.Resource.Compute.ForwardingRules.SetTarget
import           Network.Google.Resource.Compute.GlobalAddresses.Delete
import           Network.Google.Resource.Compute.GlobalAddresses.Get
import           Network.Google.Resource.Compute.GlobalAddresses.Insert
import           Network.Google.Resource.Compute.GlobalAddresses.List
import           Network.Google.Resource.Compute.GlobalForwardingRules.Delete
import           Network.Google.Resource.Compute.GlobalForwardingRules.Get
import           Network.Google.Resource.Compute.GlobalForwardingRules.Insert
import           Network.Google.Resource.Compute.GlobalForwardingRules.List
import           Network.Google.Resource.Compute.GlobalForwardingRules.SetTarget
import           Network.Google.Resource.Compute.GlobalOperations.AggregatedList
import           Network.Google.Resource.Compute.GlobalOperations.Delete
import           Network.Google.Resource.Compute.GlobalOperations.Get
import           Network.Google.Resource.Compute.GlobalOperations.List
import           Network.Google.Resource.Compute.HTTPHealthChecks.Delete
import           Network.Google.Resource.Compute.HTTPHealthChecks.Get
import           Network.Google.Resource.Compute.HTTPHealthChecks.Insert
import           Network.Google.Resource.Compute.HTTPHealthChecks.List
import           Network.Google.Resource.Compute.HTTPHealthChecks.Patch
import           Network.Google.Resource.Compute.HTTPHealthChecks.Update
import           Network.Google.Resource.Compute.Images.Delete
import           Network.Google.Resource.Compute.Images.Deprecate
import           Network.Google.Resource.Compute.Images.Get
import           Network.Google.Resource.Compute.Images.Insert
import           Network.Google.Resource.Compute.Images.List
import           Network.Google.Resource.Compute.InstanceGroupManagers.AbandonInstances
import           Network.Google.Resource.Compute.InstanceGroupManagers.AggregatedList
import           Network.Google.Resource.Compute.InstanceGroupManagers.Delete
import           Network.Google.Resource.Compute.InstanceGroupManagers.DeleteInstances
import           Network.Google.Resource.Compute.InstanceGroupManagers.Get
import           Network.Google.Resource.Compute.InstanceGroupManagers.Insert
import           Network.Google.Resource.Compute.InstanceGroupManagers.List
import           Network.Google.Resource.Compute.InstanceGroupManagers.ListManagedInstances
import           Network.Google.Resource.Compute.InstanceGroupManagers.RecreateInstances
import           Network.Google.Resource.Compute.InstanceGroupManagers.Resize
import           Network.Google.Resource.Compute.InstanceGroupManagers.SetInstanceTemplate
import           Network.Google.Resource.Compute.InstanceGroupManagers.SetTargetPools
import           Network.Google.Resource.Compute.InstanceGroups.AddInstances
import           Network.Google.Resource.Compute.InstanceGroups.AggregatedList
import           Network.Google.Resource.Compute.InstanceGroups.Delete
import           Network.Google.Resource.Compute.InstanceGroups.Get
import           Network.Google.Resource.Compute.InstanceGroups.Insert
import           Network.Google.Resource.Compute.InstanceGroups.List
import           Network.Google.Resource.Compute.InstanceGroups.ListInstances
import           Network.Google.Resource.Compute.InstanceGroups.RemoveInstances
import           Network.Google.Resource.Compute.InstanceGroups.SetNamedPorts
import           Network.Google.Resource.Compute.Instances.AddAccessConfig
import           Network.Google.Resource.Compute.Instances.AggregatedList
import           Network.Google.Resource.Compute.Instances.AttachDisk
import           Network.Google.Resource.Compute.Instances.Delete
import           Network.Google.Resource.Compute.Instances.DeleteAccessConfig
import           Network.Google.Resource.Compute.Instances.DetachDisk
import           Network.Google.Resource.Compute.Instances.Get
import           Network.Google.Resource.Compute.Instances.GetSerialPortOutput
import           Network.Google.Resource.Compute.Instances.Insert
import           Network.Google.Resource.Compute.Instances.List
import           Network.Google.Resource.Compute.Instances.Reset
import           Network.Google.Resource.Compute.Instances.SetDiskAutoDelete
import           Network.Google.Resource.Compute.Instances.SetMetadata
import           Network.Google.Resource.Compute.Instances.SetScheduling
import           Network.Google.Resource.Compute.Instances.SetTags
import           Network.Google.Resource.Compute.Instances.Start
import           Network.Google.Resource.Compute.Instances.Stop
import           Network.Google.Resource.Compute.InstanceTemplates.Delete
import           Network.Google.Resource.Compute.InstanceTemplates.Get
import           Network.Google.Resource.Compute.InstanceTemplates.Insert
import           Network.Google.Resource.Compute.InstanceTemplates.List
import           Network.Google.Resource.Compute.Licenses.Get
import           Network.Google.Resource.Compute.MachineTypes.AggregatedList
import           Network.Google.Resource.Compute.MachineTypes.Get
import           Network.Google.Resource.Compute.MachineTypes.List
import           Network.Google.Resource.Compute.Networks.Delete
import           Network.Google.Resource.Compute.Networks.Get
import           Network.Google.Resource.Compute.Networks.Insert
import           Network.Google.Resource.Compute.Networks.List
import           Network.Google.Resource.Compute.Projects.Get
import           Network.Google.Resource.Compute.Projects.MoveDisk
import           Network.Google.Resource.Compute.Projects.MoveInstance
import           Network.Google.Resource.Compute.Projects.SetCommonInstanceMetadata
import           Network.Google.Resource.Compute.Projects.SetUsageExportBucket
import           Network.Google.Resource.Compute.RegionOperations.Delete
import           Network.Google.Resource.Compute.RegionOperations.Get
import           Network.Google.Resource.Compute.RegionOperations.List
import           Network.Google.Resource.Compute.Regions.Get
import           Network.Google.Resource.Compute.Regions.List
import           Network.Google.Resource.Compute.Routes.Delete
import           Network.Google.Resource.Compute.Routes.Get
import           Network.Google.Resource.Compute.Routes.Insert
import           Network.Google.Resource.Compute.Routes.List
import           Network.Google.Resource.Compute.Snapshots.Delete
import           Network.Google.Resource.Compute.Snapshots.Get
import           Network.Google.Resource.Compute.Snapshots.List
import           Network.Google.Resource.Compute.TargetHTTPProxies.Delete
import           Network.Google.Resource.Compute.TargetHTTPProxies.Get
import           Network.Google.Resource.Compute.TargetHTTPProxies.Insert
import           Network.Google.Resource.Compute.TargetHTTPProxies.List
import           Network.Google.Resource.Compute.TargetHTTPProxies.SetURLMap
import           Network.Google.Resource.Compute.TargetInstances.AggregatedList
import           Network.Google.Resource.Compute.TargetInstances.Delete
import           Network.Google.Resource.Compute.TargetInstances.Get
import           Network.Google.Resource.Compute.TargetInstances.Insert
import           Network.Google.Resource.Compute.TargetInstances.List
import           Network.Google.Resource.Compute.TargetPools.AddHealthCheck
import           Network.Google.Resource.Compute.TargetPools.AddInstance
import           Network.Google.Resource.Compute.TargetPools.AggregatedList
import           Network.Google.Resource.Compute.TargetPools.Delete
import           Network.Google.Resource.Compute.TargetPools.Get
import           Network.Google.Resource.Compute.TargetPools.GetHealth
import           Network.Google.Resource.Compute.TargetPools.Insert
import           Network.Google.Resource.Compute.TargetPools.List
import           Network.Google.Resource.Compute.TargetPools.RemoveHealthCheck
import           Network.Google.Resource.Compute.TargetPools.RemoveInstance
import           Network.Google.Resource.Compute.TargetPools.SetBackup
import           Network.Google.Resource.Compute.TargetVPNGateways.AggregatedList
import           Network.Google.Resource.Compute.TargetVPNGateways.Delete
import           Network.Google.Resource.Compute.TargetVPNGateways.Get
import           Network.Google.Resource.Compute.TargetVPNGateways.Insert
import           Network.Google.Resource.Compute.TargetVPNGateways.List
import           Network.Google.Resource.Compute.URLMaps.Delete
import           Network.Google.Resource.Compute.URLMaps.Get
import           Network.Google.Resource.Compute.URLMaps.Insert
import           Network.Google.Resource.Compute.URLMaps.List
import           Network.Google.Resource.Compute.URLMaps.Patch
import           Network.Google.Resource.Compute.URLMaps.Update
import           Network.Google.Resource.Compute.URLMaps.Validate
import           Network.Google.Resource.Compute.VPNTunnels.AggregatedList
import           Network.Google.Resource.Compute.VPNTunnels.Delete
import           Network.Google.Resource.Compute.VPNTunnels.Get
import           Network.Google.Resource.Compute.VPNTunnels.Insert
import           Network.Google.Resource.Compute.VPNTunnels.List
import           Network.Google.Resource.Compute.ZoneOperations.Delete
import           Network.Google.Resource.Compute.ZoneOperations.Get
import           Network.Google.Resource.Compute.ZoneOperations.List
import           Network.Google.Resource.Compute.Zones.Get
import           Network.Google.Resource.Compute.Zones.List

{- $resources
TODO
-}

type ComputeAPI =
     Images :<|> URLMaps :<|> InstanceTemplates :<|>
       Routes
       :<|> TargetVPNGateways
       :<|> Zones
       :<|> GlobalForwardingRules
       :<|> Networks
       :<|> Addresses
       :<|> VPNTunnels
       :<|> Regions
       :<|> GlobalAddresses
       :<|> TargetHTTPProxies
       :<|> Autoscalers
       :<|> DiskTypes
       :<|> RegionOperations
       :<|> MachineTypes
       :<|> HTTPHealthChecks
       :<|> Snapshots
       :<|> Instances
       :<|> BackendServices
       :<|> InstanceGroups
       :<|> GlobalOperations
       :<|> Firewalls
       :<|> Licenses
       :<|> ZoneOperations
       :<|> TargetInstances
       :<|> Disks
       :<|> TargetPools
       :<|> InstanceGroupManagers
       :<|> Projects
       :<|> ForwardingRules

computeAPI :: Proxy ComputeAPI
computeAPI = Proxy
