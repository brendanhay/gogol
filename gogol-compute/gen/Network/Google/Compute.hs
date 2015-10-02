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
    , module Network.Google.Resource.Compute.Addresses.AggregatedList

    -- ** ComputeAddressesDelete
    , module Network.Google.Resource.Compute.Addresses.Delete

    -- ** ComputeAddressesGet
    , module Network.Google.Resource.Compute.Addresses.Get

    -- ** ComputeAddressesInsert
    , module Network.Google.Resource.Compute.Addresses.Insert

    -- ** ComputeAddressesList
    , module Network.Google.Resource.Compute.Addresses.List

    -- ** ComputeAutoscalersAggregatedList
    , module Network.Google.Resource.Compute.Autoscalers.AggregatedList

    -- ** ComputeAutoscalersDelete
    , module Network.Google.Resource.Compute.Autoscalers.Delete

    -- ** ComputeAutoscalersGet
    , module Network.Google.Resource.Compute.Autoscalers.Get

    -- ** ComputeAutoscalersInsert
    , module Network.Google.Resource.Compute.Autoscalers.Insert

    -- ** ComputeAutoscalersList
    , module Network.Google.Resource.Compute.Autoscalers.List

    -- ** ComputeAutoscalersPatch
    , module Network.Google.Resource.Compute.Autoscalers.Patch

    -- ** ComputeAutoscalersUpdate
    , module Network.Google.Resource.Compute.Autoscalers.Update

    -- ** ComputeBackendServicesDelete
    , module Network.Google.Resource.Compute.BackendServices.Delete

    -- ** ComputeBackendServicesGet
    , module Network.Google.Resource.Compute.BackendServices.Get

    -- ** ComputeBackendServicesGetHealth
    , module Network.Google.Resource.Compute.BackendServices.GetHealth

    -- ** ComputeBackendServicesInsert
    , module Network.Google.Resource.Compute.BackendServices.Insert

    -- ** ComputeBackendServicesList
    , module Network.Google.Resource.Compute.BackendServices.List

    -- ** ComputeBackendServicesPatch
    , module Network.Google.Resource.Compute.BackendServices.Patch

    -- ** ComputeBackendServicesUpdate
    , module Network.Google.Resource.Compute.BackendServices.Update

    -- ** ComputeDiskTypesAggregatedList
    , module Network.Google.Resource.Compute.DiskTypes.AggregatedList

    -- ** ComputeDiskTypesGet
    , module Network.Google.Resource.Compute.DiskTypes.Get

    -- ** ComputeDiskTypesList
    , module Network.Google.Resource.Compute.DiskTypes.List

    -- ** ComputeDisksAggregatedList
    , module Network.Google.Resource.Compute.Disks.AggregatedList

    -- ** ComputeDisksCreateSnapshot
    , module Network.Google.Resource.Compute.Disks.CreateSnapshot

    -- ** ComputeDisksDelete
    , module Network.Google.Resource.Compute.Disks.Delete

    -- ** ComputeDisksGet
    , module Network.Google.Resource.Compute.Disks.Get

    -- ** ComputeDisksInsert
    , module Network.Google.Resource.Compute.Disks.Insert

    -- ** ComputeDisksList
    , module Network.Google.Resource.Compute.Disks.List

    -- ** ComputeFirewallsDelete
    , module Network.Google.Resource.Compute.Firewalls.Delete

    -- ** ComputeFirewallsGet
    , module Network.Google.Resource.Compute.Firewalls.Get

    -- ** ComputeFirewallsInsert
    , module Network.Google.Resource.Compute.Firewalls.Insert

    -- ** ComputeFirewallsList
    , module Network.Google.Resource.Compute.Firewalls.List

    -- ** ComputeFirewallsPatch
    , module Network.Google.Resource.Compute.Firewalls.Patch

    -- ** ComputeFirewallsUpdate
    , module Network.Google.Resource.Compute.Firewalls.Update

    -- ** ComputeForwardingRulesAggregatedList
    , module Network.Google.Resource.Compute.ForwardingRules.AggregatedList

    -- ** ComputeForwardingRulesDelete
    , module Network.Google.Resource.Compute.ForwardingRules.Delete

    -- ** ComputeForwardingRulesGet
    , module Network.Google.Resource.Compute.ForwardingRules.Get

    -- ** ComputeForwardingRulesInsert
    , module Network.Google.Resource.Compute.ForwardingRules.Insert

    -- ** ComputeForwardingRulesList
    , module Network.Google.Resource.Compute.ForwardingRules.List

    -- ** ComputeForwardingRulesSetTarget
    , module Network.Google.Resource.Compute.ForwardingRules.SetTarget

    -- ** ComputeGlobalAddressesDelete
    , module Network.Google.Resource.Compute.GlobalAddresses.Delete

    -- ** ComputeGlobalAddressesGet
    , module Network.Google.Resource.Compute.GlobalAddresses.Get

    -- ** ComputeGlobalAddressesInsert
    , module Network.Google.Resource.Compute.GlobalAddresses.Insert

    -- ** ComputeGlobalAddressesList
    , module Network.Google.Resource.Compute.GlobalAddresses.List

    -- ** ComputeGlobalForwardingRulesDelete
    , module Network.Google.Resource.Compute.GlobalForwardingRules.Delete

    -- ** ComputeGlobalForwardingRulesGet
    , module Network.Google.Resource.Compute.GlobalForwardingRules.Get

    -- ** ComputeGlobalForwardingRulesInsert
    , module Network.Google.Resource.Compute.GlobalForwardingRules.Insert

    -- ** ComputeGlobalForwardingRulesList
    , module Network.Google.Resource.Compute.GlobalForwardingRules.List

    -- ** ComputeGlobalForwardingRulesSetTarget
    , module Network.Google.Resource.Compute.GlobalForwardingRules.SetTarget

    -- ** ComputeGlobalOperationsAggregatedList
    , module Network.Google.Resource.Compute.GlobalOperations.AggregatedList

    -- ** ComputeGlobalOperationsDelete
    , module Network.Google.Resource.Compute.GlobalOperations.Delete

    -- ** ComputeGlobalOperationsGet
    , module Network.Google.Resource.Compute.GlobalOperations.Get

    -- ** ComputeGlobalOperationsList
    , module Network.Google.Resource.Compute.GlobalOperations.List

    -- ** ComputeHTTPHealthChecksDelete
    , module Network.Google.Resource.Compute.HTTPHealthChecks.Delete

    -- ** ComputeHTTPHealthChecksGet
    , module Network.Google.Resource.Compute.HTTPHealthChecks.Get

    -- ** ComputeHTTPHealthChecksInsert
    , module Network.Google.Resource.Compute.HTTPHealthChecks.Insert

    -- ** ComputeHTTPHealthChecksList
    , module Network.Google.Resource.Compute.HTTPHealthChecks.List

    -- ** ComputeHTTPHealthChecksPatch
    , module Network.Google.Resource.Compute.HTTPHealthChecks.Patch

    -- ** ComputeHTTPHealthChecksUpdate
    , module Network.Google.Resource.Compute.HTTPHealthChecks.Update

    -- ** ComputeImagesDelete
    , module Network.Google.Resource.Compute.Images.Delete

    -- ** ComputeImagesDeprecate
    , module Network.Google.Resource.Compute.Images.Deprecate

    -- ** ComputeImagesGet
    , module Network.Google.Resource.Compute.Images.Get

    -- ** ComputeImagesInsert
    , module Network.Google.Resource.Compute.Images.Insert

    -- ** ComputeImagesList
    , module Network.Google.Resource.Compute.Images.List

    -- ** ComputeInstanceGroupManagersAbandonInstances
    , module Network.Google.Resource.Compute.InstanceGroupManagers.AbandonInstances

    -- ** ComputeInstanceGroupManagersAggregatedList
    , module Network.Google.Resource.Compute.InstanceGroupManagers.AggregatedList

    -- ** ComputeInstanceGroupManagersDelete
    , module Network.Google.Resource.Compute.InstanceGroupManagers.Delete

    -- ** ComputeInstanceGroupManagersDeleteInstances
    , module Network.Google.Resource.Compute.InstanceGroupManagers.DeleteInstances

    -- ** ComputeInstanceGroupManagersGet
    , module Network.Google.Resource.Compute.InstanceGroupManagers.Get

    -- ** ComputeInstanceGroupManagersInsert
    , module Network.Google.Resource.Compute.InstanceGroupManagers.Insert

    -- ** ComputeInstanceGroupManagersList
    , module Network.Google.Resource.Compute.InstanceGroupManagers.List

    -- ** ComputeInstanceGroupManagersListManagedInstances
    , module Network.Google.Resource.Compute.InstanceGroupManagers.ListManagedInstances

    -- ** ComputeInstanceGroupManagersRecreateInstances
    , module Network.Google.Resource.Compute.InstanceGroupManagers.RecreateInstances

    -- ** ComputeInstanceGroupManagersResize
    , module Network.Google.Resource.Compute.InstanceGroupManagers.Resize

    -- ** ComputeInstanceGroupManagersSetInstanceTemplate
    , module Network.Google.Resource.Compute.InstanceGroupManagers.SetInstanceTemplate

    -- ** ComputeInstanceGroupManagersSetTargetPools
    , module Network.Google.Resource.Compute.InstanceGroupManagers.SetTargetPools

    -- ** ComputeInstanceGroupsAddInstances
    , module Network.Google.Resource.Compute.InstanceGroups.AddInstances

    -- ** ComputeInstanceGroupsAggregatedList
    , module Network.Google.Resource.Compute.InstanceGroups.AggregatedList

    -- ** ComputeInstanceGroupsDelete
    , module Network.Google.Resource.Compute.InstanceGroups.Delete

    -- ** ComputeInstanceGroupsGet
    , module Network.Google.Resource.Compute.InstanceGroups.Get

    -- ** ComputeInstanceGroupsInsert
    , module Network.Google.Resource.Compute.InstanceGroups.Insert

    -- ** ComputeInstanceGroupsList
    , module Network.Google.Resource.Compute.InstanceGroups.List

    -- ** ComputeInstanceGroupsListInstances
    , module Network.Google.Resource.Compute.InstanceGroups.ListInstances

    -- ** ComputeInstanceGroupsRemoveInstances
    , module Network.Google.Resource.Compute.InstanceGroups.RemoveInstances

    -- ** ComputeInstanceGroupsSetNamedPorts
    , module Network.Google.Resource.Compute.InstanceGroups.SetNamedPorts

    -- ** ComputeInstanceTemplatesDelete
    , module Network.Google.Resource.Compute.InstanceTemplates.Delete

    -- ** ComputeInstanceTemplatesGet
    , module Network.Google.Resource.Compute.InstanceTemplates.Get

    -- ** ComputeInstanceTemplatesInsert
    , module Network.Google.Resource.Compute.InstanceTemplates.Insert

    -- ** ComputeInstanceTemplatesList
    , module Network.Google.Resource.Compute.InstanceTemplates.List

    -- ** ComputeInstancesAddAccessConfig
    , module Network.Google.Resource.Compute.Instances.AddAccessConfig

    -- ** ComputeInstancesAggregatedList
    , module Network.Google.Resource.Compute.Instances.AggregatedList

    -- ** ComputeInstancesAttachDisk
    , module Network.Google.Resource.Compute.Instances.AttachDisk

    -- ** ComputeInstancesDelete
    , module Network.Google.Resource.Compute.Instances.Delete

    -- ** ComputeInstancesDeleteAccessConfig
    , module Network.Google.Resource.Compute.Instances.DeleteAccessConfig

    -- ** ComputeInstancesDetachDisk
    , module Network.Google.Resource.Compute.Instances.DetachDisk

    -- ** ComputeInstancesGet
    , module Network.Google.Resource.Compute.Instances.Get

    -- ** ComputeInstancesGetSerialPortOutput
    , module Network.Google.Resource.Compute.Instances.GetSerialPortOutput

    -- ** ComputeInstancesInsert
    , module Network.Google.Resource.Compute.Instances.Insert

    -- ** ComputeInstancesList
    , module Network.Google.Resource.Compute.Instances.List

    -- ** ComputeInstancesReset
    , module Network.Google.Resource.Compute.Instances.Reset

    -- ** ComputeInstancesSetDiskAutoDelete
    , module Network.Google.Resource.Compute.Instances.SetDiskAutoDelete

    -- ** ComputeInstancesSetMetadata
    , module Network.Google.Resource.Compute.Instances.SetMetadata

    -- ** ComputeInstancesSetScheduling
    , module Network.Google.Resource.Compute.Instances.SetScheduling

    -- ** ComputeInstancesSetTags
    , module Network.Google.Resource.Compute.Instances.SetTags

    -- ** ComputeInstancesStart
    , module Network.Google.Resource.Compute.Instances.Start

    -- ** ComputeInstancesStop
    , module Network.Google.Resource.Compute.Instances.Stop

    -- ** ComputeLicensesGet
    , module Network.Google.Resource.Compute.Licenses.Get

    -- ** ComputeMachineTypesAggregatedList
    , module Network.Google.Resource.Compute.MachineTypes.AggregatedList

    -- ** ComputeMachineTypesGet
    , module Network.Google.Resource.Compute.MachineTypes.Get

    -- ** ComputeMachineTypesList
    , module Network.Google.Resource.Compute.MachineTypes.List

    -- ** ComputeNetworksDelete
    , module Network.Google.Resource.Compute.Networks.Delete

    -- ** ComputeNetworksGet
    , module Network.Google.Resource.Compute.Networks.Get

    -- ** ComputeNetworksInsert
    , module Network.Google.Resource.Compute.Networks.Insert

    -- ** ComputeNetworksList
    , module Network.Google.Resource.Compute.Networks.List

    -- ** ComputeProjectsGet
    , module Network.Google.Resource.Compute.Projects.Get

    -- ** ComputeProjectsMoveDisk
    , module Network.Google.Resource.Compute.Projects.MoveDisk

    -- ** ComputeProjectsMoveInstance
    , module Network.Google.Resource.Compute.Projects.MoveInstance

    -- ** ComputeProjectsSetCommonInstanceMetadata
    , module Network.Google.Resource.Compute.Projects.SetCommonInstanceMetadata

    -- ** ComputeProjectsSetUsageExportBucket
    , module Network.Google.Resource.Compute.Projects.SetUsageExportBucket

    -- ** ComputeRegionOperationsDelete
    , module Network.Google.Resource.Compute.RegionOperations.Delete

    -- ** ComputeRegionOperationsGet
    , module Network.Google.Resource.Compute.RegionOperations.Get

    -- ** ComputeRegionOperationsList
    , module Network.Google.Resource.Compute.RegionOperations.List

    -- ** ComputeRegionsGet
    , module Network.Google.Resource.Compute.Regions.Get

    -- ** ComputeRegionsList
    , module Network.Google.Resource.Compute.Regions.List

    -- ** ComputeRoutesDelete
    , module Network.Google.Resource.Compute.Routes.Delete

    -- ** ComputeRoutesGet
    , module Network.Google.Resource.Compute.Routes.Get

    -- ** ComputeRoutesInsert
    , module Network.Google.Resource.Compute.Routes.Insert

    -- ** ComputeRoutesList
    , module Network.Google.Resource.Compute.Routes.List

    -- ** ComputeSnapshotsDelete
    , module Network.Google.Resource.Compute.Snapshots.Delete

    -- ** ComputeSnapshotsGet
    , module Network.Google.Resource.Compute.Snapshots.Get

    -- ** ComputeSnapshotsList
    , module Network.Google.Resource.Compute.Snapshots.List

    -- ** ComputeTargetHTTPProxiesDelete
    , module Network.Google.Resource.Compute.TargetHTTPProxies.Delete

    -- ** ComputeTargetHTTPProxiesGet
    , module Network.Google.Resource.Compute.TargetHTTPProxies.Get

    -- ** ComputeTargetHTTPProxiesInsert
    , module Network.Google.Resource.Compute.TargetHTTPProxies.Insert

    -- ** ComputeTargetHTTPProxiesList
    , module Network.Google.Resource.Compute.TargetHTTPProxies.List

    -- ** ComputeTargetHTTPProxiesSetURLMap
    , module Network.Google.Resource.Compute.TargetHTTPProxies.SetURLMap

    -- ** ComputeTargetInstancesAggregatedList
    , module Network.Google.Resource.Compute.TargetInstances.AggregatedList

    -- ** ComputeTargetInstancesDelete
    , module Network.Google.Resource.Compute.TargetInstances.Delete

    -- ** ComputeTargetInstancesGet
    , module Network.Google.Resource.Compute.TargetInstances.Get

    -- ** ComputeTargetInstancesInsert
    , module Network.Google.Resource.Compute.TargetInstances.Insert

    -- ** ComputeTargetInstancesList
    , module Network.Google.Resource.Compute.TargetInstances.List

    -- ** ComputeTargetPoolsAddHealthCheck
    , module Network.Google.Resource.Compute.TargetPools.AddHealthCheck

    -- ** ComputeTargetPoolsAddInstance
    , module Network.Google.Resource.Compute.TargetPools.AddInstance

    -- ** ComputeTargetPoolsAggregatedList
    , module Network.Google.Resource.Compute.TargetPools.AggregatedList

    -- ** ComputeTargetPoolsDelete
    , module Network.Google.Resource.Compute.TargetPools.Delete

    -- ** ComputeTargetPoolsGet
    , module Network.Google.Resource.Compute.TargetPools.Get

    -- ** ComputeTargetPoolsGetHealth
    , module Network.Google.Resource.Compute.TargetPools.GetHealth

    -- ** ComputeTargetPoolsInsert
    , module Network.Google.Resource.Compute.TargetPools.Insert

    -- ** ComputeTargetPoolsList
    , module Network.Google.Resource.Compute.TargetPools.List

    -- ** ComputeTargetPoolsRemoveHealthCheck
    , module Network.Google.Resource.Compute.TargetPools.RemoveHealthCheck

    -- ** ComputeTargetPoolsRemoveInstance
    , module Network.Google.Resource.Compute.TargetPools.RemoveInstance

    -- ** ComputeTargetPoolsSetBackup
    , module Network.Google.Resource.Compute.TargetPools.SetBackup

    -- ** ComputeTargetVPNGatewaysAggregatedList
    , module Network.Google.Resource.Compute.TargetVPNGateways.AggregatedList

    -- ** ComputeTargetVPNGatewaysDelete
    , module Network.Google.Resource.Compute.TargetVPNGateways.Delete

    -- ** ComputeTargetVPNGatewaysGet
    , module Network.Google.Resource.Compute.TargetVPNGateways.Get

    -- ** ComputeTargetVPNGatewaysInsert
    , module Network.Google.Resource.Compute.TargetVPNGateways.Insert

    -- ** ComputeTargetVPNGatewaysList
    , module Network.Google.Resource.Compute.TargetVPNGateways.List

    -- ** ComputeURLMapsDelete
    , module Network.Google.Resource.Compute.URLMaps.Delete

    -- ** ComputeURLMapsGet
    , module Network.Google.Resource.Compute.URLMaps.Get

    -- ** ComputeURLMapsInsert
    , module Network.Google.Resource.Compute.URLMaps.Insert

    -- ** ComputeURLMapsList
    , module Network.Google.Resource.Compute.URLMaps.List

    -- ** ComputeURLMapsPatch
    , module Network.Google.Resource.Compute.URLMaps.Patch

    -- ** ComputeURLMapsUpdate
    , module Network.Google.Resource.Compute.URLMaps.Update

    -- ** ComputeURLMapsValidate
    , module Network.Google.Resource.Compute.URLMaps.Validate

    -- ** ComputeVPNTunnelsAggregatedList
    , module Network.Google.Resource.Compute.VPNTunnels.AggregatedList

    -- ** ComputeVPNTunnelsDelete
    , module Network.Google.Resource.Compute.VPNTunnels.Delete

    -- ** ComputeVPNTunnelsGet
    , module Network.Google.Resource.Compute.VPNTunnels.Get

    -- ** ComputeVPNTunnelsInsert
    , module Network.Google.Resource.Compute.VPNTunnels.Insert

    -- ** ComputeVPNTunnelsList
    , module Network.Google.Resource.Compute.VPNTunnels.List

    -- ** ComputeZoneOperationsDelete
    , module Network.Google.Resource.Compute.ZoneOperations.Delete

    -- ** ComputeZoneOperationsGet
    , module Network.Google.Resource.Compute.ZoneOperations.Get

    -- ** ComputeZoneOperationsList
    , module Network.Google.Resource.Compute.ZoneOperations.List

    -- ** ComputeZonesGet
    , module Network.Google.Resource.Compute.Zones.Get

    -- ** ComputeZonesList
    , module Network.Google.Resource.Compute.Zones.List

    -- * Types

    -- ** InstanceGroupList
    , InstanceGroupList
    , instanceGroupList
    , iglNextPageToken
    , iglKind
    , iglItems
    , iglSelfLink
    , iglId

    -- ** DiskTypeAggregatedListItems
    , DiskTypeAggregatedListItems
    , diskTypeAggregatedListItems

    -- ** InstancesScopedListWarning
    , InstancesScopedListWarning
    , instancesScopedListWarning
    , islwData
    , islwCode
    , islwMessage

    -- ** InstanceGroupManagersSetInstanceTemplateRequest
    , InstanceGroupManagersSetInstanceTemplateRequest
    , instanceGroupManagersSetInstanceTemplateRequest
    , igmsitrInstanceTemplate

    -- ** OperationWarnings
    , OperationWarnings
    , operationWarnings
    , owData
    , owCode
    , owMessage

    -- ** MachineTypeAggregatedListItems
    , MachineTypeAggregatedListItems
    , machineTypeAggregatedListItems

    -- ** InstanceGroupManagersAbandonInstancesRequest
    , InstanceGroupManagersAbandonInstancesRequest
    , instanceGroupManagersAbandonInstancesRequest
    , igmairInstances

    -- ** AutoscalerAggregatedListItems
    , AutoscalerAggregatedListItems
    , autoscalerAggregatedListItems

    -- ** AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType
    , AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType (..)

    -- ** AddressesScopedList
    , AddressesScopedList
    , addressesScopedList
    , aslAddresses
    , aslWarning

    -- ** InstancesScopedListWarningData
    , InstancesScopedListWarningData
    , instancesScopedListWarningData
    , islwdValue
    , islwdKey

    -- ** SchedulingOnHostMaintenance
    , SchedulingOnHostMaintenance (..)

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

    -- ** OperationWarningsData
    , OperationWarningsData
    , operationWarningsData
    , owdValue
    , owdKey

    -- ** InstanceGroupAggregatedListItems
    , InstanceGroupAggregatedListItems
    , instanceGroupAggregatedListItems

    -- ** MachineTypeScratchDisks
    , MachineTypeScratchDisks
    , machineTypeScratchDisks
    , mtsdDiskGb

    -- ** BackendServiceProtocol
    , BackendServiceProtocol (..)

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
    , vtslVPNTunnels
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

    -- ** AttachedDiskType
    , AttachedDiskType (..)

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

    -- ** ImageSourceType
    , ImageSourceType (..)

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

    -- ** DisksScopedListWarningCode
    , DisksScopedListWarningCode (..)

    -- ** TargetPoolsScopedListWarningCode
    , TargetPoolsScopedListWarningCode (..)

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

    -- ** VPNTunnelsScopedListWarningData
    , VPNTunnelsScopedListWarningData
    , vPNTunnelsScopedListWarningData
    , vtslwdValue
    , vtslwdKey

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

    -- ** TargetVPNGatewayStatus
    , TargetVPNGatewayStatus (..)

    -- ** InstanceGroupManagersScopedListWarningCode
    , InstanceGroupManagersScopedListWarningCode (..)

    -- ** ForwardingRulesScopedListWarningCode
    , ForwardingRulesScopedListWarningCode (..)

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

    -- ** VPNTunnelsScopedListWarning
    , VPNTunnelsScopedListWarning
    , vPNTunnelsScopedListWarning
    , vtslwData
    , vtslwCode
    , vtslwMessage

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

    -- ** OperationsScopedListWarningCode
    , OperationsScopedListWarningCode (..)

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

    -- ** RouteWarnings
    , RouteWarnings
    , routeWarnings
    , rwData
    , rwCode
    , rwMessage

    -- ** InstanceProperties
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

    -- ** TargetInstancesScopedListWarningCode
    , TargetInstancesScopedListWarningCode (..)

    -- ** SnapshotStorageBytesStatus
    , SnapshotStorageBytesStatus (..)

    -- ** DiskTypesScopedListWarning
    , DiskTypesScopedListWarning
    , diskTypesScopedListWarning
    , dtslwData
    , dtslwCode
    , dtslwMessage

    -- ** RouteWarningsData
    , RouteWarningsData
    , routeWarningsData
    , rwdValue
    , rwdKey

    -- ** InstanceAggregatedListItems
    , InstanceAggregatedListItems
    , instanceAggregatedListItems

    -- ** MachineTypesScopedListWarning
    , MachineTypesScopedListWarning
    , machineTypesScopedListWarning
    , mtslwData
    , mtslwCode
    , mtslwMessage

    -- ** MachineTypesScopedListWarningData
    , MachineTypesScopedListWarningData
    , machineTypesScopedListWarningData
    , mtslwdValue
    , mtslwdKey

    -- ** ManagedInstanceLastAttemptErrors
    , ManagedInstanceLastAttemptErrors
    , managedInstanceLastAttemptErrors
    , milaeErrors

    -- ** SnapshotStatus
    , SnapshotStatus (..)

    -- ** TargetPoolInstanceHealth
    , TargetPoolInstanceHealth
    , targetPoolInstanceHealth
    , tpihKind
    , tpihHealthStatus

    -- ** TargetInstance
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

    -- ** AutoscalersScopedListWarning
    , AutoscalersScopedListWarning
    , autoscalersScopedListWarning
    , aslwData
    , aslwCode
    , aslwMessage

    -- ** DiskTypesScopedListWarningData
    , DiskTypesScopedListWarningData
    , diskTypesScopedListWarningData
    , dtslwdValue
    , dtslwdKey

    -- ** InstanceGroupManagersListManagedInstancesResponse
    , InstanceGroupManagersListManagedInstancesResponse
    , instanceGroupManagersListManagedInstancesResponse
    , igmlmirManagedInstances

    -- ** InstanceGroupsRemoveInstancesRequest
    , InstanceGroupsRemoveInstancesRequest
    , instanceGroupsRemoveInstancesRequest
    , igrirInstances

    -- ** AutoscalersScopedListWarningData
    , AutoscalersScopedListWarningData
    , autoscalersScopedListWarningData
    , aslwdValue
    , aslwdKey

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
    , nNetwork
    , nName
    , nNetworkIP
    , nAccessConfigs

    -- ** TargetInstanceNATPolicy
    , TargetInstanceNATPolicy (..)

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

    -- ** ManagedInstanceCurrentAction
    , ManagedInstanceCurrentAction (..)

    -- ** ImageStatus
    , ImageStatus (..)

    -- ** RouteList
    , RouteList
    , routeList
    , rlNextPageToken
    , rlKind
    , rlItems
    , rlSelfLink
    , rlId

    -- ** DeprecationStatusState
    , DeprecationStatusState (..)

    -- ** AddressesScopedListWarningCode
    , AddressesScopedListWarningCode (..)

    -- ** TargetVPNGatewayList
    , TargetVPNGatewayList
    , targetVPNGatewayList
    , tvglNextPageToken
    , tvglKind
    , tvglItems
    , tvglSelfLink
    , tvglId

    -- ** HealthStatusHealthState
    , HealthStatusHealthState (..)

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

    -- ** AddressesScopedListWarningData
    , AddressesScopedListWarningData
    , addressesScopedListWarningData
    , aValue
    , aKey

    -- ** AccessConfigType
    , AccessConfigType (..)

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

    -- ** ImageRawDisk
    , ImageRawDisk
    , imageRawDisk
    , irdContainerType
    , irdSource
    , irdSha1Checksum

    -- ** InstanceGroupManagersRecreateInstancesRequest
    , InstanceGroupManagersRecreateInstancesRequest
    , instanceGroupManagersRecreateInstancesRequest
    , igmrirInstances

    -- ** Network
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

    -- ** FirewallAllowed
    , FirewallAllowed
    , firewallAllowed
    , faIPProtocol
    , faPorts

    -- ** AddressesScopedListWarning
    , AddressesScopedListWarning
    , addressesScopedListWarning
    , aData
    , aCode
    , aMessage

    -- ** TargetInstanceAggregatedListItems
    , TargetInstanceAggregatedListItems
    , targetInstanceAggregatedListItems

    -- ** DiskStatus
    , DiskStatus (..)

    -- ** ManagedInstanceInstanceStatus
    , ManagedInstanceInstanceStatus (..)

    -- ** OperationStatus
    , OperationStatus (..)

    -- ** Route
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

    -- ** TargetVPNGatewaysScopedListWarningCode
    , TargetVPNGatewaysScopedListWarningCode (..)

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

    -- ** AttachedDiskMode
    , AttachedDiskMode (..)

    -- ** OperationAggregatedListItems
    , OperationAggregatedListItems
    , operationAggregatedListItems

    -- ** UsageExportLocation
    , UsageExportLocation
    , usageExportLocation
    , uelReportNamePrefix
    , uelBucketName

    -- ** DiskAggregatedListItems
    , DiskAggregatedListItems
    , diskAggregatedListItems

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

    -- ** ForwardingRuleAggregatedListItems
    , ForwardingRuleAggregatedListItems
    , forwardingRuleAggregatedListItems

    -- ** ZoneList
    , ZoneList
    , zoneList
    , zlNextPageToken
    , zlKind
    , zlItems
    , zlSelfLink
    , zlId

    -- ** TargetVPNGatewaysScopedListWarningData
    , TargetVPNGatewaysScopedListWarningData
    , targetVPNGatewaysScopedListWarningData
    , tvgslwdValue
    , tvgslwdKey

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
    , umrURLMap

    -- ** VPNTunnelStatus
    , VPNTunnelStatus (..)

    -- ** ZoneMaintenanceWindows
    , ZoneMaintenanceWindows
    , zoneMaintenanceWindows
    , zmwBeginTime
    , zmwName
    , zmwEndTime
    , zmwDescription

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

    -- ** InstanceGroupManagerAggregatedListItems
    , InstanceGroupManagerAggregatedListItems
    , instanceGroupManagerAggregatedListItems

    -- ** TargetVPNGatewaysScopedListWarning
    , TargetVPNGatewaysScopedListWarning
    , targetVPNGatewaysScopedListWarning
    , tvgslwData
    , tvgslwCode
    , tvgslwMessage

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

    -- ** RegionStatus
    , RegionStatus (..)

    -- ** TargetPoolAggregatedListItems
    , TargetPoolAggregatedListItems
    , targetPoolAggregatedListItems

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

    -- ** AddressAggregatedListItems
    , AddressAggregatedListItems
    , addressAggregatedListItems

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

    -- ** QuotaMetric
    , QuotaMetric (..)

    -- ** InstanceGroupsListInstancesRequestInstanceState
    , InstanceGroupsListInstancesRequestInstanceState (..)

    -- ** ZoneStatus
    , ZoneStatus (..)

    -- ** DiskTypeAggregatedList
    , DiskTypeAggregatedList
    , diskTypeAggregatedList
    , dtalNextPageToken
    , dtalKind
    , dtalItems
    , dtalSelfLink
    , dtalId

    -- ** AddressStatus
    , AddressStatus (..)

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
    , apCPUUtilization
    , apLoadBalancingUtilization
    , apMinNumReplicas
    , apCoolDownPeriodSec

    -- ** ForwardingRuleIPProtocol
    , ForwardingRuleIPProtocol (..)

    -- ** AttachedDiskInterface
    , AttachedDiskInterface (..)

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

    -- ** MachineTypesScopedListWarningCode
    , MachineTypesScopedListWarningCode (..)

    -- ** OperationError
    , OperationError
    , operationError
    , oeErrors

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
    , mtGuestCPUs
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

    -- ** AutoscalersScopedListWarningCode
    , AutoscalersScopedListWarningCode (..)

    -- ** TargetInstancesScopedListWarning
    , TargetInstancesScopedListWarning
    , targetInstancesScopedListWarning
    , tislwData
    , tislwCode
    , tislwMessage

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

    -- ** RouteWarningsCode
    , RouteWarningsCode (..)

    -- ** InstanceGroupsListInstances
    , InstanceGroupsListInstances
    , instanceGroupsListInstances
    , igliNextPageToken
    , igliKind
    , igliItems
    , igliSelfLink
    , igliId

    -- ** TargetInstancesScopedListWarningData
    , TargetInstancesScopedListWarningData
    , targetInstancesScopedListWarningData
    , tislwdValue
    , tislwdKey

    -- ** Metadata
    , Metadata
    , metadata
    , mKind
    , mFingerprint
    , mItems

    -- ** DiskTypesScopedListWarningCode
    , DiskTypesScopedListWarningCode (..)

    -- ** InstanceStatus
    , InstanceStatus (..)

    -- ** TargetHTTPProxy
    , TargetHTTPProxy
    , targetHTTPProxy
    , thttppURLMap
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

    -- ** OperationsScopedListWarningData
    , OperationsScopedListWarningData
    , operationsScopedListWarningData
    , oslwdValue
    , oslwdKey

    -- ** DisksScopedListWarningData
    , DisksScopedListWarningData
    , disksScopedListWarningData
    , dslwdValue
    , dslwdKey

    -- ** ForwardingRulesScopedListWarning
    , ForwardingRulesScopedListWarning
    , forwardingRulesScopedListWarning
    , frslwData
    , frslwCode
    , frslwMessage

    -- ** VPNTunnel
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

    -- ** VPNTunnelsScopedListWarningCode
    , VPNTunnelsScopedListWarningCode (..)

    -- ** OperationsScopedListWarning
    , OperationsScopedListWarning
    , operationsScopedListWarning
    , oslwData
    , oslwCode
    , oslwMessage

    -- ** TargetPoolsScopedListWarningData
    , TargetPoolsScopedListWarningData
    , targetPoolsScopedListWarningData
    , tpslwdValue
    , tpslwdKey

    -- ** Scheduling
    , Scheduling
    , scheduling
    , sAutomaticRestart
    , sOnHostMaintenance
    , sPreemptible

    -- ** ForwardingRulesScopedListWarningData
    , ForwardingRulesScopedListWarningData
    , forwardingRulesScopedListWarningData
    , frslwdValue
    , frslwdKey

    -- ** TargetPoolsScopedListWarning
    , TargetPoolsScopedListWarning
    , targetPoolsScopedListWarning
    , tpslwData
    , tpslwCode
    , tpslwMessage

    -- ** InstanceGroupManagersScopedListWarningData
    , InstanceGroupManagersScopedListWarningData
    , instanceGroupManagersScopedListWarningData
    , igmslwdValue
    , igmslwdKey

    -- ** HealthStatus
    , HealthStatus
    , healthStatus
    , hsIPAddress
    , hsHealthState
    , hsPort
    , hsInstance

    -- ** TargetVPNGatewayAggregatedListItems
    , TargetVPNGatewayAggregatedListItems
    , targetVPNGatewayAggregatedListItems

    -- ** DisksScopedListWarning
    , DisksScopedListWarning
    , disksScopedListWarning
    , dslwData
    , dslwCode
    , dslwMessage

    -- ** InstanceGroupManagersScopedListWarning
    , InstanceGroupManagersScopedListWarning
    , instanceGroupManagersScopedListWarning
    , igmslwData
    , igmslwCode
    , igmslwMessage

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

    -- ** ManagedInstanceLastAttemptErrorsErrors
    , ManagedInstanceLastAttemptErrorsErrors
    , managedInstanceLastAttemptErrorsErrors
    , milaeeLocation
    , milaeeCode
    , milaeeMessage

    -- ** InstanceGroupsScopedListWarning
    , InstanceGroupsScopedListWarning
    , instanceGroupsScopedListWarning
    , igslwData
    , igslwCode
    , igslwMessage

    -- ** MetadataItems
    , MetadataItems
    , metadataItems
    , miValue
    , miKey

    -- ** License
    , License
    , license
    , lChargesUseFee
    , lKind
    , lSelfLink
    , lName

    -- ** InstanceGroupsScopedListWarningData
    , InstanceGroupsScopedListWarningData
    , instanceGroupsScopedListWarningData
    , igslwdValue
    , igslwdKey

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

    -- ** HostRule
    , HostRule
    , hostRule
    , hrHosts
    , hrDescription
    , hrPathMatcher

    -- ** OperationErrorErrors
    , OperationErrorErrors
    , operationErrorErrors
    , oeeLocation
    , oeeCode
    , oeeMessage

    -- ** InstanceWithNamedPortsStatus
    , InstanceWithNamedPortsStatus (..)

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
    , tvgslTargetVPNGateways
    , tvgslWarning

    -- ** InstanceGroupsScopedListWarningCode
    , InstanceGroupsScopedListWarningCode (..)

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
    , acNATIP
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

    -- ** TargetPoolSessionAffinity
    , TargetPoolSessionAffinity (..)

    -- ** AddressAggregatedList
    , AddressAggregatedList
    , addressAggregatedList
    , addNextPageToken
    , addKind
    , addItems
    , addSelfLink
    , addId

    -- ** ImageRawDiskContainerType
    , ImageRawDiskContainerType (..)

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

    -- ** InstancesScopedListWarningCode
    , InstancesScopedListWarningCode (..)

    -- ** VPNTunnelAggregatedListItems
    , VPNTunnelAggregatedListItems
    , vPNTunnelAggregatedListItems

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

    -- ** OperationWarningsCode
    , OperationWarningsCode (..)
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
     ImagesInsertResource :<|> ImagesListResource :<|>
       ImagesGetResource
       :<|> ImagesDeprecateResource
       :<|> ImagesDeleteResource
       :<|> UrlMapsInsertResource
       :<|> UrlMapsListResource
       :<|> UrlMapsPatchResource
       :<|> UrlMapsGetResource
       :<|> UrlMapsValidateResource
       :<|> UrlMapsDeleteResource
       :<|> UrlMapsUpdateResource
       :<|> InstanceTemplatesInsertResource
       :<|> InstanceTemplatesListResource
       :<|> InstanceTemplatesGetResource
       :<|> InstanceTemplatesDeleteResource
       :<|> RoutesInsertResource
       :<|> RoutesListResource
       :<|> RoutesGetResource
       :<|> RoutesDeleteResource
       :<|> TargetVPNGatewaysAggregatedListResource
       :<|> TargetVPNGatewaysInsertResource
       :<|> TargetVPNGatewaysListResource
       :<|> TargetVPNGatewaysGetResource
       :<|> TargetVPNGatewaysDeleteResource
       :<|> ZonesListResource
       :<|> ZonesGetResource
       :<|> GlobalForwardingRulesInsertResource
       :<|> GlobalForwardingRulesListResource
       :<|> GlobalForwardingRulesGetResource
       :<|> GlobalForwardingRulesSetTargetResource
       :<|> GlobalForwardingRulesDeleteResource
       :<|> NetworksInsertResource
       :<|> NetworksListResource
       :<|> NetworksGetResource
       :<|> NetworksDeleteResource
       :<|> AddressesAggregatedListResource
       :<|> AddressesInsertResource
       :<|> AddressesListResource
       :<|> AddressesGetResource
       :<|> AddressesDeleteResource
       :<|> VpnTunnelsAggregatedListResource
       :<|> VpnTunnelsInsertResource
       :<|> VpnTunnelsListResource
       :<|> VpnTunnelsGetResource
       :<|> VpnTunnelsDeleteResource
       :<|> RegionsListResource
       :<|> RegionsGetResource
       :<|> GlobalAddressesInsertResource
       :<|> GlobalAddressesListResource
       :<|> GlobalAddressesGetResource
       :<|> GlobalAddressesDeleteResource
       :<|> TargetHTTPProxiesInsertResource
       :<|> TargetHTTPProxiesListResource
       :<|> TargetHTTPProxiesSetURLMapResource
       :<|> TargetHTTPProxiesGetResource
       :<|> TargetHTTPProxiesDeleteResource
       :<|> AutoscalersAggregatedListResource
       :<|> AutoscalersInsertResource
       :<|> AutoscalersListResource
       :<|> AutoscalersPatchResource
       :<|> AutoscalersGetResource
       :<|> AutoscalersDeleteResource
       :<|> AutoscalersUpdateResource
       :<|> DiskTypesAggregatedListResource
       :<|> DiskTypesListResource
       :<|> DiskTypesGetResource
       :<|> RegionOperationsListResource
       :<|> RegionOperationsGetResource
       :<|> RegionOperationsDeleteResource
       :<|> MachineTypesAggregatedListResource
       :<|> MachineTypesListResource
       :<|> MachineTypesGetResource
       :<|> HttpHealthChecksInsertResource
       :<|> HttpHealthChecksListResource
       :<|> HttpHealthChecksPatchResource
       :<|> HttpHealthChecksGetResource
       :<|> HttpHealthChecksDeleteResource
       :<|> HttpHealthChecksUpdateResource
       :<|> SnapshotsListResource
       :<|> SnapshotsGetResource
       :<|> SnapshotsDeleteResource
       :<|> InstancesAddAccessConfigResource
       :<|> InstancesAggregatedListResource
       :<|> InstancesInsertResource
       :<|> InstancesDetachDiskResource
       :<|> InstancesListResource
       :<|> InstancesStartResource
       :<|> InstancesGetResource
       :<|> InstancesDeleteAccessConfigResource
       :<|> InstancesSetMetadataResource
       :<|> InstancesSetSchedulingResource
       :<|> InstancesResetResource
       :<|> InstancesStopResource
       :<|> InstancesGetSerialPortOutputResource
       :<|> InstancesSetTagsResource
       :<|> InstancesAttachDiskResource
       :<|> InstancesDeleteResource
       :<|> InstancesSetDiskAutoDeleteResource
       :<|> BackendServicesInsertResource
       :<|> BackendServicesListResource
       :<|> BackendServicesGetHealthResource
       :<|> BackendServicesPatchResource
       :<|> BackendServicesGetResource
       :<|> BackendServicesDeleteResource
       :<|> BackendServicesUpdateResource
       :<|> InstanceGroupsRemoveInstancesResource
       :<|> InstanceGroupsAggregatedListResource
       :<|> InstanceGroupsInsertResource
       :<|> InstanceGroupsListResource
       :<|> InstanceGroupsAddInstancesResource
       :<|> InstanceGroupsGetResource
       :<|> InstanceGroupsListInstancesResource
       :<|> InstanceGroupsSetNamedPortsResource
       :<|> InstanceGroupsDeleteResource
       :<|> GlobalOperationsAggregatedListResource
       :<|> GlobalOperationsListResource
       :<|> GlobalOperationsGetResource
       :<|> GlobalOperationsDeleteResource
       :<|> FirewallsInsertResource
       :<|> FirewallsListResource
       :<|> FirewallsPatchResource
       :<|> FirewallsGetResource
       :<|> FirewallsDeleteResource
       :<|> FirewallsUpdateResource
       :<|> LicensesGetResource
       :<|> ZoneOperationsListResource
       :<|> ZoneOperationsGetResource
       :<|> ZoneOperationsDeleteResource
       :<|> TargetInstancesAggregatedListResource
       :<|> TargetInstancesInsertResource
       :<|> TargetInstancesListResource
       :<|> TargetInstancesGetResource
       :<|> TargetInstancesDeleteResource
       :<|> DisksAggregatedListResource
       :<|> DisksInsertResource
       :<|> DisksListResource
       :<|> DisksGetResource
       :<|> DisksCreateSnapshotResource
       :<|> DisksDeleteResource
       :<|> TargetPoolsAggregatedListResource
       :<|> TargetPoolsRemoveInstanceResource
       :<|> TargetPoolsInsertResource
       :<|> TargetPoolsListResource
       :<|> TargetPoolsGetHealthResource
       :<|> TargetPoolsGetResource
       :<|> TargetPoolsRemoveHealthCheckResource
       :<|> TargetPoolsSetBackupResource
       :<|> TargetPoolsAddInstanceResource
       :<|> TargetPoolsAddHealthCheckResource
       :<|> TargetPoolsDeleteResource
       :<|> InstanceGroupManagersSetTargetPoolsResource
       :<|> InstanceGroupManagersAggregatedListResource
       :<|> InstanceGroupManagersInsertResource
       :<|> InstanceGroupManagersResizeResource
       :<|> InstanceGroupManagersListResource
       :<|>
       InstanceGroupManagersListManagedInstancesResource
       :<|> InstanceGroupManagersAbandonInstancesResource
       :<|> InstanceGroupManagersSetInstanceTemplateResource
       :<|> InstanceGroupManagersGetResource
       :<|> InstanceGroupManagersDeleteInstancesResource
       :<|> InstanceGroupManagersDeleteResource
       :<|> InstanceGroupManagersRecreateInstancesResource
       :<|> ProjectsSetUsageExportBucketResource
       :<|> ProjectsMoveInstanceResource
       :<|> ProjectsGetResource
       :<|> ProjectsMoveDiskResource
       :<|> ProjectsSetCommonInstanceMetadataResource
       :<|> ForwardingRulesAggregatedListResource
       :<|> ForwardingRulesInsertResource
       :<|> ForwardingRulesListResource
       :<|> ForwardingRulesGetResource
       :<|> ForwardingRulesSetTargetResource
       :<|> ForwardingRulesDeleteResource

computeAPI :: Proxy ComputeAPI
computeAPI = Proxy
