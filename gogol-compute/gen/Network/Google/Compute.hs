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
    -- * REST Resources

    -- ** Compute Engine API
      Compute
    , compute
    , computeURL

    -- ** compute.addresses.aggregatedList
    , module Network.Google.API.Compute.Addresses.AggregatedList

    -- ** compute.addresses.delete
    , module Network.Google.API.Compute.Addresses.Delete

    -- ** compute.addresses.get
    , module Network.Google.API.Compute.Addresses.Get

    -- ** compute.addresses.insert
    , module Network.Google.API.Compute.Addresses.Insert

    -- ** compute.addresses.list
    , module Network.Google.API.Compute.Addresses.List

    -- ** compute.autoscalers.aggregatedList
    , module Network.Google.API.Compute.Autoscalers.AggregatedList

    -- ** compute.autoscalers.delete
    , module Network.Google.API.Compute.Autoscalers.Delete

    -- ** compute.autoscalers.get
    , module Network.Google.API.Compute.Autoscalers.Get

    -- ** compute.autoscalers.insert
    , module Network.Google.API.Compute.Autoscalers.Insert

    -- ** compute.autoscalers.list
    , module Network.Google.API.Compute.Autoscalers.List

    -- ** compute.autoscalers.patch
    , module Network.Google.API.Compute.Autoscalers.Patch

    -- ** compute.autoscalers.update
    , module Network.Google.API.Compute.Autoscalers.Update

    -- ** compute.backendServices.delete
    , module Network.Google.API.Compute.BackendServices.Delete

    -- ** compute.backendServices.get
    , module Network.Google.API.Compute.BackendServices.Get

    -- ** compute.backendServices.getHealth
    , module Network.Google.API.Compute.BackendServices.GetHealth

    -- ** compute.backendServices.insert
    , module Network.Google.API.Compute.BackendServices.Insert

    -- ** compute.backendServices.list
    , module Network.Google.API.Compute.BackendServices.List

    -- ** compute.backendServices.patch
    , module Network.Google.API.Compute.BackendServices.Patch

    -- ** compute.backendServices.update
    , module Network.Google.API.Compute.BackendServices.Update

    -- ** compute.diskTypes.aggregatedList
    , module Network.Google.API.Compute.DiskTypes.AggregatedList

    -- ** compute.diskTypes.get
    , module Network.Google.API.Compute.DiskTypes.Get

    -- ** compute.diskTypes.list
    , module Network.Google.API.Compute.DiskTypes.List

    -- ** compute.disks.aggregatedList
    , module Network.Google.API.Compute.Disks.AggregatedList

    -- ** compute.disks.createSnapshot
    , module Network.Google.API.Compute.Disks.CreateSnapshot

    -- ** compute.disks.delete
    , module Network.Google.API.Compute.Disks.Delete

    -- ** compute.disks.get
    , module Network.Google.API.Compute.Disks.Get

    -- ** compute.disks.insert
    , module Network.Google.API.Compute.Disks.Insert

    -- ** compute.disks.list
    , module Network.Google.API.Compute.Disks.List

    -- ** compute.firewalls.delete
    , module Network.Google.API.Compute.Firewalls.Delete

    -- ** compute.firewalls.get
    , module Network.Google.API.Compute.Firewalls.Get

    -- ** compute.firewalls.insert
    , module Network.Google.API.Compute.Firewalls.Insert

    -- ** compute.firewalls.list
    , module Network.Google.API.Compute.Firewalls.List

    -- ** compute.firewalls.patch
    , module Network.Google.API.Compute.Firewalls.Patch

    -- ** compute.firewalls.update
    , module Network.Google.API.Compute.Firewalls.Update

    -- ** compute.forwardingRules.aggregatedList
    , module Network.Google.API.Compute.ForwardingRules.AggregatedList

    -- ** compute.forwardingRules.delete
    , module Network.Google.API.Compute.ForwardingRules.Delete

    -- ** compute.forwardingRules.get
    , module Network.Google.API.Compute.ForwardingRules.Get

    -- ** compute.forwardingRules.insert
    , module Network.Google.API.Compute.ForwardingRules.Insert

    -- ** compute.forwardingRules.list
    , module Network.Google.API.Compute.ForwardingRules.List

    -- ** compute.forwardingRules.setTarget
    , module Network.Google.API.Compute.ForwardingRules.SetTarget

    -- ** compute.globalAddresses.delete
    , module Network.Google.API.Compute.GlobalAddresses.Delete

    -- ** compute.globalAddresses.get
    , module Network.Google.API.Compute.GlobalAddresses.Get

    -- ** compute.globalAddresses.insert
    , module Network.Google.API.Compute.GlobalAddresses.Insert

    -- ** compute.globalAddresses.list
    , module Network.Google.API.Compute.GlobalAddresses.List

    -- ** compute.globalForwardingRules.delete
    , module Network.Google.API.Compute.GlobalForwardingRules.Delete

    -- ** compute.globalForwardingRules.get
    , module Network.Google.API.Compute.GlobalForwardingRules.Get

    -- ** compute.globalForwardingRules.insert
    , module Network.Google.API.Compute.GlobalForwardingRules.Insert

    -- ** compute.globalForwardingRules.list
    , module Network.Google.API.Compute.GlobalForwardingRules.List

    -- ** compute.globalForwardingRules.setTarget
    , module Network.Google.API.Compute.GlobalForwardingRules.SetTarget

    -- ** compute.globalOperations.aggregatedList
    , module Network.Google.API.Compute.GlobalOperations.AggregatedList

    -- ** compute.globalOperations.delete
    , module Network.Google.API.Compute.GlobalOperations.Delete

    -- ** compute.globalOperations.get
    , module Network.Google.API.Compute.GlobalOperations.Get

    -- ** compute.globalOperations.list
    , module Network.Google.API.Compute.GlobalOperations.List

    -- ** compute.httpHealthChecks.delete
    , module Network.Google.API.Compute.HTTPHealthChecks.Delete

    -- ** compute.httpHealthChecks.get
    , module Network.Google.API.Compute.HTTPHealthChecks.Get

    -- ** compute.httpHealthChecks.insert
    , module Network.Google.API.Compute.HTTPHealthChecks.Insert

    -- ** compute.httpHealthChecks.list
    , module Network.Google.API.Compute.HTTPHealthChecks.List

    -- ** compute.httpHealthChecks.patch
    , module Network.Google.API.Compute.HTTPHealthChecks.Patch

    -- ** compute.httpHealthChecks.update
    , module Network.Google.API.Compute.HTTPHealthChecks.Update

    -- ** compute.images.delete
    , module Network.Google.API.Compute.Images.Delete

    -- ** compute.images.deprecate
    , module Network.Google.API.Compute.Images.Deprecate

    -- ** compute.images.get
    , module Network.Google.API.Compute.Images.Get

    -- ** compute.images.insert
    , module Network.Google.API.Compute.Images.Insert

    -- ** compute.images.list
    , module Network.Google.API.Compute.Images.List

    -- ** compute.instanceGroupManagers.abandonInstances
    , module Network.Google.API.Compute.InstanceGroupManagers.AbandonInstances

    -- ** compute.instanceGroupManagers.aggregatedList
    , module Network.Google.API.Compute.InstanceGroupManagers.AggregatedList

    -- ** compute.instanceGroupManagers.delete
    , module Network.Google.API.Compute.InstanceGroupManagers.Delete

    -- ** compute.instanceGroupManagers.deleteInstances
    , module Network.Google.API.Compute.InstanceGroupManagers.DeleteInstances

    -- ** compute.instanceGroupManagers.get
    , module Network.Google.API.Compute.InstanceGroupManagers.Get

    -- ** compute.instanceGroupManagers.insert
    , module Network.Google.API.Compute.InstanceGroupManagers.Insert

    -- ** compute.instanceGroupManagers.list
    , module Network.Google.API.Compute.InstanceGroupManagers.List

    -- ** compute.instanceGroupManagers.listManagedInstances
    , module Network.Google.API.Compute.InstanceGroupManagers.ListManagedInstances

    -- ** compute.instanceGroupManagers.recreateInstances
    , module Network.Google.API.Compute.InstanceGroupManagers.RecreateInstances

    -- ** compute.instanceGroupManagers.resize
    , module Network.Google.API.Compute.InstanceGroupManagers.Resize

    -- ** compute.instanceGroupManagers.setInstanceTemplate
    , module Network.Google.API.Compute.InstanceGroupManagers.SetInstanceTemplate

    -- ** compute.instanceGroupManagers.setTargetPools
    , module Network.Google.API.Compute.InstanceGroupManagers.SetTargetPools

    -- ** compute.instanceGroups.addInstances
    , module Network.Google.API.Compute.InstanceGroups.AddInstances

    -- ** compute.instanceGroups.aggregatedList
    , module Network.Google.API.Compute.InstanceGroups.AggregatedList

    -- ** compute.instanceGroups.delete
    , module Network.Google.API.Compute.InstanceGroups.Delete

    -- ** compute.instanceGroups.get
    , module Network.Google.API.Compute.InstanceGroups.Get

    -- ** compute.instanceGroups.insert
    , module Network.Google.API.Compute.InstanceGroups.Insert

    -- ** compute.instanceGroups.list
    , module Network.Google.API.Compute.InstanceGroups.List

    -- ** compute.instanceGroups.listInstances
    , module Network.Google.API.Compute.InstanceGroups.ListInstances

    -- ** compute.instanceGroups.removeInstances
    , module Network.Google.API.Compute.InstanceGroups.RemoveInstances

    -- ** compute.instanceGroups.setNamedPorts
    , module Network.Google.API.Compute.InstanceGroups.SetNamedPorts

    -- ** compute.instanceTemplates.delete
    , module Network.Google.API.Compute.InstanceTemplates.Delete

    -- ** compute.instanceTemplates.get
    , module Network.Google.API.Compute.InstanceTemplates.Get

    -- ** compute.instanceTemplates.insert
    , module Network.Google.API.Compute.InstanceTemplates.Insert

    -- ** compute.instanceTemplates.list
    , module Network.Google.API.Compute.InstanceTemplates.List

    -- ** compute.instances.addAccessConfig
    , module Network.Google.API.Compute.Instances.AddAccessConfig

    -- ** compute.instances.aggregatedList
    , module Network.Google.API.Compute.Instances.AggregatedList

    -- ** compute.instances.attachDisk
    , module Network.Google.API.Compute.Instances.AttachDisk

    -- ** compute.instances.delete
    , module Network.Google.API.Compute.Instances.Delete

    -- ** compute.instances.deleteAccessConfig
    , module Network.Google.API.Compute.Instances.DeleteAccessConfig

    -- ** compute.instances.detachDisk
    , module Network.Google.API.Compute.Instances.DetachDisk

    -- ** compute.instances.get
    , module Network.Google.API.Compute.Instances.Get

    -- ** compute.instances.getSerialPortOutput
    , module Network.Google.API.Compute.Instances.GetSerialPortOutput

    -- ** compute.instances.insert
    , module Network.Google.API.Compute.Instances.Insert

    -- ** compute.instances.list
    , module Network.Google.API.Compute.Instances.List

    -- ** compute.instances.reset
    , module Network.Google.API.Compute.Instances.Reset

    -- ** compute.instances.setDiskAutoDelete
    , module Network.Google.API.Compute.Instances.SetDiskAutoDelete

    -- ** compute.instances.setMetadata
    , module Network.Google.API.Compute.Instances.SetMetadata

    -- ** compute.instances.setScheduling
    , module Network.Google.API.Compute.Instances.SetScheduling

    -- ** compute.instances.setTags
    , module Network.Google.API.Compute.Instances.SetTags

    -- ** compute.instances.start
    , module Network.Google.API.Compute.Instances.Start

    -- ** compute.instances.stop
    , module Network.Google.API.Compute.Instances.Stop

    -- ** compute.licenses.get
    , module Network.Google.API.Compute.Licenses.Get

    -- ** compute.machineTypes.aggregatedList
    , module Network.Google.API.Compute.MachineTypes.AggregatedList

    -- ** compute.machineTypes.get
    , module Network.Google.API.Compute.MachineTypes.Get

    -- ** compute.machineTypes.list
    , module Network.Google.API.Compute.MachineTypes.List

    -- ** compute.networks.delete
    , module Network.Google.API.Compute.Networks.Delete

    -- ** compute.networks.get
    , module Network.Google.API.Compute.Networks.Get

    -- ** compute.networks.insert
    , module Network.Google.API.Compute.Networks.Insert

    -- ** compute.networks.list
    , module Network.Google.API.Compute.Networks.List

    -- ** compute.projects.get
    , module Network.Google.API.Compute.Projects.Get

    -- ** compute.projects.moveDisk
    , module Network.Google.API.Compute.Projects.MoveDisk

    -- ** compute.projects.moveInstance
    , module Network.Google.API.Compute.Projects.MoveInstance

    -- ** compute.projects.setCommonInstanceMetadata
    , module Network.Google.API.Compute.Projects.SetCommonInstanceMetadata

    -- ** compute.projects.setUsageExportBucket
    , module Network.Google.API.Compute.Projects.SetUsageExportBucket

    -- ** compute.regionOperations.delete
    , module Network.Google.API.Compute.RegionOperations.Delete

    -- ** compute.regionOperations.get
    , module Network.Google.API.Compute.RegionOperations.Get

    -- ** compute.regionOperations.list
    , module Network.Google.API.Compute.RegionOperations.List

    -- ** compute.regions.get
    , module Network.Google.API.Compute.Regions.Get

    -- ** compute.regions.list
    , module Network.Google.API.Compute.Regions.List

    -- ** compute.routes.delete
    , module Network.Google.API.Compute.Routes.Delete

    -- ** compute.routes.get
    , module Network.Google.API.Compute.Routes.Get

    -- ** compute.routes.insert
    , module Network.Google.API.Compute.Routes.Insert

    -- ** compute.routes.list
    , module Network.Google.API.Compute.Routes.List

    -- ** compute.snapshots.delete
    , module Network.Google.API.Compute.Snapshots.Delete

    -- ** compute.snapshots.get
    , module Network.Google.API.Compute.Snapshots.Get

    -- ** compute.snapshots.list
    , module Network.Google.API.Compute.Snapshots.List

    -- ** compute.targetHttpProxies.delete
    , module Network.Google.API.Compute.TargetHTTPProxies.Delete

    -- ** compute.targetHttpProxies.get
    , module Network.Google.API.Compute.TargetHTTPProxies.Get

    -- ** compute.targetHttpProxies.insert
    , module Network.Google.API.Compute.TargetHTTPProxies.Insert

    -- ** compute.targetHttpProxies.list
    , module Network.Google.API.Compute.TargetHTTPProxies.List

    -- ** compute.targetHttpProxies.setUrlMap
    , module Network.Google.API.Compute.TargetHTTPProxies.SetURLMap

    -- ** compute.targetInstances.aggregatedList
    , module Network.Google.API.Compute.TargetInstances.AggregatedList

    -- ** compute.targetInstances.delete
    , module Network.Google.API.Compute.TargetInstances.Delete

    -- ** compute.targetInstances.get
    , module Network.Google.API.Compute.TargetInstances.Get

    -- ** compute.targetInstances.insert
    , module Network.Google.API.Compute.TargetInstances.Insert

    -- ** compute.targetInstances.list
    , module Network.Google.API.Compute.TargetInstances.List

    -- ** compute.targetPools.addHealthCheck
    , module Network.Google.API.Compute.TargetPools.AddHealthCheck

    -- ** compute.targetPools.addInstance
    , module Network.Google.API.Compute.TargetPools.AddInstance

    -- ** compute.targetPools.aggregatedList
    , module Network.Google.API.Compute.TargetPools.AggregatedList

    -- ** compute.targetPools.delete
    , module Network.Google.API.Compute.TargetPools.Delete

    -- ** compute.targetPools.get
    , module Network.Google.API.Compute.TargetPools.Get

    -- ** compute.targetPools.getHealth
    , module Network.Google.API.Compute.TargetPools.GetHealth

    -- ** compute.targetPools.insert
    , module Network.Google.API.Compute.TargetPools.Insert

    -- ** compute.targetPools.list
    , module Network.Google.API.Compute.TargetPools.List

    -- ** compute.targetPools.removeHealthCheck
    , module Network.Google.API.Compute.TargetPools.RemoveHealthCheck

    -- ** compute.targetPools.removeInstance
    , module Network.Google.API.Compute.TargetPools.RemoveInstance

    -- ** compute.targetPools.setBackup
    , module Network.Google.API.Compute.TargetPools.SetBackup

    -- ** compute.targetVpnGateways.aggregatedList
    , module Network.Google.API.Compute.TargetVPNGateways.AggregatedList

    -- ** compute.targetVpnGateways.delete
    , module Network.Google.API.Compute.TargetVPNGateways.Delete

    -- ** compute.targetVpnGateways.get
    , module Network.Google.API.Compute.TargetVPNGateways.Get

    -- ** compute.targetVpnGateways.insert
    , module Network.Google.API.Compute.TargetVPNGateways.Insert

    -- ** compute.targetVpnGateways.list
    , module Network.Google.API.Compute.TargetVPNGateways.List

    -- ** compute.urlMaps.delete
    , module Network.Google.API.Compute.URLMaps.Delete

    -- ** compute.urlMaps.get
    , module Network.Google.API.Compute.URLMaps.Get

    -- ** compute.urlMaps.insert
    , module Network.Google.API.Compute.URLMaps.Insert

    -- ** compute.urlMaps.list
    , module Network.Google.API.Compute.URLMaps.List

    -- ** compute.urlMaps.patch
    , module Network.Google.API.Compute.URLMaps.Patch

    -- ** compute.urlMaps.update
    , module Network.Google.API.Compute.URLMaps.Update

    -- ** compute.urlMaps.validate
    , module Network.Google.API.Compute.URLMaps.Validate

    -- ** compute.vpnTunnels.aggregatedList
    , module Network.Google.API.Compute.VPNTunnels.AggregatedList

    -- ** compute.vpnTunnels.delete
    , module Network.Google.API.Compute.VPNTunnels.Delete

    -- ** compute.vpnTunnels.get
    , module Network.Google.API.Compute.VPNTunnels.Get

    -- ** compute.vpnTunnels.insert
    , module Network.Google.API.Compute.VPNTunnels.Insert

    -- ** compute.vpnTunnels.list
    , module Network.Google.API.Compute.VPNTunnels.List

    -- ** compute.zoneOperations.delete
    , module Network.Google.API.Compute.ZoneOperations.Delete

    -- ** compute.zoneOperations.get
    , module Network.Google.API.Compute.ZoneOperations.Get

    -- ** compute.zoneOperations.list
    , module Network.Google.API.Compute.ZoneOperations.List

    -- ** compute.zones.get
    , module Network.Google.API.Compute.Zones.Get

    -- ** compute.zones.list
    , module Network.Google.API.Compute.Zones.List

    -- * Types

    -- ** InstanceGroupsListInstancesRequest
    , InstanceGroupsListInstancesRequest
    , instanceGroupsListInstancesRequest
    , iglirInstanceState

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

    -- ** NetworkList
    , NetworkList
    , networkList
    , nlNextPageToken
    , nlKind
    , nlItems
    , nlSelfLink
    , nlId

    -- ** ZoneList
    , ZoneList
    , zoneList
    , zlNextPageToken
    , zlKind
    , zlItems
    , zlSelfLink
    , zlId

    -- ** ManagedInstance
    , ManagedInstance
    , managedInstance
    , miLastAttempt
    , miCurrentAction
    , miId
    , miInstanceStatus
    , miInstance

    -- ** ServiceAccount
    , ServiceAccount
    , serviceAccount
    , saEmail
    , saScopes

    -- ** TargetPoolsAddHealthCheckRequest
    , TargetPoolsAddHealthCheckRequest
    , targetPoolsAddHealthCheckRequest
    , tpahcrHealthChecks

    -- ** UsageExportLocation
    , UsageExportLocation
    , usageExportLocation
    , uelReportNamePrefix
    , uelBucketName

    -- ** UrlMapReference
    , UrlMapReference
    , urlMapReference
    , umrUrlMap

    -- ** AddressList
    , AddressList
    , addressList
    , alNextPageToken
    , alKind
    , alItems
    , alSelfLink
    , alId

    -- ** InstanceGroupManagersDeleteInstancesRequest
    , InstanceGroupManagersDeleteInstancesRequest
    , instanceGroupManagersDeleteInstancesRequest
    , igmdirInstances

    -- ** AddressAggregatedListItems
    , AddressAggregatedListItems
    , addressAggregatedListItems

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

    -- ** DiskTypeAggregatedListItems
    , DiskTypeAggregatedListItems
    , diskTypeAggregatedListItems

    -- ** AttachedDiskMode
    , AttachedDiskMode (..)

    -- ** TargetInstancesScopedList
    , TargetInstancesScopedList
    , targetInstancesScopedList
    , tislWarning
    , tislTargetInstances

    -- ** OperationItemDataItemWarnings
    , OperationItemDataItemWarnings
    , operationItemDataItemWarnings
    , oidiwValue
    , oidiwKey

    -- ** TargetHttpProxyList
    , TargetHttpProxyList
    , targetHttpProxyList
    , thplNextPageToken
    , thplKind
    , thplItems
    , thplSelfLink
    , thplId

    -- ** TargetVpnGatewaysScopedListWarning
    , TargetVpnGatewaysScopedListWarning
    , targetVpnGatewaysScopedListWarning
    , tvgslwData
    , tvgslwCode
    , tvgslwMessage

    -- ** BackendBalancingMode
    , BackendBalancingMode (..)

    -- ** VpnTunnelAggregatedList
    , VpnTunnelAggregatedList
    , vpnTunnelAggregatedList
    , vtalNextPageToken
    , vtalKind
    , vtalItems
    , vtalSelfLink
    , vtalId

    -- ** MachineTypeList
    , MachineTypeList
    , machineTypeList
    , mtlNextPageToken
    , mtlKind
    , mtlItems
    , mtlSelfLink
    , mtlId

    -- ** SchedulingOnHostMaintenance
    , SchedulingOnHostMaintenance (..)

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

    -- ** AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType
    , AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType (..)

    -- ** DiskTypeList
    , DiskTypeList
    , diskTypeList
    , dtlNextPageToken
    , dtlKind
    , dtlItems
    , dtlSelfLink
    , dtlId

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

    -- ** OperationCodeItemWarnings
    , OperationCodeItemWarnings (..)

    -- ** OperationAggregatedListItems
    , OperationAggregatedListItems
    , operationAggregatedListItems

    -- ** RegionStatus
    , RegionStatus (..)

    -- ** TargetPoolAggregatedList
    , TargetPoolAggregatedList
    , targetPoolAggregatedList
    , tpalNextPageToken
    , tpalKind
    , tpalItems
    , tpalSelfLink
    , tpalId

    -- ** InstanceGroupManagerAggregatedList
    , InstanceGroupManagerAggregatedList
    , instanceGroupManagerAggregatedList
    , igmalNextPageToken
    , igmalKind
    , igmalItems
    , igmalSelfLink
    , igmalId

    -- ** TargetPoolsScopedList
    , TargetPoolsScopedList
    , targetPoolsScopedList
    , tpslWarning
    , tpslTargetPools

    -- ** OperationAggregatedList
    , OperationAggregatedList
    , operationAggregatedList
    , oalNextPageToken
    , oalKind
    , oalItems
    , oalSelfLink
    , oalId

    -- ** TargetInstanceList
    , TargetInstanceList
    , targetInstanceList
    , tilNextPageToken
    , tilKind
    , tilItems
    , tilSelfLink
    , tilId

    -- ** ImageContainerTypeRawDisk
    , ImageContainerTypeRawDisk (..)

    -- ** InstancesScopedListItemDataWarning
    , InstancesScopedListItemDataWarning
    , instancesScopedListItemDataWarning
    , islidwValue
    , islidwKey

    -- ** InstanceGroupManagersScopedList
    , InstanceGroupManagersScopedList
    , instanceGroupManagersScopedList
    , igmslWarning
    , igmslInstanceGroupManagers

    -- ** OperationsScopedList
    , OperationsScopedList
    , operationsScopedList
    , oslWarning
    , oslOperations

    -- ** OperationItemWarnings
    , OperationItemWarnings
    , operationItemWarnings
    , oiwData
    , oiwCode
    , oiwMessage

    -- ** ZoneItemMaintenanceWindows
    , ZoneItemMaintenanceWindows
    , zoneItemMaintenanceWindows
    , zimwBeginTime
    , zimwName
    , zimwEndTime
    , zimwDescription

    -- ** TargetPoolSessionAffinity
    , TargetPoolSessionAffinity (..)

    -- ** TargetReference
    , TargetReference
    , targetReference
    , trTarget

    -- ** InstanceWithNamedPorts
    , InstanceWithNamedPorts
    , instanceWithNamedPorts
    , iwnpStatus
    , iwnpNamedPorts
    , iwnpInstance

    -- ** ForwardingRuleAggregatedList
    , ForwardingRuleAggregatedList
    , forwardingRuleAggregatedList
    , fralNextPageToken
    , fralKind
    , fralItems
    , fralSelfLink
    , fralId

    -- ** InstancesScopedListCodeWarning
    , InstancesScopedListCodeWarning (..)

    -- ** ForwardingRulesScopedList
    , ForwardingRulesScopedList
    , forwardingRulesScopedList
    , frslWarning
    , frslForwardingRules

    -- ** InstanceReference
    , InstanceReference
    , instanceReference
    , irInstance

    -- ** NamedPort
    , NamedPort
    , namedPort
    , npName
    , npPort

    -- ** Alt
    , Alt (..)

    -- ** DiskStatus
    , DiskStatus (..)

    -- ** DisksScopedList
    , DisksScopedList
    , disksScopedList
    , dslWarning
    , dslDisks

    -- ** DiskAggregatedList
    , DiskAggregatedList
    , diskAggregatedList
    , dalNextPageToken
    , dalKind
    , dalItems
    , dalSelfLink
    , dalId

    -- ** ImageRawDisk
    , ImageRawDisk
    , imageRawDisk
    , irdContainerType
    , irdSource
    , irdSha1Checksum

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

    -- ** UrlMapValidationResult
    , UrlMapValidationResult
    , urlMapValidationResult
    , umvrLoadErrors
    , umvrLoadSucceeded
    , umvrTestPassed
    , umvrTestFailures

    -- ** AddressesScopedListWarning
    , AddressesScopedListWarning
    , addressesScopedListWarning
    , aslwData
    , aslwCode
    , aslwMessage

    -- ** AccessConfigType
    , AccessConfigType (..)

    -- ** InstanceGroupsListInstances
    , InstanceGroupsListInstances
    , instanceGroupsListInstances
    , igliNextPageToken
    , igliKind
    , igliItems
    , igliSelfLink
    , igliId

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

    -- ** Metadata
    , Metadata
    , metadata
    , mKind
    , mFingerprint
    , mItems

    -- ** HealthStatus
    , HealthStatus
    , healthStatus
    , hsIpAddress
    , hsHealthState
    , hsPort
    , hsInstance

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

    -- ** AddressesScopedListItemDataWarning
    , AddressesScopedListItemDataWarning
    , addressesScopedListItemDataWarning
    , aslidwValue
    , aslidwKey

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

    -- ** ImageStatus
    , ImageStatus (..)

    -- ** TargetInstanceNatPolicy
    , TargetInstanceNatPolicy (..)

    -- ** HealthStatusHealthState
    , HealthStatusHealthState (..)

    -- ** Scheduling
    , Scheduling
    , scheduling
    , sAutomaticRestart
    , sOnHostMaintenance
    , sPreemptible

    -- ** AddressesScopedListCodeWarning
    , AddressesScopedListCodeWarning (..)

    -- ** OperationItemErrorsError
    , OperationItemErrorsError
    , operationItemErrorsError
    , oieeLocation
    , oieeCode
    , oieeMessage

    -- ** HttpHealthCheckList
    , HttpHealthCheckList
    , httpHealthCheckList
    , hhclNextPageToken
    , hhclKind
    , hhclItems
    , hhclSelfLink
    , hhclId

    -- ** TargetInstancesScopedListItemDataWarning
    , TargetInstancesScopedListItemDataWarning
    , targetInstancesScopedListItemDataWarning
    , tislidwValue
    , tislidwKey

    -- ** TargetInstancesScopedListCodeWarning
    , TargetInstancesScopedListCodeWarning (..)

    -- ** RouteCodeItemWarnings
    , RouteCodeItemWarnings (..)

    -- ** DisksScopedListWarning
    , DisksScopedListWarning
    , disksScopedListWarning
    , dslwData
    , dslwCode
    , dslwMessage

    -- ** RouteItemDataItemWarnings
    , RouteItemDataItemWarnings
    , routeItemDataItemWarnings
    , ridiwValue
    , ridiwKey

    -- ** BackendServiceList
    , BackendServiceList
    , backendServiceList
    , bslNextPageToken
    , bslKind
    , bslItems
    , bslSelfLink
    , bslId

    -- ** ManagedInstanceLastAttempt
    , ManagedInstanceLastAttempt
    , managedInstanceLastAttempt
    , milaErrors

    -- ** TargetPoolsScopedListWarning
    , TargetPoolsScopedListWarning
    , targetPoolsScopedListWarning
    , tpslwData
    , tpslwCode
    , tpslwMessage

    -- ** InstanceGroupManagersSetTargetPoolsRequest
    , InstanceGroupManagersSetTargetPoolsRequest
    , instanceGroupManagersSetTargetPoolsRequest
    , igmstprFingerprint
    , igmstprTargetPools

    -- ** MachineTypesScopedListWarning
    , MachineTypesScopedListWarning
    , machineTypesScopedListWarning
    , mtslwData
    , mtslwCode
    , mtslwMessage

    -- ** VpnTunnelsScopedListItemDataWarning
    , VpnTunnelsScopedListItemDataWarning
    , vpnTunnelsScopedListItemDataWarning
    , vtslidwValue
    , vtslidwKey

    -- ** InstanceGroupManagersScopedListWarning
    , InstanceGroupManagersScopedListWarning
    , instanceGroupManagersScopedListWarning
    , igmslwData
    , igmslwCode
    , igmslwMessage

    -- ** VpnTunnelsScopedListCodeWarning
    , VpnTunnelsScopedListCodeWarning (..)

    -- ** PathRule
    , PathRule
    , pathRule
    , prService
    , prPaths

    -- ** License
    , License
    , license
    , lChargesUseFee
    , lKind
    , lSelfLink
    , lName

    -- ** ForwardingRulesScopedListWarning
    , ForwardingRulesScopedListWarning
    , forwardingRulesScopedListWarning
    , frslwData
    , frslwCode
    , frslwMessage

    -- ** InstanceAggregatedListItems
    , InstanceAggregatedListItems
    , instanceAggregatedListItems

    -- ** InstanceList
    , InstanceList
    , instanceList
    , ilNextPageToken
    , ilKind
    , ilItems
    , ilSelfLink
    , ilId

    -- ** UrlMapsValidateRequest
    , UrlMapsValidateRequest
    , urlMapsValidateRequest
    , umvrResource

    -- ** InstanceGroupManagersScopedListCodeWarning
    , InstanceGroupManagersScopedListCodeWarning (..)

    -- ** OperationError
    , OperationError
    , operationError
    , oeErrors

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

    -- ** TargetInstancesScopedListWarning
    , TargetInstancesScopedListWarning
    , targetInstancesScopedListWarning
    , tislwData
    , tislwCode
    , tislwMessage

    -- ** InstanceStatus
    , InstanceStatus (..)

    -- ** MachineTypesScopedListCodeWarning
    , MachineTypesScopedListCodeWarning (..)

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

    -- ** MachineTypesScopedListItemDataWarning
    , MachineTypesScopedListItemDataWarning
    , machineTypesScopedListItemDataWarning
    , mtslidwValue
    , mtslidwKey

    -- ** TargetPoolsScopedListCodeWarning
    , TargetPoolsScopedListCodeWarning (..)

    -- ** InstanceGroupManagersRecreateInstancesRequest
    , InstanceGroupManagersRecreateInstancesRequest
    , instanceGroupManagersRecreateInstancesRequest
    , igmrirInstances

    -- ** DisksScopedListItemDataWarning
    , DisksScopedListItemDataWarning
    , disksScopedListItemDataWarning
    , dslidwValue
    , dslidwKey

    -- ** ForwardingRulesScopedListCodeWarning
    , ForwardingRulesScopedListCodeWarning (..)

    -- ** InstanceGroupManagersScopedListItemDataWarning
    , InstanceGroupManagersScopedListItemDataWarning
    , instanceGroupManagersScopedListItemDataWarning
    , igmslidwValue
    , igmslidwKey

    -- ** TargetPoolsScopedListItemDataWarning
    , TargetPoolsScopedListItemDataWarning
    , targetPoolsScopedListItemDataWarning
    , tpslidwValue
    , tpslidwKey

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

    -- ** ForwardingRulesScopedListItemDataWarning
    , ForwardingRulesScopedListItemDataWarning
    , forwardingRulesScopedListItemDataWarning
    , frslidwValue
    , frslidwKey

    -- ** VpnTunnelsScopedListWarning
    , VpnTunnelsScopedListWarning
    , vpnTunnelsScopedListWarning
    , vtslwData
    , vtslwCode
    , vtslwMessage

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

    -- ** DisksScopedListCodeWarning
    , DisksScopedListCodeWarning (..)

    -- ** ForwardingRuleIPProtocol
    , ForwardingRuleIPProtocol (..)

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

    -- ** InstanceMoveRequest
    , InstanceMoveRequest
    , instanceMoveRequest
    , imrTargetInstance
    , imrDestinationZone

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

    -- ** PathMatcher
    , PathMatcher
    , pathMatcher
    , pmDefaultService
    , pmName
    , pmPathRules
    , pmDescription

    -- ** Tags
    , Tags
    , tags
    , tFingerprint
    , tItems

    -- ** UrlMapTest
    , UrlMapTest
    , urlMapTest
    , umtPath
    , umtService
    , umtHost
    , umtDescription

    -- ** ImageSourceType
    , ImageSourceType (..)

    -- ** ZoneStatus
    , ZoneStatus (..)

    -- ** AddressAggregatedList
    , AddressAggregatedList
    , addressAggregatedList
    , aalNextPageToken
    , aalKind
    , aalItems
    , aalSelfLink
    , aalId

    -- ** InstanceGroupsScopedList
    , InstanceGroupsScopedList
    , instanceGroupsScopedList
    , igslWarning
    , igslInstanceGroups

    -- ** DeprecationStatus
    , DeprecationStatus
    , deprecationStatus
    , dsState
    , dsDeleted
    , dsReplacement
    , dsObsolete
    , dsDeprecated

    -- ** InstanceGroupManagersSetInstanceTemplateRequest
    , InstanceGroupManagersSetInstanceTemplateRequest
    , instanceGroupManagersSetInstanceTemplateRequest
    , igmsitrInstanceTemplate

    -- ** InstanceGroupList
    , InstanceGroupList
    , instanceGroupList
    , iglNextPageToken
    , iglKind
    , iglItems
    , iglSelfLink
    , iglId

    -- ** InstanceGroupManagersAbandonInstancesRequest
    , InstanceGroupManagersAbandonInstancesRequest
    , instanceGroupManagersAbandonInstancesRequest
    , igmairInstances

    -- ** BackendServiceProtocol
    , BackendServiceProtocol (..)

    -- ** FirewallList
    , FirewallList
    , firewallList
    , flNextPageToken
    , flKind
    , flItems
    , flSelfLink
    , flId

    -- ** AttachedDiskType
    , AttachedDiskType (..)

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

    -- ** InstanceGroupAggregatedListItems
    , InstanceGroupAggregatedListItems
    , instanceGroupAggregatedListItems

    -- ** AddressesScopedList
    , AddressesScopedList
    , addressesScopedList
    , aslAddresses
    , aslWarning

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

    -- ** DiskList
    , DiskList
    , diskList
    , dlNextPageToken
    , dlKind
    , dlItems
    , dlSelfLink
    , dlId

    -- ** TargetPoolAggregatedListItems
    , TargetPoolAggregatedListItems
    , targetPoolAggregatedListItems

    -- ** InstanceGroupsAddInstancesRequest
    , InstanceGroupsAddInstancesRequest
    , instanceGroupsAddInstancesRequest
    , igairInstances

    -- ** DiskAggregatedListItems
    , DiskAggregatedListItems
    , diskAggregatedListItems

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

    -- ** VpnTunnelsScopedList
    , VpnTunnelsScopedList
    , vpnTunnelsScopedList
    , vtslVpnTunnels
    , vtslWarning

    -- ** InstancesScopedListWarning
    , InstancesScopedListWarning
    , instancesScopedListWarning
    , islwData
    , islwCode
    , islwMessage

    -- ** TargetPoolList
    , TargetPoolList
    , targetPoolList
    , tplNextPageToken
    , tplKind
    , tplItems
    , tplSelfLink
    , tplId

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

    -- ** ForwardingRuleAggregatedListItems
    , ForwardingRuleAggregatedListItems
    , forwardingRuleAggregatedListItems

    -- ** OperationList
    , OperationList
    , operationList
    , olNextPageToken
    , olKind
    , olItems
    , olSelfLink
    , olId

    -- ** InstanceGroupManagerList
    , InstanceGroupManagerList
    , instanceGroupManagerList
    , igmlNextPageToken
    , igmlKind
    , igmlItems
    , igmlSelfLink
    , igmlId

    -- ** TargetPoolsAddInstanceRequest
    , TargetPoolsAddInstanceRequest
    , targetPoolsAddInstanceRequest
    , tpairInstances

    -- ** InstanceGroupManagerAggregatedListItems
    , InstanceGroupManagerAggregatedListItems
    , instanceGroupManagerAggregatedListItems

    -- ** MachineTypeAggregatedListItems
    , MachineTypeAggregatedListItems
    , machineTypeAggregatedListItems

    -- ** ForwardingRuleList
    , ForwardingRuleList
    , forwardingRuleList
    , frlNextPageToken
    , frlKind
    , frlItems
    , frlSelfLink
    , frlId

    -- ** VpnTunnelStatus
    , VpnTunnelStatus (..)

    -- ** TargetVpnGatewaysScopedListItemDataWarning
    , TargetVpnGatewaysScopedListItemDataWarning
    , targetVpnGatewaysScopedListItemDataWarning
    , tvgslidwValue
    , tvgslidwKey

    -- ** RegionList
    , RegionList
    , regionList
    , rlNextPageToken
    , rlKind
    , rlItems
    , rlSelfLink
    , rlId

    -- ** MachineTypesScopedList
    , MachineTypesScopedList
    , machineTypesScopedList
    , mtslMachineTypes
    , mtslWarning

    -- ** BackendServiceGroupHealth
    , BackendServiceGroupHealth
    , backendServiceGroupHealth
    , bsghKind
    , bsghHealthStatus

    -- ** VpnTunnelAggregatedListItems
    , VpnTunnelAggregatedListItems
    , vpnTunnelAggregatedListItems

    -- ** TargetVpnGatewaysScopedListCodeWarning
    , TargetVpnGatewaysScopedListCodeWarning (..)

    -- ** AutoscalingPolicy
    , AutoscalingPolicy
    , autoscalingPolicy
    , apCustomMetricUtilizations
    , apMaxNumReplicas
    , apCpuUtilization
    , apLoadBalancingUtilization
    , apMinNumReplicas
    , apCoolDownPeriodSec

    -- ** DiskTypeAggregatedList
    , DiskTypeAggregatedList
    , diskTypeAggregatedList
    , dtalNextPageToken
    , dtalKind
    , dtalItems
    , dtalSelfLink
    , dtalId

    -- ** TargetInstanceAggregatedListItems
    , TargetInstanceAggregatedListItems
    , targetInstanceAggregatedListItems

    -- ** AutoscalerAggregatedList
    , AutoscalerAggregatedList
    , autoscalerAggregatedList
    , aalaNextPageToken
    , aalaKind
    , aalaItems
    , aalaSelfLink
    , aalaId

    -- ** ManagedInstanceInstanceStatus
    , ManagedInstanceInstanceStatus (..)

    -- ** VpnTunnelList
    , VpnTunnelList
    , vpnTunnelList
    , vtlNextPageToken
    , vtlKind
    , vtlItems
    , vtlSelfLink
    , vtlId

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

    -- ** MachineTypeAggregatedList
    , MachineTypeAggregatedList
    , machineTypeAggregatedList
    , mtalNextPageToken
    , mtalKind
    , mtalItems
    , mtalSelfLink
    , mtalId

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

    -- ** OperationStatus
    , OperationStatus (..)

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

    -- ** MetadataItemItems
    , MetadataItemItems
    , metadataItemItems
    , miiValue
    , miiKey

    -- ** InstanceGroupsScopedListItemDataWarning
    , InstanceGroupsScopedListItemDataWarning
    , instanceGroupsScopedListItemDataWarning
    , igslidwValue
    , igslidwKey

    -- ** InstanceGroupsScopedListCodeWarning
    , InstanceGroupsScopedListCodeWarning (..)

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

    -- ** AutoscalingPolicyLoadBalancingUtilization
    , AutoscalingPolicyLoadBalancingUtilization
    , autoscalingPolicyLoadBalancingUtilization
    , aplbuUtilizationTarget

    -- ** InstanceWithNamedPortsStatus
    , InstanceWithNamedPortsStatus (..)

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

    -- ** UrlMapList
    , UrlMapList
    , urlMapList
    , umlNextPageToken
    , umlKind
    , umlItems
    , umlSelfLink
    , umlId

    -- ** ManagedInstanceLastAttemptItemErrorsErrors
    , ManagedInstanceLastAttemptItemErrorsErrors
    , managedInstanceLastAttemptItemErrorsErrors
    , milaieeLocation
    , milaieeCode
    , milaieeMessage

    -- ** ImageList
    , ImageList
    , imageList
    , imaNextPageToken
    , imaKind
    , imaItems
    , imaSelfLink
    , imaId

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

    -- ** InstanceGroupManagersListManagedInstancesResponse
    , InstanceGroupManagersListManagedInstancesResponse
    , instanceGroupManagersListManagedInstancesResponse
    , igmlmirManagedInstances

    -- ** TargetPoolInstanceHealth
    , TargetPoolInstanceHealth
    , targetPoolInstanceHealth
    , tpihKind
    , tpihHealthStatus

    -- ** InstanceGroupsScopedListWarning
    , InstanceGroupsScopedListWarning
    , instanceGroupsScopedListWarning
    , igslwData
    , igslwCode
    , igslwMessage

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

    -- ** DeprecationStatusState
    , DeprecationStatusState (..)

    -- ** FirewallItemAllowed
    , FirewallItemAllowed
    , firewallItemAllowed
    , fiaIPProtocol
    , fiaPorts

    -- ** TargetPoolsRemoveInstanceRequest
    , TargetPoolsRemoveInstanceRequest
    , targetPoolsRemoveInstanceRequest
    , tprirInstances

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

    -- ** InstanceGroupsRemoveInstancesRequest
    , InstanceGroupsRemoveInstancesRequest
    , instanceGroupsRemoveInstancesRequest
    , igrirInstances

    -- ** ManagedInstanceCurrentAction
    , ManagedInstanceCurrentAction (..)

    -- ** OperationsScopedListWarning
    , OperationsScopedListWarning
    , operationsScopedListWarning
    , oslwData
    , oslwCode
    , oslwMessage

    -- ** ManagedInstanceLastAttemptErrors
    , ManagedInstanceLastAttemptErrors
    , managedInstanceLastAttemptErrors
    , milaeErrors

    -- ** AutoscalersScopedListWarning
    , AutoscalersScopedListWarning
    , autoscalersScopedListWarning
    , aData
    , aCode
    , aMessage

    -- ** TargetPoolsRemoveHealthCheckRequest
    , TargetPoolsRemoveHealthCheckRequest
    , targetPoolsRemoveHealthCheckRequest
    , tprhcrHealthChecks

    -- ** TargetVpnGatewayList
    , TargetVpnGatewayList
    , targetVpnGatewayList
    , tvglNextPageToken
    , tvglKind
    , tvglItems
    , tvglSelfLink
    , tvglId

    -- ** InstanceTemplateList
    , InstanceTemplateList
    , instanceTemplateList
    , itlNextPageToken
    , itlKind
    , itlItems
    , itlSelfLink
    , itlId

    -- ** SnapshotStorageBytesStatus
    , SnapshotStorageBytesStatus (..)

    -- ** DiskTypesScopedListWarning
    , DiskTypesScopedListWarning
    , diskTypesScopedListWarning
    , dtslwData
    , dtslwCode
    , dtslwMessage

    -- ** AttachedDiskInitializeParams
    , AttachedDiskInitializeParams
    , attachedDiskInitializeParams
    , adipSourceImage
    , adipDiskSizeGb
    , adipDiskName
    , adipDiskType

    -- ** RouteList
    , RouteList
    , routeList
    , rouNextPageToken
    , rouKind
    , rouItems
    , rouSelfLink
    , rouId

    -- ** NetworkInterface
    , NetworkInterface
    , networkInterface
    , niNetwork
    , niName
    , niNetworkIP
    , niAccessConfigs

    -- ** TargetVpnGatewayAggregatedListItems
    , TargetVpnGatewayAggregatedListItems
    , targetVpnGatewayAggregatedListItems

    -- ** SnapshotStatus
    , SnapshotStatus (..)

    -- ** SnapshotList
    , SnapshotList
    , snapshotList
    , slNextPageToken
    , slKind
    , slItems
    , slSelfLink
    , slId

    -- ** AccessConfig
    , AccessConfig
    , accessConfig
    , acKind
    , acName
    , acNatIP
    , acType

    -- ** AutoscalersScopedListItemDataWarning
    , AutoscalersScopedListItemDataWarning
    , autoscalersScopedListItemDataWarning
    , autValue
    , autKey

    -- ** Quota
    , Quota
    , quota
    , qMetric
    , qLimit
    , qUsage

    -- ** DiskTypesScopedListItemDataWarning
    , DiskTypesScopedListItemDataWarning
    , diskTypesScopedListItemDataWarning
    , dtslidwValue
    , dtslidwKey

    -- ** SerialPortOutput
    , SerialPortOutput
    , serialPortOutput
    , spoContents
    , spoKind
    , spoSelfLink

    -- ** HostRule
    , HostRule
    , hostRule
    , hrHosts
    , hrDescription
    , hrPathMatcher

    -- ** TestFailure
    , TestFailure
    , testFailure
    , tfPath
    , tfExpectedService
    , tfHost
    , tfActualService

    -- ** TargetVpnGatewayStatus
    , TargetVpnGatewayStatus (..)

    -- ** ResourceGroupReference
    , ResourceGroupReference
    , resourceGroupReference
    , rgrGroup

    -- ** AutoscalingPolicyCpuUtilization
    , AutoscalingPolicyCpuUtilization
    , autoscalingPolicyCpuUtilization
    , apcuUtilizationTarget

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

    -- ** TargetVpnGatewaysScopedList
    , TargetVpnGatewaysScopedList
    , targetVpnGatewaysScopedList
    , tvgslTargetVpnGateways
    , tvgslWarning

    -- ** DiskTypesScopedListCodeWarning
    , DiskTypesScopedListCodeWarning (..)

    -- ** OperationsScopedListCodeWarning
    , OperationsScopedListCodeWarning (..)

    -- ** RouteItemWarnings
    , RouteItemWarnings
    , routeItemWarnings
    , riwData
    , riwCode
    , riwMessage

    -- ** AutoscalersScopedListCodeWarning
    , AutoscalersScopedListCodeWarning (..)

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

    -- ** OperationsScopedListItemDataWarning
    , OperationsScopedListItemDataWarning
    , operationsScopedListItemDataWarning
    , oslidwValue
    , oslidwKey

    -- ** TargetVpnGatewayAggregatedList
    , TargetVpnGatewayAggregatedList
    , targetVpnGatewayAggregatedList
    , tvgalNextPageToken
    , tvgalKind
    , tvgalItems
    , tvgalSelfLink
    , tvgalId

    -- ** HealthCheckReference
    , HealthCheckReference
    , healthCheckReference
    , hcrHealthCheck

    -- ** UrlMapsValidateResponse
    , UrlMapsValidateResponse
    , urlMapsValidateResponse
    , umvrResult

    -- ** AddressStatus
    , AddressStatus (..)

    -- ** MachineTypeItemScratchDisks
    , MachineTypeItemScratchDisks
    , machineTypeItemScratchDisks
    , mtisdDiskGb

    -- ** AttachedDiskInterface
    , AttachedDiskInterface (..)

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

    -- ** InstanceGroupsListInstancesRequestInstanceState
    , InstanceGroupsListInstancesRequestInstanceState (..)

    -- ** InstanceGroupAggregatedList
    , InstanceGroupAggregatedList
    , instanceGroupAggregatedList
    , igalNextPageToken
    , igalKind
    , igalItems
    , igalSelfLink
    , igalId

    -- ** QuotaMetric
    , QuotaMetric (..)

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
    ) where

import           Network.Google.API.Compute.Addresses.AggregatedList
import           Network.Google.API.Compute.Addresses.Delete
import           Network.Google.API.Compute.Addresses.Get
import           Network.Google.API.Compute.Addresses.Insert
import           Network.Google.API.Compute.Addresses.List
import           Network.Google.API.Compute.Autoscalers.AggregatedList
import           Network.Google.API.Compute.Autoscalers.Delete
import           Network.Google.API.Compute.Autoscalers.Get
import           Network.Google.API.Compute.Autoscalers.Insert
import           Network.Google.API.Compute.Autoscalers.List
import           Network.Google.API.Compute.Autoscalers.Patch
import           Network.Google.API.Compute.Autoscalers.Update
import           Network.Google.API.Compute.BackendServices.Delete
import           Network.Google.API.Compute.BackendServices.Get
import           Network.Google.API.Compute.BackendServices.GetHealth
import           Network.Google.API.Compute.BackendServices.Insert
import           Network.Google.API.Compute.BackendServices.List
import           Network.Google.API.Compute.BackendServices.Patch
import           Network.Google.API.Compute.BackendServices.Update
import           Network.Google.API.Compute.Disks.AggregatedList
import           Network.Google.API.Compute.Disks.CreateSnapshot
import           Network.Google.API.Compute.Disks.Delete
import           Network.Google.API.Compute.Disks.Get
import           Network.Google.API.Compute.Disks.Insert
import           Network.Google.API.Compute.Disks.List
import           Network.Google.API.Compute.DiskTypes.AggregatedList
import           Network.Google.API.Compute.DiskTypes.Get
import           Network.Google.API.Compute.DiskTypes.List
import           Network.Google.API.Compute.Firewalls.Delete
import           Network.Google.API.Compute.Firewalls.Get
import           Network.Google.API.Compute.Firewalls.Insert
import           Network.Google.API.Compute.Firewalls.List
import           Network.Google.API.Compute.Firewalls.Patch
import           Network.Google.API.Compute.Firewalls.Update
import           Network.Google.API.Compute.ForwardingRules.AggregatedList
import           Network.Google.API.Compute.ForwardingRules.Delete
import           Network.Google.API.Compute.ForwardingRules.Get
import           Network.Google.API.Compute.ForwardingRules.Insert
import           Network.Google.API.Compute.ForwardingRules.List
import           Network.Google.API.Compute.ForwardingRules.SetTarget
import           Network.Google.API.Compute.GlobalAddresses.Delete
import           Network.Google.API.Compute.GlobalAddresses.Get
import           Network.Google.API.Compute.GlobalAddresses.Insert
import           Network.Google.API.Compute.GlobalAddresses.List
import           Network.Google.API.Compute.GlobalForwardingRules.Delete
import           Network.Google.API.Compute.GlobalForwardingRules.Get
import           Network.Google.API.Compute.GlobalForwardingRules.Insert
import           Network.Google.API.Compute.GlobalForwardingRules.List
import           Network.Google.API.Compute.GlobalForwardingRules.SetTarget
import           Network.Google.API.Compute.GlobalOperations.AggregatedList
import           Network.Google.API.Compute.GlobalOperations.Delete
import           Network.Google.API.Compute.GlobalOperations.Get
import           Network.Google.API.Compute.GlobalOperations.List
import           Network.Google.API.Compute.HTTPHealthChecks.Delete
import           Network.Google.API.Compute.HTTPHealthChecks.Get
import           Network.Google.API.Compute.HTTPHealthChecks.Insert
import           Network.Google.API.Compute.HTTPHealthChecks.List
import           Network.Google.API.Compute.HTTPHealthChecks.Patch
import           Network.Google.API.Compute.HTTPHealthChecks.Update
import           Network.Google.API.Compute.Images.Delete
import           Network.Google.API.Compute.Images.Deprecate
import           Network.Google.API.Compute.Images.Get
import           Network.Google.API.Compute.Images.Insert
import           Network.Google.API.Compute.Images.List
import           Network.Google.API.Compute.InstanceGroupManagers.AbandonInstances
import           Network.Google.API.Compute.InstanceGroupManagers.AggregatedList
import           Network.Google.API.Compute.InstanceGroupManagers.Delete
import           Network.Google.API.Compute.InstanceGroupManagers.DeleteInstances
import           Network.Google.API.Compute.InstanceGroupManagers.Get
import           Network.Google.API.Compute.InstanceGroupManagers.Insert
import           Network.Google.API.Compute.InstanceGroupManagers.List
import           Network.Google.API.Compute.InstanceGroupManagers.ListManagedInstances
import           Network.Google.API.Compute.InstanceGroupManagers.RecreateInstances
import           Network.Google.API.Compute.InstanceGroupManagers.Resize
import           Network.Google.API.Compute.InstanceGroupManagers.SetInstanceTemplate
import           Network.Google.API.Compute.InstanceGroupManagers.SetTargetPools
import           Network.Google.API.Compute.InstanceGroups.AddInstances
import           Network.Google.API.Compute.InstanceGroups.AggregatedList
import           Network.Google.API.Compute.InstanceGroups.Delete
import           Network.Google.API.Compute.InstanceGroups.Get
import           Network.Google.API.Compute.InstanceGroups.Insert
import           Network.Google.API.Compute.InstanceGroups.List
import           Network.Google.API.Compute.InstanceGroups.ListInstances
import           Network.Google.API.Compute.InstanceGroups.RemoveInstances
import           Network.Google.API.Compute.InstanceGroups.SetNamedPorts
import           Network.Google.API.Compute.Instances.AddAccessConfig
import           Network.Google.API.Compute.Instances.AggregatedList
import           Network.Google.API.Compute.Instances.AttachDisk
import           Network.Google.API.Compute.Instances.Delete
import           Network.Google.API.Compute.Instances.DeleteAccessConfig
import           Network.Google.API.Compute.Instances.DetachDisk
import           Network.Google.API.Compute.Instances.Get
import           Network.Google.API.Compute.Instances.GetSerialPortOutput
import           Network.Google.API.Compute.Instances.Insert
import           Network.Google.API.Compute.Instances.List
import           Network.Google.API.Compute.Instances.Reset
import           Network.Google.API.Compute.Instances.SetDiskAutoDelete
import           Network.Google.API.Compute.Instances.SetMetadata
import           Network.Google.API.Compute.Instances.SetScheduling
import           Network.Google.API.Compute.Instances.SetTags
import           Network.Google.API.Compute.Instances.Start
import           Network.Google.API.Compute.Instances.Stop
import           Network.Google.API.Compute.InstanceTemplates.Delete
import           Network.Google.API.Compute.InstanceTemplates.Get
import           Network.Google.API.Compute.InstanceTemplates.Insert
import           Network.Google.API.Compute.InstanceTemplates.List
import           Network.Google.API.Compute.Licenses.Get
import           Network.Google.API.Compute.MachineTypes.AggregatedList
import           Network.Google.API.Compute.MachineTypes.Get
import           Network.Google.API.Compute.MachineTypes.List
import           Network.Google.API.Compute.Networks.Delete
import           Network.Google.API.Compute.Networks.Get
import           Network.Google.API.Compute.Networks.Insert
import           Network.Google.API.Compute.Networks.List
import           Network.Google.API.Compute.Projects.Get
import           Network.Google.API.Compute.Projects.MoveDisk
import           Network.Google.API.Compute.Projects.MoveInstance
import           Network.Google.API.Compute.Projects.SetCommonInstanceMetadata
import           Network.Google.API.Compute.Projects.SetUsageExportBucket
import           Network.Google.API.Compute.RegionOperations.Delete
import           Network.Google.API.Compute.RegionOperations.Get
import           Network.Google.API.Compute.RegionOperations.List
import           Network.Google.API.Compute.Regions.Get
import           Network.Google.API.Compute.Regions.List
import           Network.Google.API.Compute.Routes.Delete
import           Network.Google.API.Compute.Routes.Get
import           Network.Google.API.Compute.Routes.Insert
import           Network.Google.API.Compute.Routes.List
import           Network.Google.API.Compute.Snapshots.Delete
import           Network.Google.API.Compute.Snapshots.Get
import           Network.Google.API.Compute.Snapshots.List
import           Network.Google.API.Compute.TargetHTTPProxies.Delete
import           Network.Google.API.Compute.TargetHTTPProxies.Get
import           Network.Google.API.Compute.TargetHTTPProxies.Insert
import           Network.Google.API.Compute.TargetHTTPProxies.List
import           Network.Google.API.Compute.TargetHTTPProxies.SetURLMap
import           Network.Google.API.Compute.TargetInstances.AggregatedList
import           Network.Google.API.Compute.TargetInstances.Delete
import           Network.Google.API.Compute.TargetInstances.Get
import           Network.Google.API.Compute.TargetInstances.Insert
import           Network.Google.API.Compute.TargetInstances.List
import           Network.Google.API.Compute.TargetPools.AddHealthCheck
import           Network.Google.API.Compute.TargetPools.AddInstance
import           Network.Google.API.Compute.TargetPools.AggregatedList
import           Network.Google.API.Compute.TargetPools.Delete
import           Network.Google.API.Compute.TargetPools.Get
import           Network.Google.API.Compute.TargetPools.GetHealth
import           Network.Google.API.Compute.TargetPools.Insert
import           Network.Google.API.Compute.TargetPools.List
import           Network.Google.API.Compute.TargetPools.RemoveHealthCheck
import           Network.Google.API.Compute.TargetPools.RemoveInstance
import           Network.Google.API.Compute.TargetPools.SetBackup
import           Network.Google.API.Compute.TargetVPNGateways.AggregatedList
import           Network.Google.API.Compute.TargetVPNGateways.Delete
import           Network.Google.API.Compute.TargetVPNGateways.Get
import           Network.Google.API.Compute.TargetVPNGateways.Insert
import           Network.Google.API.Compute.TargetVPNGateways.List
import           Network.Google.API.Compute.URLMaps.Delete
import           Network.Google.API.Compute.URLMaps.Get
import           Network.Google.API.Compute.URLMaps.Insert
import           Network.Google.API.Compute.URLMaps.List
import           Network.Google.API.Compute.URLMaps.Patch
import           Network.Google.API.Compute.URLMaps.Update
import           Network.Google.API.Compute.URLMaps.Validate
import           Network.Google.API.Compute.VPNTunnels.AggregatedList
import           Network.Google.API.Compute.VPNTunnels.Delete
import           Network.Google.API.Compute.VPNTunnels.Get
import           Network.Google.API.Compute.VPNTunnels.Insert
import           Network.Google.API.Compute.VPNTunnels.List
import           Network.Google.API.Compute.ZoneOperations.Delete
import           Network.Google.API.Compute.ZoneOperations.Get
import           Network.Google.API.Compute.ZoneOperations.List
import           Network.Google.API.Compute.Zones.Get
import           Network.Google.API.Compute.Zones.List
import           Network.Google.Compute.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Compute =
     TargetPoolsListAPI :<|> TargetPoolsAddInstanceAPI
       :<|> AutoscalersListAPI
       :<|> InstancesAttachDiskAPI
       :<|> HTTPHealthChecksDeleteAPI
       :<|> LicensesGetAPI
       :<|> NetworksDeleteAPI
       :<|> GlobalForwardingRulesSetTargetAPI
       :<|> GlobalOperationsAggregatedListAPI
       :<|> TargetInstancesDeleteAPI
       :<|> AddressesListAPI
       :<|> ProjectsMoveInstanceAPI
       :<|> DisksDeleteAPI
       :<|> RegionOperationsDeleteAPI
       :<|> FirewallsListAPI
       :<|> InstanceGroupManagersAbandonInstancesAPI
       :<|> ImagesDeprecateAPI
       :<|> ImagesDeleteAPI
       :<|> GlobalAddressesListAPI
       :<|> GlobalForwardingRulesGetAPI
       :<|> InstanceGroupManagersListManagedInstancesAPI
       :<|> RoutesDeleteAPI
       :<|> ForwardingRulesDeleteAPI
       :<|> URLMapsDeleteAPI
       :<|> AutoscalersUpdateAPI
       :<|> InstancesSetSchedulingAPI
       :<|> FirewallsDeleteAPI
       :<|> InstancesDetachDiskAPI
       :<|> GlobalAddressesDeleteAPI
       :<|> InstancesGetSerialPortOutputAPI
       :<|> ProjectsGetAPI
       :<|> DiskTypesListAPI
       :<|> ProjectsMoveDiskAPI
       :<|> TargetHTTPProxiesInsertAPI
       :<|> DiskTypesGetAPI
       :<|> HTTPHealthChecksUpdateAPI
       :<|> SnapshotsGetAPI
       :<|> NetworksListAPI
       :<|> RegionsGetAPI
       :<|> InstancesResetAPI
       :<|> GlobalOperationsGetAPI
       :<|> TargetInstancesListAPI
       :<|> DiskTypesAggregatedListAPI
       :<|> InstanceGroupManagersSetInstanceTemplateAPI
       :<|> ZonesListAPI
       :<|> HTTPHealthChecksListAPI
       :<|> FirewallsUpdateAPI
       :<|> GlobalForwardingRulesDeleteAPI
       :<|> AddressesInsertAPI
       :<|> TargetHTTPProxiesGetAPI
       :<|> GlobalOperationsListAPI
       :<|> AutoscalersInsertAPI
       :<|> ProjectsSetUsageExportBucketAPI
       :<|> InstanceGroupsListInstancesAPI
       :<|> InstancesSetDiskAutoDeleteAPI
       :<|> InstancesSetTagsAPI
       :<|> TargetPoolsInsertAPI
       :<|> RegionsListAPI
       :<|> SnapshotsListAPI
       :<|> InstanceGroupManagersListAPI
       :<|> InstanceGroupManagersGetAPI
       :<|> InstanceGroupManagersSetTargetPoolsAPI
       :<|> TargetInstancesAggregatedListAPI
       :<|> SnapshotsDeleteAPI
       :<|> InstanceTemplatesListAPI
       :<|> GlobalForwardingRulesInsertAPI
       :<|> InstanceTemplatesGetAPI
       :<|> GlobalOperationsDeleteAPI
       :<|> InstancesDeleteAPI
       :<|> DisksInsertAPI
       :<|> BackendServicesDeleteAPI
       :<|> RoutesInsertAPI
       :<|> ImagesInsertAPI
       :<|> InstancesAddAccessConfigAPI
       :<|> ForwardingRulesInsertAPI
       :<|> URLMapsInsertAPI
       :<|> TargetVPNGatewaysDeleteAPI
       :<|> URLMapsUpdateAPI
       :<|> GlobalForwardingRulesListAPI
       :<|> HTTPHealthChecksPatchAPI
       :<|> ZoneOperationsDeleteAPI
       :<|> InstancesStartAPI
       :<|> URLMapsValidateAPI
       :<|> TargetVPNGatewaysGetAPI
       :<|> FirewallsInsertAPI
       :<|> GlobalAddressesInsertAPI
       :<|> TargetHTTPProxiesDeleteAPI
       :<|> ZoneOperationsGetAPI
       :<|> InstancesGetAPI
       :<|> BackendServicesGetAPI
       :<|> ProjectsSetCommonInstanceMetadataAPI
       :<|> FirewallsPatchAPI
       :<|> TargetPoolsAggregatedListAPI
       :<|> InstancesInsertAPI
       :<|> BackendServicesInsertAPI
       :<|> InstancesSetMetadataAPI
       :<|> TargetVPNGatewaysInsertAPI
       :<|> AutoscalersAggregatedListAPI
       :<|> InstanceGroupsGetAPI
       :<|> VPNTunnelsGetAPI
       :<|> InstanceGroupsRemoveInstancesAPI
       :<|> AddressesAggregatedListAPI
       :<|> InstanceGroupsAggregatedListAPI
       :<|> MachineTypesGetAPI
       :<|> VPNTunnelsAggregatedListAPI
       :<|> DisksListAPI
       :<|> RegionOperationsListAPI
       :<|> TargetInstancesInsertAPI
       :<|> MachineTypesListAPI
       :<|> DisksGetAPI
       :<|> HTTPHealthChecksInsertAPI
       :<|> RegionOperationsGetAPI
       :<|> BackendServicesPatchAPI
       :<|> RoutesListAPI
       :<|> InstanceGroupsAddInstancesAPI
       :<|> ImagesGetAPI
       :<|> NetworksInsertAPI
       :<|> URLMapsListAPI
       :<|> RoutesGetAPI
       :<|> ImagesListAPI
       :<|> ForwardingRulesGetAPI
       :<|> TargetPoolsGetHealthAPI
       :<|> ForwardingRulesListAPI
       :<|> URLMapsGetAPI
       :<|> TargetPoolsRemoveInstanceAPI
       :<|> TargetHTTPProxiesListAPI
       :<|> InstanceGroupManagersInsertAPI
       :<|> TargetPoolsDeleteAPI
       :<|> ForwardingRulesAggregatedListAPI
       :<|> AutoscalersDeleteAPI
       :<|> DisksAggregatedListAPI
       :<|> MachineTypesAggregatedListAPI
       :<|> AddressesDeleteAPI
       :<|> InstanceGroupManagersDeleteInstancesAPI
       :<|> InstanceTemplatesInsertAPI
       :<|> ZoneOperationsListAPI
       :<|> InstancesListAPI
       :<|> BackendServicesListAPI
       :<|> URLMapsPatchAPI
       :<|> AutoscalersGetAPI
       :<|> InstanceGroupsDeleteAPI
       :<|> VPNTunnelsDeleteAPI
       :<|> InstancesStopAPI
       :<|> AddressesGetAPI
       :<|> TargetHTTPProxiesSetURLMapAPI
       :<|> TargetVPNGatewaysListAPI
       :<|> TargetPoolsGetAPI
       :<|> TargetInstancesGetAPI
       :<|> BackendServicesUpdateAPI
       :<|> InstanceGroupManagersRecreateInstancesAPI
       :<|> ZonesGetAPI
       :<|> InstanceGroupManagersDeleteAPI
       :<|> TargetVPNGatewaysAggregatedListAPI
       :<|> HTTPHealthChecksGetAPI
       :<|> InstancesAggregatedListAPI
       :<|> NetworksGetAPI
       :<|> InstanceTemplatesDeleteAPI
       :<|> DisksCreateSnapshotAPI
       :<|> InstanceGroupManagersResizeAPI
       :<|> TargetPoolsRemoveHealthCheckAPI
       :<|> AutoscalersPatchAPI
       :<|> InstanceGroupsInsertAPI
       :<|> InstanceGroupsSetNamedPortsAPI
       :<|> VPNTunnelsInsertAPI
       :<|> TargetPoolsSetBackupAPI
       :<|> BackendServicesGetHealthAPI
       :<|> ForwardingRulesSetTargetAPI
       :<|> GlobalAddressesGetAPI
       :<|> InstancesDeleteAccessConfigAPI
       :<|> InstanceGroupsListAPI
       :<|> VPNTunnelsListAPI
       :<|> InstanceGroupManagersAggregatedListAPI
       :<|> TargetPoolsAddHealthCheckAPI
       :<|> FirewallsGetAPI

compute :: Proxy Compute
compute = Proxy
