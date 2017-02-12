{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Compute
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and runs virtual machines on Google Cloud Platform.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference>
module Network.Google.Compute
    (
    -- * Service Configuration
      computeService

    -- * OAuth Scopes
    , computeScope
    , cloudPlatformScope
    , storageReadOnlyScope
    , storageReadWriteScope
    , computeReadOnlyScope
    , storageFullControlScope

    -- * API Declaration
    , ComputeAPI

    -- * Resources

    -- ** compute.addresses.aggregatedList
    , module Network.Google.Resource.Compute.Addresses.AggregatedList

    -- ** compute.addresses.delete
    , module Network.Google.Resource.Compute.Addresses.Delete

    -- ** compute.addresses.get
    , module Network.Google.Resource.Compute.Addresses.Get

    -- ** compute.addresses.insert
    , module Network.Google.Resource.Compute.Addresses.Insert

    -- ** compute.addresses.list
    , module Network.Google.Resource.Compute.Addresses.List

    -- ** compute.autoscalers.aggregatedList
    , module Network.Google.Resource.Compute.Autoscalers.AggregatedList

    -- ** compute.autoscalers.delete
    , module Network.Google.Resource.Compute.Autoscalers.Delete

    -- ** compute.autoscalers.get
    , module Network.Google.Resource.Compute.Autoscalers.Get

    -- ** compute.autoscalers.insert
    , module Network.Google.Resource.Compute.Autoscalers.Insert

    -- ** compute.autoscalers.list
    , module Network.Google.Resource.Compute.Autoscalers.List

    -- ** compute.autoscalers.patch
    , module Network.Google.Resource.Compute.Autoscalers.Patch

    -- ** compute.autoscalers.update
    , module Network.Google.Resource.Compute.Autoscalers.Update

    -- ** compute.backendServices.aggregatedList
    , module Network.Google.Resource.Compute.BackendServices.AggregatedList

    -- ** compute.backendServices.delete
    , module Network.Google.Resource.Compute.BackendServices.Delete

    -- ** compute.backendServices.get
    , module Network.Google.Resource.Compute.BackendServices.Get

    -- ** compute.backendServices.getHealth
    , module Network.Google.Resource.Compute.BackendServices.GetHealth

    -- ** compute.backendServices.insert
    , module Network.Google.Resource.Compute.BackendServices.Insert

    -- ** compute.backendServices.list
    , module Network.Google.Resource.Compute.BackendServices.List

    -- ** compute.backendServices.patch
    , module Network.Google.Resource.Compute.BackendServices.Patch

    -- ** compute.backendServices.update
    , module Network.Google.Resource.Compute.BackendServices.Update

    -- ** compute.diskTypes.aggregatedList
    , module Network.Google.Resource.Compute.DiskTypes.AggregatedList

    -- ** compute.diskTypes.get
    , module Network.Google.Resource.Compute.DiskTypes.Get

    -- ** compute.diskTypes.list
    , module Network.Google.Resource.Compute.DiskTypes.List

    -- ** compute.disks.aggregatedList
    , module Network.Google.Resource.Compute.Disks.AggregatedList

    -- ** compute.disks.createSnapshot
    , module Network.Google.Resource.Compute.Disks.CreateSnapshot

    -- ** compute.disks.delete
    , module Network.Google.Resource.Compute.Disks.Delete

    -- ** compute.disks.get
    , module Network.Google.Resource.Compute.Disks.Get

    -- ** compute.disks.insert
    , module Network.Google.Resource.Compute.Disks.Insert

    -- ** compute.disks.list
    , module Network.Google.Resource.Compute.Disks.List

    -- ** compute.disks.resize
    , module Network.Google.Resource.Compute.Disks.Resize

    -- ** compute.firewalls.delete
    , module Network.Google.Resource.Compute.Firewalls.Delete

    -- ** compute.firewalls.get
    , module Network.Google.Resource.Compute.Firewalls.Get

    -- ** compute.firewalls.insert
    , module Network.Google.Resource.Compute.Firewalls.Insert

    -- ** compute.firewalls.list
    , module Network.Google.Resource.Compute.Firewalls.List

    -- ** compute.firewalls.patch
    , module Network.Google.Resource.Compute.Firewalls.Patch

    -- ** compute.firewalls.update
    , module Network.Google.Resource.Compute.Firewalls.Update

    -- ** compute.forwardingRules.aggregatedList
    , module Network.Google.Resource.Compute.ForwardingRules.AggregatedList

    -- ** compute.forwardingRules.delete
    , module Network.Google.Resource.Compute.ForwardingRules.Delete

    -- ** compute.forwardingRules.get
    , module Network.Google.Resource.Compute.ForwardingRules.Get

    -- ** compute.forwardingRules.insert
    , module Network.Google.Resource.Compute.ForwardingRules.Insert

    -- ** compute.forwardingRules.list
    , module Network.Google.Resource.Compute.ForwardingRules.List

    -- ** compute.forwardingRules.setTarget
    , module Network.Google.Resource.Compute.ForwardingRules.SetTarget

    -- ** compute.globalAddresses.delete
    , module Network.Google.Resource.Compute.GlobalAddresses.Delete

    -- ** compute.globalAddresses.get
    , module Network.Google.Resource.Compute.GlobalAddresses.Get

    -- ** compute.globalAddresses.insert
    , module Network.Google.Resource.Compute.GlobalAddresses.Insert

    -- ** compute.globalAddresses.list
    , module Network.Google.Resource.Compute.GlobalAddresses.List

    -- ** compute.globalForwardingRules.delete
    , module Network.Google.Resource.Compute.GlobalForwardingRules.Delete

    -- ** compute.globalForwardingRules.get
    , module Network.Google.Resource.Compute.GlobalForwardingRules.Get

    -- ** compute.globalForwardingRules.insert
    , module Network.Google.Resource.Compute.GlobalForwardingRules.Insert

    -- ** compute.globalForwardingRules.list
    , module Network.Google.Resource.Compute.GlobalForwardingRules.List

    -- ** compute.globalForwardingRules.setTarget
    , module Network.Google.Resource.Compute.GlobalForwardingRules.SetTarget

    -- ** compute.globalOperations.aggregatedList
    , module Network.Google.Resource.Compute.GlobalOperations.AggregatedList

    -- ** compute.globalOperations.delete
    , module Network.Google.Resource.Compute.GlobalOperations.Delete

    -- ** compute.globalOperations.get
    , module Network.Google.Resource.Compute.GlobalOperations.Get

    -- ** compute.globalOperations.list
    , module Network.Google.Resource.Compute.GlobalOperations.List

    -- ** compute.healthChecks.delete
    , module Network.Google.Resource.Compute.HealthChecks.Delete

    -- ** compute.healthChecks.get
    , module Network.Google.Resource.Compute.HealthChecks.Get

    -- ** compute.healthChecks.insert
    , module Network.Google.Resource.Compute.HealthChecks.Insert

    -- ** compute.healthChecks.list
    , module Network.Google.Resource.Compute.HealthChecks.List

    -- ** compute.healthChecks.patch
    , module Network.Google.Resource.Compute.HealthChecks.Patch

    -- ** compute.healthChecks.update
    , module Network.Google.Resource.Compute.HealthChecks.Update

    -- ** compute.httpHealthChecks.delete
    , module Network.Google.Resource.Compute.HTTPHealthChecks.Delete

    -- ** compute.httpHealthChecks.get
    , module Network.Google.Resource.Compute.HTTPHealthChecks.Get

    -- ** compute.httpHealthChecks.insert
    , module Network.Google.Resource.Compute.HTTPHealthChecks.Insert

    -- ** compute.httpHealthChecks.list
    , module Network.Google.Resource.Compute.HTTPHealthChecks.List

    -- ** compute.httpHealthChecks.patch
    , module Network.Google.Resource.Compute.HTTPHealthChecks.Patch

    -- ** compute.httpHealthChecks.update
    , module Network.Google.Resource.Compute.HTTPHealthChecks.Update

    -- ** compute.httpsHealthChecks.delete
    , module Network.Google.Resource.Compute.HTTPSHealthChecks.Delete

    -- ** compute.httpsHealthChecks.get
    , module Network.Google.Resource.Compute.HTTPSHealthChecks.Get

    -- ** compute.httpsHealthChecks.insert
    , module Network.Google.Resource.Compute.HTTPSHealthChecks.Insert

    -- ** compute.httpsHealthChecks.list
    , module Network.Google.Resource.Compute.HTTPSHealthChecks.List

    -- ** compute.httpsHealthChecks.patch
    , module Network.Google.Resource.Compute.HTTPSHealthChecks.Patch

    -- ** compute.httpsHealthChecks.update
    , module Network.Google.Resource.Compute.HTTPSHealthChecks.Update

    -- ** compute.images.delete
    , module Network.Google.Resource.Compute.Images.Delete

    -- ** compute.images.deprecate
    , module Network.Google.Resource.Compute.Images.Deprecate

    -- ** compute.images.get
    , module Network.Google.Resource.Compute.Images.Get

    -- ** compute.images.getFromFamily
    , module Network.Google.Resource.Compute.Images.GetFromFamily

    -- ** compute.images.insert
    , module Network.Google.Resource.Compute.Images.Insert

    -- ** compute.images.list
    , module Network.Google.Resource.Compute.Images.List

    -- ** compute.instanceGroupManagers.abandonInstances
    , module Network.Google.Resource.Compute.InstanceGroupManagers.AbandonInstances

    -- ** compute.instanceGroupManagers.aggregatedList
    , module Network.Google.Resource.Compute.InstanceGroupManagers.AggregatedList

    -- ** compute.instanceGroupManagers.delete
    , module Network.Google.Resource.Compute.InstanceGroupManagers.Delete

    -- ** compute.instanceGroupManagers.deleteInstances
    , module Network.Google.Resource.Compute.InstanceGroupManagers.DeleteInstances

    -- ** compute.instanceGroupManagers.get
    , module Network.Google.Resource.Compute.InstanceGroupManagers.Get

    -- ** compute.instanceGroupManagers.insert
    , module Network.Google.Resource.Compute.InstanceGroupManagers.Insert

    -- ** compute.instanceGroupManagers.list
    , module Network.Google.Resource.Compute.InstanceGroupManagers.List

    -- ** compute.instanceGroupManagers.listManagedInstances
    , module Network.Google.Resource.Compute.InstanceGroupManagers.ListManagedInstances

    -- ** compute.instanceGroupManagers.recreateInstances
    , module Network.Google.Resource.Compute.InstanceGroupManagers.RecreateInstances

    -- ** compute.instanceGroupManagers.resize
    , module Network.Google.Resource.Compute.InstanceGroupManagers.Resize

    -- ** compute.instanceGroupManagers.setInstanceTemplate
    , module Network.Google.Resource.Compute.InstanceGroupManagers.SetInstanceTemplate

    -- ** compute.instanceGroupManagers.setTargetPools
    , module Network.Google.Resource.Compute.InstanceGroupManagers.SetTargetPools

    -- ** compute.instanceGroups.addInstances
    , module Network.Google.Resource.Compute.InstanceGroups.AddInstances

    -- ** compute.instanceGroups.aggregatedList
    , module Network.Google.Resource.Compute.InstanceGroups.AggregatedList

    -- ** compute.instanceGroups.delete
    , module Network.Google.Resource.Compute.InstanceGroups.Delete

    -- ** compute.instanceGroups.get
    , module Network.Google.Resource.Compute.InstanceGroups.Get

    -- ** compute.instanceGroups.insert
    , module Network.Google.Resource.Compute.InstanceGroups.Insert

    -- ** compute.instanceGroups.list
    , module Network.Google.Resource.Compute.InstanceGroups.List

    -- ** compute.instanceGroups.listInstances
    , module Network.Google.Resource.Compute.InstanceGroups.ListInstances

    -- ** compute.instanceGroups.removeInstances
    , module Network.Google.Resource.Compute.InstanceGroups.RemoveInstances

    -- ** compute.instanceGroups.setNamedPorts
    , module Network.Google.Resource.Compute.InstanceGroups.SetNamedPorts

    -- ** compute.instanceTemplates.delete
    , module Network.Google.Resource.Compute.InstanceTemplates.Delete

    -- ** compute.instanceTemplates.get
    , module Network.Google.Resource.Compute.InstanceTemplates.Get

    -- ** compute.instanceTemplates.insert
    , module Network.Google.Resource.Compute.InstanceTemplates.Insert

    -- ** compute.instanceTemplates.list
    , module Network.Google.Resource.Compute.InstanceTemplates.List

    -- ** compute.instances.addAccessConfig
    , module Network.Google.Resource.Compute.Instances.AddAccessConfig

    -- ** compute.instances.aggregatedList
    , module Network.Google.Resource.Compute.Instances.AggregatedList

    -- ** compute.instances.attachDisk
    , module Network.Google.Resource.Compute.Instances.AttachDisk

    -- ** compute.instances.delete
    , module Network.Google.Resource.Compute.Instances.Delete

    -- ** compute.instances.deleteAccessConfig
    , module Network.Google.Resource.Compute.Instances.DeleteAccessConfig

    -- ** compute.instances.detachDisk
    , module Network.Google.Resource.Compute.Instances.DetachDisk

    -- ** compute.instances.get
    , module Network.Google.Resource.Compute.Instances.Get

    -- ** compute.instances.getSerialPortOutput
    , module Network.Google.Resource.Compute.Instances.GetSerialPortOutput

    -- ** compute.instances.insert
    , module Network.Google.Resource.Compute.Instances.Insert

    -- ** compute.instances.list
    , module Network.Google.Resource.Compute.Instances.List

    -- ** compute.instances.reset
    , module Network.Google.Resource.Compute.Instances.Reset

    -- ** compute.instances.setDiskAutoDelete
    , module Network.Google.Resource.Compute.Instances.SetDiskAutoDelete

    -- ** compute.instances.setMachineType
    , module Network.Google.Resource.Compute.Instances.SetMachineType

    -- ** compute.instances.setMetadata
    , module Network.Google.Resource.Compute.Instances.SetMetadata

    -- ** compute.instances.setScheduling
    , module Network.Google.Resource.Compute.Instances.SetScheduling

    -- ** compute.instances.setServiceAccount
    , module Network.Google.Resource.Compute.Instances.SetServiceAccount

    -- ** compute.instances.setTags
    , module Network.Google.Resource.Compute.Instances.SetTags

    -- ** compute.instances.start
    , module Network.Google.Resource.Compute.Instances.Start

    -- ** compute.instances.startWithEncryptionKey
    , module Network.Google.Resource.Compute.Instances.StartWithEncryptionKey

    -- ** compute.instances.stop
    , module Network.Google.Resource.Compute.Instances.Stop

    -- ** compute.licenses.get
    , module Network.Google.Resource.Compute.Licenses.Get

    -- ** compute.machineTypes.aggregatedList
    , module Network.Google.Resource.Compute.MachineTypes.AggregatedList

    -- ** compute.machineTypes.get
    , module Network.Google.Resource.Compute.MachineTypes.Get

    -- ** compute.machineTypes.list
    , module Network.Google.Resource.Compute.MachineTypes.List

    -- ** compute.networks.delete
    , module Network.Google.Resource.Compute.Networks.Delete

    -- ** compute.networks.get
    , module Network.Google.Resource.Compute.Networks.Get

    -- ** compute.networks.insert
    , module Network.Google.Resource.Compute.Networks.Insert

    -- ** compute.networks.list
    , module Network.Google.Resource.Compute.Networks.List

    -- ** compute.networks.switchToCustomMode
    , module Network.Google.Resource.Compute.Networks.SwitchToCustomMode

    -- ** compute.projects.get
    , module Network.Google.Resource.Compute.Projects.Get

    -- ** compute.projects.moveDisk
    , module Network.Google.Resource.Compute.Projects.MoveDisk

    -- ** compute.projects.moveInstance
    , module Network.Google.Resource.Compute.Projects.MoveInstance

    -- ** compute.projects.setCommonInstanceMetadata
    , module Network.Google.Resource.Compute.Projects.SetCommonInstanceMetadata

    -- ** compute.projects.setUsageExportBucket
    , module Network.Google.Resource.Compute.Projects.SetUsageExportBucket

    -- ** compute.regionAutoscalers.delete
    , module Network.Google.Resource.Compute.RegionAutoscalers.Delete

    -- ** compute.regionAutoscalers.get
    , module Network.Google.Resource.Compute.RegionAutoscalers.Get

    -- ** compute.regionAutoscalers.insert
    , module Network.Google.Resource.Compute.RegionAutoscalers.Insert

    -- ** compute.regionAutoscalers.list
    , module Network.Google.Resource.Compute.RegionAutoscalers.List

    -- ** compute.regionAutoscalers.patch
    , module Network.Google.Resource.Compute.RegionAutoscalers.Patch

    -- ** compute.regionAutoscalers.update
    , module Network.Google.Resource.Compute.RegionAutoscalers.Update

    -- ** compute.regionBackendServices.delete
    , module Network.Google.Resource.Compute.RegionBackendServices.Delete

    -- ** compute.regionBackendServices.get
    , module Network.Google.Resource.Compute.RegionBackendServices.Get

    -- ** compute.regionBackendServices.getHealth
    , module Network.Google.Resource.Compute.RegionBackendServices.GetHealth

    -- ** compute.regionBackendServices.insert
    , module Network.Google.Resource.Compute.RegionBackendServices.Insert

    -- ** compute.regionBackendServices.list
    , module Network.Google.Resource.Compute.RegionBackendServices.List

    -- ** compute.regionBackendServices.patch
    , module Network.Google.Resource.Compute.RegionBackendServices.Patch

    -- ** compute.regionBackendServices.update
    , module Network.Google.Resource.Compute.RegionBackendServices.Update

    -- ** compute.regionInstanceGroupManagers.abandonInstances
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.AbandonInstances

    -- ** compute.regionInstanceGroupManagers.delete
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.Delete

    -- ** compute.regionInstanceGroupManagers.deleteInstances
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.DeleteInstances

    -- ** compute.regionInstanceGroupManagers.get
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.Get

    -- ** compute.regionInstanceGroupManagers.insert
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.Insert

    -- ** compute.regionInstanceGroupManagers.list
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.List

    -- ** compute.regionInstanceGroupManagers.listManagedInstances
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.ListManagedInstances

    -- ** compute.regionInstanceGroupManagers.recreateInstances
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.RecreateInstances

    -- ** compute.regionInstanceGroupManagers.resize
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.Resize

    -- ** compute.regionInstanceGroupManagers.setInstanceTemplate
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.SetInstanceTemplate

    -- ** compute.regionInstanceGroupManagers.setTargetPools
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.SetTargetPools

    -- ** compute.regionInstanceGroups.get
    , module Network.Google.Resource.Compute.RegionInstanceGroups.Get

    -- ** compute.regionInstanceGroups.list
    , module Network.Google.Resource.Compute.RegionInstanceGroups.List

    -- ** compute.regionInstanceGroups.listInstances
    , module Network.Google.Resource.Compute.RegionInstanceGroups.ListInstances

    -- ** compute.regionInstanceGroups.setNamedPorts
    , module Network.Google.Resource.Compute.RegionInstanceGroups.SetNamedPorts

    -- ** compute.regionOperations.delete
    , module Network.Google.Resource.Compute.RegionOperations.Delete

    -- ** compute.regionOperations.get
    , module Network.Google.Resource.Compute.RegionOperations.Get

    -- ** compute.regionOperations.list
    , module Network.Google.Resource.Compute.RegionOperations.List

    -- ** compute.regions.get
    , module Network.Google.Resource.Compute.Regions.Get

    -- ** compute.regions.list
    , module Network.Google.Resource.Compute.Regions.List

    -- ** compute.routers.aggregatedList
    , module Network.Google.Resource.Compute.Routers.AggregatedList

    -- ** compute.routers.delete
    , module Network.Google.Resource.Compute.Routers.Delete

    -- ** compute.routers.get
    , module Network.Google.Resource.Compute.Routers.Get

    -- ** compute.routers.getRouterStatus
    , module Network.Google.Resource.Compute.Routers.GetRouterStatus

    -- ** compute.routers.insert
    , module Network.Google.Resource.Compute.Routers.Insert

    -- ** compute.routers.list
    , module Network.Google.Resource.Compute.Routers.List

    -- ** compute.routers.patch
    , module Network.Google.Resource.Compute.Routers.Patch

    -- ** compute.routers.preview
    , module Network.Google.Resource.Compute.Routers.Preview

    -- ** compute.routers.update
    , module Network.Google.Resource.Compute.Routers.Update

    -- ** compute.routes.delete
    , module Network.Google.Resource.Compute.Routes.Delete

    -- ** compute.routes.get
    , module Network.Google.Resource.Compute.Routes.Get

    -- ** compute.routes.insert
    , module Network.Google.Resource.Compute.Routes.Insert

    -- ** compute.routes.list
    , module Network.Google.Resource.Compute.Routes.List

    -- ** compute.snapshots.delete
    , module Network.Google.Resource.Compute.Snapshots.Delete

    -- ** compute.snapshots.get
    , module Network.Google.Resource.Compute.Snapshots.Get

    -- ** compute.snapshots.list
    , module Network.Google.Resource.Compute.Snapshots.List

    -- ** compute.sslCertificates.delete
    , module Network.Google.Resource.Compute.SSLCertificates.Delete

    -- ** compute.sslCertificates.get
    , module Network.Google.Resource.Compute.SSLCertificates.Get

    -- ** compute.sslCertificates.insert
    , module Network.Google.Resource.Compute.SSLCertificates.Insert

    -- ** compute.sslCertificates.list
    , module Network.Google.Resource.Compute.SSLCertificates.List

    -- ** compute.subnetworks.aggregatedList
    , module Network.Google.Resource.Compute.Subnetworks.AggregatedList

    -- ** compute.subnetworks.delete
    , module Network.Google.Resource.Compute.Subnetworks.Delete

    -- ** compute.subnetworks.expandIpCidrRange
    , module Network.Google.Resource.Compute.Subnetworks.ExpandIPCIdRRange

    -- ** compute.subnetworks.get
    , module Network.Google.Resource.Compute.Subnetworks.Get

    -- ** compute.subnetworks.insert
    , module Network.Google.Resource.Compute.Subnetworks.Insert

    -- ** compute.subnetworks.list
    , module Network.Google.Resource.Compute.Subnetworks.List

    -- ** compute.targetHttpProxies.delete
    , module Network.Google.Resource.Compute.TargetHTTPProxies.Delete

    -- ** compute.targetHttpProxies.get
    , module Network.Google.Resource.Compute.TargetHTTPProxies.Get

    -- ** compute.targetHttpProxies.insert
    , module Network.Google.Resource.Compute.TargetHTTPProxies.Insert

    -- ** compute.targetHttpProxies.list
    , module Network.Google.Resource.Compute.TargetHTTPProxies.List

    -- ** compute.targetHttpProxies.setUrlMap
    , module Network.Google.Resource.Compute.TargetHTTPProxies.SetURLMap

    -- ** compute.targetHttpsProxies.delete
    , module Network.Google.Resource.Compute.TargetHTTPSProxies.Delete

    -- ** compute.targetHttpsProxies.get
    , module Network.Google.Resource.Compute.TargetHTTPSProxies.Get

    -- ** compute.targetHttpsProxies.insert
    , module Network.Google.Resource.Compute.TargetHTTPSProxies.Insert

    -- ** compute.targetHttpsProxies.list
    , module Network.Google.Resource.Compute.TargetHTTPSProxies.List

    -- ** compute.targetHttpsProxies.setSslCertificates
    , module Network.Google.Resource.Compute.TargetHTTPSProxies.SetSSLCertificates

    -- ** compute.targetHttpsProxies.setUrlMap
    , module Network.Google.Resource.Compute.TargetHTTPSProxies.SetURLMap

    -- ** compute.targetInstances.aggregatedList
    , module Network.Google.Resource.Compute.TargetInstances.AggregatedList

    -- ** compute.targetInstances.delete
    , module Network.Google.Resource.Compute.TargetInstances.Delete

    -- ** compute.targetInstances.get
    , module Network.Google.Resource.Compute.TargetInstances.Get

    -- ** compute.targetInstances.insert
    , module Network.Google.Resource.Compute.TargetInstances.Insert

    -- ** compute.targetInstances.list
    , module Network.Google.Resource.Compute.TargetInstances.List

    -- ** compute.targetPools.addHealthCheck
    , module Network.Google.Resource.Compute.TargetPools.AddHealthCheck

    -- ** compute.targetPools.addInstance
    , module Network.Google.Resource.Compute.TargetPools.AddInstance

    -- ** compute.targetPools.aggregatedList
    , module Network.Google.Resource.Compute.TargetPools.AggregatedList

    -- ** compute.targetPools.delete
    , module Network.Google.Resource.Compute.TargetPools.Delete

    -- ** compute.targetPools.get
    , module Network.Google.Resource.Compute.TargetPools.Get

    -- ** compute.targetPools.getHealth
    , module Network.Google.Resource.Compute.TargetPools.GetHealth

    -- ** compute.targetPools.insert
    , module Network.Google.Resource.Compute.TargetPools.Insert

    -- ** compute.targetPools.list
    , module Network.Google.Resource.Compute.TargetPools.List

    -- ** compute.targetPools.removeHealthCheck
    , module Network.Google.Resource.Compute.TargetPools.RemoveHealthCheck

    -- ** compute.targetPools.removeInstance
    , module Network.Google.Resource.Compute.TargetPools.RemoveInstance

    -- ** compute.targetPools.setBackup
    , module Network.Google.Resource.Compute.TargetPools.SetBackup

    -- ** compute.targetSslProxies.delete
    , module Network.Google.Resource.Compute.TargetSSLProxies.Delete

    -- ** compute.targetSslProxies.get
    , module Network.Google.Resource.Compute.TargetSSLProxies.Get

    -- ** compute.targetSslProxies.insert
    , module Network.Google.Resource.Compute.TargetSSLProxies.Insert

    -- ** compute.targetSslProxies.list
    , module Network.Google.Resource.Compute.TargetSSLProxies.List

    -- ** compute.targetSslProxies.setBackendService
    , module Network.Google.Resource.Compute.TargetSSLProxies.SetBackendService

    -- ** compute.targetSslProxies.setProxyHeader
    , module Network.Google.Resource.Compute.TargetSSLProxies.SetProxyHeader

    -- ** compute.targetSslProxies.setSslCertificates
    , module Network.Google.Resource.Compute.TargetSSLProxies.SetSSLCertificates

    -- ** compute.targetVpnGateways.aggregatedList
    , module Network.Google.Resource.Compute.TargetVPNGateways.AggregatedList

    -- ** compute.targetVpnGateways.delete
    , module Network.Google.Resource.Compute.TargetVPNGateways.Delete

    -- ** compute.targetVpnGateways.get
    , module Network.Google.Resource.Compute.TargetVPNGateways.Get

    -- ** compute.targetVpnGateways.insert
    , module Network.Google.Resource.Compute.TargetVPNGateways.Insert

    -- ** compute.targetVpnGateways.list
    , module Network.Google.Resource.Compute.TargetVPNGateways.List

    -- ** compute.urlMaps.delete
    , module Network.Google.Resource.Compute.URLMaps.Delete

    -- ** compute.urlMaps.get
    , module Network.Google.Resource.Compute.URLMaps.Get

    -- ** compute.urlMaps.insert
    , module Network.Google.Resource.Compute.URLMaps.Insert

    -- ** compute.urlMaps.invalidateCache
    , module Network.Google.Resource.Compute.URLMaps.InvalidateCache

    -- ** compute.urlMaps.list
    , module Network.Google.Resource.Compute.URLMaps.List

    -- ** compute.urlMaps.patch
    , module Network.Google.Resource.Compute.URLMaps.Patch

    -- ** compute.urlMaps.update
    , module Network.Google.Resource.Compute.URLMaps.Update

    -- ** compute.urlMaps.validate
    , module Network.Google.Resource.Compute.URLMaps.Validate

    -- ** compute.vpnTunnels.aggregatedList
    , module Network.Google.Resource.Compute.VPNTunnels.AggregatedList

    -- ** compute.vpnTunnels.delete
    , module Network.Google.Resource.Compute.VPNTunnels.Delete

    -- ** compute.vpnTunnels.get
    , module Network.Google.Resource.Compute.VPNTunnels.Get

    -- ** compute.vpnTunnels.insert
    , module Network.Google.Resource.Compute.VPNTunnels.Insert

    -- ** compute.vpnTunnels.list
    , module Network.Google.Resource.Compute.VPNTunnels.List

    -- ** compute.zoneOperations.delete
    , module Network.Google.Resource.Compute.ZoneOperations.Delete

    -- ** compute.zoneOperations.get
    , module Network.Google.Resource.Compute.ZoneOperations.Get

    -- ** compute.zoneOperations.list
    , module Network.Google.Resource.Compute.ZoneOperations.List

    -- ** compute.zones.get
    , module Network.Google.Resource.Compute.Zones.Get

    -- ** compute.zones.list
    , module Network.Google.Resource.Compute.Zones.List

    -- * Types

    -- ** TargetHTTPSProxyList
    , TargetHTTPSProxyList
    , targetHTTPSProxyList
    , thplNextPageToken
    , thplKind
    , thplItems
    , thplSelfLink
    , thplId

    -- ** RoutersScopedList
    , RoutersScopedList
    , routersScopedList
    , rslRouters
    , rslWarning

    -- ** RouterStatusResponse
    , RouterStatusResponse
    , routerStatusResponse
    , rsrKind
    , rsrResult

    -- ** RegionInstanceGroupManagersDeleteInstancesRequest
    , RegionInstanceGroupManagersDeleteInstancesRequest
    , regionInstanceGroupManagersDeleteInstancesRequest
    , rigmdirInstances

    -- ** AddressesScopedList
    , AddressesScopedList
    , addressesScopedList
    , aslAddresses
    , aslWarning

    -- ** OperationWarningsItemDataItem
    , OperationWarningsItemDataItem
    , operationWarningsItemDataItem
    , owidiValue
    , owidiKey

    -- ** SchedulingOnHostMaintenance
    , SchedulingOnHostMaintenance (..)

    -- ** RegionInstanceGroupsListInstancesRequest
    , RegionInstanceGroupsListInstancesRequest
    , regionInstanceGroupsListInstancesRequest
    , riglirInstanceState
    , riglirPortName

    -- ** AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType
    , AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType (..)

    -- ** InstanceGroupManagersAbandonInstancesRequest
    , InstanceGroupManagersAbandonInstancesRequest
    , instanceGroupManagersAbandonInstancesRequest
    , igmairInstances

    -- ** MachineTypeAggregatedListItems
    , MachineTypeAggregatedListItems
    , machineTypeAggregatedListItems
    , mtaliAddtional

    -- ** DiskTypeAggregatedListItems
    , DiskTypeAggregatedListItems
    , diskTypeAggregatedListItems
    , dtaliAddtional

    -- ** RouterAggregatedList
    , RouterAggregatedList
    , routerAggregatedList
    , ralNextPageToken
    , ralKind
    , ralItems
    , ralSelfLink
    , ralId

    -- ** FirewallList
    , FirewallList
    , firewallList
    , flNextPageToken
    , flKind
    , flItems
    , flSelfLink
    , flId

    -- ** InstancesScopedListWarning
    , InstancesScopedListWarning
    , instancesScopedListWarning
    , islwData
    , islwCode
    , islwMessage

    -- ** RegionInstanceGroupManagersRecreateRequest
    , RegionInstanceGroupManagersRecreateRequest
    , regionInstanceGroupManagersRecreateRequest
    , rigmrrInstances

    -- ** BackendServicesScopedListWarning
    , BackendServicesScopedListWarning
    , backendServicesScopedListWarning
    , bsslwData
    , bsslwCode
    , bsslwMessage

    -- ** InstanceGroupList
    , InstanceGroupList
    , instanceGroupList
    , iglNextPageToken
    , iglKind
    , iglItems
    , iglSelfLink
    , iglId

    -- ** InstancesSetMachineTypeRequest
    , InstancesSetMachineTypeRequest
    , instancesSetMachineTypeRequest
    , ismtrMachineType

    -- ** CustomerEncryptionKey
    , CustomerEncryptionKey
    , customerEncryptionKey
    , cekSha256
    , cekRawKey

    -- ** AutoscalerAggregatedListItems
    , AutoscalerAggregatedListItems
    , autoscalerAggregatedListItems
    , aaliAddtional

    -- ** InstanceGroupManagersSetInstanceTemplateRequest
    , InstanceGroupManagersSetInstanceTemplateRequest
    , instanceGroupManagersSetInstanceTemplateRequest
    , igmsitrInstanceTemplate

    -- ** DeprecationStatus
    , DeprecationStatus
    , deprecationStatus
    , dsState
    , dsDeleted
    , dsReplacement
    , dsObsolete
    , dsDeprecated

    -- ** OperationWarningsItemCode
    , OperationWarningsItemCode (..)

    -- ** Snapshot
    , Snapshot
    , snapshot
    , sStorageBytesStatus
    , sStatus
    , sDiskSizeGb
    , sSourceDiskId
    , sKind
    , sSourceDiskEncryptionKey
    , sStorageBytes
    , sSelfLink
    , sSnapshotEncryptionKey
    , sName
    , sCreationTimestamp
    , sId
    , sLicenses
    , sSourceDisk
    , sDescription

    -- ** RouterStatus
    , RouterStatus
    , routerStatus
    , rsBGPPeerStatus
    , rsNetwork
    , rsBestRoutes

    -- ** AutoscalingPolicyCustomMetricUtilization
    , AutoscalingPolicyCustomMetricUtilization
    , autoscalingPolicyCustomMetricUtilization
    , apcmuUtilizationTarget
    , apcmuMetric
    , apcmuUtilizationTargetType

    -- ** ForwardingRuleList
    , ForwardingRuleList
    , forwardingRuleList
    , frlNextPageToken
    , frlKind
    , frlItems
    , frlSelfLink
    , frlId

    -- ** VPNTunnelsScopedList
    , VPNTunnelsScopedList
    , vpnTunnelsScopedList
    , vtslVPNTunnels
    , vtslWarning

    -- ** BackendServiceProtocol
    , BackendServiceProtocol (..)

    -- ** InstanceGroupsSetNamedPortsRequest
    , InstanceGroupsSetNamedPortsRequest
    , instanceGroupsSetNamedPortsRequest
    , igsnprFingerprint
    , igsnprNamedPorts

    -- ** OperationList
    , OperationList
    , operationList
    , olNextPageToken
    , olKind
    , olItems
    , olSelfLink
    , olId

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

    -- ** RegionAutoscalerList
    , RegionAutoscalerList
    , regionAutoscalerList
    , rNextPageToken
    , rKind
    , rItems
    , rSelfLink
    , rId

    -- ** InstanceGroupsAddInstancesRequest
    , InstanceGroupsAddInstancesRequest
    , instanceGroupsAddInstancesRequest
    , igairInstances

    -- ** InstanceGroupManagerList
    , InstanceGroupManagerList
    , instanceGroupManagerList
    , igmlNextPageToken
    , igmlKind
    , igmlItems
    , igmlSelfLink
    , igmlId

    -- ** SubnetworksScopedListWarning
    , SubnetworksScopedListWarning
    , subnetworksScopedListWarning
    , sslwData
    , sslwCode
    , sslwMessage

    -- ** AttachedDiskType
    , AttachedDiskType (..)

    -- ** Image
    , Image
    , image
    , iStatus
    , iImageEncryptionKey
    , iDiskSizeGb
    , iSourceType
    , iSourceDiskId
    , iKind
    , iSourceDiskEncryptionKey
    , iGuestOSFeatures
    , iArchiveSizeBytes
    , iFamily
    , iRawDisk
    , iSelfLink
    , iName
    , iCreationTimestamp
    , iId
    , iLicenses
    , iSourceDisk
    , iDescription
    , iDeprecated

    -- ** URLMap
    , URLMap
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

    -- ** InstanceGroupAggregatedListItems
    , InstanceGroupAggregatedListItems
    , instanceGroupAggregatedListItems
    , igaliAddtional

    -- ** TargetPoolList
    , TargetPoolList
    , targetPoolList
    , tplNextPageToken
    , tplKind
    , tplItems
    , tplSelfLink
    , tplId

    -- ** TargetInstanceAggregatedList
    , TargetInstanceAggregatedList
    , targetInstanceAggregatedList
    , tialNextPageToken
    , tialKind
    , tialItems
    , tialSelfLink
    , tialId

    -- ** DisksScopedList
    , DisksScopedList
    , disksScopedList
    , dslWarning
    , dslDisks

    -- ** InstanceGroupManagersScopedList
    , InstanceGroupManagersScopedList
    , instanceGroupManagersScopedList
    , igmslWarning
    , igmslInstanceGroupManagers

    -- ** HealthCheck
    , HealthCheck
    , healthCheck
    , hcHealthyThreshold
    , hcTCPHealthCheck
    , hcKind
    , hcSSLHealthCheck
    , hcSelfLink
    , hcCheckIntervalSec
    , hcName
    , hcCreationTimestamp
    , hcHTTPHealthCheck
    , hcId
    , hcType
    , hcTimeoutSec
    , hcDescription
    , hcUnhealthyThreshold
    , hcHTTPSHealthCheck

    -- ** TargetSSLProxyProxyHeader
    , TargetSSLProxyProxyHeader (..)

    -- ** DiskAggregatedList
    , DiskAggregatedList
    , diskAggregatedList
    , dalNextPageToken
    , dalKind
    , dalItems
    , dalSelfLink
    , dalId

    -- ** InstanceWithNamedPorts
    , InstanceWithNamedPorts
    , instanceWithNamedPorts
    , iwnpStatus
    , iwnpNamedPorts
    , iwnpInstance

    -- ** ForwardingRulesScopedList
    , ForwardingRulesScopedList
    , forwardingRulesScopedList
    , frslWarning
    , frslForwardingRules

    -- ** InstanceReference
    , InstanceReference
    , instanceReference
    , iInstance

    -- ** OperationAggregatedList
    , OperationAggregatedList
    , operationAggregatedList
    , oalNextPageToken
    , oalKind
    , oalItems
    , oalSelfLink
    , oalId

    -- ** OperationsScopedList
    , OperationsScopedList
    , operationsScopedList
    , oslWarning
    , oslOperations

    -- ** NamedPort
    , NamedPort
    , namedPort
    , npName
    , npPort

    -- ** RegionInstanceGroupsListInstancesRequestInstanceState
    , RegionInstanceGroupsListInstancesRequestInstanceState (..)

    -- ** TargetInstanceList
    , TargetInstanceList
    , targetInstanceList
    , tilNextPageToken
    , tilKind
    , tilItems
    , tilSelfLink
    , tilId

    -- ** InstanceGroupManagerAggregatedList
    , InstanceGroupManagerAggregatedList
    , instanceGroupManagerAggregatedList
    , igmalNextPageToken
    , igmalKind
    , igmalItems
    , igmalSelfLink
    , igmalId

    -- ** ImageSourceType
    , ImageSourceType (..)

    -- ** TargetPoolsScopedList
    , TargetPoolsScopedList
    , targetPoolsScopedList
    , tpslWarning
    , tpslTargetPools

    -- ** ForwardingRuleAggregatedList
    , ForwardingRuleAggregatedList
    , forwardingRuleAggregatedList
    , fralNextPageToken
    , fralKind
    , fralItems
    , fralSelfLink
    , fralId

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

    -- ** OperationsScopedListWarningDataItem
    , OperationsScopedListWarningDataItem
    , operationsScopedListWarningDataItem
    , oslwdiValue
    , oslwdiKey

    -- ** BackendServiceSessionAffinity
    , BackendServiceSessionAffinity (..)

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

    -- ** ImageList
    , ImageList
    , imageList
    , ilNextPageToken
    , ilKind
    , ilItems
    , ilSelfLink
    , ilId

    -- ** VPNTunnelsScopedListWarning
    , VPNTunnelsScopedListWarning
    , vpnTunnelsScopedListWarning
    , vtslwData
    , vtslwCode
    , vtslwMessage

    -- ** ForwardingRulesScopedListWarningCode
    , ForwardingRulesScopedListWarningCode (..)

    -- ** OperationsScopedListWarningCode
    , OperationsScopedListWarningCode (..)

    -- ** TargetSSLProxiesSetBackendServiceRequest
    , TargetSSLProxiesSetBackendServiceRequest
    , targetSSLProxiesSetBackendServiceRequest
    , tspsbsrService

    -- ** ForwardingRule
    , ForwardingRule
    , forwardingRule
    , frIPAddress
    , frLoadBalancingScheme
    , frKind
    , frNetwork
    , frPortRange
    , frSelfLink
    , frName
    , frIPProtocol
    , frCreationTimestamp
    , frSubnetwork
    , frPorts
    , frId
    , frRegion
    , frDescription
    , frTarget
    , frBackendService

    -- ** URLMapList
    , URLMapList
    , urlMapList
    , umlNextPageToken
    , umlKind
    , umlItems
    , umlSelfLink
    , umlId

    -- ** ForwardingRulesScopedListWarningDataItem
    , ForwardingRulesScopedListWarningDataItem
    , forwardingRulesScopedListWarningDataItem
    , frslwdiValue
    , frslwdiKey

    -- ** InstanceGroupManagersScopedListWarningDataItem
    , InstanceGroupManagersScopedListWarningDataItem
    , instanceGroupManagersScopedListWarningDataItem
    , igmslwdiValue
    , igmslwdiKey

    -- ** SubnetworksScopedList
    , SubnetworksScopedList
    , subnetworksScopedList
    , sslSubnetworks
    , sslWarning

    -- ** DisksScopedListWarningCode
    , DisksScopedListWarningCode (..)

    -- ** Project
    , Project
    , project
    , pKind
    , pUsageExportLocation
    , pSelfLink
    , pName
    , pDefaultServiceAccount
    , pCreationTimestamp
    , pEnabledFeatures
    , pQuotas
    , pId
    , pDescription
    , pCommonInstanceMetadata

    -- ** RegionInstanceGroupManagersListInstancesResponse
    , RegionInstanceGroupManagersListInstancesResponse
    , regionInstanceGroupManagersListInstancesResponse
    , rigmlirManagedInstances

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
    , oDescription
    , oTargetLink
    , oClientOperationId

    -- ** DisksScopedListWarningDataItem
    , DisksScopedListWarningDataItem
    , disksScopedListWarningDataItem
    , dslwdiValue
    , dslwdiKey

    -- ** InstanceGroupManagersScopedListWarningCode
    , InstanceGroupManagersScopedListWarningCode (..)

    -- ** Disk
    , Disk
    , disk
    , dStatus
    , dSourceSnapshotId
    , dLastAttachTimestamp
    , dUsers
    , dSourceImage
    , dDiskEncryptionKey
    , dSizeGb
    , dKind
    , dLastDetachTimestamp
    , dZone
    , dSelfLink
    , dName
    , dSourceImageId
    , dCreationTimestamp
    , dSourceImageEncryptionKey
    , dId
    , dLicenses
    , dOptions
    , dType
    , dDescription
    , dSourceSnapshotEncryptionKey
    , dSourceSnapshot

    -- ** DiskMoveRequest
    , DiskMoveRequest
    , diskMoveRequest
    , dmrTargetDisk
    , dmrDestinationZone

    -- ** AutoscalingPolicyLoadBalancingUtilization
    , AutoscalingPolicyLoadBalancingUtilization
    , autoscalingPolicyLoadBalancingUtilization
    , aplbuUtilizationTarget

    -- ** TargetPoolsScopedListWarningDataItem
    , TargetPoolsScopedListWarningDataItem
    , targetPoolsScopedListWarningDataItem
    , tpslwdiValue
    , tpslwdiKey

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
    , igmRegion
    , igmTargetPools
    , igmDescription
    , igmInstanceGroup
    , igmNamedPorts

    -- ** RegionInstanceGroupsListInstances
    , RegionInstanceGroupsListInstances
    , regionInstanceGroupsListInstances
    , rigliNextPageToken
    , rigliKind
    , rigliItems
    , rigliSelfLink
    , rigliId

    -- ** TCPHealthCheck
    , TCPHealthCheck
    , tcpHealthCheck
    , thcResponse
    , thcProxyHeader
    , thcPortName
    , thcPort
    , thcRequest

    -- ** TargetPoolsScopedListWarningCode
    , TargetPoolsScopedListWarningCode (..)

    -- ** SSLHealthCheckProxyHeader
    , SSLHealthCheckProxyHeader (..)

    -- ** TargetVPNGatewayStatus
    , TargetVPNGatewayStatus (..)

    -- ** InstanceGroupsRemoveInstancesRequest
    , InstanceGroupsRemoveInstancesRequest
    , instanceGroupsRemoveInstancesRequest
    , igrirInstances

    -- ** SnapshotStatus
    , SnapshotStatus (..)

    -- ** RouteWarningsItemDataItem
    , RouteWarningsItemDataItem
    , routeWarningsItemDataItem
    , rwidiValue
    , rwidiKey

    -- ** TargetInstancesScopedListWarningCode
    , TargetInstancesScopedListWarningCode (..)

    -- ** BackendServiceAggregatedListItems
    , BackendServiceAggregatedListItems
    , backendServiceAggregatedListItems
    , bsaliAddtional

    -- ** InstanceAggregatedListItems
    , InstanceAggregatedListItems
    , instanceAggregatedListItems
    , ialiAddtional

    -- ** AutoscalersScopedListWarning
    , AutoscalersScopedListWarning
    , autoscalersScopedListWarning
    , aslwData
    , aslwCode
    , aslwMessage

    -- ** HealthCheckList
    , HealthCheckList
    , healthCheckList
    , hclNextPageToken
    , hclKind
    , hclItems
    , hclSelfLink
    , hclId

    -- ** ManagedInstanceLastAttemptErrors
    , ManagedInstanceLastAttemptErrors
    , managedInstanceLastAttemptErrors
    , milaeErrors

    -- ** GuestOSFeatureType
    , GuestOSFeatureType (..)

    -- ** RouteWarningsItemCode
    , RouteWarningsItemCode (..)

    -- ** TargetPoolsRemoveInstanceRequest
    , TargetPoolsRemoveInstanceRequest
    , targetPoolsRemoveInstanceRequest
    , tprirInstances

    -- ** TargetInstancesScopedListWarningDataItem
    , TargetInstancesScopedListWarningDataItem
    , targetInstancesScopedListWarningDataItem
    , tislwdiValue
    , tislwdiKey

    -- ** MachineTypesScopedListWarning
    , MachineTypesScopedListWarning
    , machineTypesScopedListWarning
    , mtslwData
    , mtslwCode
    , mtslwMessage

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

    -- ** TargetPoolInstanceHealth
    , TargetPoolInstanceHealth
    , targetPoolInstanceHealth
    , tpihKind
    , tpihHealthStatus

    -- ** SnapshotStorageBytesStatus
    , SnapshotStorageBytesStatus (..)

    -- ** InstanceGroupManagersListManagedInstancesResponse
    , InstanceGroupManagersListManagedInstancesResponse
    , instanceGroupManagersListManagedInstancesResponse
    , igmlmirManagedInstances

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

    -- ** DiskTypesScopedListWarning
    , DiskTypesScopedListWarning
    , diskTypesScopedListWarning
    , dtslwData
    , dtslwCode
    , dtslwMessage

    -- ** AddressesScopedListWarningCode
    , AddressesScopedListWarningCode (..)

    -- ** AttachedDiskInitializeParams
    , AttachedDiskInitializeParams
    , attachedDiskInitializeParams
    , adipSourceImage
    , adipDiskSizeGb
    , adipDiskName
    , adipSourceImageEncryptionKey
    , adipDiskType

    -- ** AddressesScopedListWarningDataItem
    , AddressesScopedListWarningDataItem
    , addressesScopedListWarningDataItem
    , aslwdiValue
    , aslwdiKey

    -- ** ImageStatus
    , ImageStatus (..)

    -- ** NetworkInterface
    , NetworkInterface
    , networkInterface
    , niKind
    , niNetwork
    , niName
    , niNetworkIP
    , niSubnetwork
    , niAccessConfigs

    -- ** TargetPoolsRemoveHealthCheckRequest
    , TargetPoolsRemoveHealthCheckRequest
    , targetPoolsRemoveHealthCheckRequest
    , tprhcrHealthChecks

    -- ** RegionInstanceGroupManagersSetTargetPoolsRequest
    , RegionInstanceGroupManagersSetTargetPoolsRequest
    , regionInstanceGroupManagersSetTargetPoolsRequest
    , rigmstprFingerprint
    , rigmstprTargetPools

    -- ** TargetSSLProxyList
    , TargetSSLProxyList
    , targetSSLProxyList
    , tsplNextPageToken
    , tsplKind
    , tsplItems
    , tsplSelfLink
    , tsplId

    -- ** CustomerEncryptionKeyProtectedDisk
    , CustomerEncryptionKeyProtectedDisk
    , customerEncryptionKeyProtectedDisk
    , cekpdDiskEncryptionKey
    , cekpdSource

    -- ** HealthStatusHealthState
    , HealthStatusHealthState (..)

    -- ** InstanceTemplateList
    , InstanceTemplateList
    , instanceTemplateList
    , itlNextPageToken
    , itlKind
    , itlItems
    , itlSelfLink
    , itlId

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

    -- ** Router
    , Router
    , router
    , rouBGPPeers
    , rouBGP
    , rouKind
    , rouNetwork
    , rouInterfaces
    , rouSelfLink
    , rouName
    , rouCreationTimestamp
    , rouId
    , rouRegion
    , rouDescription

    -- ** RoutersScopedListWarningCode
    , RoutersScopedListWarningCode (..)

    -- ** RoutersScopedListWarningDataItem
    , RoutersScopedListWarningDataItem
    , routersScopedListWarningDataItem
    , rslwdiValue
    , rslwdiKey

    -- ** ManagedInstanceCurrentAction
    , ManagedInstanceCurrentAction (..)

    -- ** TargetVPNGatewayList
    , TargetVPNGatewayList
    , targetVPNGatewayList
    , tvglNextPageToken
    , tvglKind
    , tvglItems
    , tvglSelfLink
    , tvglId

    -- ** TargetInstanceNATPolicy
    , TargetInstanceNATPolicy (..)

    -- ** SSLCertificateList
    , SSLCertificateList
    , sslCertificateList
    , sclNextPageToken
    , sclKind
    , sclItems
    , sclSelfLink
    , sclId

    -- ** FirewallAllowedItem
    , FirewallAllowedItem
    , firewallAllowedItem
    , faiIPProtocol
    , faiPorts

    -- ** BackendServiceAggregatedList
    , BackendServiceAggregatedList
    , backendServiceAggregatedList
    , bsalNextPageToken
    , bsalKind
    , bsalItems
    , bsalSelfLink
    , bsalId

    -- ** Network
    , Network
    , network
    , nAutoCreateSubnetworks
    , nKind
    , nSubnetworks
    , nIPv4Range
    , nSelfLink
    , nName
    , nCreationTimestamp
    , nId
    , nGatewayIPv4
    , nDescription

    -- ** RoutersScopedListWarning
    , RoutersScopedListWarning
    , routersScopedListWarning
    , rslwData
    , rslwCode
    , rslwMessage

    -- ** AccessConfigType
    , AccessConfigType (..)

    -- ** AddressesScopedListWarning
    , AddressesScopedListWarning
    , addressesScopedListWarning
    , aData
    , aCode
    , aMessage

    -- ** ImageRawDisk
    , ImageRawDisk
    , imageRawDisk
    , irdContainerType
    , irdSource
    , irdSha1Checksum

    -- ** InstanceAggregatedList
    , InstanceAggregatedList
    , instanceAggregatedList
    , ialNextPageToken
    , ialKind
    , ialItems
    , ialSelfLink
    , ialId

    -- ** SSLHealthCheck
    , SSLHealthCheck
    , sslHealthCheck
    , shcResponse
    , shcProxyHeader
    , shcPortName
    , shcPort
    , shcRequest

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

    -- ** Zone
    , Zone
    , zone
    , zStatus
    , zKind
    , zSelfLink
    , zName
    , zCreationTimestamp
    , zId
    , zRegion
    , zDescription
    , zDeprecated

    -- ** RouterBGP
    , RouterBGP
    , routerBGP
    , rbASN

    -- ** BackendServicesScopedList
    , BackendServicesScopedList
    , backendServicesScopedList
    , bsslWarning
    , bsslBackendServices

    -- ** InstanceGroupManagersRecreateInstancesRequest
    , InstanceGroupManagersRecreateInstancesRequest
    , instanceGroupManagersRecreateInstancesRequest
    , igmrirInstances

    -- ** TargetSSLProxiesSetSSLCertificatesRequest
    , TargetSSLProxiesSetSSLCertificatesRequest
    , targetSSLProxiesSetSSLCertificatesRequest
    , tspsscrSSLCertificates

    -- ** InstancesScopedList
    , InstancesScopedList
    , instancesScopedList
    , islWarning
    , islInstances

    -- ** BackendServiceLoadBalancingScheme
    , BackendServiceLoadBalancingScheme (..)

    -- ** HealthCheckReference
    , HealthCheckReference
    , healthCheckReference
    , hcrHealthCheck

    -- ** TargetInstanceAggregatedListItems
    , TargetInstanceAggregatedListItems
    , targetInstanceAggregatedListItems
    , tialiAddtional

    -- ** InstanceGroupAggregatedList
    , InstanceGroupAggregatedList
    , instanceGroupAggregatedList
    , igalNextPageToken
    , igalKind
    , igalItems
    , igalSelfLink
    , igalId

    -- ** OperationStatus
    , OperationStatus (..)

    -- ** Route
    , Route
    , route
    , rrPriority
    , rrKind
    , rrNextHopGateway
    , rrNextHopNetwork
    , rrNetwork
    , rrWarnings
    , rrNextHopIP
    , rrDestRange
    , rrSelfLink
    , rrName
    , rrCreationTimestamp
    , rrId
    , rrNextHopVPNTunnel
    , rrDescription
    , rrTags
    , rrNextHopInstance

    -- ** TargetVPNGatewaysScopedListWarningDataItem
    , TargetVPNGatewaysScopedListWarningDataItem
    , targetVPNGatewaysScopedListWarningDataItem
    , tvgslwdiValue
    , tvgslwdiKey

    -- ** TargetVPNGatewaysScopedListWarningCode
    , TargetVPNGatewaysScopedListWarningCode (..)

    -- ** TargetHTTPSProxiesSetSSLCertificatesRequest
    , TargetHTTPSProxiesSetSSLCertificatesRequest
    , targetHTTPSProxiesSetSSLCertificatesRequest
    , thpsscrSSLCertificates

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

    -- ** RouterList
    , RouterList
    , routerList
    , rllNextPageToken
    , rllKind
    , rllItems
    , rllSelfLink
    , rllId

    -- ** TargetSSLProxy
    , TargetSSLProxy
    , targetSSLProxy
    , tspSSLCertificates
    , tspService
    , tspKind
    , tspSelfLink
    , tspName
    , tspCreationTimestamp
    , tspId
    , tspProxyHeader
    , tspDescription

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

    -- ** DiskStatus
    , DiskStatus (..)

    -- ** ManagedInstanceInstanceStatus
    , ManagedInstanceInstanceStatus (..)

    -- ** HTTPHealthCheckProxyHeader
    , HTTPHealthCheckProxyHeader (..)

    -- ** URLMapsValidateResponse
    , URLMapsValidateResponse
    , urlMapsValidateResponse
    , umvrResult

    -- ** SSLCertificate
    , SSLCertificate
    , sslCertificate
    , scPrivateKey
    , scKind
    , scSelfLink
    , scName
    , scCreationTimestamp
    , scId
    , scCertificate
    , scDescription

    -- ** RouterStatusBGPPeerStatus
    , RouterStatusBGPPeerStatus
    , routerStatusBGPPeerStatus
    , rsbpsStatus
    , rsbpsIPAddress
    , rsbpsState
    , rsbpsPeerIPAddress
    , rsbpsUptime
    , rsbpsNumLearnedRoutes
    , rsbpsName
    , rsbpsUptimeSeconds
    , rsbpsAdvertisedRoutes
    , rsbpsLinkedVPNTunnel

    -- ** URLMapReference
    , URLMapReference
    , urlMapReference
    , umrURLMap

    -- ** AttachedDiskMode
    , AttachedDiskMode (..)

    -- ** TargetPoolsAddHealthCheckRequest
    , TargetPoolsAddHealthCheckRequest
    , targetPoolsAddHealthCheckRequest
    , tpahcrHealthChecks

    -- ** DiskAggregatedListItems
    , DiskAggregatedListItems
    , diskAggregatedListItems
    , daliAddtional

    -- ** UsageExportLocation
    , UsageExportLocation
    , usageExportLocation
    , uelReportNamePrefix
    , uelBucketName

    -- ** ZoneList
    , ZoneList
    , zoneList
    , zlNextPageToken
    , zlKind
    , zlItems
    , zlSelfLink
    , zlId

    -- ** RegionStatus
    , RegionStatus (..)

    -- ** RouterBGPPeer
    , RouterBGPPeer
    , routerBGPPeer
    , rbpIPAddress
    , rbpInterfaceName
    , rbpPeerIPAddress
    , rbpAdvertisedRoutePriority
    , rbpPeerASN
    , rbpName

    -- ** SubnetworksExpandIPCIdRRangeRequest
    , SubnetworksExpandIPCIdRRangeRequest
    , subnetworksExpandIPCIdRRangeRequest
    , seicirrrIPCIdRRange

    -- ** ManagedInstance
    , ManagedInstance
    , managedInstance
    , miLastAttempt
    , miCurrentAction
    , miId
    , miInstanceStatus
    , miInstance

    -- ** InstanceGroupManagerAggregatedListItems
    , InstanceGroupManagerAggregatedListItems
    , instanceGroupManagerAggregatedListItems
    , igmaliAddtional

    -- ** InstanceGroupManagersDeleteInstancesRequest
    , InstanceGroupManagersDeleteInstancesRequest
    , instanceGroupManagersDeleteInstancesRequest
    , igmdirInstances

    -- ** Backend
    , Backend
    , backend
    , bGroup
    , bBalancingMode
    , bMaxUtilization
    , bMaxRate
    , bMaxConnections
    , bMaxConnectionsPerInstance
    , bMaxRatePerInstance
    , bDescription
    , bCapacityScaler

    -- ** TargetVPNGatewaysScopedListWarning
    , TargetVPNGatewaysScopedListWarning
    , targetVPNGatewaysScopedListWarning
    , tvgslwData
    , tvgslwCode
    , tvgslwMessage

    -- ** TargetSSLProxiesSetProxyHeaderRequestProxyHeader
    , TargetSSLProxiesSetProxyHeaderRequestProxyHeader (..)

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
    , fraliAddtional

    -- ** OperationAggregatedListItems
    , OperationAggregatedListItems
    , operationAggregatedListItems
    , oaliAddtional

    -- ** InstanceGroupManagerActionsSummary
    , InstanceGroupManagerActionsSummary
    , instanceGroupManagerActionsSummary
    , igmasDeleting
    , igmasRestarting
    , igmasNone
    , igmasCreating
    , igmasRefreshing
    , igmasCreatingWithoutRetries
    , igmasRecreating
    , igmasAbandoning

    -- ** VPNTunnelStatus
    , VPNTunnelStatus (..)

    -- ** ServiceAccount
    , ServiceAccount
    , serviceAccount
    , saEmail
    , saScopes

    -- ** RegionInstanceGroupManagersAbandonInstancesRequest
    , RegionInstanceGroupManagersAbandonInstancesRequest
    , regionInstanceGroupManagersAbandonInstancesRequest
    , rigmairInstances

    -- ** NetworkList
    , NetworkList
    , networkList
    , nlNextPageToken
    , nlKind
    , nlItems
    , nlSelfLink
    , nlId

    -- ** InstanceGroupsListInstancesRequest
    , InstanceGroupsListInstancesRequest
    , instanceGroupsListInstancesRequest
    , iglirInstanceState

    -- ** BackendBalancingMode
    , BackendBalancingMode (..)

    -- ** RegionInstanceGroupList
    , RegionInstanceGroupList
    , regionInstanceGroupList
    , riglNextPageToken
    , riglKind
    , riglItems
    , riglSelfLink
    , riglId

    -- ** TargetPoolAggregatedListItems
    , TargetPoolAggregatedListItems
    , targetPoolAggregatedListItems
    , tpaliAddtional

    -- ** TargetInstancesScopedList
    , TargetInstancesScopedList
    , targetInstancesScopedList
    , tislWarning
    , tislTargetInstances

    -- ** AddressAggregatedListItems
    , AddressAggregatedListItems
    , addressAggregatedListItems
    , aAddtional

    -- ** AutoscalerList
    , AutoscalerList
    , autoscalerList
    , autNextPageToken
    , autKind
    , autItems
    , autSelfLink
    , autId

    -- ** TargetSSLProxiesSetProxyHeaderRequest
    , TargetSSLProxiesSetProxyHeaderRequest
    , targetSSLProxiesSetProxyHeaderRequest
    , tspsphrProxyHeader

    -- ** VPNTunnelAggregatedList
    , VPNTunnelAggregatedList
    , vpnTunnelAggregatedList
    , vtalNextPageToken
    , vtalKind
    , vtalItems
    , vtalSelfLink
    , vtalId

    -- ** AttachedDisk
    , AttachedDisk
    , attachedDisk
    , adDiskEncryptionKey
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

    -- ** DiskTypeList
    , DiskTypeList
    , diskTypeList
    , dtlNextPageToken
    , dtlKind
    , dtlItems
    , dtlSelfLink
    , dtlId

    -- ** RegionInstanceGroupsSetNamedPortsRequest
    , RegionInstanceGroupsSetNamedPortsRequest
    , regionInstanceGroupsSetNamedPortsRequest
    , rigsnprFingerprint
    , rigsnprNamedPorts

    -- ** MachineTypeList
    , MachineTypeList
    , machineTypeList
    , mtlNextPageToken
    , mtlKind
    , mtlItems
    , mtlSelfLink
    , mtlId

    -- ** TargetHTTPProxyList
    , TargetHTTPProxyList
    , targetHTTPProxyList
    , thttpplNextPageToken
    , thttpplKind
    , thttpplItems
    , thttpplSelfLink
    , thttpplId

    -- ** RegionInstanceGroupManagerList
    , RegionInstanceGroupManagerList
    , regionInstanceGroupManagerList
    , rigmlNextPageToken
    , rigmlKind
    , rigmlItems
    , rigmlSelfLink
    , rigmlId

    -- ** ForwardingRuleIPProtocol
    , ForwardingRuleIPProtocol (..)

    -- ** DiskTypesScopedList
    , DiskTypesScopedList
    , diskTypesScopedList
    , dtslDiskTypes
    , dtslWarning

    -- ** AddressStatus
    , AddressStatus (..)

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
    , httphcRequestPath
    , httphcHost
    , httphcProxyHeader
    , httphcPortName
    , httphcPort

    -- ** BackendServiceGroupHealth
    , BackendServiceGroupHealth
    , backendServiceGroupHealth
    , bsghKind
    , bsghHealthStatus

    -- ** InstanceGroupsListInstancesRequestInstanceState
    , InstanceGroupsListInstancesRequestInstanceState (..)

    -- ** AutoscalersScopedList
    , AutoscalersScopedList
    , autoscalersScopedList
    , aAutoscalers
    , aWarning

    -- ** AutoscalerAggregatedList
    , AutoscalerAggregatedList
    , autoscalerAggregatedList
    , aalNextPageToken
    , aalKind
    , aalItems
    , aalSelfLink
    , aalId

    -- ** RouterAggregatedListItems
    , RouterAggregatedListItems
    , routerAggregatedListItems
    , raliAddtional

    -- ** HTTPSHealthCheckProxyHeader
    , HTTPSHealthCheckProxyHeader (..)

    -- ** AutoscalingPolicy
    , AutoscalingPolicy
    , autoscalingPolicy
    , apCustomMetricUtilizations
    , apMaxNumReplicas
    , apCPUUtilization
    , apLoadBalancingUtilization
    , apMinNumReplicas
    , apCoolDownPeriodSec

    -- ** RegionList
    , RegionList
    , regionList
    , regNextPageToken
    , regKind
    , regItems
    , regSelfLink
    , regId

    -- ** AttachedDiskInterface
    , AttachedDiskInterface (..)

    -- ** HealthCheckType
    , HealthCheckType (..)

    -- ** ZoneStatus
    , ZoneStatus (..)

    -- ** VPNTunnelList
    , VPNTunnelList
    , vpnTunnelList
    , vtlNextPageToken
    , vtlKind
    , vtlItems
    , vtlSelfLink
    , vtlId

    -- ** MachineTypeScratchDisksItem
    , MachineTypeScratchDisksItem
    , machineTypeScratchDisksItem
    , mtsdiDiskGb

    -- ** SubnetworksScopedListWarningDataItem
    , SubnetworksScopedListWarningDataItem
    , subnetworksScopedListWarningDataItem
    , sslwdiValue
    , sslwdiKey

    -- ** MachineTypesScopedList
    , MachineTypesScopedList
    , machineTypesScopedList
    , mtslMachineTypes
    , mtslWarning

    -- ** SubnetworksScopedListWarningCode
    , SubnetworksScopedListWarningCode (..)

    -- ** Subnetwork
    , Subnetwork
    , subnetwork
    , subKind
    , subNetwork
    , subGatewayAddress
    , subSelfLink
    , subName
    , subCreationTimestamp
    , subIPCIdRRange
    , subId
    , subRegion
    , subDescription

    -- ** MachineTypeAggregatedList
    , MachineTypeAggregatedList
    , machineTypeAggregatedList
    , mtalNextPageToken
    , mtalKind
    , mtalItems
    , mtalSelfLink
    , mtalId

    -- ** QuotaMetric
    , QuotaMetric (..)

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
    , urlMapValidationResult
    , umvrLoadErrors
    , umvrLoadSucceeded
    , umvrTestPassed
    , umvrTestFailures

    -- ** Metadata
    , Metadata
    , metadata
    , mKind
    , mFingerprint
    , mItems

    -- ** RouteWarningsItem
    , RouteWarningsItem
    , routeWarningsItem
    , rwiData
    , rwiCode
    , rwiMessage

    -- ** MachineTypesScopedListWarningDataItem
    , MachineTypesScopedListWarningDataItem
    , machineTypesScopedListWarningDataItem
    , mtslwdiValue
    , mtslwdiKey

    -- ** InstanceStatus
    , InstanceStatus (..)

    -- ** MachineTypesScopedListWarningCode
    , MachineTypesScopedListWarningCode (..)

    -- ** InstancesSetServiceAccountRequest
    , InstancesSetServiceAccountRequest
    , instancesSetServiceAccountRequest
    , issarEmail
    , issarScopes

    -- ** DiskTypesScopedListWarningDataItem
    , DiskTypesScopedListWarningDataItem
    , diskTypesScopedListWarningDataItem
    , dtslwdiValue
    , dtslwdiKey

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

    -- ** MachineType
    , MachineType
    , machineType
    , mtIsSharedCPU
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

    -- ** DiskTypesScopedListWarningCode
    , DiskTypesScopedListWarningCode (..)

    -- ** OperationError
    , OperationError
    , operationError
    , oeErrors

    -- ** TargetInstancesScopedListWarning
    , TargetInstancesScopedListWarning
    , targetInstancesScopedListWarning
    , tislwData
    , tislwCode
    , tislwMessage

    -- ** SubnetworkAggregatedList
    , SubnetworkAggregatedList
    , subnetworkAggregatedList
    , salNextPageToken
    , salKind
    , salItems
    , salSelfLink
    , salId

    -- ** DisksResizeRequest
    , DisksResizeRequest
    , disksResizeRequest
    , drrSizeGb

    -- ** AutoscalersScopedListWarningDataItem
    , AutoscalersScopedListWarningDataItem
    , autoscalersScopedListWarningDataItem
    , aValue
    , aKey

    -- ** AutoscalersScopedListWarningCode
    , AutoscalersScopedListWarningCode (..)

    -- ** ForwardingRuleLoadBalancingScheme
    , ForwardingRuleLoadBalancingScheme (..)

    -- ** RegionInstanceGroupManagersSetTemplateRequest
    , RegionInstanceGroupManagersSetTemplateRequest
    , regionInstanceGroupManagersSetTemplateRequest
    , rigmstrInstanceTemplate

    -- ** InstanceGroupsListInstances
    , InstanceGroupsListInstances
    , instanceGroupsListInstances
    , igliNextPageToken
    , igliKind
    , igliItems
    , igliSelfLink
    , igliId

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
    , aaRegion
    , aaDescription
    , aaTarget

    -- ** DisksScopedListWarning
    , DisksScopedListWarning
    , disksScopedListWarning
    , dslwData
    , dslwCode
    , dslwMessage

    -- ** TargetVPNGatewayAggregatedListItems
    , TargetVPNGatewayAggregatedListItems
    , targetVPNGatewayAggregatedListItems
    , tvgaliAddtional

    -- ** RouterStatusBGPPeerStatusStatus
    , RouterStatusBGPPeerStatusStatus (..)

    -- ** TargetPoolsScopedListWarning
    , TargetPoolsScopedListWarning
    , targetPoolsScopedListWarning
    , tpslwData
    , tpslwCode
    , tpslwMessage

    -- ** HealthStatus
    , HealthStatus
    , healthStatus
    , hsIPAddress
    , hsHealthState
    , hsPort
    , hsInstance

    -- ** Region
    , Region
    , region
    , regeStatus
    , regeZones
    , regeKind
    , regeSelfLink
    , regeName
    , regeCreationTimestamp
    , regeQuotas
    , regeId
    , regeDescription
    , regeDeprecated

    -- ** GuestOSFeature
    , GuestOSFeature
    , guestOSFeature
    , gofType

    -- ** VPNTunnel
    , VPNTunnel
    , vpnTunnel
    , vtDetailedStatus
    , vtStatus
    , vtLocalTrafficSelector
    , vtKind
    , vtPeerIP
    , vtRouter
    , vtTargetVPNGateway
    , vtRemoteTrafficSelector
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

    -- ** Scheduling
    , Scheduling
    , scheduling
    , sAutomaticRestart
    , sOnHostMaintenance
    , sPreemptible

    -- ** VPNTunnelsScopedListWarningDataItem
    , VPNTunnelsScopedListWarningDataItem
    , vpnTunnelsScopedListWarningDataItem
    , vtslwdiValue
    , vtslwdiKey

    -- ** SubnetworkList
    , SubnetworkList
    , subnetworkList
    , slNextPageToken
    , slKind
    , slItems
    , slSelfLink
    , slId

    -- ** ForwardingRulesScopedListWarning
    , ForwardingRulesScopedListWarning
    , forwardingRulesScopedListWarning
    , frslwData
    , frslwCode
    , frslwMessage

    -- ** HTTPHealthCheckList
    , HTTPHealthCheckList
    , hTTPHealthCheckList
    , httphclNextPageToken
    , httphclKind
    , httphclItems
    , httphclSelfLink
    , httphclId

    -- ** InstanceGroupManagersScopedListWarning
    , InstanceGroupManagersScopedListWarning
    , instanceGroupManagersScopedListWarning
    , igmslwData
    , igmslwCode
    , igmslwMessage

    -- ** URLMapsValidateRequest
    , URLMapsValidateRequest
    , urlMapsValidateRequest
    , umvrResource

    -- ** InstanceGroupManagersSetTargetPoolsRequest
    , InstanceGroupManagersSetTargetPoolsRequest
    , instanceGroupManagersSetTargetPoolsRequest
    , igmstprFingerprint
    , igmstprTargetPools

    -- ** HTTPSHealthCheckList
    , HTTPSHealthCheckList
    , httpsHealthCheckList
    , hhclNextPageToken
    , hhclKind
    , hhclItems
    , hhclSelfLink
    , hhclId

    -- ** OperationErrorErrorsItem
    , OperationErrorErrorsItem
    , operationErrorErrorsItem
    , oeeiLocation
    , oeeiCode
    , oeeiMessage

    -- ** License
    , License
    , license
    , lChargesUseFee
    , lKind
    , lSelfLink
    , lName

    -- ** PathRule
    , PathRule
    , pathRule
    , prService
    , prPaths

    -- ** InstanceList
    , InstanceList
    , instanceList
    , insNextPageToken
    , insKind
    , insItems
    , insSelfLink
    , insId

    -- ** SubnetworkAggregatedListItems
    , SubnetworkAggregatedListItems
    , subnetworkAggregatedListItems
    , saliAddtional

    -- ** ManagedInstanceLastAttempt
    , ManagedInstanceLastAttempt
    , managedInstanceLastAttempt
    , milaErrors

    -- ** BackendServiceList
    , BackendServiceList
    , backendServiceList
    , bslNextPageToken
    , bslKind
    , bslItems
    , bslSelfLink
    , bslId

    -- ** InstanceGroupsScopedListWarning
    , InstanceGroupsScopedListWarning
    , instanceGroupsScopedListWarning
    , igslwData
    , igslwCode
    , igslwMessage

    -- ** AutoscalingPolicyCPUUtilization
    , AutoscalingPolicyCPUUtilization
    , autoscalingPolicyCPUUtilization
    , apcuUtilizationTarget

    -- ** InstanceGroupsScopedListWarningCode
    , InstanceGroupsScopedListWarningCode (..)

    -- ** InstanceGroupsScopedListWarningDataItem
    , InstanceGroupsScopedListWarningDataItem
    , instanceGroupsScopedListWarningDataItem
    , igslwdiValue
    , igslwdiKey

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

    -- ** HostRule
    , HostRule
    , hostRule
    , hrHosts
    , hrDescription
    , hrPathMatcher

    -- ** Quota
    , Quota
    , quota
    , qMetric
    , qLimit
    , qUsage

    -- ** InstanceGroup
    , InstanceGroup
    , instanceGroup
    , iiSize
    , iiKind
    , iiFingerprint
    , iiNetwork
    , iiZone
    , iiSelfLink
    , iiName
    , iiCreationTimestamp
    , iiSubnetwork
    , iiId
    , iiRegion
    , iiDescription
    , iiNamedPorts

    -- ** RouterInterface
    , RouterInterface
    , routerInterface
    , riName
    , riIPRange
    , riLinkedVPNTunnel

    -- ** InstanceWithNamedPortsStatus
    , InstanceWithNamedPortsStatus (..)

    -- ** TCPHealthCheckProxyHeader
    , TCPHealthCheckProxyHeader (..)

    -- ** SnapshotList
    , SnapshotList
    , snapshotList
    , snaNextPageToken
    , snaKind
    , snaItems
    , snaSelfLink
    , snaId

    -- ** TestFailure
    , TestFailure
    , testFailure
    , tfPath
    , tfExpectedService
    , tfHost
    , tfActualService

    -- ** SerialPortOutput
    , SerialPortOutput
    , serialPortOutput
    , spoNext
    , spoContents
    , spoKind
    , spoStart
    , spoSelfLink

    -- ** TargetVPNGatewayAggregatedList
    , TargetVPNGatewayAggregatedList
    , targetVPNGatewayAggregatedList
    , tvgalNextPageToken
    , tvgalKind
    , tvgalItems
    , tvgalSelfLink
    , tvgalId

    -- ** MetadataItemsItem
    , MetadataItemsItem
    , metadataItemsItem
    , miiValue
    , miiKey

    -- ** TargetHTTPSProxy
    , TargetHTTPSProxy
    , targetHTTPSProxy
    , thpURLMap
    , thpSSLCertificates
    , thpKind
    , thpSelfLink
    , thpName
    , thpCreationTimestamp
    , thpId
    , thpDescription

    -- ** ConnectionDraining
    , ConnectionDraining
    , connectionDraining
    , cdDrainingTimeoutSec

    -- ** CacheInvalidationRule
    , CacheInvalidationRule
    , cacheInvalidationRule
    , cirPath
    , cirHost

    -- ** TargetVPNGatewaysScopedList
    , TargetVPNGatewaysScopedList
    , targetVPNGatewaysScopedList
    , tvgslTargetVPNGateways
    , tvgslWarning

    -- ** AccessConfig
    , AccessConfig
    , accessConfig
    , acKind
    , acName
    , acNATIP
    , acType

    -- ** ManagedInstanceLastAttemptErrorsErrorsItem
    , ManagedInstanceLastAttemptErrorsErrorsItem
    , managedInstanceLastAttemptErrorsErrorsItem
    , milaeeiLocation
    , milaeeiCode
    , milaeeiMessage

    -- ** InstancesScopedListWarningCode
    , InstancesScopedListWarningCode (..)

    -- ** InstancesScopedListWarningDataItem
    , InstancesScopedListWarningDataItem
    , instancesScopedListWarningDataItem
    , islwdiValue
    , islwdiKey

    -- ** BackendServicesScopedListWarningDataItem
    , BackendServicesScopedListWarningDataItem
    , backendServicesScopedListWarningDataItem
    , bsslwdiValue
    , bsslwdiKey

    -- ** BackendService
    , BackendService
    , backendService
    , bsSessionAffinity
    , bsBackends
    , bsAffinityCookieTtlSec
    , bsLoadBalancingScheme
    , bsKind
    , bsEnableCDN
    , bsFingerprint
    , bsProtocol
    , bsSelfLink
    , bsName
    , bsCreationTimestamp
    , bsId
    , bsRegion
    , bsConnectionDraining
    , bsTimeoutSec
    , bsDescription
    , bsPortName
    , bsHealthChecks
    , bsPort

    -- ** InstanceMoveRequest
    , InstanceMoveRequest
    , instanceMoveRequest
    , imrTargetInstance
    , imrDestinationZone

    -- ** BackendServicesScopedListWarningCode
    , BackendServicesScopedListWarningCode (..)

    -- ** TargetPoolSessionAffinity
    , TargetPoolSessionAffinity (..)

    -- ** InstanceGroupsScopedList
    , InstanceGroupsScopedList
    , instanceGroupsScopedList
    , igslWarning
    , igslInstanceGroups

    -- ** InstancesStartWithEncryptionKeyRequest
    , InstancesStartWithEncryptionKeyRequest
    , instancesStartWithEncryptionKeyRequest
    , iswekrDisks

    -- ** HTTPSHealthCheck
    , HTTPSHealthCheck
    , httpsHealthCheck
    , hhcRequestPath
    , hhcHost
    , hhcProxyHeader
    , hhcPortName
    , hhcPort

    -- ** ImageRawDiskContainerType
    , ImageRawDiskContainerType (..)

    -- ** VPNTunnelAggregatedListItems
    , VPNTunnelAggregatedListItems
    , vpnTunnelAggregatedListItems
    , vtaliAddtional

    -- ** Tags
    , Tags
    , tags
    , tFingerprint
    , tItems

    -- ** AddressAggregatedList
    , AddressAggregatedList
    , addressAggregatedList
    , addNextPageToken
    , addKind
    , addItems
    , addSelfLink
    , addId

    -- ** OperationWarningsItem
    , OperationWarningsItem
    , operationWarningsItem
    , owiData
    , owiCode
    , owiMessage

    -- ** URLMapTest
    , URLMapTest
    , urlMapTest
    , umtPath
    , umtService
    , umtHost
    , umtDescription

    -- ** RoutersPreviewResponse
    , RoutersPreviewResponse
    , routersPreviewResponse
    , rprResource

    -- ** Instance
    , Instance
    , instance'
    , insnStatus
    , insnServiceAccounts
    , insnNetworkInterfaces
    , insnKind
    , insnZone
    , insnCPUPlatform
    , insnSelfLink
    , insnName
    , insnStatusMessage
    , insnCreationTimestamp
    , insnMachineType
    , insnMetadata
    , insnId
    , insnScheduling
    , insnDisks
    , insnCanIPForward
    , insnDescription
    , insnTags

    -- ** PathMatcher
    , PathMatcher
    , pathMatcher
    , pmDefaultService
    , pmName
    , pmPathRules
    , pmDescription
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
import           Network.Google.Resource.Compute.BackendServices.AggregatedList
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
import           Network.Google.Resource.Compute.Disks.Resize
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
import           Network.Google.Resource.Compute.HealthChecks.Delete
import           Network.Google.Resource.Compute.HealthChecks.Get
import           Network.Google.Resource.Compute.HealthChecks.Insert
import           Network.Google.Resource.Compute.HealthChecks.List
import           Network.Google.Resource.Compute.HealthChecks.Patch
import           Network.Google.Resource.Compute.HealthChecks.Update
import           Network.Google.Resource.Compute.HTTPHealthChecks.Delete
import           Network.Google.Resource.Compute.HTTPHealthChecks.Get
import           Network.Google.Resource.Compute.HTTPHealthChecks.Insert
import           Network.Google.Resource.Compute.HTTPHealthChecks.List
import           Network.Google.Resource.Compute.HTTPHealthChecks.Patch
import           Network.Google.Resource.Compute.HTTPHealthChecks.Update
import           Network.Google.Resource.Compute.HTTPSHealthChecks.Delete
import           Network.Google.Resource.Compute.HTTPSHealthChecks.Get
import           Network.Google.Resource.Compute.HTTPSHealthChecks.Insert
import           Network.Google.Resource.Compute.HTTPSHealthChecks.List
import           Network.Google.Resource.Compute.HTTPSHealthChecks.Patch
import           Network.Google.Resource.Compute.HTTPSHealthChecks.Update
import           Network.Google.Resource.Compute.Images.Delete
import           Network.Google.Resource.Compute.Images.Deprecate
import           Network.Google.Resource.Compute.Images.Get
import           Network.Google.Resource.Compute.Images.GetFromFamily
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
import           Network.Google.Resource.Compute.Instances.SetMachineType
import           Network.Google.Resource.Compute.Instances.SetMetadata
import           Network.Google.Resource.Compute.Instances.SetScheduling
import           Network.Google.Resource.Compute.Instances.SetServiceAccount
import           Network.Google.Resource.Compute.Instances.SetTags
import           Network.Google.Resource.Compute.Instances.Start
import           Network.Google.Resource.Compute.Instances.StartWithEncryptionKey
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
import           Network.Google.Resource.Compute.Networks.SwitchToCustomMode
import           Network.Google.Resource.Compute.Projects.Get
import           Network.Google.Resource.Compute.Projects.MoveDisk
import           Network.Google.Resource.Compute.Projects.MoveInstance
import           Network.Google.Resource.Compute.Projects.SetCommonInstanceMetadata
import           Network.Google.Resource.Compute.Projects.SetUsageExportBucket
import           Network.Google.Resource.Compute.RegionAutoscalers.Delete
import           Network.Google.Resource.Compute.RegionAutoscalers.Get
import           Network.Google.Resource.Compute.RegionAutoscalers.Insert
import           Network.Google.Resource.Compute.RegionAutoscalers.List
import           Network.Google.Resource.Compute.RegionAutoscalers.Patch
import           Network.Google.Resource.Compute.RegionAutoscalers.Update
import           Network.Google.Resource.Compute.RegionBackendServices.Delete
import           Network.Google.Resource.Compute.RegionBackendServices.Get
import           Network.Google.Resource.Compute.RegionBackendServices.GetHealth
import           Network.Google.Resource.Compute.RegionBackendServices.Insert
import           Network.Google.Resource.Compute.RegionBackendServices.List
import           Network.Google.Resource.Compute.RegionBackendServices.Patch
import           Network.Google.Resource.Compute.RegionBackendServices.Update
import           Network.Google.Resource.Compute.RegionInstanceGroupManagers.AbandonInstances
import           Network.Google.Resource.Compute.RegionInstanceGroupManagers.Delete
import           Network.Google.Resource.Compute.RegionInstanceGroupManagers.DeleteInstances
import           Network.Google.Resource.Compute.RegionInstanceGroupManagers.Get
import           Network.Google.Resource.Compute.RegionInstanceGroupManagers.Insert
import           Network.Google.Resource.Compute.RegionInstanceGroupManagers.List
import           Network.Google.Resource.Compute.RegionInstanceGroupManagers.ListManagedInstances
import           Network.Google.Resource.Compute.RegionInstanceGroupManagers.RecreateInstances
import           Network.Google.Resource.Compute.RegionInstanceGroupManagers.Resize
import           Network.Google.Resource.Compute.RegionInstanceGroupManagers.SetInstanceTemplate
import           Network.Google.Resource.Compute.RegionInstanceGroupManagers.SetTargetPools
import           Network.Google.Resource.Compute.RegionInstanceGroups.Get
import           Network.Google.Resource.Compute.RegionInstanceGroups.List
import           Network.Google.Resource.Compute.RegionInstanceGroups.ListInstances
import           Network.Google.Resource.Compute.RegionInstanceGroups.SetNamedPorts
import           Network.Google.Resource.Compute.RegionOperations.Delete
import           Network.Google.Resource.Compute.RegionOperations.Get
import           Network.Google.Resource.Compute.RegionOperations.List
import           Network.Google.Resource.Compute.Regions.Get
import           Network.Google.Resource.Compute.Regions.List
import           Network.Google.Resource.Compute.Routers.AggregatedList
import           Network.Google.Resource.Compute.Routers.Delete
import           Network.Google.Resource.Compute.Routers.Get
import           Network.Google.Resource.Compute.Routers.GetRouterStatus
import           Network.Google.Resource.Compute.Routers.Insert
import           Network.Google.Resource.Compute.Routers.List
import           Network.Google.Resource.Compute.Routers.Patch
import           Network.Google.Resource.Compute.Routers.Preview
import           Network.Google.Resource.Compute.Routers.Update
import           Network.Google.Resource.Compute.Routes.Delete
import           Network.Google.Resource.Compute.Routes.Get
import           Network.Google.Resource.Compute.Routes.Insert
import           Network.Google.Resource.Compute.Routes.List
import           Network.Google.Resource.Compute.Snapshots.Delete
import           Network.Google.Resource.Compute.Snapshots.Get
import           Network.Google.Resource.Compute.Snapshots.List
import           Network.Google.Resource.Compute.SSLCertificates.Delete
import           Network.Google.Resource.Compute.SSLCertificates.Get
import           Network.Google.Resource.Compute.SSLCertificates.Insert
import           Network.Google.Resource.Compute.SSLCertificates.List
import           Network.Google.Resource.Compute.Subnetworks.AggregatedList
import           Network.Google.Resource.Compute.Subnetworks.Delete
import           Network.Google.Resource.Compute.Subnetworks.ExpandIPCIdRRange
import           Network.Google.Resource.Compute.Subnetworks.Get
import           Network.Google.Resource.Compute.Subnetworks.Insert
import           Network.Google.Resource.Compute.Subnetworks.List
import           Network.Google.Resource.Compute.TargetHTTPProxies.Delete
import           Network.Google.Resource.Compute.TargetHTTPProxies.Get
import           Network.Google.Resource.Compute.TargetHTTPProxies.Insert
import           Network.Google.Resource.Compute.TargetHTTPProxies.List
import           Network.Google.Resource.Compute.TargetHTTPProxies.SetURLMap
import           Network.Google.Resource.Compute.TargetHTTPSProxies.Delete
import           Network.Google.Resource.Compute.TargetHTTPSProxies.Get
import           Network.Google.Resource.Compute.TargetHTTPSProxies.Insert
import           Network.Google.Resource.Compute.TargetHTTPSProxies.List
import           Network.Google.Resource.Compute.TargetHTTPSProxies.SetSSLCertificates
import           Network.Google.Resource.Compute.TargetHTTPSProxies.SetURLMap
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
import           Network.Google.Resource.Compute.TargetSSLProxies.Delete
import           Network.Google.Resource.Compute.TargetSSLProxies.Get
import           Network.Google.Resource.Compute.TargetSSLProxies.Insert
import           Network.Google.Resource.Compute.TargetSSLProxies.List
import           Network.Google.Resource.Compute.TargetSSLProxies.SetBackendService
import           Network.Google.Resource.Compute.TargetSSLProxies.SetProxyHeader
import           Network.Google.Resource.Compute.TargetSSLProxies.SetSSLCertificates
import           Network.Google.Resource.Compute.TargetVPNGateways.AggregatedList
import           Network.Google.Resource.Compute.TargetVPNGateways.Delete
import           Network.Google.Resource.Compute.TargetVPNGateways.Get
import           Network.Google.Resource.Compute.TargetVPNGateways.Insert
import           Network.Google.Resource.Compute.TargetVPNGateways.List
import           Network.Google.Resource.Compute.URLMaps.Delete
import           Network.Google.Resource.Compute.URLMaps.Get
import           Network.Google.Resource.Compute.URLMaps.Insert
import           Network.Google.Resource.Compute.URLMaps.InvalidateCache
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

-- | Represents the entirety of the methods and resources available for the Compute Engine API service.
type ComputeAPI =
     ImagesInsertResource :<|> ImagesListResource :<|>
       ImagesGetResource
       :<|> ImagesGetFromFamilyResource
       :<|> ImagesDeprecateResource
       :<|> ImagesDeleteResource
       :<|> URLMapsInsertResource
       :<|> URLMapsListResource
       :<|> URLMapsPatchResource
       :<|> URLMapsGetResource
       :<|> URLMapsInvalidateCacheResource
       :<|> URLMapsValidateResource
       :<|> URLMapsDeleteResource
       :<|> URLMapsUpdateResource
       :<|> RoutesInsertResource
       :<|> RoutesListResource
       :<|> RoutesGetResource
       :<|> RoutesDeleteResource
       :<|> RegionBackendServicesInsertResource
       :<|> RegionBackendServicesListResource
       :<|> RegionBackendServicesGetHealthResource
       :<|> RegionBackendServicesPatchResource
       :<|> RegionBackendServicesGetResource
       :<|> RegionBackendServicesDeleteResource
       :<|> RegionBackendServicesUpdateResource
       :<|> InstanceTemplatesInsertResource
       :<|> InstanceTemplatesListResource
       :<|> InstanceTemplatesGetResource
       :<|> InstanceTemplatesDeleteResource
       :<|> TargetVPNGatewaysAggregatedListResource
       :<|> TargetVPNGatewaysInsertResource
       :<|> TargetVPNGatewaysListResource
       :<|> TargetVPNGatewaysGetResource
       :<|> TargetVPNGatewaysDeleteResource
       :<|> SSLCertificatesInsertResource
       :<|> SSLCertificatesListResource
       :<|> SSLCertificatesGetResource
       :<|> SSLCertificatesDeleteResource
       :<|> ZonesListResource
       :<|> ZonesGetResource
       :<|> RegionInstanceGroupsListResource
       :<|> RegionInstanceGroupsGetResource
       :<|> RegionInstanceGroupsListInstancesResource
       :<|> RegionInstanceGroupsSetNamedPortsResource
       :<|> GlobalForwardingRulesInsertResource
       :<|> GlobalForwardingRulesListResource
       :<|> GlobalForwardingRulesGetResource
       :<|> GlobalForwardingRulesSetTargetResource
       :<|> GlobalForwardingRulesDeleteResource
       :<|> NetworksInsertResource
       :<|> NetworksListResource
       :<|> NetworksGetResource
       :<|> NetworksSwitchToCustomModeResource
       :<|> NetworksDeleteResource
       :<|> RoutersAggregatedListResource
       :<|> RoutersInsertResource
       :<|> RoutersListResource
       :<|> RoutersPatchResource
       :<|> RoutersGetResource
       :<|> RoutersPreviewResource
       :<|> RoutersDeleteResource
       :<|> RoutersUpdateResource
       :<|> RoutersGetRouterStatusResource
       :<|> AddressesAggregatedListResource
       :<|> AddressesInsertResource
       :<|> AddressesListResource
       :<|> AddressesGetResource
       :<|> AddressesDeleteResource
       :<|> GlobalAddressesInsertResource
       :<|> GlobalAddressesListResource
       :<|> GlobalAddressesGetResource
       :<|> GlobalAddressesDeleteResource
       :<|> RegionsListResource
       :<|> RegionsGetResource
       :<|> TargetHTTPProxiesInsertResource
       :<|> TargetHTTPProxiesListResource
       :<|> TargetHTTPProxiesSetURLMapResource
       :<|> TargetHTTPProxiesGetResource
       :<|> TargetHTTPProxiesDeleteResource
       :<|> VPNTunnelsAggregatedListResource
       :<|> VPNTunnelsInsertResource
       :<|> VPNTunnelsListResource
       :<|> VPNTunnelsGetResource
       :<|> VPNTunnelsDeleteResource
       :<|> AutoscalersAggregatedListResource
       :<|> AutoscalersInsertResource
       :<|> AutoscalersListResource
       :<|> AutoscalersPatchResource
       :<|> AutoscalersGetResource
       :<|> AutoscalersDeleteResource
       :<|> AutoscalersUpdateResource
       :<|>
       RegionInstanceGroupManagersSetTargetPoolsResource
       :<|> RegionInstanceGroupManagersInsertResource
       :<|> RegionInstanceGroupManagersResizeResource
       :<|> RegionInstanceGroupManagersListResource
       :<|>
       RegionInstanceGroupManagersListManagedInstancesResource
       :<|>
       RegionInstanceGroupManagersAbandonInstancesResource
       :<|>
       RegionInstanceGroupManagersSetInstanceTemplateResource
       :<|> RegionInstanceGroupManagersGetResource
       :<|>
       RegionInstanceGroupManagersDeleteInstancesResource
       :<|> RegionInstanceGroupManagersDeleteResource
       :<|>
       RegionInstanceGroupManagersRecreateInstancesResource
       :<|> DiskTypesAggregatedListResource
       :<|> DiskTypesListResource
       :<|> DiskTypesGetResource
       :<|> RegionOperationsListResource
       :<|> RegionOperationsGetResource
       :<|> RegionOperationsDeleteResource
       :<|> MachineTypesAggregatedListResource
       :<|> MachineTypesListResource
       :<|> MachineTypesGetResource
       :<|> HTTPHealthChecksInsertResource
       :<|> HTTPHealthChecksListResource
       :<|> HTTPHealthChecksPatchResource
       :<|> HTTPHealthChecksGetResource
       :<|> HTTPHealthChecksDeleteResource
       :<|> HTTPHealthChecksUpdateResource
       :<|> SubnetworksExpandIPCIdRRangeResource
       :<|> SubnetworksAggregatedListResource
       :<|> SubnetworksInsertResource
       :<|> SubnetworksListResource
       :<|> SubnetworksGetResource
       :<|> SubnetworksDeleteResource
       :<|> SnapshotsListResource
       :<|> SnapshotsGetResource
       :<|> SnapshotsDeleteResource
       :<|> TargetSSLProxiesInsertResource
       :<|> TargetSSLProxiesListResource
       :<|> TargetSSLProxiesSetSSLCertificatesResource
       :<|> TargetSSLProxiesGetResource
       :<|> TargetSSLProxiesSetBackendServiceResource
       :<|> TargetSSLProxiesDeleteResource
       :<|> TargetSSLProxiesSetProxyHeaderResource
       :<|> HTTPSHealthChecksInsertResource
       :<|> HTTPSHealthChecksListResource
       :<|> HTTPSHealthChecksPatchResource
       :<|> HTTPSHealthChecksGetResource
       :<|> HTTPSHealthChecksDeleteResource
       :<|> HTTPSHealthChecksUpdateResource
       :<|> InstancesAddAccessConfigResource
       :<|> InstancesAggregatedListResource
       :<|> InstancesInsertResource
       :<|> InstancesDetachDiskResource
       :<|> InstancesListResource
       :<|> InstancesStartResource
       :<|> InstancesSetServiceAccountResource
       :<|> InstancesGetResource
       :<|> InstancesSetMachineTypeResource
       :<|> InstancesDeleteAccessConfigResource
       :<|> InstancesSetMetadataResource
       :<|> InstancesSetSchedulingResource
       :<|> InstancesStartWithEncryptionKeyResource
       :<|> InstancesResetResource
       :<|> InstancesStopResource
       :<|> InstancesGetSerialPortOutputResource
       :<|> InstancesSetTagsResource
       :<|> InstancesAttachDiskResource
       :<|> InstancesDeleteResource
       :<|> InstancesSetDiskAutoDeleteResource
       :<|> BackendServicesAggregatedListResource
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
       :<|> FirewallsInsertResource
       :<|> FirewallsListResource
       :<|> FirewallsPatchResource
       :<|> FirewallsGetResource
       :<|> FirewallsDeleteResource
       :<|> FirewallsUpdateResource
       :<|> GlobalOperationsAggregatedListResource
       :<|> GlobalOperationsListResource
       :<|> GlobalOperationsGetResource
       :<|> GlobalOperationsDeleteResource
       :<|> LicensesGetResource
       :<|> ZoneOperationsListResource
       :<|> ZoneOperationsGetResource
       :<|> ZoneOperationsDeleteResource
       :<|> TargetHTTPSProxiesInsertResource
       :<|> TargetHTTPSProxiesListResource
       :<|> TargetHTTPSProxiesSetURLMapResource
       :<|> TargetHTTPSProxiesSetSSLCertificatesResource
       :<|> TargetHTTPSProxiesGetResource
       :<|> TargetHTTPSProxiesDeleteResource
       :<|> TargetInstancesAggregatedListResource
       :<|> TargetInstancesInsertResource
       :<|> TargetInstancesListResource
       :<|> TargetInstancesGetResource
       :<|> TargetInstancesDeleteResource
       :<|> DisksAggregatedListResource
       :<|> DisksInsertResource
       :<|> DisksResizeResource
       :<|> DisksListResource
       :<|> DisksGetResource
       :<|> DisksCreateSnapshotResource
       :<|> DisksDeleteResource
       :<|> ForwardingRulesAggregatedListResource
       :<|> ForwardingRulesInsertResource
       :<|> ForwardingRulesListResource
       :<|> ForwardingRulesGetResource
       :<|> ForwardingRulesSetTargetResource
       :<|> ForwardingRulesDeleteResource
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
       :<|> RegionAutoscalersInsertResource
       :<|> RegionAutoscalersListResource
       :<|> RegionAutoscalersPatchResource
       :<|> RegionAutoscalersGetResource
       :<|> RegionAutoscalersDeleteResource
       :<|> RegionAutoscalersUpdateResource
       :<|> ProjectsSetUsageExportBucketResource
       :<|> ProjectsMoveInstanceResource
       :<|> ProjectsGetResource
       :<|> ProjectsMoveDiskResource
       :<|> ProjectsSetCommonInstanceMetadataResource
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
       :<|> HealthChecksInsertResource
       :<|> HealthChecksListResource
       :<|> HealthChecksPatchResource
       :<|> HealthChecksGetResource
       :<|> HealthChecksDeleteResource
       :<|> HealthChecksUpdateResource
