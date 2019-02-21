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

    -- ** compute.acceleratorTypes.aggregatedList
    , module Network.Google.Resource.Compute.AcceleratorTypes.AggregatedList

    -- ** compute.acceleratorTypes.get
    , module Network.Google.Resource.Compute.AcceleratorTypes.Get

    -- ** compute.acceleratorTypes.list
    , module Network.Google.Resource.Compute.AcceleratorTypes.List

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

    -- ** compute.backendBuckets.addSignedUrlKey
    , module Network.Google.Resource.Compute.BackendBuckets.AddSignedURLKey

    -- ** compute.backendBuckets.delete
    , module Network.Google.Resource.Compute.BackendBuckets.Delete

    -- ** compute.backendBuckets.deleteSignedUrlKey
    , module Network.Google.Resource.Compute.BackendBuckets.DeleteSignedURLKey

    -- ** compute.backendBuckets.get
    , module Network.Google.Resource.Compute.BackendBuckets.Get

    -- ** compute.backendBuckets.insert
    , module Network.Google.Resource.Compute.BackendBuckets.Insert

    -- ** compute.backendBuckets.list
    , module Network.Google.Resource.Compute.BackendBuckets.List

    -- ** compute.backendBuckets.patch
    , module Network.Google.Resource.Compute.BackendBuckets.Patch

    -- ** compute.backendBuckets.update
    , module Network.Google.Resource.Compute.BackendBuckets.Update

    -- ** compute.backendServices.addSignedUrlKey
    , module Network.Google.Resource.Compute.BackendServices.AddSignedURLKey

    -- ** compute.backendServices.aggregatedList
    , module Network.Google.Resource.Compute.BackendServices.AggregatedList

    -- ** compute.backendServices.delete
    , module Network.Google.Resource.Compute.BackendServices.Delete

    -- ** compute.backendServices.deleteSignedUrlKey
    , module Network.Google.Resource.Compute.BackendServices.DeleteSignedURLKey

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

    -- ** compute.backendServices.setSecurityPolicy
    , module Network.Google.Resource.Compute.BackendServices.SetSecurityPolicy

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

    -- ** compute.disks.getIamPolicy
    , module Network.Google.Resource.Compute.Disks.GetIAMPolicy

    -- ** compute.disks.insert
    , module Network.Google.Resource.Compute.Disks.Insert

    -- ** compute.disks.list
    , module Network.Google.Resource.Compute.Disks.List

    -- ** compute.disks.resize
    , module Network.Google.Resource.Compute.Disks.Resize

    -- ** compute.disks.setIamPolicy
    , module Network.Google.Resource.Compute.Disks.SetIAMPolicy

    -- ** compute.disks.setLabels
    , module Network.Google.Resource.Compute.Disks.SetLabels

    -- ** compute.disks.testIamPermissions
    , module Network.Google.Resource.Compute.Disks.TestIAMPermissions

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

    -- ** compute.images.getIamPolicy
    , module Network.Google.Resource.Compute.Images.GetIAMPolicy

    -- ** compute.images.insert
    , module Network.Google.Resource.Compute.Images.Insert

    -- ** compute.images.list
    , module Network.Google.Resource.Compute.Images.List

    -- ** compute.images.setIamPolicy
    , module Network.Google.Resource.Compute.Images.SetIAMPolicy

    -- ** compute.images.setLabels
    , module Network.Google.Resource.Compute.Images.SetLabels

    -- ** compute.images.testIamPermissions
    , module Network.Google.Resource.Compute.Images.TestIAMPermissions

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

    -- ** compute.instanceGroupManagers.patch
    , module Network.Google.Resource.Compute.InstanceGroupManagers.Patch

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

    -- ** compute.instanceTemplates.getIamPolicy
    , module Network.Google.Resource.Compute.InstanceTemplates.GetIAMPolicy

    -- ** compute.instanceTemplates.insert
    , module Network.Google.Resource.Compute.InstanceTemplates.Insert

    -- ** compute.instanceTemplates.list
    , module Network.Google.Resource.Compute.InstanceTemplates.List

    -- ** compute.instanceTemplates.setIamPolicy
    , module Network.Google.Resource.Compute.InstanceTemplates.SetIAMPolicy

    -- ** compute.instanceTemplates.testIamPermissions
    , module Network.Google.Resource.Compute.InstanceTemplates.TestIAMPermissions

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

    -- ** compute.instances.getIamPolicy
    , module Network.Google.Resource.Compute.Instances.GetIAMPolicy

    -- ** compute.instances.getSerialPortOutput
    , module Network.Google.Resource.Compute.Instances.GetSerialPortOutput

    -- ** compute.instances.insert
    , module Network.Google.Resource.Compute.Instances.Insert

    -- ** compute.instances.list
    , module Network.Google.Resource.Compute.Instances.List

    -- ** compute.instances.listReferrers
    , module Network.Google.Resource.Compute.Instances.ListReferrers

    -- ** compute.instances.reset
    , module Network.Google.Resource.Compute.Instances.Reset

    -- ** compute.instances.setDeletionProtection
    , module Network.Google.Resource.Compute.Instances.SetDeletionProtection

    -- ** compute.instances.setDiskAutoDelete
    , module Network.Google.Resource.Compute.Instances.SetDiskAutoDelete

    -- ** compute.instances.setIamPolicy
    , module Network.Google.Resource.Compute.Instances.SetIAMPolicy

    -- ** compute.instances.setLabels
    , module Network.Google.Resource.Compute.Instances.SetLabels

    -- ** compute.instances.setMachineResources
    , module Network.Google.Resource.Compute.Instances.SetMachineResources

    -- ** compute.instances.setMachineType
    , module Network.Google.Resource.Compute.Instances.SetMachineType

    -- ** compute.instances.setMetadata
    , module Network.Google.Resource.Compute.Instances.SetMetadata

    -- ** compute.instances.setMinCpuPlatform
    , module Network.Google.Resource.Compute.Instances.SetMinCPUPlatform

    -- ** compute.instances.setScheduling
    , module Network.Google.Resource.Compute.Instances.SetScheduling

    -- ** compute.instances.setServiceAccount
    , module Network.Google.Resource.Compute.Instances.SetServiceAccount

    -- ** compute.instances.setTags
    , module Network.Google.Resource.Compute.Instances.SetTags

    -- ** compute.instances.simulateMaintenanceEvent
    , module Network.Google.Resource.Compute.Instances.SimulateMaintenanceEvent

    -- ** compute.instances.start
    , module Network.Google.Resource.Compute.Instances.Start

    -- ** compute.instances.startWithEncryptionKey
    , module Network.Google.Resource.Compute.Instances.StartWithEncryptionKey

    -- ** compute.instances.stop
    , module Network.Google.Resource.Compute.Instances.Stop

    -- ** compute.instances.testIamPermissions
    , module Network.Google.Resource.Compute.Instances.TestIAMPermissions

    -- ** compute.instances.updateAccessConfig
    , module Network.Google.Resource.Compute.Instances.UpdateAccessConfig

    -- ** compute.instances.updateNetworkInterface
    , module Network.Google.Resource.Compute.Instances.UpdateNetworkInterface

    -- ** compute.interconnectAttachments.aggregatedList
    , module Network.Google.Resource.Compute.InterconnectAttachments.AggregatedList

    -- ** compute.interconnectAttachments.delete
    , module Network.Google.Resource.Compute.InterconnectAttachments.Delete

    -- ** compute.interconnectAttachments.get
    , module Network.Google.Resource.Compute.InterconnectAttachments.Get

    -- ** compute.interconnectAttachments.insert
    , module Network.Google.Resource.Compute.InterconnectAttachments.Insert

    -- ** compute.interconnectAttachments.list
    , module Network.Google.Resource.Compute.InterconnectAttachments.List

    -- ** compute.interconnectAttachments.patch
    , module Network.Google.Resource.Compute.InterconnectAttachments.Patch

    -- ** compute.interconnectLocations.get
    , module Network.Google.Resource.Compute.InterconnectLocations.Get

    -- ** compute.interconnectLocations.list
    , module Network.Google.Resource.Compute.InterconnectLocations.List

    -- ** compute.interconnects.delete
    , module Network.Google.Resource.Compute.Interconnects.Delete

    -- ** compute.interconnects.get
    , module Network.Google.Resource.Compute.Interconnects.Get

    -- ** compute.interconnects.getDiagnostics
    , module Network.Google.Resource.Compute.Interconnects.GetDiagnostics

    -- ** compute.interconnects.insert
    , module Network.Google.Resource.Compute.Interconnects.Insert

    -- ** compute.interconnects.list
    , module Network.Google.Resource.Compute.Interconnects.List

    -- ** compute.interconnects.patch
    , module Network.Google.Resource.Compute.Interconnects.Patch

    -- ** compute.licenseCodes.get
    , module Network.Google.Resource.Compute.LicenseCodes.Get

    -- ** compute.licenseCodes.testIamPermissions
    , module Network.Google.Resource.Compute.LicenseCodes.TestIAMPermissions

    -- ** compute.licenses.delete
    , module Network.Google.Resource.Compute.Licenses.Delete

    -- ** compute.licenses.get
    , module Network.Google.Resource.Compute.Licenses.Get

    -- ** compute.licenses.getIamPolicy
    , module Network.Google.Resource.Compute.Licenses.GetIAMPolicy

    -- ** compute.licenses.insert
    , module Network.Google.Resource.Compute.Licenses.Insert

    -- ** compute.licenses.list
    , module Network.Google.Resource.Compute.Licenses.List

    -- ** compute.licenses.setIamPolicy
    , module Network.Google.Resource.Compute.Licenses.SetIAMPolicy

    -- ** compute.licenses.testIamPermissions
    , module Network.Google.Resource.Compute.Licenses.TestIAMPermissions

    -- ** compute.machineTypes.aggregatedList
    , module Network.Google.Resource.Compute.MachineTypes.AggregatedList

    -- ** compute.machineTypes.get
    , module Network.Google.Resource.Compute.MachineTypes.Get

    -- ** compute.machineTypes.list
    , module Network.Google.Resource.Compute.MachineTypes.List

    -- ** compute.networks.addPeering
    , module Network.Google.Resource.Compute.Networks.AddPeering

    -- ** compute.networks.delete
    , module Network.Google.Resource.Compute.Networks.Delete

    -- ** compute.networks.get
    , module Network.Google.Resource.Compute.Networks.Get

    -- ** compute.networks.insert
    , module Network.Google.Resource.Compute.Networks.Insert

    -- ** compute.networks.list
    , module Network.Google.Resource.Compute.Networks.List

    -- ** compute.networks.patch
    , module Network.Google.Resource.Compute.Networks.Patch

    -- ** compute.networks.removePeering
    , module Network.Google.Resource.Compute.Networks.RemovePeering

    -- ** compute.networks.switchToCustomMode
    , module Network.Google.Resource.Compute.Networks.SwitchToCustomMode

    -- ** compute.nodeGroups.addNodes
    , module Network.Google.Resource.Compute.NodeGroups.AddNodes

    -- ** compute.nodeGroups.aggregatedList
    , module Network.Google.Resource.Compute.NodeGroups.AggregatedList

    -- ** compute.nodeGroups.delete
    , module Network.Google.Resource.Compute.NodeGroups.Delete

    -- ** compute.nodeGroups.deleteNodes
    , module Network.Google.Resource.Compute.NodeGroups.DeleteNodes

    -- ** compute.nodeGroups.get
    , module Network.Google.Resource.Compute.NodeGroups.Get

    -- ** compute.nodeGroups.getIamPolicy
    , module Network.Google.Resource.Compute.NodeGroups.GetIAMPolicy

    -- ** compute.nodeGroups.insert
    , module Network.Google.Resource.Compute.NodeGroups.Insert

    -- ** compute.nodeGroups.list
    , module Network.Google.Resource.Compute.NodeGroups.List

    -- ** compute.nodeGroups.listNodes
    , module Network.Google.Resource.Compute.NodeGroups.ListNodes

    -- ** compute.nodeGroups.setIamPolicy
    , module Network.Google.Resource.Compute.NodeGroups.SetIAMPolicy

    -- ** compute.nodeGroups.setNodeTemplate
    , module Network.Google.Resource.Compute.NodeGroups.SetNodeTemplate

    -- ** compute.nodeGroups.testIamPermissions
    , module Network.Google.Resource.Compute.NodeGroups.TestIAMPermissions

    -- ** compute.nodeTemplates.aggregatedList
    , module Network.Google.Resource.Compute.NodeTemplates.AggregatedList

    -- ** compute.nodeTemplates.delete
    , module Network.Google.Resource.Compute.NodeTemplates.Delete

    -- ** compute.nodeTemplates.get
    , module Network.Google.Resource.Compute.NodeTemplates.Get

    -- ** compute.nodeTemplates.getIamPolicy
    , module Network.Google.Resource.Compute.NodeTemplates.GetIAMPolicy

    -- ** compute.nodeTemplates.insert
    , module Network.Google.Resource.Compute.NodeTemplates.Insert

    -- ** compute.nodeTemplates.list
    , module Network.Google.Resource.Compute.NodeTemplates.List

    -- ** compute.nodeTemplates.setIamPolicy
    , module Network.Google.Resource.Compute.NodeTemplates.SetIAMPolicy

    -- ** compute.nodeTemplates.testIamPermissions
    , module Network.Google.Resource.Compute.NodeTemplates.TestIAMPermissions

    -- ** compute.nodeTypes.aggregatedList
    , module Network.Google.Resource.Compute.NodeTypes.AggregatedList

    -- ** compute.nodeTypes.get
    , module Network.Google.Resource.Compute.NodeTypes.Get

    -- ** compute.nodeTypes.list
    , module Network.Google.Resource.Compute.NodeTypes.List

    -- ** compute.projects.disableXpnHost
    , module Network.Google.Resource.Compute.Projects.DisableXpnHost

    -- ** compute.projects.disableXpnResource
    , module Network.Google.Resource.Compute.Projects.DisableXpnResource

    -- ** compute.projects.enableXpnHost
    , module Network.Google.Resource.Compute.Projects.EnableXpnHost

    -- ** compute.projects.enableXpnResource
    , module Network.Google.Resource.Compute.Projects.EnableXpnResource

    -- ** compute.projects.get
    , module Network.Google.Resource.Compute.Projects.Get

    -- ** compute.projects.getXpnHost
    , module Network.Google.Resource.Compute.Projects.GetXpnHost

    -- ** compute.projects.getXpnResources
    , module Network.Google.Resource.Compute.Projects.GetXpnResources

    -- ** compute.projects.listXpnHosts
    , module Network.Google.Resource.Compute.Projects.ListXpnHosts

    -- ** compute.projects.moveDisk
    , module Network.Google.Resource.Compute.Projects.MoveDisk

    -- ** compute.projects.moveInstance
    , module Network.Google.Resource.Compute.Projects.MoveInstance

    -- ** compute.projects.setCommonInstanceMetadata
    , module Network.Google.Resource.Compute.Projects.SetCommonInstanceMetadata

    -- ** compute.projects.setDefaultNetworkTier
    , module Network.Google.Resource.Compute.Projects.SetDefaultNetworkTier

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

    -- ** compute.regionCommitments.aggregatedList
    , module Network.Google.Resource.Compute.RegionCommitments.AggregatedList

    -- ** compute.regionCommitments.get
    , module Network.Google.Resource.Compute.RegionCommitments.Get

    -- ** compute.regionCommitments.insert
    , module Network.Google.Resource.Compute.RegionCommitments.Insert

    -- ** compute.regionCommitments.list
    , module Network.Google.Resource.Compute.RegionCommitments.List

    -- ** compute.regionDiskTypes.get
    , module Network.Google.Resource.Compute.RegionDiskTypes.Get

    -- ** compute.regionDiskTypes.list
    , module Network.Google.Resource.Compute.RegionDiskTypes.List

    -- ** compute.regionDisks.createSnapshot
    , module Network.Google.Resource.Compute.RegionDisks.CreateSnapshot

    -- ** compute.regionDisks.delete
    , module Network.Google.Resource.Compute.RegionDisks.Delete

    -- ** compute.regionDisks.get
    , module Network.Google.Resource.Compute.RegionDisks.Get

    -- ** compute.regionDisks.insert
    , module Network.Google.Resource.Compute.RegionDisks.Insert

    -- ** compute.regionDisks.list
    , module Network.Google.Resource.Compute.RegionDisks.List

    -- ** compute.regionDisks.resize
    , module Network.Google.Resource.Compute.RegionDisks.Resize

    -- ** compute.regionDisks.setLabels
    , module Network.Google.Resource.Compute.RegionDisks.SetLabels

    -- ** compute.regionDisks.testIamPermissions
    , module Network.Google.Resource.Compute.RegionDisks.TestIAMPermissions

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

    -- ** compute.regionInstanceGroupManagers.patch
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.Patch

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

    -- ** compute.routers.getNatMappingInfo
    , module Network.Google.Resource.Compute.Routers.GetNATMAppingInfo

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

    -- ** compute.securityPolicies.addRule
    , module Network.Google.Resource.Compute.SecurityPolicies.AddRule

    -- ** compute.securityPolicies.delete
    , module Network.Google.Resource.Compute.SecurityPolicies.Delete

    -- ** compute.securityPolicies.get
    , module Network.Google.Resource.Compute.SecurityPolicies.Get

    -- ** compute.securityPolicies.getRule
    , module Network.Google.Resource.Compute.SecurityPolicies.GetRule

    -- ** compute.securityPolicies.insert
    , module Network.Google.Resource.Compute.SecurityPolicies.Insert

    -- ** compute.securityPolicies.list
    , module Network.Google.Resource.Compute.SecurityPolicies.List

    -- ** compute.securityPolicies.patch
    , module Network.Google.Resource.Compute.SecurityPolicies.Patch

    -- ** compute.securityPolicies.patchRule
    , module Network.Google.Resource.Compute.SecurityPolicies.PatchRule

    -- ** compute.securityPolicies.removeRule
    , module Network.Google.Resource.Compute.SecurityPolicies.RemoveRule

    -- ** compute.snapshots.delete
    , module Network.Google.Resource.Compute.Snapshots.Delete

    -- ** compute.snapshots.get
    , module Network.Google.Resource.Compute.Snapshots.Get

    -- ** compute.snapshots.getIamPolicy
    , module Network.Google.Resource.Compute.Snapshots.GetIAMPolicy

    -- ** compute.snapshots.list
    , module Network.Google.Resource.Compute.Snapshots.List

    -- ** compute.snapshots.setIamPolicy
    , module Network.Google.Resource.Compute.Snapshots.SetIAMPolicy

    -- ** compute.snapshots.setLabels
    , module Network.Google.Resource.Compute.Snapshots.SetLabels

    -- ** compute.snapshots.testIamPermissions
    , module Network.Google.Resource.Compute.Snapshots.TestIAMPermissions

    -- ** compute.sslCertificates.delete
    , module Network.Google.Resource.Compute.SSLCertificates.Delete

    -- ** compute.sslCertificates.get
    , module Network.Google.Resource.Compute.SSLCertificates.Get

    -- ** compute.sslCertificates.insert
    , module Network.Google.Resource.Compute.SSLCertificates.Insert

    -- ** compute.sslCertificates.list
    , module Network.Google.Resource.Compute.SSLCertificates.List

    -- ** compute.sslPolicies.delete
    , module Network.Google.Resource.Compute.SSLPolicies.Delete

    -- ** compute.sslPolicies.get
    , module Network.Google.Resource.Compute.SSLPolicies.Get

    -- ** compute.sslPolicies.insert
    , module Network.Google.Resource.Compute.SSLPolicies.Insert

    -- ** compute.sslPolicies.list
    , module Network.Google.Resource.Compute.SSLPolicies.List

    -- ** compute.sslPolicies.listAvailableFeatures
    , module Network.Google.Resource.Compute.SSLPolicies.ListAvailableFeatures

    -- ** compute.sslPolicies.patch
    , module Network.Google.Resource.Compute.SSLPolicies.Patch

    -- ** compute.subnetworks.aggregatedList
    , module Network.Google.Resource.Compute.Subnetworks.AggregatedList

    -- ** compute.subnetworks.delete
    , module Network.Google.Resource.Compute.Subnetworks.Delete

    -- ** compute.subnetworks.expandIpCidrRange
    , module Network.Google.Resource.Compute.Subnetworks.ExpandIPCIdRRange

    -- ** compute.subnetworks.get
    , module Network.Google.Resource.Compute.Subnetworks.Get

    -- ** compute.subnetworks.getIamPolicy
    , module Network.Google.Resource.Compute.Subnetworks.GetIAMPolicy

    -- ** compute.subnetworks.insert
    , module Network.Google.Resource.Compute.Subnetworks.Insert

    -- ** compute.subnetworks.list
    , module Network.Google.Resource.Compute.Subnetworks.List

    -- ** compute.subnetworks.listUsable
    , module Network.Google.Resource.Compute.Subnetworks.ListUsable

    -- ** compute.subnetworks.patch
    , module Network.Google.Resource.Compute.Subnetworks.Patch

    -- ** compute.subnetworks.setIamPolicy
    , module Network.Google.Resource.Compute.Subnetworks.SetIAMPolicy

    -- ** compute.subnetworks.setPrivateIpGoogleAccess
    , module Network.Google.Resource.Compute.Subnetworks.SetPrivateIPGoogleAccess

    -- ** compute.subnetworks.testIamPermissions
    , module Network.Google.Resource.Compute.Subnetworks.TestIAMPermissions

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

    -- ** compute.targetHttpsProxies.setQuicOverride
    , module Network.Google.Resource.Compute.TargetHTTPSProxies.SetQuicOverride

    -- ** compute.targetHttpsProxies.setSslCertificates
    , module Network.Google.Resource.Compute.TargetHTTPSProxies.SetSSLCertificates

    -- ** compute.targetHttpsProxies.setSslPolicy
    , module Network.Google.Resource.Compute.TargetHTTPSProxies.SetSSLPolicy

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

    -- ** compute.targetSslProxies.setSslPolicy
    , module Network.Google.Resource.Compute.TargetSSLProxies.SetSSLPolicy

    -- ** compute.targetTcpProxies.delete
    , module Network.Google.Resource.Compute.TargetTCPProxies.Delete

    -- ** compute.targetTcpProxies.get
    , module Network.Google.Resource.Compute.TargetTCPProxies.Get

    -- ** compute.targetTcpProxies.insert
    , module Network.Google.Resource.Compute.TargetTCPProxies.Insert

    -- ** compute.targetTcpProxies.list
    , module Network.Google.Resource.Compute.TargetTCPProxies.List

    -- ** compute.targetTcpProxies.setBackendService
    , module Network.Google.Resource.Compute.TargetTCPProxies.SetBackendService

    -- ** compute.targetTcpProxies.setProxyHeader
    , module Network.Google.Resource.Compute.TargetTCPProxies.SetProxyHeader

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

    -- ** HTTPSHealthCheckListWarningCode
    , HTTPSHealthCheckListWarningCode (..)

    -- ** InstanceAggregatedListWarning
    , InstanceAggregatedListWarning
    , instanceAggregatedListWarning
    , ialwData
    , ialwCode
    , ialwMessage

    -- ** TargetHTTPSProxyList
    , TargetHTTPSProxyList
    , targetHTTPSProxyList
    , thplNextPageToken
    , thplKind
    , thplItems
    , thplSelfLink
    , thplWarning
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

    -- ** InterconnectDiagnosticsLinkLACPStatus
    , InterconnectDiagnosticsLinkLACPStatus
    , interconnectDiagnosticsLinkLACPStatus
    , idllacpsState
    , idllacpsNeighborSystemId
    , idllacpsGoogleSystemId

    -- ** InterconnectAttachmentState
    , InterconnectAttachmentState (..)

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

    -- ** InstanceGroupManagerUpdatePolicy
    , InstanceGroupManagerUpdatePolicy
    , instanceGroupManagerUpdatePolicy
    , igmupMaxSurge
    , igmupMaxUnavailable
    , igmupMinimalAction
    , igmupType

    -- ** RegionInstanceGroupsListInstancesRequest
    , RegionInstanceGroupsListInstancesRequest
    , regionInstanceGroupsListInstancesRequest
    , riglirInstanceState
    , riglirPortName

    -- ** BackendServiceAggregatedListWarning
    , BackendServiceAggregatedListWarning
    , backendServiceAggregatedListWarning
    , bsalwData
    , bsalwCode
    , bsalwMessage

    -- ** SSLPolicy
    , SSLPolicy
    , sslPolicy
    , spKind
    , spFingerprint
    , spProFile
    , spWarnings
    , spCustomFeatures
    , spSelfLink
    , spName
    , spCreationTimestamp
    , spEnabledFeatures
    , spId
    , spMinTLSVersion
    , spDescription

    -- ** AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType
    , AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType (..)

    -- ** BackendServiceListWarningDataItem
    , BackendServiceListWarningDataItem
    , backendServiceListWarningDataItem
    , bslwdiValue
    , bslwdiKey

    -- ** FirewallDeniedItem
    , FirewallDeniedItem
    , firewallDeniedItem
    , fdiIPProtocol
    , fdiPorts

    -- ** InstanceGroupManagersAbandonInstancesRequest
    , InstanceGroupManagersAbandonInstancesRequest
    , instanceGroupManagersAbandonInstancesRequest
    , igmairInstances

    -- ** MachineTypeAggregatedListItems
    , MachineTypeAggregatedListItems
    , machineTypeAggregatedListItems
    , mtaliAddtional

    -- ** BackendServiceListWarningCode
    , BackendServiceListWarningCode (..)

    -- ** DiskTypeAggregatedListItems
    , DiskTypeAggregatedListItems
    , diskTypeAggregatedListItems
    , dtaliAddtional

    -- ** InstancesSetLabelsRequest
    , InstancesSetLabelsRequest
    , instancesSetLabelsRequest
    , islrLabels
    , islrLabelFingerprint

    -- ** RouterAggregatedList
    , RouterAggregatedList
    , routerAggregatedList
    , ralNextPageToken
    , ralKind
    , ralItems
    , ralSelfLink
    , ralWarning
    , ralId

    -- ** FirewallList
    , FirewallList
    , firewallList
    , flNextPageToken
    , flKind
    , flItems
    , flSelfLink
    , flWarning
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

    -- ** InstanceLabels
    , InstanceLabels
    , instanceLabels
    , ilAddtional

    -- ** InstanceListWarningCode
    , InstanceListWarningCode (..)

    -- ** TargetHTTPSProxyQuicOverride
    , TargetHTTPSProxyQuicOverride (..)

    -- ** BackendServicesScopedListWarning
    , BackendServicesScopedListWarning
    , backendServicesScopedListWarning
    , bsslwData
    , bsslwCode
    , bsslwMessage

    -- ** SecurityPolicyRuleMatcher
    , SecurityPolicyRuleMatcher
    , securityPolicyRuleMatcher
    , sprmVersionedExpr
    , sprmConfig

    -- ** InstanceGroupList
    , InstanceGroupList
    , instanceGroupList
    , iglNextPageToken
    , iglKind
    , iglItems
    , iglSelfLink
    , iglWarning
    , iglId

    -- ** InstancesSetMachineTypeRequest
    , InstancesSetMachineTypeRequest
    , instancesSetMachineTypeRequest
    , ismtrMachineType

    -- ** VMEndpointNATMAppings
    , VMEndpointNATMAppings
    , vMEndpointNATMAppings
    , vmenatmaInstanceName
    , vmenatmaInterfaceNATMAppings

    -- ** CustomerEncryptionKey
    , CustomerEncryptionKey
    , customerEncryptionKey
    , cekKmsKeyName
    , cekSha256
    , cekRawKey

    -- ** AutoscalerAggregatedListItems
    , AutoscalerAggregatedListItems
    , autoscalerAggregatedListItems
    , aaliAddtional

    -- ** InstanceListWarningDataItem
    , InstanceListWarningDataItem
    , instanceListWarningDataItem
    , ilwdiValue
    , ilwdiKey

    -- ** InstanceGroupManagersSetInstanceTemplateRequest
    , InstanceGroupManagersSetInstanceTemplateRequest
    , instanceGroupManagersSetInstanceTemplateRequest
    , igmsitrInstanceTemplate

    -- ** RouterNATNATIPAllocateOption
    , RouterNATNATIPAllocateOption (..)

    -- ** DeprecationStatus
    , DeprecationStatus
    , deprecationStatus
    , dsState
    , dsDeleted
    , dsReplacement
    , dsObsolete
    , dsDeprecated

    -- ** HTTPSHealthCheckListWarningDataItem
    , HTTPSHealthCheckListWarningDataItem
    , httpsHealthCheckListWarningDataItem
    , hhclwdiValue
    , hhclwdiKey

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
    , sLicenseCodes
    , sId
    , sLabels
    , sLicenses
    , sSourceDisk
    , sLabelFingerprint
    , sDescription

    -- ** RouterStatus
    , RouterStatus
    , routerStatus
    , rsBestRoutesForRouter
    , rsBGPPeerStatus
    , rsNetwork
    , rsNATStatus
    , rsBestRoutes

    -- ** AutoscalingPolicyCustomMetricUtilization
    , AutoscalingPolicyCustomMetricUtilization
    , autoscalingPolicyCustomMetricUtilization
    , apcmuUtilizationTarget
    , apcmuMetric
    , apcmuUtilizationTargetType

    -- ** NodeGroupAggregatedListWarningCode
    , NodeGroupAggregatedListWarningCode (..)

    -- ** ForwardingRuleList
    , ForwardingRuleList
    , forwardingRuleList
    , frlNextPageToken
    , frlKind
    , frlItems
    , frlSelfLink
    , frlWarning
    , frlId

    -- ** NodeGroup
    , NodeGroup
    , nodeGroup
    , ngStatus
    , ngSize
    , ngKind
    , ngZone
    , ngSelfLink
    , ngName
    , ngCreationTimestamp
    , ngId
    , ngNodeTemplate
    , ngDescription

    -- ** VPNTunnelsScopedList
    , VPNTunnelsScopedList
    , vpnTunnelsScopedList
    , vtslVPNTunnels
    , vtslWarning

    -- ** SubnetworkSecondaryRange
    , SubnetworkSecondaryRange
    , subnetworkSecondaryRange
    , ssrRangeName
    , ssrIPCIdRRange

    -- ** NodeTypesScopedList
    , NodeTypesScopedList
    , nodeTypesScopedList
    , ntslNodeTypes
    , ntslWarning

    -- ** BackendServiceProtocol
    , BackendServiceProtocol (..)

    -- ** RegionInstanceGroupsListInstancesWarning
    , RegionInstanceGroupsListInstancesWarning
    , regionInstanceGroupsListInstancesWarning
    , rigliwData
    , rigliwCode
    , rigliwMessage

    -- ** AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs
    , acExemptedMembers

    -- ** BackendBucketListWarningCode
    , BackendBucketListWarningCode (..)

    -- ** AcceleratorTypeAggregatedListWarningDataItem
    , AcceleratorTypeAggregatedListWarningDataItem
    , acceleratorTypeAggregatedListWarningDataItem
    , atalwdiValue
    , atalwdiKey

    -- ** InstanceGroupsSetNamedPortsRequest
    , InstanceGroupsSetNamedPortsRequest
    , instanceGroupsSetNamedPortsRequest
    , igsnprFingerprint
    , igsnprNamedPorts

    -- ** AcceleratorTypesScopedListWarningCode
    , AcceleratorTypesScopedListWarningCode (..)

    -- ** NodeTemplateNodeAffinityLabels
    , NodeTemplateNodeAffinityLabels
    , nodeTemplateNodeAffinityLabels
    , ntnalAddtional

    -- ** OperationList
    , OperationList
    , operationList
    , olNextPageToken
    , olKind
    , olItems
    , olSelfLink
    , olWarning
    , olId

    -- ** NodeGroupListWarning
    , NodeGroupListWarning
    , nodeGroupListWarning
    , nglwData
    , nglwCode
    , nglwMessage

    -- ** DiskList
    , DiskList
    , diskList
    , dlNextPageToken
    , dlKind
    , dlItems
    , dlSelfLink
    , dlWarning
    , dlId

    -- ** NodeGroupsScopedListWarningCode
    , NodeGroupsScopedListWarningCode (..)

    -- ** TargetPoolsAddInstanceRequest
    , TargetPoolsAddInstanceRequest
    , targetPoolsAddInstanceRequest
    , tpairInstances

    -- ** NodeGroupsDeleteNodesRequest
    , NodeGroupsDeleteNodesRequest
    , nodeGroupsDeleteNodesRequest
    , ngdnrNodes

    -- ** RegionAutoscalerList
    , RegionAutoscalerList
    , regionAutoscalerList
    , rNextPageToken
    , rKind
    , rItems
    , rSelfLink
    , rWarning
    , rId

    -- ** HealthCheckListWarningDataItem
    , HealthCheckListWarningDataItem
    , healthCheckListWarningDataItem
    , hclwdiValue
    , hclwdiKey

    -- ** NodeGroupAggregatedListWarningDataItem
    , NodeGroupAggregatedListWarningDataItem
    , nodeGroupAggregatedListWarningDataItem
    , ngalwdiValue
    , ngalwdiKey

    -- ** InstanceGroupsAddInstancesRequest
    , InstanceGroupsAddInstancesRequest
    , instanceGroupsAddInstancesRequest
    , igairInstances

    -- ** NodeGroupNode
    , NodeGroupNode
    , nodeGroupNode
    , ngnStatus
    , ngnName
    , ngnInstances
    , ngnNodeType

    -- ** TargetTCPProxiesSetProxyHeaderRequestProxyHeader
    , TargetTCPProxiesSetProxyHeaderRequestProxyHeader (..)

    -- ** InstanceGroupManagerList
    , InstanceGroupManagerList
    , instanceGroupManagerList
    , igmlNextPageToken
    , igmlKind
    , igmlItems
    , igmlSelfLink
    , igmlWarning
    , igmlId

    -- ** InstanceGroupManagerVersion
    , InstanceGroupManagerVersion
    , instanceGroupManagerVersion
    , igmvInstanceTemplate
    , igmvTargetSize
    , igmvName

    -- ** SubnetworksScopedListWarning
    , SubnetworksScopedListWarning
    , subnetworksScopedListWarning
    , sslwData
    , sslwCode
    , sslwMessage

    -- ** NodeGroupsSetNodeTemplateRequest
    , NodeGroupsSetNodeTemplateRequest
    , nodeGroupsSetNodeTemplateRequest
    , ngsntrNodeTemplate

    -- ** AcceleratorTypeListWarning
    , AcceleratorTypeListWarning
    , acceleratorTypeListWarning
    , atlwData
    , atlwCode
    , atlwMessage

    -- ** AttachedDiskType
    , AttachedDiskType (..)

    -- ** Image
    , Image
    , image
    , iStatus
    , iSourceSnapshotId
    , iImageEncryptionKey
    , iSourceImage
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
    , iSourceImageId
    , iCreationTimestamp
    , iSourceImageEncryptionKey
    , iLicenseCodes
    , iId
    , iLabels
    , iLicenses
    , iSourceDisk
    , iLabelFingerprint
    , iDescription
    , iSourceSnapshotEncryptionKey
    , iDeprecated
    , iSourceSnapshot

    -- ** RouterBGPPeerManagementType
    , RouterBGPPeerManagementType (..)

    -- ** RouterNATSubnetworkToNATSourceIPRangesToNATItem
    , RouterNATSubnetworkToNATSourceIPRangesToNATItem (..)

    -- ** AcceleratorTypeAggregatedListWarningCode
    , AcceleratorTypeAggregatedListWarningCode (..)

    -- ** NetworksAddPeeringRequest
    , NetworksAddPeeringRequest
    , networksAddPeeringRequest
    , naprPeerNetwork
    , naprName
    , naprAutoCreateRoutes

    -- ** NodeTemplatesScopedList
    , NodeTemplatesScopedList
    , nodeTemplatesScopedList
    , nNodeTemplates
    , nWarning

    -- ** URLMapListWarning
    , URLMapListWarning
    , urlMapListWarning
    , umlwData
    , umlwCode
    , umlwMessage

    -- ** NodeGroupsScopedListWarningDataItem
    , NodeGroupsScopedListWarningDataItem
    , nodeGroupsScopedListWarningDataItem
    , ngslwdiValue
    , ngslwdiKey

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

    -- ** ImageListWarning
    , ImageListWarning
    , imageListWarning
    , ilwData
    , ilwCode
    , ilwMessage

    -- ** HealthCheckListWarningCode
    , HealthCheckListWarningCode (..)

    -- ** Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- ** SSLPolicyReference
    , SSLPolicyReference
    , sslPolicyReference
    , sprSSLPolicy

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
    , tplWarning
    , tplId

    -- ** SSLPolicyProFile
    , SSLPolicyProFile (..)

    -- ** AcceleratorType
    , AcceleratorType
    , acceleratorType
    , atKind
    , atZone
    , atMaximumCardsPerInstance
    , atSelfLink
    , atName
    , atCreationTimestamp
    , atId
    , atDescription
    , atDeprecated

    -- ** BackendBucketListWarningDataItem
    , BackendBucketListWarningDataItem
    , backendBucketListWarningDataItem
    , bblwdiValue
    , bblwdiKey

    -- ** AcceleratorTypesScopedListWarningDataItem
    , AcceleratorTypesScopedListWarningDataItem
    , acceleratorTypesScopedListWarningDataItem
    , atslwdiValue
    , atslwdiKey

    -- ** InterconnectOutageNotificationSource
    , InterconnectOutageNotificationSource (..)

    -- ** RegionDiskTypeList
    , RegionDiskTypeList
    , regionDiskTypeList
    , rdtlNextPageToken
    , rdtlKind
    , rdtlItems
    , rdtlSelfLink
    , rdtlWarning
    , rdtlId

    -- ** TargetInstanceAggregatedList
    , TargetInstanceAggregatedList
    , targetInstanceAggregatedList
    , tialNextPageToken
    , tialKind
    , tialItems
    , tialSelfLink
    , tialWarning
    , tialId

    -- ** NodeGroupsListNodesWarningDataItem
    , NodeGroupsListNodesWarningDataItem
    , nodeGroupsListNodesWarningDataItem
    , nglnwdiValue
    , nglnwdiKey

    -- ** UsableSubnetworksAggregatedList
    , UsableSubnetworksAggregatedList
    , usableSubnetworksAggregatedList
    , usalNextPageToken
    , usalKind
    , usalItems
    , usalSelfLink
    , usalWarning
    , usalId

    -- ** InterconnectLinkType
    , InterconnectLinkType (..)

    -- ** DisksScopedList
    , DisksScopedList
    , disksScopedList
    , dslWarning
    , dslDisks

    -- ** InterconnectLocationListWarningDataItem
    , InterconnectLocationListWarningDataItem
    , interconnectLocationListWarningDataItem
    , illwdiValue
    , illwdiKey

    -- ** InstanceGroupManagersScopedList
    , InstanceGroupManagersScopedList
    , instanceGroupManagersScopedList
    , igmslWarning
    , igmslInstanceGroupManagers

    -- ** SubnetworkListWarning
    , SubnetworkListWarning
    , subnetworkListWarning
    , slwData
    , slwCode
    , slwMessage

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

    -- ** HTTPHealthCheckListWarning
    , HTTPHealthCheckListWarning
    , hTTPHealthCheckListWarning
    , httphclwData
    , httphclwCode
    , httphclwMessage

    -- ** SSLPoliciesListWarning
    , SSLPoliciesListWarning
    , sslPoliciesListWarning
    , splwData
    , splwCode
    , splwMessage

    -- ** CommitmentAggregatedListItems
    , CommitmentAggregatedListItems
    , commitmentAggregatedListItems
    , caliAddtional

    -- ** DiskAggregatedList
    , DiskAggregatedList
    , diskAggregatedList
    , dalNextPageToken
    , dalKind
    , dalItems
    , dalSelfLink
    , dalWarning
    , dalId

    -- ** InstanceGroupsListInstancesWarningDataItem
    , InstanceGroupsListInstancesWarningDataItem
    , instanceGroupsListInstancesWarningDataItem
    , igliwdiValue
    , igliwdiKey

    -- ** InstanceWithNamedPorts
    , InstanceWithNamedPorts
    , instanceWithNamedPorts
    , iwnpStatus
    , iwnpNamedPorts
    , iwnpInstance

    -- ** InterconnectListWarning
    , InterconnectListWarning
    , interconnectListWarning
    , iData
    , iCode
    , iMessage

    -- ** ForwardingRulesScopedList
    , ForwardingRulesScopedList
    , forwardingRulesScopedList
    , frslWarning
    , frslForwardingRules

    -- ** RouterBGPAdvertiseMode
    , RouterBGPAdvertiseMode (..)

    -- ** NodeGroupsListNodesWarningCode
    , NodeGroupsListNodesWarningCode (..)

    -- ** InstanceReference
    , InstanceReference
    , instanceReference
    , iInstance

    -- ** InterconnectDiagnosticsLinkOpticalPowerState
    , InterconnectDiagnosticsLinkOpticalPowerState (..)

    -- ** OperationAggregatedList
    , OperationAggregatedList
    , operationAggregatedList
    , oalNextPageToken
    , oalKind
    , oalItems
    , oalSelfLink
    , oalWarning
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

    -- ** InterconnectLocationListWarningCode
    , InterconnectLocationListWarningCode (..)

    -- ** InstanceGroupsListInstancesWarningCode
    , InstanceGroupsListInstancesWarningCode (..)

    -- ** RegionInstanceGroupsListInstancesRequestInstanceState
    , RegionInstanceGroupsListInstancesRequestInstanceState (..)

    -- ** SubnetworkAggregatedListWarningDataItem
    , SubnetworkAggregatedListWarningDataItem
    , subnetworkAggregatedListWarningDataItem
    , salwdiValue
    , salwdiKey

    -- ** ProjectXpnProjectStatus
    , ProjectXpnProjectStatus (..)

    -- ** InterconnectDiagnosticsLinkStatus
    , InterconnectDiagnosticsLinkStatus
    , interconnectDiagnosticsLinkStatus
    , idlsLacpStatus
    , idlsReceivingOpticalPower
    , idlsGoogleDemarc
    , idlsCircuitId
    , idlsArpCaches
    , idlsTransmittingOpticalPower

    -- ** TargetInstanceList
    , TargetInstanceList
    , targetInstanceList
    , tilNextPageToken
    , tilKind
    , tilItems
    , tilSelfLink
    , tilWarning
    , tilId

    -- ** TargetTCPProxyListWarning
    , TargetTCPProxyListWarning
    , targetTCPProxyListWarning
    , ttplwData
    , ttplwCode
    , ttplwMessage

    -- ** InstanceGroupManagerAggregatedList
    , InstanceGroupManagerAggregatedList
    , instanceGroupManagerAggregatedList
    , igmalNextPageToken
    , igmalKind
    , igmalItems
    , igmalSelfLink
    , igmalWarning
    , igmalId

    -- ** BackendBucket
    , BackendBucket
    , backendBucket
    , bbKind
    , bbEnableCdn
    , bbBucketName
    , bbCdnPolicy
    , bbSelfLink
    , bbName
    , bbCreationTimestamp
    , bbId
    , bbDescription

    -- ** AccessConfigNetworkTier
    , AccessConfigNetworkTier (..)

    -- ** ProjectsEnableXpnResourceRequest
    , ProjectsEnableXpnResourceRequest
    , projectsEnableXpnResourceRequest
    , pexrrXpnResource

    -- ** ConditionSys
    , ConditionSys (..)

    -- ** ImageSourceType
    , ImageSourceType (..)

    -- ** TargetPoolsScopedList
    , TargetPoolsScopedList
    , targetPoolsScopedList
    , tpslWarning
    , tpslTargetPools

    -- ** InterconnectAttachmentAggregatedListItems
    , InterconnectAttachmentAggregatedListItems
    , interconnectAttachmentAggregatedListItems
    , iaaliAddtional

    -- ** InstanceGroupManagerAutoHealingPolicy
    , InstanceGroupManagerAutoHealingPolicy
    , instanceGroupManagerAutoHealingPolicy
    , igmahpHealthCheck
    , igmahpInitialDelaySec

    -- ** LogConfigCounterOptions
    , LogConfigCounterOptions
    , logConfigCounterOptions
    , lccoField
    , lccoMetric

    -- ** SubnetworkAggregatedListWarningCode
    , SubnetworkAggregatedListWarningCode (..)

    -- ** InstancesSetMinCPUPlatformRequest
    , InstancesSetMinCPUPlatformRequest
    , instancesSetMinCPUPlatformRequest
    , ismcprMinCPUPlatform

    -- ** ForwardingRuleAggregatedList
    , ForwardingRuleAggregatedList
    , forwardingRuleAggregatedList
    , fralNextPageToken
    , fralKind
    , fralItems
    , fralSelfLink
    , fralWarning
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
    , tpalWarning
    , tpalId

    -- ** OperationsScopedListWarningDataItem
    , OperationsScopedListWarningDataItem
    , operationsScopedListWarningDataItem
    , oslwdiValue
    , oslwdiKey

    -- ** BackendServiceSessionAffinity
    , BackendServiceSessionAffinity (..)

    -- ** GlobalSetLabelsRequest
    , GlobalSetLabelsRequest
    , globalSetLabelsRequest
    , gslrLabels
    , gslrLabelFingerprint

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
    , ilWarning
    , ilId

    -- ** OperationAggregatedListWarningDataItem
    , OperationAggregatedListWarningDataItem
    , operationAggregatedListWarningDataItem
    , oalwdiValue
    , oalwdiKey

    -- ** ForwardingRuleListWarning
    , ForwardingRuleListWarning
    , forwardingRuleListWarning
    , frlwData
    , frlwCode
    , frlwMessage

    -- ** VPNTunnelsScopedListWarning
    , VPNTunnelsScopedListWarning
    , vpnTunnelsScopedListWarning
    , vtslwData
    , vtslwCode
    , vtslwMessage

    -- ** RegionDisksResizeRequest
    , RegionDisksResizeRequest
    , regionDisksResizeRequest
    , rdrrSizeGb

    -- ** NodeTypesScopedListWarning
    , NodeTypesScopedListWarning
    , nodeTypesScopedListWarning
    , ntslwData
    , ntslwCode
    , ntslwMessage

    -- ** NodeTemplateNodeTypeFlexibility
    , NodeTemplateNodeTypeFlexibility
    , nodeTemplateNodeTypeFlexibility
    , ntntfMemory
    , ntntfCPUs
    , ntntfLocalSsd

    -- ** ForwardingRulesScopedListWarningCode
    , ForwardingRulesScopedListWarningCode (..)

    -- ** LicenseResourceRequirements
    , LicenseResourceRequirements
    , licenseResourceRequirements
    , lrrMinMemoryMb
    , lrrMinGuestCPUCount

    -- ** RegionDiskTypeListWarning
    , RegionDiskTypeListWarning
    , regionDiskTypeListWarning
    , rdtlwData
    , rdtlwCode
    , rdtlwMessage

    -- ** OperationsScopedListWarningCode
    , OperationsScopedListWarningCode (..)

    -- ** OperationAggregatedListWarningCode
    , OperationAggregatedListWarningCode (..)

    -- ** TargetSSLProxiesSetBackendServiceRequest
    , TargetSSLProxiesSetBackendServiceRequest
    , targetSSLProxiesSetBackendServiceRequest
    , tspsbsrService

    -- ** ForwardingRule
    , ForwardingRule
    , forwardingRule
    , frNetworkTier
    , frIPAddress
    , frLoadBalancingScheme
    , frKind
    , frIPVersion
    , frNetwork
    , frPortRange
    , frSelfLink
    , frName
    , frIPProtocol
    , frCreationTimestamp
    , frServiceName
    , frSubnetwork
    , frPorts
    , frId
    , frRegion
    , frServiceLabel
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
    , umlWarning
    , umlId

    -- ** ForwardingRulesScopedListWarningDataItem
    , ForwardingRulesScopedListWarningDataItem
    , forwardingRulesScopedListWarningDataItem
    , frslwdiValue
    , frslwdiKey

    -- ** TargetInstanceAggregatedListWarning
    , TargetInstanceAggregatedListWarning
    , targetInstanceAggregatedListWarning
    , tialwData
    , tialwCode
    , tialwMessage

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

    -- ** DiskAggregatedListWarningCode
    , DiskAggregatedListWarningCode (..)

    -- ** AcceleratorTypeList
    , AcceleratorTypeList
    , acceleratorTypeList
    , atlNextPageToken
    , atlKind
    , atlItems
    , atlSelfLink
    , atlWarning
    , atlId

    -- ** DiskAggregatedListWarningDataItem
    , DiskAggregatedListWarningDataItem
    , diskAggregatedListWarningDataItem
    , dalwdiValue
    , dalwdiKey

    -- ** TargetPoolListWarning
    , TargetPoolListWarning
    , targetPoolListWarning
    , tplwData
    , tplwCode
    , tplwMessage

    -- ** UsableSubnetworksAggregatedListWarningCode
    , UsableSubnetworksAggregatedListWarningCode (..)

    -- ** NodeTemplatesScopedListWarning
    , NodeTemplatesScopedListWarning
    , nodeTemplatesScopedListWarning
    , nData
    , nCode
    , nMessage

    -- ** TargetPoolAggregatedListWarningDataItem
    , TargetPoolAggregatedListWarningDataItem
    , targetPoolAggregatedListWarningDataItem
    , tpalwdiValue
    , tpalwdiKey

    -- ** DisksScopedListWarningCode
    , DisksScopedListWarningCode (..)

    -- ** Project
    , Project
    , project
    , pXpnProjectStatus
    , pKind
    , pUsageExportLocation
    , pSelfLink
    , pName
    , pDefaultServiceAccount
    , pDefaultNetworkTier
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
    , dReplicaZones
    , dDiskEncryptionKey
    , dSizeGb
    , dKind
    , dLastDetachTimestamp
    , dGuestOSFeatures
    , dZone
    , dSelfLink
    , dName
    , dSourceImageId
    , dCreationTimestamp
    , dSourceImageEncryptionKey
    , dLicenseCodes
    , dId
    , dLabels
    , dLicenses
    , dRegion
    , dOptions
    , dPhysicalBlockSizeBytes
    , dType
    , dLabelFingerprint
    , dDescription
    , dSourceSnapshotEncryptionKey
    , dSourceSnapshot

    -- ** UsableSubnetworksAggregatedListWarningDataItem
    , UsableSubnetworksAggregatedListWarningDataItem
    , usableSubnetworksAggregatedListWarningDataItem
    , usalwdiValue
    , usalwdiKey

    -- ** NodeGroupList
    , NodeGroupList
    , nodeGroupList
    , nglNextPageToken
    , nglKind
    , nglItems
    , nglSelfLink
    , nglWarning
    , nglId

    -- ** SSLPolicyWarningsItemCode
    , SSLPolicyWarningsItemCode (..)

    -- ** DiskMoveRequest
    , DiskMoveRequest
    , diskMoveRequest
    , dmrTargetDisk
    , dmrDestinationZone

    -- ** ForwardingRuleAggregatedListWarningCode
    , ForwardingRuleAggregatedListWarningCode (..)

    -- ** SSLPolicyWarningsItemDataItem
    , SSLPolicyWarningsItemDataItem
    , sslPolicyWarningsItemDataItem
    , spwidiValue
    , spwidiKey

    -- ** AutoscalingPolicyLoadBalancingUtilization
    , AutoscalingPolicyLoadBalancingUtilization
    , autoscalingPolicyLoadBalancingUtilization
    , aplbuUtilizationTarget

    -- ** TargetPoolAggregatedListWarningCode
    , TargetPoolAggregatedListWarningCode (..)

    -- ** ForwardingRuleAggregatedListWarningDataItem
    , ForwardingRuleAggregatedListWarningDataItem
    , forwardingRuleAggregatedListWarningDataItem
    , fralwdiValue
    , fralwdiKey

    -- ** TargetPoolsScopedListWarningDataItem
    , TargetPoolsScopedListWarningDataItem
    , targetPoolsScopedListWarningDataItem
    , tpslwdiValue
    , tpslwdiKey

    -- ** InstanceGroupManager
    , InstanceGroupManager
    , instanceGroupManager
    , igmStatus
    , igmKind
    , igmFingerprint
    , igmBaseInstanceName
    , igmZone
    , igmAutoHealingPolicies
    , igmVersions
    , igmInstanceTemplate
    , igmUpdatePolicy
    , igmTargetSize
    , igmSelfLink
    , igmCurrentActions
    , igmName
    , igmCreationTimestamp
    , igmDistributionPolicy
    , igmId
    , igmRegion
    , igmTargetPools
    , igmDescription
    , igmInstanceGroup
    , igmNamedPorts

    -- ** InstanceGroupManagerListWarning
    , InstanceGroupManagerListWarning
    , instanceGroupManagerListWarning
    , igmlwData
    , igmlwCode
    , igmlwMessage

    -- ** RegionInstanceGroupsListInstances
    , RegionInstanceGroupsListInstances
    , regionInstanceGroupsListInstances
    , rigliNextPageToken
    , rigliKind
    , rigliItems
    , rigliSelfLink
    , rigliWarning
    , rigliId

    -- ** DiskListWarning
    , DiskListWarning
    , diskListWarning
    , dlwData
    , dlwCode
    , dlwMessage

    -- ** TCPHealthCheck
    , TCPHealthCheck
    , tcpHealthCheck
    , thcResponse
    , thcProxyHeader
    , thcPortName
    , thcPort
    , thcRequest

    -- ** InstanceGroupManagerAggregatedListWarningDataItem
    , InstanceGroupManagerAggregatedListWarningDataItem
    , instanceGroupManagerAggregatedListWarningDataItem
    , igmalwdiValue
    , igmalwdiKey

    -- ** TestPermissionsResponse
    , TestPermissionsResponse
    , testPermissionsResponse
    , tprPermissions

    -- ** TargetPoolsScopedListWarningCode
    , TargetPoolsScopedListWarningCode (..)

    -- ** RegionAutoscalerListWarning
    , RegionAutoscalerListWarning
    , regionAutoscalerListWarning
    , ralwData
    , ralwCode
    , ralwMessage

    -- ** TargetInstanceListWarningCode
    , TargetInstanceListWarningCode (..)

    -- ** InterconnectLocationRegionInfoLocationPresence
    , InterconnectLocationRegionInfoLocationPresence (..)

    -- ** SSLHealthCheckProxyHeader
    , SSLHealthCheckProxyHeader (..)

    -- ** TargetVPNGatewayStatus
    , TargetVPNGatewayStatus (..)

    -- ** TargetInstanceListWarningDataItem
    , TargetInstanceListWarningDataItem
    , targetInstanceListWarningDataItem
    , tilwdiValue
    , tilwdiKey

    -- ** InstanceGroupManagerAggregatedListWarningCode
    , InstanceGroupManagerAggregatedListWarningCode (..)

    -- ** OperationListWarning
    , OperationListWarning
    , operationListWarning
    , olwData
    , olwCode
    , olwMessage

    -- ** InstanceGroupsRemoveInstancesRequest
    , InstanceGroupsRemoveInstancesRequest
    , instanceGroupsRemoveInstancesRequest
    , igrirInstances

    -- ** InterconnectAttachmentPartnerMetadata
    , InterconnectAttachmentPartnerMetadata
    , interconnectAttachmentPartnerMetadata
    , iapmPortalURL
    , iapmInterconnectName
    , iapmPartnerName

    -- ** SnapshotStatus
    , SnapshotStatus (..)

    -- ** SecurityPolicyRuleMatcherVersionedExpr
    , SecurityPolicyRuleMatcherVersionedExpr (..)

    -- ** MachineTypeListWarningDataItem
    , MachineTypeListWarningDataItem
    , machineTypeListWarningDataItem
    , mtlwdiValue
    , mtlwdiKey

    -- ** NetworksRemovePeeringRequest
    , NetworksRemovePeeringRequest
    , networksRemovePeeringRequest
    , nrprName

    -- ** TargetHTTPProxyListWarningDataItem
    , TargetHTTPProxyListWarningDataItem
    , targetHTTPProxyListWarningDataItem
    , thttpplwdiValue
    , thttpplwdiKey

    -- ** MachineTypeAggregatedListWarning
    , MachineTypeAggregatedListWarning
    , machineTypeAggregatedListWarning
    , mtalwData
    , mtalwCode
    , mtalwMessage

    -- ** AutoscalerListWarningCode
    , AutoscalerListWarningCode (..)

    -- ** NodeTemplateAggregatedListWarningDataItem
    , NodeTemplateAggregatedListWarningDataItem
    , nodeTemplateAggregatedListWarningDataItem
    , ntalwdiValue
    , ntalwdiKey

    -- ** BackendBucketList
    , BackendBucketList
    , backendBucketList
    , bblNextPageToken
    , bblKind
    , bblItems
    , bblSelfLink
    , bblWarning
    , bblId

    -- ** InterconnectAttachmentPrivateInfo
    , InterconnectAttachmentPrivateInfo
    , interconnectAttachmentPrivateInfo
    , iapiTag8021q

    -- ** AcceleratorTypesScopedList
    , AcceleratorTypesScopedList
    , acceleratorTypesScopedList
    , atslAcceleratorTypes
    , atslWarning

    -- ** BackendServiceCdnPolicy
    , BackendServiceCdnPolicy
    , backendServiceCdnPolicy
    , bscpSignedURLCacheMaxAgeSec
    , bscpSignedURLKeyNames
    , bscpCacheKeyPolicy

    -- ** DiskTypeListWarningCode
    , DiskTypeListWarningCode (..)

    -- ** RouteWarningsItemDataItem
    , RouteWarningsItemDataItem
    , routeWarningsItemDataItem
    , rwidiValue
    , rwidiKey

    -- ** NodeGroupAggregatedList
    , NodeGroupAggregatedList
    , nodeGroupAggregatedList
    , ngalNextPageToken
    , ngalKind
    , ngalItems
    , ngalSelfLink
    , ngalWarning
    , ngalId

    -- ** AddressPurpose
    , AddressPurpose (..)

    -- ** NodeTypeAggregatedListWarningCode
    , NodeTypeAggregatedListWarningCode (..)

    -- ** TargetInstancesScopedListWarningCode
    , TargetInstancesScopedListWarningCode (..)

    -- ** VPNTunnelListWarning
    , VPNTunnelListWarning
    , vpnTunnelListWarning
    , vtlwData
    , vtlwCode
    , vtlwMessage

    -- ** BackendServiceAggregatedListItems
    , BackendServiceAggregatedListItems
    , backendServiceAggregatedListItems
    , bsaliAddtional

    -- ** VPNTunnelAggregatedListWarningCode
    , VPNTunnelAggregatedListWarningCode (..)

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

    -- ** DiskInstantiationConfig
    , DiskInstantiationConfig
    , diskInstantiationConfig
    , dicAutoDelete
    , dicInstantiateFrom
    , dicCustomImage
    , dicDeviceName

    -- ** DiskTypeAggregatedListWarning
    , DiskTypeAggregatedListWarning
    , diskTypeAggregatedListWarning
    , dtalwData
    , dtalwCode
    , dtalwMessage

    -- ** DiskTypeListWarningDataItem
    , DiskTypeListWarningDataItem
    , diskTypeListWarningDataItem
    , dtlwdiValue
    , dtlwdiKey

    -- ** SecurityPolicyRule
    , SecurityPolicyRule
    , securityPolicyRule
    , sprPriority
    , sprKind
    , sprAction
    , sprPreview
    , sprMatch
    , sprDescription

    -- ** InterconnectsGetDiagnosticsResponse
    , InterconnectsGetDiagnosticsResponse
    , interconnectsGetDiagnosticsResponse
    , igdrResult

    -- ** VPNTunnelAggregatedListWarningDataItem
    , VPNTunnelAggregatedListWarningDataItem
    , vpnTunnelAggregatedListWarningDataItem
    , vtalwdiValue
    , vtalwdiKey

    -- ** FixedOrPercent
    , FixedOrPercent
    , fixedOrPercent
    , fopCalculated
    , fopPercent
    , fopFixed

    -- ** FirewallLogConfig
    , FirewallLogConfig
    , firewallLogConfig
    , flcEnable

    -- ** TargetHTTPProxyListWarningCode
    , TargetHTTPProxyListWarningCode (..)

    -- ** RouterNAT
    , RouterNAT
    , routerNAT
    , rnatNATIPAllocateOption
    , rnatICMPIdleTimeoutSec
    , rnatUdpIdleTimeoutSec
    , rnatNATIPs
    , rnatSubnetworks
    , rnatMinPortsPerVM
    , rnatName
    , rnatSourceSubnetworkIPRangesToNAT
    , rnatTCPEstablishedIdleTimeoutSec
    , rnatTCPTransitoryIdleTimeoutSec

    -- ** AutoscalerAggregatedListWarning
    , AutoscalerAggregatedListWarning
    , autoscalerAggregatedListWarning
    , aalwData
    , aalwCode
    , aalwMessage

    -- ** AutoscalerListWarningDataItem
    , AutoscalerListWarningDataItem
    , autoscalerListWarningDataItem
    , alwdiValue
    , alwdiKey

    -- ** MachineTypeListWarningCode
    , MachineTypeListWarningCode (..)

    -- ** NodeTypeListWarning
    , NodeTypeListWarning
    , nodeTypeListWarning
    , ntlwData
    , ntlwCode
    , ntlwMessage

    -- ** HealthCheckList
    , HealthCheckList
    , healthCheckList
    , hclNextPageToken
    , hclKind
    , hclItems
    , hclSelfLink
    , hclWarning
    , hclId

    -- ** ManagedInstanceLastAttemptErrors
    , ManagedInstanceLastAttemptErrors
    , managedInstanceLastAttemptErrors
    , milaeErrors

    -- ** GuestOSFeatureType
    , GuestOSFeatureType (..)

    -- ** RouteWarningsItemCode
    , RouteWarningsItemCode (..)

    -- ** RouterStatusNATStatus
    , RouterStatusNATStatus
    , routerStatusNATStatus
    , rsnatsUserAllocatedNATIPResources
    , rsnatsName
    , rsnatsAutoAllocatedNATIPs
    , rsnatsMinExtraNATIPsNeeded
    , rsnatsNumVMEndpointsWithNATMAppings
    , rsnatsUserAllocatedNATIPs

    -- ** TargetPoolsRemoveInstanceRequest
    , TargetPoolsRemoveInstanceRequest
    , targetPoolsRemoveInstanceRequest
    , tprirInstances

    -- ** NodeTypeAggregatedListWarningDataItem
    , NodeTypeAggregatedListWarningDataItem
    , nodeTypeAggregatedListWarningDataItem
    , nValue
    , nKey

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

    -- ** ZoneSetLabelsRequest
    , ZoneSetLabelsRequest
    , zoneSetLabelsRequest
    , zslrLabels
    , zslrLabelFingerprint

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

    -- ** RouterBGPPeerAdvertiseMode
    , RouterBGPPeerAdvertiseMode (..)

    -- ** RegionInstanceGroupManagerListWarningCode
    , RegionInstanceGroupManagerListWarningCode (..)

    -- ** AcceleratorTypeAggregatedList
    , AcceleratorTypeAggregatedList
    , acceleratorTypeAggregatedList
    , atalNextPageToken
    , atalKind
    , atalItems
    , atalSelfLink
    , atalWarning
    , atalId

    -- ** SnapshotStorageBytesStatus
    , SnapshotStorageBytesStatus (..)

    -- ** NetworkRoutingConfig
    , NetworkRoutingConfig
    , networkRoutingConfig
    , nrcRoutingMode

    -- ** NodeTemplateListWarning
    , NodeTemplateListWarning
    , nodeTemplateListWarning
    , nodData
    , nodCode
    , nodMessage

    -- ** InstanceGroupManagersListManagedInstancesResponse
    , InstanceGroupManagersListManagedInstancesResponse
    , instanceGroupManagersListManagedInstancesResponse
    , igmlmirManagedInstances

    -- ** InstanceProperties
    , InstanceProperties
    , instanceProperties
    , ipServiceAccounts
    , ipNetworkInterfaces
    , ipGuestAccelerators
    , ipMachineType
    , ipMetadata
    , ipLabels
    , ipScheduling
    , ipMinCPUPlatform
    , ipDisks
    , ipCanIPForward
    , ipDescription
    , ipTags

    -- ** ProjectsListXpnHostsRequest
    , ProjectsListXpnHostsRequest
    , projectsListXpnHostsRequest
    , plxhrOrganization

    -- ** RegionListWarning
    , RegionListWarning
    , regionListWarning
    , rlwData
    , rlwCode
    , rlwMessage

    -- ** NodeTemplateAggregatedListWarningCode
    , NodeTemplateAggregatedListWarningCode (..)

    -- ** NodeGroupsScopedList
    , NodeGroupsScopedList
    , nodeGroupsScopedList
    , ngslNodeGroups
    , ngslWarning

    -- ** DiskTypesScopedListWarning
    , DiskTypesScopedListWarning
    , diskTypesScopedListWarning
    , dtslwData
    , dtslwCode
    , dtslwMessage

    -- ** RegionInstanceGroupManagerListWarningDataItem
    , RegionInstanceGroupManagerListWarningDataItem
    , regionInstanceGroupManagerListWarningDataItem
    , rigmlwdiValue
    , rigmlwdiKey

    -- ** RuleAction
    , RuleAction (..)

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
    , adipLabels
    , adipDescription

    -- ** UsableSubnetworkSecondaryRange
    , UsableSubnetworkSecondaryRange
    , usableSubnetworkSecondaryRange
    , ussrRangeName
    , ussrIPCIdRRange

    -- ** AddressesScopedListWarningDataItem
    , AddressesScopedListWarningDataItem
    , addressesScopedListWarningDataItem
    , aslwdiValue
    , aslwdiKey

    -- ** ImageStatus
    , ImageStatus (..)

    -- ** InstanceGroupListWarningCode
    , InstanceGroupListWarningCode (..)

    -- ** InstanceGroupListWarningDataItem
    , InstanceGroupListWarningDataItem
    , instanceGroupListWarningDataItem
    , iglwdiValue
    , iglwdiKey

    -- ** NetworkInterface
    , NetworkInterface
    , networkInterface
    , niKind
    , niFingerprint
    , niAliasIPRanges
    , niNetwork
    , niName
    , niNetworkIP
    , niSubnetwork
    , niAccessConfigs

    -- ** FirewallListWarningCode
    , FirewallListWarningCode (..)

    -- ** RouterListWarning
    , RouterListWarning
    , routerListWarning
    , rData
    , rCode
    , rMessage

    -- ** FirewallListWarningDataItem
    , FirewallListWarningDataItem
    , firewallListWarningDataItem
    , flwdiValue
    , flwdiKey

    -- ** InterconnectAttachmentType
    , InterconnectAttachmentType (..)

    -- ** TargetPoolsRemoveHealthCheckRequest
    , TargetPoolsRemoveHealthCheckRequest
    , targetPoolsRemoveHealthCheckRequest
    , tprhcrHealthChecks

    -- ** AutoscalerStatusDetailsType
    , AutoscalerStatusDetailsType (..)

    -- ** FirewallDirection
    , FirewallDirection (..)

    -- ** NodeGroupNodeStatus
    , NodeGroupNodeStatus (..)

    -- ** TargetHTTPSProxiesSetQuicOverrideRequestQuicOverride
    , TargetHTTPSProxiesSetQuicOverrideRequestQuicOverride (..)

    -- ** RegionInstanceGroupManagersSetTargetPoolsRequest
    , RegionInstanceGroupManagersSetTargetPoolsRequest
    , regionInstanceGroupManagersSetTargetPoolsRequest
    , rigmstprFingerprint
    , rigmstprTargetPools

    -- ** BackendBucketCdnPolicy
    , BackendBucketCdnPolicy
    , backendBucketCdnPolicy
    , bbcpSignedURLCacheMaxAgeSec
    , bbcpSignedURLKeyNames

    -- ** TargetSSLProxyList
    , TargetSSLProxyList
    , targetSSLProxyList
    , tsplNextPageToken
    , tsplKind
    , tsplItems
    , tsplSelfLink
    , tsplWarning
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
    , itlWarning
    , itlId

    -- ** Reference
    , Reference
    , reference
    , refKind
    , refReferrer
    , refReferenceType
    , refTarget

    -- ** InstanceGroupAggregatedListWarning
    , InstanceGroupAggregatedListWarning
    , instanceGroupAggregatedListWarning
    , igalwData
    , igalwCode
    , igalwMessage

    -- ** RouteList
    , RouteList
    , routeList
    , rlNextPageToken
    , rlKind
    , rlItems
    , rlSelfLink
    , rlWarning
    , rlId

    -- ** DeprecationStatusState
    , DeprecationStatusState (..)

    -- ** InstanceListReferrers
    , InstanceListReferrers
    , instanceListReferrers
    , ilrNextPageToken
    , ilrKind
    , ilrItems
    , ilrSelfLink
    , ilrWarning
    , ilrId

    -- ** NodeGroupStatus
    , NodeGroupStatus (..)

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
    , rouNATs
    , rouDescription

    -- ** RouterAggregatedListWarningCode
    , RouterAggregatedListWarningCode (..)

    -- ** RoutersScopedListWarningCode
    , RoutersScopedListWarningCode (..)

    -- ** RouterAggregatedListWarningDataItem
    , RouterAggregatedListWarningDataItem
    , routerAggregatedListWarningDataItem
    , ralwdiValue
    , ralwdiKey

    -- ** TargetHTTPSProxyListWarningCode
    , TargetHTTPSProxyListWarningCode (..)

    -- ** RoutersScopedListWarningDataItem
    , RoutersScopedListWarningDataItem
    , routersScopedListWarningDataItem
    , rslwdiValue
    , rslwdiKey

    -- ** SubnetworksSetPrivateIPGoogleAccessRequest
    , SubnetworksSetPrivateIPGoogleAccessRequest
    , subnetworksSetPrivateIPGoogleAccessRequest
    , sspigarPrivateIPGoogleAccess

    -- ** TargetHTTPSProxyListWarningDataItem
    , TargetHTTPSProxyListWarningDataItem
    , targetHTTPSProxyListWarningDataItem
    , thplwdiValue
    , thplwdiKey

    -- ** InterconnectDiagnosticsLinkLACPStatusState
    , InterconnectDiagnosticsLinkLACPStatusState (..)

    -- ** ManagedInstanceCurrentAction
    , ManagedInstanceCurrentAction (..)

    -- ** TargetVPNGatewayList
    , TargetVPNGatewayList
    , targetVPNGatewayList
    , tvglNextPageToken
    , tvglKind
    , tvglItems
    , tvglSelfLink
    , tvglWarning
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
    , sclWarning
    , sclId

    -- ** FirewallAllowedItem
    , FirewallAllowedItem
    , firewallAllowedItem
    , faiIPProtocol
    , faiPorts

    -- ** RouterAdvertisedIPRange
    , RouterAdvertisedIPRange
    , routerAdvertisedIPRange
    , rairRange
    , rairDescription

    -- ** RouterListWarningDataItem
    , RouterListWarningDataItem
    , routerListWarningDataItem
    , rlwdiValue
    , rlwdiKey

    -- ** Rule
    , Rule
    , rule
    , rAction
    , rNotIns
    , rIns
    , rLogConfigs
    , rConditions
    , rPermissions
    , rDescription

    -- ** BackendServiceAggregatedList
    , BackendServiceAggregatedList
    , backendServiceAggregatedList
    , bsalNextPageToken
    , bsalKind
    , bsalItems
    , bsalSelfLink
    , bsalWarning
    , bsalId

    -- ** Network
    , Network
    , network
    , nAutoCreateSubnetworks
    , nKind
    , nRoutingConfig
    , nSubnetworks
    , nIPv4Range
    , nSelfLink
    , nName
    , nCreationTimestamp
    , nId
    , nGatewayIPv4
    , nDescription
    , nPeerings

    -- ** RoutersScopedListWarning
    , RoutersScopedListWarning
    , routersScopedListWarning
    , rslwData
    , rslwCode
    , rslwMessage

    -- ** UsableSubnetwork
    , UsableSubnetwork
    , usableSubnetwork
    , usNetwork
    , usSecondaryIPRanges
    , usIPCIdRRange
    , usSubnetwork

    -- ** RouterBGPPeerAdvertisedGroupsItem
    , RouterBGPPeerAdvertisedGroupsItem (..)

    -- ** AccessConfigType
    , AccessConfigType (..)

    -- ** TargetHTTPSProxyListWarning
    , TargetHTTPSProxyListWarning
    , targetHTTPSProxyListWarning
    , thplwData
    , thplwCode
    , thplwMessage

    -- ** AddressesScopedListWarning
    , AddressesScopedListWarning
    , addressesScopedListWarning
    , aData
    , aCode
    , aMessage

    -- ** SecurityPolicy
    , SecurityPolicy
    , securityPolicy
    , secRules
    , secKind
    , secFingerprint
    , secSelfLink
    , secName
    , secCreationTimestamp
    , secId
    , secDescription

    -- ** InstanceGroupAggregatedListWarningDataItem
    , InstanceGroupAggregatedListWarningDataItem
    , instanceGroupAggregatedListWarningDataItem
    , igalwdiValue
    , igalwdiKey

    -- ** ForwardingRuleIPVersion
    , ForwardingRuleIPVersion (..)

    -- ** RouterListWarningCode
    , RouterListWarningCode (..)

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
    , ialWarning
    , ialId

    -- ** TargetTCPProxiesSetBackendServiceRequest
    , TargetTCPProxiesSetBackendServiceRequest
    , targetTCPProxiesSetBackendServiceRequest
    , ttpsbsrService

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
    , aPrefixLength
    , aNetworkTier
    , aStatus
    , aUsers
    , aKind
    , aIPVersion
    , aNetwork
    , aAddress
    , aPurpose
    , aSelfLink
    , aName
    , aCreationTimestamp
    , aSubnetwork
    , aId
    , aRegion
    , aDescription
    , aAddressType

    -- ** NodeGroupAggregatedListItems
    , NodeGroupAggregatedListItems
    , nodeGroupAggregatedListItems
    , ngaliAddtional

    -- ** InstanceGroupAggregatedListWarningCode
    , InstanceGroupAggregatedListWarningCode (..)

    -- ** InstanceGroupListWarning
    , InstanceGroupListWarning
    , instanceGroupListWarning
    , iglwData
    , iglwCode
    , iglwMessage

    -- ** AttachedDiskInitializeParamsLabels
    , AttachedDiskInitializeParamsLabels
    , attachedDiskInitializeParamsLabels
    , adiplAddtional

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
    , zAvailableCPUPlatforms
    , zDescription
    , zDeprecated

    -- ** RouterBGP
    , RouterBGP
    , routerBGP
    , rbASN
    , rbAdvertiseMode
    , rbAdvertisedGroups
    , rbAdvertisedIPRanges

    -- ** ProjectsSetDefaultNetworkTierRequestNetworkTier
    , ProjectsSetDefaultNetworkTierRequestNetworkTier (..)

    -- ** FirewallListWarning
    , FirewallListWarning
    , firewallListWarning
    , flwData
    , flwCode
    , flwMessage

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

    -- ** RouterAggregatedListWarning
    , RouterAggregatedListWarning
    , routerAggregatedListWarning
    , rouData
    , rouCode
    , rouMessage

    -- ** InstancesScopedList
    , InstancesScopedList
    , instancesScopedList
    , islWarning
    , islInstances

    -- ** AcceleratorTypeAggregatedListItems
    , AcceleratorTypeAggregatedListItems
    , acceleratorTypeAggregatedListItems
    , ataliAddtional

    -- ** TargetVPNGatewayAggregatedListWarningDataItem
    , TargetVPNGatewayAggregatedListWarningDataItem
    , targetVPNGatewayAggregatedListWarningDataItem
    , tvgalwdiValue
    , tvgalwdiKey

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

    -- ** TargetHTTPSProxiesSetQuicOverrideRequest
    , TargetHTTPSProxiesSetQuicOverrideRequest
    , targetHTTPSProxiesSetQuicOverrideRequest
    , thpsqorQuicOverride

    -- ** TargetSSLProxyListWarning
    , TargetSSLProxyListWarning
    , targetSSLProxyListWarning
    , tsplwData
    , tsplwCode
    , tsplwMessage

    -- ** InstanceTemplateListWarning
    , InstanceTemplateListWarning
    , instanceTemplateListWarning
    , itlwData
    , itlwCode
    , itlwMessage

    -- ** InstanceListReferrersWarning
    , InstanceListReferrersWarning
    , instanceListReferrersWarning
    , ilrwData
    , ilrwCode
    , ilrwMessage

    -- ** RouteListWarning
    , RouteListWarning
    , routeListWarning
    , rlwlData
    , rlwlCode
    , rlwlMessage

    -- ** TargetTCPProxyProxyHeader
    , TargetTCPProxyProxyHeader (..)

    -- ** InstanceGroupAggregatedList
    , InstanceGroupAggregatedList
    , instanceGroupAggregatedList
    , igalNextPageToken
    , igalKind
    , igalItems
    , igalSelfLink
    , igalWarning
    , igalId

    -- ** TargetVPNGatewayAggregatedListWarningCode
    , TargetVPNGatewayAggregatedListWarningCode (..)

    -- ** OperationStatus
    , OperationStatus (..)

    -- ** Route
    , Route
    , route
    , rrNextHopPeering
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

    -- ** LogConfigCloudAuditOptionsLogName
    , LogConfigCloudAuditOptionsLogName (..)

    -- ** LicenseCodeState
    , LicenseCodeState (..)

    -- ** InterconnectLocationRegionInfo
    , InterconnectLocationRegionInfo
    , interconnectLocationRegionInfo
    , ilriLocationPresence
    , ilriExpectedRttMs
    , ilriRegion

    -- ** TargetVPNGatewaysScopedListWarningCode
    , TargetVPNGatewaysScopedListWarningCode (..)

    -- ** TargetHTTPSProxiesSetSSLCertificatesRequest
    , TargetHTTPSProxiesSetSSLCertificatesRequest
    , targetHTTPSProxiesSetSSLCertificatesRequest
    , thpsscrSSLCertificates

    -- ** InstanceTemplate
    , InstanceTemplate
    , instanceTemplate
    , itSourceInstance
    , itKind
    , itSelfLink
    , itName
    , itCreationTimestamp
    , itId
    , itSourceInstanceParams
    , itDescription
    , itProperties

    -- ** XpnResourceId
    , XpnResourceId
    , xpnResourceId
    , xriId
    , xriType

    -- ** RouterList
    , RouterList
    , routerList
    , rllNextPageToken
    , rllKind
    , rllItems
    , rllSelfLink
    , rllWarning
    , rllId

    -- ** TargetSSLProxy
    , TargetSSLProxy
    , targetSSLProxy
    , tspSSLPolicy
    , tspSSLCertificates
    , tspService
    , tspKind
    , tspSelfLink
    , tspName
    , tspCreationTimestamp
    , tspId
    , tspProxyHeader
    , tspDescription

    -- ** InstanceGroupManagerStatus
    , InstanceGroupManagerStatus
    , instanceGroupManagerStatus
    , igmsIsStable

    -- ** SSLCertificateListWarning
    , SSLCertificateListWarning
    , sslCertificateListWarning
    , sclwData
    , sclwCode
    , sclwMessage

    -- ** SnapshotListWarningDataItem
    , SnapshotListWarningDataItem
    , snapshotListWarningDataItem
    , slwdiValue
    , slwdiKey

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

    -- ** ResourceCommitment
    , ResourceCommitment
    , resourceCommitment
    , rcAmount
    , rcType

    -- ** SnapshotListWarningCode
    , SnapshotListWarningCode (..)

    -- ** BackendServiceIAP
    , BackendServiceIAP
    , backendServiceIAP
    , bsiapEnabled
    , bsiapOAuth2ClientSecretSha256
    , bsiapOAuth2ClientSecret
    , bsiapOAuth2ClientId

    -- ** TargetVPNGatewayListWarning
    , TargetVPNGatewayListWarning
    , targetVPNGatewayListWarning
    , tvglwData
    , tvglwCode
    , tvglwMessage

    -- ** InterconnectAttachmentEdgeAvailabilityDomain
    , InterconnectAttachmentEdgeAvailabilityDomain (..)

    -- ** ManagedInstanceInstanceStatus
    , ManagedInstanceInstanceStatus (..)

    -- ** HTTPHealthCheckProxyHeader
    , HTTPHealthCheckProxyHeader (..)

    -- ** VMEndpointNATMAppingsListWarningDataItem
    , VMEndpointNATMAppingsListWarningDataItem
    , vMEndpointNATMAppingsListWarningDataItem
    , vmenatmalwdiValue
    , vmenatmalwdiKey

    -- ** InterconnectLocationContinent
    , InterconnectLocationContinent (..)

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

    -- ** VMEndpointNATMAppingsListWarningCode
    , VMEndpointNATMAppingsListWarningCode (..)

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

    -- ** NodeTemplateStatus
    , NodeTemplateStatus (..)

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

    -- ** InstanceGroupManagerUpdatePolicyType
    , InstanceGroupManagerUpdatePolicyType (..)

    -- ** CommitmentsScopedList
    , CommitmentsScopedList
    , commitmentsScopedList
    , cslWarning
    , cslCommitments

    -- ** TargetVPNGatewayListWarningCode
    , TargetVPNGatewayListWarningCode (..)

    -- ** DiskAggregatedListItems
    , DiskAggregatedListItems
    , diskAggregatedListItems
    , daliAddtional

    -- ** TargetVPNGatewayAggregatedListWarning
    , TargetVPNGatewayAggregatedListWarning
    , targetVPNGatewayAggregatedListWarning
    , tvgalwData
    , tvgalwCode
    , tvgalwMessage

    -- ** UsageExportLocation
    , UsageExportLocation
    , usageExportLocation
    , uelReportNamePrefix
    , uelBucketName

    -- ** InstanceTemplateListWarningCode
    , InstanceTemplateListWarningCode (..)

    -- ** ZoneList
    , ZoneList
    , zoneList
    , zlNextPageToken
    , zlKind
    , zlItems
    , zlSelfLink
    , zlWarning
    , zlId

    -- ** SSLCertificateListWarningDataItem
    , SSLCertificateListWarningDataItem
    , sslCertificateListWarningDataItem
    , sclwdiValue
    , sclwdiKey

    -- ** TargetSSLProxyListWarningCode
    , TargetSSLProxyListWarningCode (..)

    -- ** DistributionPolicyZoneConfiguration
    , DistributionPolicyZoneConfiguration
    , distributionPolicyZoneConfiguration
    , dpzcZone

    -- ** RegionStatus
    , RegionStatus (..)

    -- ** TargetTCPProxiesSetProxyHeaderRequest
    , TargetTCPProxiesSetProxyHeaderRequest
    , targetTCPProxiesSetProxyHeaderRequest
    , ttpsphrProxyHeader

    -- ** InterconnectAttachmentBandwidth
    , InterconnectAttachmentBandwidth (..)

    -- ** RouterBGPPeer
    , RouterBGPPeer
    , routerBGPPeer
    , rbpIPAddress
    , rbpInterfaceName
    , rbpPeerIPAddress
    , rbpAdvertisedRoutePriority
    , rbpPeerASN
    , rbpAdvertiseMode
    , rbpName
    , rbpAdvertisedGroups
    , rbpManagementType
    , rbpAdvertisedIPRanges

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
    , alWarning
    , alId

    -- ** TargetVPNGatewayListWarningDataItem
    , TargetVPNGatewayListWarningDataItem
    , targetVPNGatewayListWarningDataItem
    , tvglwdiValue
    , tvglwdiKey

    -- ** ForwardingRuleAggregatedListItems
    , ForwardingRuleAggregatedListItems
    , forwardingRuleAggregatedListItems
    , fraliAddtional

    -- ** InterconnectAttachmentAggregatedList
    , InterconnectAttachmentAggregatedList
    , interconnectAttachmentAggregatedList
    , iaalNextPageToken
    , iaalKind
    , iaalItems
    , iaalSelfLink
    , iaalWarning
    , iaalId

    -- ** InstanceListReferrersWarningCode
    , InstanceListReferrersWarningCode (..)

    -- ** ConditionOp
    , ConditionOp (..)

    -- ** RouteListWarningCode
    , RouteListWarningCode (..)

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
    , igmasVerifying
    , igmasRefreshing
    , igmasCreatingWithoutRetries
    , igmasRecreating
    , igmasAbandoning

    -- ** XpnHostList
    , XpnHostList
    , xpnHostList
    , xhlNextPageToken
    , xhlKind
    , xhlItems
    , xhlSelfLink
    , xhlWarning
    , xhlId

    -- ** VPNTunnelStatus
    , VPNTunnelStatus (..)

    -- ** InstanceTemplateListWarningDataItem
    , InstanceTemplateListWarningDataItem
    , instanceTemplateListWarningDataItem
    , itlwdiValue
    , itlwdiKey

    -- ** SSLCertificateListWarningCode
    , SSLCertificateListWarningCode (..)

    -- ** ServiceAccount
    , ServiceAccount
    , serviceAccount
    , saEmail
    , saScopes

    -- ** SnapshotListWarning
    , SnapshotListWarning
    , snapshotListWarning
    , sData
    , sCode
    , sMessage

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
    , nlWarning
    , nlId

    -- ** NetworkPeering
    , NetworkPeering
    , networkPeering
    , netState
    , netStateDetails
    , netNetwork
    , netName
    , netAutoCreateRoutes

    -- ** TargetSSLProxyListWarningDataItem
    , TargetSSLProxyListWarningDataItem
    , targetSSLProxyListWarningDataItem
    , tsplwdiValue
    , tsplwdiKey

    -- ** InstanceGroupsListInstancesRequest
    , InstanceGroupsListInstancesRequest
    , instanceGroupsListInstancesRequest
    , iglirInstanceState

    -- ** DiskInstantiationConfigInstantiateFrom
    , DiskInstantiationConfigInstantiateFrom (..)

    -- ** InstanceListReferrersWarningDataItem
    , InstanceListReferrersWarningDataItem
    , instanceListReferrersWarningDataItem
    , ilrwdiValue
    , ilrwdiKey

    -- ** RouteListWarningDataItem
    , RouteListWarningDataItem
    , routeListWarningDataItem
    , rValue
    , rKey

    -- ** InterconnectAttachmentsScopedList
    , InterconnectAttachmentsScopedList
    , interconnectAttachmentsScopedList
    , iaslWarning
    , iaslInterconnectAttachments

    -- ** SecurityPolicyList
    , SecurityPolicyList
    , securityPolicyList
    , splNextPageToken
    , splKind
    , splItems
    , splWarning
    , splId

    -- ** BackendBalancingMode
    , BackendBalancingMode (..)

    -- ** RouterBGPAdvertisedGroupsItem
    , RouterBGPAdvertisedGroupsItem (..)

    -- ** CommitmentAggregatedList
    , CommitmentAggregatedList
    , commitmentAggregatedList
    , calNextPageToken
    , calKind
    , calItems
    , calSelfLink
    , calWarning
    , calId

    -- ** RegionInstanceGroupList
    , RegionInstanceGroupList
    , regionInstanceGroupList
    , riglNextPageToken
    , riglKind
    , riglItems
    , riglSelfLink
    , riglWarning
    , riglId

    -- ** VMEndpointNATMAppingsListWarning
    , VMEndpointNATMAppingsListWarning
    , vMEndpointNATMAppingsListWarning
    , vmenatmalwData
    , vmenatmalwCode
    , vmenatmalwMessage

    -- ** TargetPoolAggregatedListItems
    , TargetPoolAggregatedListItems
    , targetPoolAggregatedListItems
    , tpaliAddtional

    -- ** NodeGroupsAddNodesRequest
    , NodeGroupsAddNodesRequest
    , nodeGroupsAddNodesRequest
    , nganrAdditionalNodeCount

    -- ** NodeTypeAggregatedList
    , NodeTypeAggregatedList
    , nodeTypeAggregatedList
    , ntalNextPageToken
    , ntalKind
    , ntalItems
    , ntalSelfLink
    , ntalWarning
    , ntalId

    -- ** TargetInstancesScopedList
    , TargetInstancesScopedList
    , targetInstancesScopedList
    , tislWarning
    , tislTargetInstances

    -- ** NetworkRoutingConfigRoutingMode
    , NetworkRoutingConfigRoutingMode (..)

    -- ** SubnetworkListWarningCode
    , SubnetworkListWarningCode (..)

    -- ** SubnetworkListWarningDataItem
    , SubnetworkListWarningDataItem
    , subnetworkListWarningDataItem
    , sValue
    , sKey

    -- ** ProjectsDisableXpnResourceRequest
    , ProjectsDisableXpnResourceRequest
    , projectsDisableXpnResourceRequest
    , pdxrrXpnResource

    -- ** CommitmentStatus
    , CommitmentStatus (..)

    -- ** AddressAggregatedListItems
    , AddressAggregatedListItems
    , addressAggregatedListItems
    , aAddtional

    -- ** InterconnectListWarningCode
    , InterconnectListWarningCode (..)

    -- ** AutoscalerList
    , AutoscalerList
    , autoscalerList
    , autNextPageToken
    , autKind
    , autItems
    , autSelfLink
    , autWarning
    , autId

    -- ** SSLPolicyMinTLSVersion
    , SSLPolicyMinTLSVersion (..)

    -- ** InterconnectListWarningDataItem
    , InterconnectListWarningDataItem
    , interconnectListWarningDataItem
    , iValue
    , iKey

    -- ** SubnetworkAggregatedListWarning
    , SubnetworkAggregatedListWarning
    , subnetworkAggregatedListWarning
    , salwData
    , salwCode
    , salwMessage

    -- ** InterconnectLocation
    , InterconnectLocation
    , interconnectLocation
    , intFacilityProviderFacilityId
    , intStatus
    , intRegionInfos
    , intKind
    , intAddress
    , intFacilityProvider
    , intSelfLink
    , intPeeringdbFacilityId
    , intName
    , intCity
    , intAvailabilityZone
    , intCreationTimestamp
    , intId
    , intContinent
    , intDescription

    -- ** TargetSSLProxiesSetProxyHeaderRequest
    , TargetSSLProxiesSetProxyHeaderRequest
    , targetSSLProxiesSetProxyHeaderRequest
    , tspsphrProxyHeader

    -- ** HTTPHealthCheckListWarningCode
    , HTTPHealthCheckListWarningCode (..)

    -- ** SSLPoliciesListWarningCode
    , SSLPoliciesListWarningCode (..)

    -- ** VPNTunnelAggregatedList
    , VPNTunnelAggregatedList
    , vpnTunnelAggregatedList
    , vtalNextPageToken
    , vtalKind
    , vtalItems
    , vtalSelfLink
    , vtalWarning
    , vtalId

    -- ** SSLPoliciesListWarningDataItem
    , SSLPoliciesListWarningDataItem
    , sslPoliciesListWarningDataItem
    , splwdiValue
    , splwdiKey

    -- ** InterconnectCircuitInfo
    , InterconnectCircuitInfo
    , interconnectCircuitInfo
    , iciGoogleCircuitId
    , iciCustomerDemarcId
    , iciGoogleDemarcId

    -- ** AttachedDisk
    , AttachedDisk
    , attachedDisk
    , adDiskEncryptionKey
    , adKind
    , adMode
    , adGuestOSFeatures
    , adBoot
    , adAutoDelete
    , adInitializeParams
    , adDeviceName
    , adInterface
    , adSource
    , adLicenses
    , adType
    , adIndex

    -- ** HTTPHealthCheckListWarningDataItem
    , HTTPHealthCheckListWarningDataItem
    , hTTPHealthCheckListWarningDataItem
    , httphclwdiValue
    , httphclwdiKey

    -- ** InterconnectAttachmentOperationalStatus
    , InterconnectAttachmentOperationalStatus (..)

    -- ** DiskTypeList
    , DiskTypeList
    , diskTypeList
    , dtlNextPageToken
    , dtlKind
    , dtlItems
    , dtlSelfLink
    , dtlWarning
    , dtlId

    -- ** TargetTCPProxyListWarningCode
    , TargetTCPProxyListWarningCode (..)

    -- ** RegionInstanceGroupsSetNamedPortsRequest
    , RegionInstanceGroupsSetNamedPortsRequest
    , regionInstanceGroupsSetNamedPortsRequest
    , rigsnprFingerprint
    , rigsnprNamedPorts

    -- ** TestPermissionsRequest
    , TestPermissionsRequest
    , testPermissionsRequest
    , tPermissions

    -- ** TargetTCPProxyListWarningDataItem
    , TargetTCPProxyListWarningDataItem
    , targetTCPProxyListWarningDataItem
    , ttplwdiValue
    , ttplwdiKey

    -- ** ProjectsGetXpnResources
    , ProjectsGetXpnResources
    , projectsGetXpnResources
    , pgxrNextPageToken
    , pgxrKind
    , pgxrResources

    -- ** MachineTypeList
    , MachineTypeList
    , machineTypeList
    , mtlNextPageToken
    , mtlKind
    , mtlItems
    , mtlSelfLink
    , mtlWarning
    , mtlId

    -- ** TargetHTTPProxyList
    , TargetHTTPProxyList
    , targetHTTPProxyList
    , thttpplNextPageToken
    , thttpplKind
    , thttpplItems
    , thttpplSelfLink
    , thttpplWarning
    , thttpplId

    -- ** NodeGroupsListNodesWarning
    , NodeGroupsListNodesWarning
    , nodeGroupsListNodesWarning
    , nglnwData
    , nglnwCode
    , nglnwMessage

    -- ** NodeTemplateAggregatedList
    , NodeTemplateAggregatedList
    , nodeTemplateAggregatedList
    , nodNextPageToken
    , nodKind
    , nodItems
    , nodSelfLink
    , nodWarning
    , nodId

    -- ** InterconnectLocationListWarning
    , InterconnectLocationListWarning
    , interconnectLocationListWarning
    , illwData
    , illwCode
    , illwMessage

    -- ** InstanceGroupsListInstancesWarning
    , InstanceGroupsListInstancesWarning
    , instanceGroupsListInstancesWarning
    , igliwData
    , igliwCode
    , igliwMessage

    -- ** RegionInstanceGroupManagerList
    , RegionInstanceGroupManagerList
    , regionInstanceGroupManagerList
    , rigmlNextPageToken
    , rigmlKind
    , rigmlItems
    , rigmlSelfLink
    , rigmlWarning
    , rigmlId

    -- ** AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- ** ForwardingRuleIPProtocol
    , ForwardingRuleIPProtocol (..)

    -- ** DiskTypesScopedList
    , DiskTypesScopedList
    , diskTypesScopedList
    , dtslDiskTypes
    , dtslWarning

    -- ** LogConfigCloudAuditOptions
    , LogConfigCloudAuditOptions
    , logConfigCloudAuditOptions
    , lccaoAuthorizationLoggingOptions
    , lccaoLogName

    -- ** ImageListWarningCode
    , ImageListWarningCode (..)

    -- ** AddressStatus
    , AddressStatus (..)

    -- ** ProjectsSetDefaultNetworkTierRequest
    , ProjectsSetDefaultNetworkTierRequest
    , projectsSetDefaultNetworkTierRequest
    , psdntrNetworkTier

    -- ** ImageListWarningDataItem
    , ImageListWarningDataItem
    , imageListWarningDataItem
    , imaValue
    , imaKey

    -- ** AcceleratorTypeListWarningDataItem
    , AcceleratorTypeListWarningDataItem
    , acceleratorTypeListWarningDataItem
    , atlwdiValue
    , atlwdiKey

    -- ** InterconnectOutageNotification
    , InterconnectOutageNotification
    , interconnectOutageNotification
    , ionState
    , ionAffectedCircuits
    , ionStartTime
    , ionIssueType
    , ionName
    , ionEndTime
    , ionSource
    , ionDescription

    -- ** NodeTemplateList
    , NodeTemplateList
    , nodeTemplateList
    , ntlNextPageToken
    , ntlKind
    , ntlItems
    , ntlSelfLink
    , ntlWarning
    , ntlId

    -- ** AcceleratorTypeListWarningCode
    , AcceleratorTypeListWarningCode (..)

    -- ** DiskTypeAggregatedList
    , DiskTypeAggregatedList
    , diskTypeAggregatedList
    , dtalNextPageToken
    , dtalKind
    , dtalItems
    , dtalSelfLink
    , dtalWarning
    , dtalId

    -- ** HTTPHealthCheck
    , HTTPHealthCheck
    , hTTPHealthCheck
    , httphcResponse
    , httphcRequestPath
    , httphcHost
    , httphcProxyHeader
    , httphcPortName
    , httphcPort

    -- ** URLMapListWarningDataItem
    , URLMapListWarningDataItem
    , urlMapListWarningDataItem
    , umlwdiValue
    , umlwdiKey

    -- ** AddressNetworkTier
    , AddressNetworkTier (..)

    -- ** RouterNATSubnetworkToNAT
    , RouterNATSubnetworkToNAT
    , routerNATSubnetworkToNAT
    , rnatstnatSourceIPRangesToNAT
    , rnatstnatName
    , rnatstnatSecondaryIPRangeNames

    -- ** BackendServiceGroupHealth
    , BackendServiceGroupHealth
    , backendServiceGroupHealth
    , bsghKind
    , bsghHealthStatus

    -- ** URLMapListWarningCode
    , URLMapListWarningCode (..)

    -- ** InstanceGroupsListInstancesRequestInstanceState
    , InstanceGroupsListInstancesRequestInstanceState (..)

    -- ** AutoscalersScopedList
    , AutoscalersScopedList
    , autoscalersScopedList
    , aAutoscalers
    , aWarning

    -- ** LogConfigDataAccessOptions
    , LogConfigDataAccessOptions
    , logConfigDataAccessOptions
    , lcdaoLogMode

    -- ** AutoscalerAggregatedList
    , AutoscalerAggregatedList
    , autoscalerAggregatedList
    , aalNextPageToken
    , aalKind
    , aalItems
    , aalSelfLink
    , aalWarning
    , aalId

    -- ** RouterAggregatedListItems
    , RouterAggregatedListItems
    , routerAggregatedListItems
    , raliAddtional

    -- ** AcceleratorTypesScopedListWarning
    , AcceleratorTypesScopedListWarning
    , acceleratorTypesScopedListWarning
    , atslwData
    , atslwCode
    , atslwMessage

    -- ** TargetTCPProxy
    , TargetTCPProxy
    , targetTCPProxy
    , ttpService
    , ttpKind
    , ttpSelfLink
    , ttpName
    , ttpCreationTimestamp
    , ttpId
    , ttpProxyHeader
    , ttpDescription

    -- ** SchedulingNodeAffinityOperator
    , SchedulingNodeAffinityOperator (..)

    -- ** BackendBucketListWarning
    , BackendBucketListWarning
    , backendBucketListWarning
    , bblwData
    , bblwCode
    , bblwMessage

    -- ** ProjectDefaultNetworkTier
    , ProjectDefaultNetworkTier (..)

    -- ** ImageLabels
    , ImageLabels
    , imageLabels
    , iAddtional

    -- ** NodeGroupListWarningCode
    , NodeGroupListWarningCode (..)

    -- ** DistributionPolicy
    , DistributionPolicy
    , distributionPolicy
    , dpZones

    -- ** RouterNATSourceSubnetworkIPRangesToNAT
    , RouterNATSourceSubnetworkIPRangesToNAT (..)

    -- ** NodeGroupListWarningDataItem
    , NodeGroupListWarningDataItem
    , nodeGroupListWarningDataItem
    , nglwdiValue
    , nglwdiKey

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

    -- ** NodeGroupAggregatedListWarning
    , NodeGroupAggregatedListWarning
    , nodeGroupAggregatedListWarning
    , ngalwData
    , ngalwCode
    , ngalwMessage

    -- ** RegionList
    , RegionList
    , regionList
    , regNextPageToken
    , regKind
    , regItems
    , regSelfLink
    , regWarning
    , regId

    -- ** AttachedDiskInterface
    , AttachedDiskInterface (..)

    -- ** SchedulingNodeAffinity
    , SchedulingNodeAffinity
    , schedulingNodeAffinity
    , snaOperator
    , snaValues
    , snaKey

    -- ** HealthCheckType
    , HealthCheckType (..)

    -- ** RegionInstanceGroupsListInstancesWarningCode
    , RegionInstanceGroupsListInstancesWarningCode (..)

    -- ** ZoneStatus
    , ZoneStatus (..)

    -- ** VPNTunnelList
    , VPNTunnelList
    , vpnTunnelList
    , vtlNextPageToken
    , vtlKind
    , vtlItems
    , vtlSelfLink
    , vtlWarning
    , vtlId

    -- ** AcceleratorTypeAggregatedListWarning
    , AcceleratorTypeAggregatedListWarning
    , acceleratorTypeAggregatedListWarning
    , atalwData
    , atalwCode
    , atalwMessage

    -- ** RegionInstanceGroupsListInstancesWarningDataItem
    , RegionInstanceGroupsListInstancesWarningDataItem
    , regionInstanceGroupsListInstancesWarningDataItem
    , rigliwdiValue
    , rigliwdiKey

    -- ** Interconnect
    , Interconnect
    , interconnect
    , iiState
    , iiInterconnectType
    , iiLocation
    , iiPeerIPAddress
    , iiKind
    , iiExpectedOutages
    , iiProvisionedLinkCount
    , iiCustomerName
    , iiRequestedLinkCount
    , iiOperationalStatus
    , iiSelfLink
    , iiName
    , iiGoogleReferenceId
    , iiCreationTimestamp
    , iiAdminEnabled
    , iiId
    , iiInterconnectAttachments
    , iiLinkType
    , iiGoogleIPAddress
    , iiDescription
    , iiNocContactEmail
    , iiCircuitInfos

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
    , subFingerprint
    , subNetwork
    , subGatewayAddress
    , subSelfLink
    , subEnableFlowLogs
    , subName
    , subSecondaryIPRanges
    , subCreationTimestamp
    , subIPCIdRRange
    , subId
    , subRegion
    , subDescription
    , subPrivateIPGoogleAccess

    -- ** HealthCheckListWarning
    , HealthCheckListWarning
    , healthCheckListWarning
    , hclwData
    , hclwCode
    , hclwMessage

    -- ** MachineTypeAggregatedList
    , MachineTypeAggregatedList
    , machineTypeAggregatedList
    , mtalNextPageToken
    , mtalKind
    , mtalItems
    , mtalSelfLink
    , mtalWarning
    , mtalId

    -- ** NodeGroupsScopedListWarning
    , NodeGroupsScopedListWarning
    , nodeGroupsScopedListWarning
    , ngslwData
    , ngslwCode
    , ngslwMessage

    -- ** NodeTypeList
    , NodeTypeList
    , nodeTypeList
    , ntltNextPageToken
    , ntltKind
    , ntltItems
    , ntltSelfLink
    , ntltWarning
    , ntltId

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
    , dtRegion
    , dtValidDiskSize
    , dtDescription
    , dtDefaultDiskSizeGb
    , dtDeprecated

    -- ** NodeTemplateAggregatedListWarning
    , NodeTemplateAggregatedListWarning
    , nodeTemplateAggregatedListWarning
    , ntalwData
    , ntalwCode
    , ntalwMessage

    -- ** AutoscalerAggregatedListWarningDataItem
    , AutoscalerAggregatedListWarningDataItem
    , autoscalerAggregatedListWarningDataItem
    , aalwdiValue
    , aalwdiKey

    -- ** ZoneSetLabelsRequestLabels
    , ZoneSetLabelsRequestLabels
    , zoneSetLabelsRequestLabels
    , zslrlAddtional

    -- ** InterconnectState
    , InterconnectState (..)

    -- ** NodeTypeListWarningDataItem
    , NodeTypeListWarningDataItem
    , nodeTypeListWarningDataItem
    , ntlwdiValue
    , ntlwdiKey

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

    -- ** NodeGroupsListNodes
    , NodeGroupsListNodes
    , nodeGroupsListNodes
    , nglnNextPageToken
    , nglnKind
    , nglnItems
    , nglnSelfLink
    , nglnWarning
    , nglnId

    -- ** InterconnectLocationList
    , InterconnectLocationList
    , interconnectLocationList
    , illNextPageToken
    , illKind
    , illItems
    , illSelfLink
    , illWarning
    , illId

    -- ** SSLPoliciesListAvailableFeaturesResponse
    , SSLPoliciesListAvailableFeaturesResponse
    , sslPoliciesListAvailableFeaturesResponse
    , splafrFeatures

    -- ** InstancePropertiesLabels
    , InstancePropertiesLabels
    , instancePropertiesLabels
    , iplAddtional

    -- ** AutoscalerAggregatedListWarningCode
    , AutoscalerAggregatedListWarningCode (..)

    -- ** AddressIPVersion
    , AddressIPVersion (..)

    -- ** MachineTypesScopedListWarningDataItem
    , MachineTypesScopedListWarningDataItem
    , machineTypesScopedListWarningDataItem
    , mtslwdiValue
    , mtslwdiKey

    -- ** InstanceStatus
    , InstanceStatus (..)

    -- ** NodeTypeListWarningCode
    , NodeTypeListWarningCode (..)

    -- ** DiskTypeListWarning
    , DiskTypeListWarning
    , diskTypeListWarning
    , dtlwData
    , dtlwCode
    , dtlwMessage

    -- ** NodeTemplateListWarningDataItem
    , NodeTemplateListWarningDataItem
    , nodeTemplateListWarningDataItem
    , nodValue
    , nodKey

    -- ** RegionListWarningDataItem
    , RegionListWarningDataItem
    , regionListWarningDataItem
    , regValue
    , regKey

    -- ** MachineTypesScopedListWarningCode
    , MachineTypesScopedListWarningCode (..)

    -- ** InstancesSetMachineResourcesRequest
    , InstancesSetMachineResourcesRequest
    , instancesSetMachineResourcesRequest
    , ismrrGuestAccelerators

    -- ** InstancesSetServiceAccountRequest
    , InstancesSetServiceAccountRequest
    , instancesSetServiceAccountRequest
    , issarEmail
    , issarScopes

    -- ** SecurityPolicyReference
    , SecurityPolicyReference
    , securityPolicyReference
    , sprSecurityPolicy

    -- ** DiskTypesScopedListWarningDataItem
    , DiskTypesScopedListWarningDataItem
    , diskTypesScopedListWarningDataItem
    , dtslwdiValue
    , dtslwdiKey

    -- ** NodeTemplateListWarningCode
    , NodeTemplateListWarningCode (..)

    -- ** VMEndpointNATMAppingsInterfaceNATMAppings
    , VMEndpointNATMAppingsInterfaceNATMAppings
    , vMEndpointNATMAppingsInterfaceNATMAppings
    , vmenatmainatmaSourceAliasIPRange
    , vmenatmainatmaSourceVirtualIP
    , vmenatmainatmaNATIPPortRanges
    , vmenatmainatmaNumTotalNATPorts

    -- ** VPNTunnelAggregatedListWarning
    , VPNTunnelAggregatedListWarning
    , vpnTunnelAggregatedListWarning
    , vtalwData
    , vtalwCode
    , vtalwMessage

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

    -- ** AcceleratorConfig
    , AcceleratorConfig
    , acceleratorConfig
    , acAcceleratorCount
    , acAcceleratorType

    -- ** AutoscalerListWarning
    , AutoscalerListWarning
    , autoscalerListWarning
    , alwData
    , alwCode
    , alwMessage

    -- ** RegionListWarningCode
    , RegionListWarningCode (..)

    -- ** RouterInterfaceManagementType
    , RouterInterfaceManagementType (..)

    -- ** DiskTypesScopedListWarningCode
    , DiskTypesScopedListWarningCode (..)

    -- ** MachineTypeAggregatedListWarningDataItem
    , MachineTypeAggregatedListWarningDataItem
    , machineTypeAggregatedListWarningDataItem
    , mtalwdiValue
    , mtalwdiKey

    -- ** OperationError
    , OperationError
    , operationError
    , oeErrors

    -- ** NodeTypeAggregatedListWarning
    , NodeTypeAggregatedListWarning
    , nodeTypeAggregatedListWarning
    , ntalwtData
    , ntalwtCode
    , ntalwtMessage

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
    , salWarning
    , salId

    -- ** MachineTypeAggregatedListWarningCode
    , MachineTypeAggregatedListWarningCode (..)

    -- ** VPNTunnelListWarningDataItem
    , VPNTunnelListWarningDataItem
    , vpnTunnelListWarningDataItem
    , vtlwdiValue
    , vtlwdiKey

    -- ** InterconnectDiagnosticsLinkOpticalPower
    , InterconnectDiagnosticsLinkOpticalPower
    , interconnectDiagnosticsLinkOpticalPower
    , idlopState
    , idlopValue

    -- ** DisksResizeRequest
    , DisksResizeRequest
    , disksResizeRequest
    , drrSizeGb

    -- ** AutoscalersScopedListWarningDataItem
    , AutoscalersScopedListWarningDataItem
    , autoscalersScopedListWarningDataItem
    , aValue
    , aKey

    -- ** LogConfigDataAccessOptionsLogMode
    , LogConfigDataAccessOptionsLogMode (..)

    -- ** InterconnectOutageNotificationState
    , InterconnectOutageNotificationState (..)

    -- ** ZoneSetPolicyRequest
    , ZoneSetPolicyRequest
    , zoneSetPolicyRequest
    , zsprEtag
    , zsprBindings
    , zsprPolicy

    -- ** VPNTunnelListWarningCode
    , VPNTunnelListWarningCode (..)

    -- ** AutoscalersScopedListWarningCode
    , AutoscalersScopedListWarningCode (..)

    -- ** DiskTypeAggregatedListWarningDataItem
    , DiskTypeAggregatedListWarningDataItem
    , diskTypeAggregatedListWarningDataItem
    , dtalwdiValue
    , dtalwdiKey

    -- ** ForwardingRuleLoadBalancingScheme
    , ForwardingRuleLoadBalancingScheme (..)

    -- ** RegionInstanceGroupManagerListWarning
    , RegionInstanceGroupManagerListWarning
    , regionInstanceGroupManagerListWarning
    , rigmlwData
    , rigmlwCode
    , rigmlwMessage

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
    , igliWarning
    , igliId

    -- ** DiskTypeAggregatedListWarningCode
    , DiskTypeAggregatedListWarningCode (..)

    -- ** Autoscaler
    , Autoscaler
    , autoscaler
    , aaStatus
    , aaKind
    , aaZone
    , aaStatusDetails
    , aaSelfLink
    , aaName
    , aaCreationTimestamp
    , aaAutoscalingPolicy
    , aaId
    , aaRegion
    , aaDescription
    , aaTarget

    -- ** MachineTypeListWarning
    , MachineTypeListWarning
    , machineTypeListWarning
    , mtlwData
    , mtlwCode
    , mtlwMessage

    -- ** TargetHTTPProxyListWarning
    , TargetHTTPProxyListWarning
    , targetHTTPProxyListWarning
    , thttpplwData
    , thttpplwCode
    , thttpplwMessage

    -- ** DiskAggregatedListWarning
    , DiskAggregatedListWarning
    , diskAggregatedListWarning
    , dalwData
    , dalwCode
    , dalwMessage

    -- ** TargetPoolAggregatedListWarning
    , TargetPoolAggregatedListWarning
    , targetPoolAggregatedListWarning
    , tpalwData
    , tpalwCode
    , tpalwMessage

    -- ** UsableSubnetworksAggregatedListWarning
    , UsableSubnetworksAggregatedListWarning
    , usableSubnetworksAggregatedListWarning
    , usalwData
    , usalwCode
    , usalwMessage

    -- ** DisksScopedListWarning
    , DisksScopedListWarning
    , disksScopedListWarning
    , dslwData
    , dslwCode
    , dslwMessage

    -- ** NodeTemplatesScopedListWarningDataItem
    , NodeTemplatesScopedListWarningDataItem
    , nodeTemplatesScopedListWarningDataItem
    , ntslwdiValue
    , ntslwdiKey

    -- ** TargetVPNGatewayAggregatedListItems
    , TargetVPNGatewayAggregatedListItems
    , targetVPNGatewayAggregatedListItems
    , tvgaliAddtional

    -- ** DiskLabels
    , DiskLabels
    , diskLabels
    , dlAddtional

    -- ** InstanceGroupManagerListWarningDataItem
    , InstanceGroupManagerListWarningDataItem
    , instanceGroupManagerListWarningDataItem
    , igmlwdiValue
    , igmlwdiKey

    -- ** InterconnectInterconnectType
    , InterconnectInterconnectType (..)

    -- ** ForwardingRuleAggregatedListWarning
    , ForwardingRuleAggregatedListWarning
    , forwardingRuleAggregatedListWarning
    , fralwData
    , fralwCode
    , fralwMessage

    -- ** InstanceGroupManagerListWarningCode
    , InstanceGroupManagerListWarningCode (..)

    -- ** SSLPolicyWarningsItem
    , SSLPolicyWarningsItem
    , sslPolicyWarningsItem
    , spwiData
    , spwiCode
    , spwiMessage

    -- ** RouterStatusBGPPeerStatusStatus
    , RouterStatusBGPPeerStatusStatus (..)

    -- ** GlobalSetPolicyRequest
    , GlobalSetPolicyRequest
    , globalSetPolicyRequest
    , gsprEtag
    , gsprBindings
    , gsprPolicy

    -- ** RegionAutoscalerListWarningDataItem
    , RegionAutoscalerListWarningDataItem
    , regionAutoscalerListWarningDataItem
    , ralwdiaValue
    , ralwdiaKey

    -- ** DiskListWarningCode
    , DiskListWarningCode (..)

    -- ** GlobalSetLabelsRequestLabels
    , GlobalSetLabelsRequestLabels
    , globalSetLabelsRequestLabels
    , gslrlAddtional

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

    -- ** TargetTCPProxyList
    , TargetTCPProxyList
    , targetTCPProxyList
    , ttplNextPageToken
    , ttplKind
    , ttplItems
    , ttplSelfLink
    , ttplWarning
    , ttplId

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

    -- ** RegionAutoscalerListWarningCode
    , RegionAutoscalerListWarningCode (..)

    -- ** OperationListWarningDataItem
    , OperationListWarningDataItem
    , operationListWarningDataItem
    , olwdiValue
    , olwdiKey

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

    -- ** InstanceGroupManagerAggregatedListWarning
    , InstanceGroupManagerAggregatedListWarning
    , instanceGroupManagerAggregatedListWarning
    , igmalwData
    , igmalwCode
    , igmalwMessage

    -- ** DiskListWarningDataItem
    , DiskListWarningDataItem
    , diskListWarningDataItem
    , dlwdiValue
    , dlwdiKey

    -- ** CommitmentPlan
    , CommitmentPlan (..)

    -- ** OperationListWarningCode
    , OperationListWarningCode (..)

    -- ** SourceInstanceParams
    , SourceInstanceParams
    , sourceInstanceParams
    , sipDiskConfigs

    -- ** AliasIPRange
    , AliasIPRange
    , aliasIPRange
    , airIPCIdRRange
    , airSubnetworkRangeName

    -- ** ForwardingRuleListWarningCode
    , ForwardingRuleListWarningCode (..)

    -- ** NodeTypesScopedListWarningDataItem
    , NodeTypesScopedListWarningDataItem
    , nodeTypesScopedListWarningDataItem
    , ntslwditValue
    , ntslwditKey

    -- ** VPNTunnelsScopedListWarningCode
    , VPNTunnelsScopedListWarningCode (..)

    -- ** TargetInstanceListWarning
    , TargetInstanceListWarning
    , targetInstanceListWarning
    , tilwData
    , tilwCode
    , tilwMessage

    -- ** NodeTypesScopedListWarningCode
    , NodeTypesScopedListWarningCode (..)

    -- ** NodeType
    , NodeType
    , nodeType
    , ntKind
    , ntZone
    , ntCPUPlatform
    , ntLocalSsdGb
    , ntSelfLink
    , ntName
    , ntCreationTimestamp
    , ntId
    , ntGuestCPUs
    , ntMemoryMb
    , ntDescription
    , ntDeprecated

    -- ** AuthorizationLoggingOptions
    , AuthorizationLoggingOptions
    , authorizationLoggingOptions
    , aloPermissionType

    -- ** Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pRules
    , pVersion
    , pBindings
    , pIAMOwned

    -- ** OperationAggregatedListWarning
    , OperationAggregatedListWarning
    , operationAggregatedListWarning
    , oalwData
    , oalwCode
    , oalwMessage

    -- ** TargetInstanceAggregatedListWarningDataItem
    , TargetInstanceAggregatedListWarningDataItem
    , targetInstanceAggregatedListWarningDataItem
    , tialwdiValue
    , tialwdiKey

    -- ** OperationsScopedListWarning
    , OperationsScopedListWarning
    , operationsScopedListWarning
    , oslwData
    , oslwCode
    , oslwMessage

    -- ** RegionDiskTypeListWarningDataItem
    , RegionDiskTypeListWarningDataItem
    , regionDiskTypeListWarningDataItem
    , rdtlwdiValue
    , rdtlwdiKey

    -- ** ForwardingRuleListWarningDataItem
    , ForwardingRuleListWarningDataItem
    , forwardingRuleListWarningDataItem
    , frlwdiValue
    , frlwdiKey

    -- ** Scheduling
    , Scheduling
    , scheduling
    , sAutomaticRestart
    , sNodeAffinities
    , sOnHostMaintenance
    , sPreemptible

    -- ** TargetInstanceAggregatedListWarningCode
    , TargetInstanceAggregatedListWarningCode (..)

    -- ** RegionDiskTypeListWarningCode
    , RegionDiskTypeListWarningCode (..)

    -- ** VPNTunnelsScopedListWarningDataItem
    , VPNTunnelsScopedListWarningDataItem
    , vpnTunnelsScopedListWarningDataItem
    , vtslwdiValue
    , vtslwdiKey

    -- ** InterconnectList
    , InterconnectList
    , interconnectList
    , intnNextPageToken
    , intnKind
    , intnItems
    , intnSelfLink
    , intnWarning
    , intnId

    -- ** TargetPoolListWarningDataItem
    , TargetPoolListWarningDataItem
    , targetPoolListWarningDataItem
    , tplwdiValue
    , tplwdiKey

    -- ** NodeTemplate
    , NodeTemplate
    , nodeTemplate
    , nttStatus
    , nttKind
    , nttSelfLink
    , nttName
    , nttStatusMessage
    , nttCreationTimestamp
    , nttNodeAffinityLabels
    , nttId
    , nttNodeTypeFlexibility
    , nttNodeType
    , nttRegion
    , nttDescription

    -- ** SubnetworkList
    , SubnetworkList
    , subnetworkList
    , slNextPageToken
    , slKind
    , slItems
    , slSelfLink
    , slWarning
    , slId

    -- ** AddressAddressType
    , AddressAddressType (..)

    -- ** TargetPoolListWarningCode
    , TargetPoolListWarningCode (..)

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
    , httphclWarning
    , httphclId

    -- ** InstanceGroupManagersScopedListWarning
    , InstanceGroupManagersScopedListWarning
    , instanceGroupManagersScopedListWarning
    , igmslwData
    , igmslwCode
    , igmslwMessage

    -- ** SSLPoliciesList
    , SSLPoliciesList
    , sslPoliciesList
    , sslplNextPageToken
    , sslplKind
    , sslplItems
    , sslplSelfLink
    , sslplWarning
    , sslplId

    -- ** NodeTemplatesScopedListWarningCode
    , NodeTemplatesScopedListWarningCode (..)

    -- ** URLMapsValidateRequest
    , URLMapsValidateRequest
    , urlMapsValidateRequest
    , umvrResource

    -- ** InstanceGroupManagersSetTargetPoolsRequest
    , InstanceGroupManagersSetTargetPoolsRequest
    , instanceGroupManagersSetTargetPoolsRequest
    , igmstprFingerprint
    , igmstprTargetPools

    -- ** NetworkListWarningCode
    , NetworkListWarningCode (..)

    -- ** Commitment
    , Commitment
    , commitment
    , cStatus
    , cKind
    , cPlan
    , cResources
    , cEndTimestamp
    , cSelfLink
    , cName
    , cStatusMessage
    , cCreationTimestamp
    , cId
    , cRegion
    , cStartTimestamp
    , cDescription

    -- ** HTTPSHealthCheckList
    , HTTPSHealthCheckList
    , httpsHealthCheckList
    , hhclNextPageToken
    , hhclKind
    , hhclItems
    , hhclSelfLink
    , hhclWarning
    , hhclId

    -- ** AddressListWarningDataItem
    , AddressListWarningDataItem
    , addressListWarningDataItem
    , addValue
    , addKey

    -- ** OperationErrorErrorsItem
    , OperationErrorErrorsItem
    , operationErrorErrorsItem
    , oeeiLocation
    , oeeiCode
    , oeeiMessage

    -- ** CommitmentListWarning
    , CommitmentListWarning
    , commitmentListWarning
    , clwData
    , clwCode
    , clwMessage

    -- ** License
    , License
    , license
    , lChargesUseFee
    , lKind
    , lResourceRequirements
    , lTransferable
    , lSelfLink
    , lName
    , lCreationTimestamp
    , lId
    , lDescription
    , lLicenseCode

    -- ** PathRule
    , PathRule
    , pathRule
    , prService
    , prPaths

    -- ** LicenseCodeLicenseAlias
    , LicenseCodeLicenseAlias
    , licenseCodeLicenseAlias
    , lclaSelfLink
    , lclaDescription

    -- ** XpnHostListWarningCode
    , XpnHostListWarningCode (..)

    -- ** InterconnectAttachmentsScopedListWarningDataItem
    , InterconnectAttachmentsScopedListWarningDataItem
    , interconnectAttachmentsScopedListWarningDataItem
    , iaslwdiValue
    , iaslwdiKey

    -- ** SecurityPolicyListWarningDataItem
    , SecurityPolicyListWarningDataItem
    , securityPolicyListWarningDataItem
    , secValue
    , secKey

    -- ** InterconnectAttachmentAggregatedListWarningCode
    , InterconnectAttachmentAggregatedListWarningCode (..)

    -- ** AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- ** CommitmentsScopedListWarningDataItem
    , CommitmentsScopedListWarningDataItem
    , commitmentsScopedListWarningDataItem
    , cslwdiValue
    , cslwdiKey

    -- ** InterconnectAttachment
    , InterconnectAttachment
    , interconnectAttachment
    , iaState
    , iaPartnerASN
    , iaPairingKey
    , iaKind
    , iaCustomerRouterIPAddress
    , iaPartnerMetadata
    , iaRouter
    , iaOperationalStatus
    , iaSelfLink
    , iaName
    , iaBandwidth
    , iaGoogleReferenceId
    , iaCreationTimestamp
    , iaEdgeAvailabilityDomain
    , iaInterconnect
    , iaAdminEnabled
    , iaVLANTag8021q
    , iaCloudRouterIPAddress
    , iaId
    , iaCandidateSubnets
    , iaRegion
    , iaType
    , iaDescription
    , iaPrivateInterconnectInfo

    -- ** InstanceList
    , InstanceList
    , instanceList
    , insNextPageToken
    , insKind
    , insItems
    , insSelfLink
    , insWarning
    , insId

    -- ** RegionSetLabelsRequestLabels
    , RegionSetLabelsRequestLabels
    , regionSetLabelsRequestLabels
    , rslrlAddtional

    -- ** NetworkListWarningDataItem
    , NetworkListWarningDataItem
    , networkListWarningDataItem
    , nlwdiValue
    , nlwdiKey

    -- ** AddressListWarningCode
    , AddressListWarningCode (..)

    -- ** NetworkPeeringState
    , NetworkPeeringState (..)

    -- ** CacheKeyPolicy
    , CacheKeyPolicy
    , cacheKeyPolicy
    , ckpQueryStringWhiteList
    , ckpIncludeHost
    , ckpIncludeProtocol
    , ckpQueryStringBlackList
    , ckpIncludeQueryString

    -- ** ZoneListWarningCode
    , ZoneListWarningCode (..)

    -- ** CommitmentAggregatedListWarningDataItem
    , CommitmentAggregatedListWarningDataItem
    , commitmentAggregatedListWarningDataItem
    , calwdiValue
    , calwdiKey

    -- ** RegionInstanceGroupListWarningDataItem
    , RegionInstanceGroupListWarningDataItem
    , regionInstanceGroupListWarningDataItem
    , riglwdiValue
    , riglwdiKey

    -- ** SubnetworkAggregatedListItems
    , SubnetworkAggregatedListItems
    , subnetworkAggregatedListItems
    , saliAddtional

    -- ** InterconnectAttachmentAggregatedListWarningDataItem
    , InterconnectAttachmentAggregatedListWarningDataItem
    , interconnectAttachmentAggregatedListWarningDataItem
    , iaalwdiValue
    , iaalwdiKey

    -- ** AuthorizationLoggingOptionsPermissionType
    , AuthorizationLoggingOptionsPermissionType (..)

    -- ** InterconnectAttachmentListWarning
    , InterconnectAttachmentListWarning
    , interconnectAttachmentListWarning
    , intData
    , intCode
    , intMessage

    -- ** InterconnectOutageNotificationIssueType
    , InterconnectOutageNotificationIssueType (..)

    -- ** CommitmentsScopedListWarningCode
    , CommitmentsScopedListWarningCode (..)

    -- ** Condition
    , Condition
    , condition
    , cOp
    , cIAM
    , cValues
    , cValue
    , cSys
    , cSvc

    -- ** AddressAggregatedListWarning
    , AddressAggregatedListWarning
    , addressAggregatedListWarning
    , addData
    , addCode
    , addMessage

    -- ** ManagedInstanceLastAttempt
    , ManagedInstanceLastAttempt
    , managedInstanceLastAttempt
    , milaErrors

    -- ** LicensesListResponseWarning
    , LicensesListResponseWarning
    , licensesListResponseWarning
    , llrwData
    , llrwCode
    , llrwMessage

    -- ** AutoscalerStatusDetails
    , AutoscalerStatusDetails
    , autoscalerStatusDetails
    , asdType
    , asdMessage

    -- ** BackendServiceList
    , BackendServiceList
    , backendServiceList
    , bslNextPageToken
    , bslKind
    , bslItems
    , bslSelfLink
    , bslWarning
    , bslId

    -- ** XpnHostListWarningDataItem
    , XpnHostListWarningDataItem
    , xpnHostListWarningDataItem
    , xhlwdiValue
    , xhlwdiKey

    -- ** InterconnectAttachmentsScopedListWarningCode
    , InterconnectAttachmentsScopedListWarningCode (..)

    -- ** SecurityPolicyListWarningCode
    , SecurityPolicyListWarningCode (..)

    -- ** ZoneListWarningDataItem
    , ZoneListWarningDataItem
    , zoneListWarningDataItem
    , zlwdiValue
    , zlwdiKey

    -- ** RegionSetPolicyRequest
    , RegionSetPolicyRequest
    , regionSetPolicyRequest
    , rsprEtag
    , rsprBindings
    , rsprPolicy

    -- ** CommitmentAggregatedListWarningCode
    , CommitmentAggregatedListWarningCode (..)

    -- ** RegionInstanceGroupListWarningCode
    , RegionInstanceGroupListWarningCode (..)

    -- ** InstanceGroupsScopedListWarning
    , InstanceGroupsScopedListWarning
    , instanceGroupsScopedListWarning
    , igslwData
    , igslwCode
    , igslwMessage

    -- ** InterconnectLocationStatus
    , InterconnectLocationStatus (..)

    -- ** AutoscalingPolicyCPUUtilization
    , AutoscalingPolicyCPUUtilization
    , autoscalingPolicyCPUUtilization
    , apcuUtilizationTarget

    -- ** InstanceGroupsScopedListWarningCode
    , InstanceGroupsScopedListWarningCode (..)

    -- ** InterconnectOperationalStatus
    , InterconnectOperationalStatus (..)

    -- ** InstanceGroupsScopedListWarningDataItem
    , InstanceGroupsScopedListWarningDataItem
    , instanceGroupsScopedListWarningDataItem
    , igslwdiValue
    , igslwdiKey

    -- ** SecurityPolicyRuleMatcherConfig
    , SecurityPolicyRuleMatcherConfig
    , securityPolicyRuleMatcherConfig
    , sprmcSrcIPRanges

    -- ** LicensesListResponseWarningDataItem
    , LicensesListResponseWarningDataItem
    , licensesListResponseWarningDataItem
    , llrwdiValue
    , llrwdiKey

    -- ** LicensesListResponseWarningCode
    , LicensesListResponseWarningCode (..)

    -- ** XpnHostListWarning
    , XpnHostListWarning
    , xpnHostListWarning
    , xhlwData
    , xhlwCode
    , xhlwMessage

    -- ** ResourceGroupReference
    , ResourceGroupReference
    , resourceGroupReference
    , rgrGroup

    -- ** VMEndpointNATMAppingsList
    , VMEndpointNATMAppingsList
    , vMEndpointNATMAppingsList
    , vmenatmalNextPageToken
    , vmenatmalKind
    , vmenatmalResult
    , vmenatmalSelfLink
    , vmenatmalWarning
    , vmenatmalId

    -- ** Firewall
    , Firewall
    , firewall
    , fSourceTags
    , fSourceServiceAccounts
    , fPriority
    , fDirection
    , fKind
    , fDisabled
    , fTargetTags
    , fNetwork
    , fSourceRanges
    , fSelfLink
    , fName
    , fDenied
    , fCreationTimestamp
    , fId
    , fAllowed
    , fDestinationRanges
    , fLogConfig
    , fTargetServiceAccounts
    , fDescription

    -- ** InterconnectAttachmentsScopedListWarning
    , InterconnectAttachmentsScopedListWarning
    , interconnectAttachmentsScopedListWarning
    , iaslwData
    , iaslwCode
    , iaslwMessage

    -- ** HostRule
    , HostRule
    , hostRule
    , hrHosts
    , hrDescription
    , hrPathMatcher

    -- ** SecurityPolicyListWarning
    , SecurityPolicyListWarning
    , securityPolicyListWarning
    , secData
    , secCode
    , secMessage

    -- ** Quota
    , Quota
    , quota
    , qOwner
    , qMetric
    , qLimit
    , qUsage

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
    , ig1Subnetwork
    , ig1Id
    , ig1Region
    , ig1Description
    , ig1NamedPorts

    -- ** AddressListWarning
    , AddressListWarning
    , addressListWarning
    , alwlData
    , alwlCode
    , alwlMessage

    -- ** RegionSetLabelsRequest
    , RegionSetLabelsRequest
    , regionSetLabelsRequest
    , rslrLabels
    , rslrLabelFingerprint

    -- ** RouterInterface
    , RouterInterface
    , routerInterface
    , riLinkedInterconnectAttachment
    , riName
    , riManagementType
    , riIPRange
    , riLinkedVPNTunnel

    -- ** InstanceWithNamedPortsStatus
    , InstanceWithNamedPortsStatus (..)

    -- ** NetworkListWarning
    , NetworkListWarning
    , networkListWarning
    , nlwData
    , nlwCode
    , nlwMessage

    -- ** TCPHealthCheckProxyHeader
    , TCPHealthCheckProxyHeader (..)

    -- ** SnapshotList
    , SnapshotList
    , snapshotList
    , snaNextPageToken
    , snaKind
    , snaItems
    , snaSelfLink
    , snaWarning
    , snaId

    -- ** InterconnectDiagnostics
    , InterconnectDiagnostics
    , interconnectDiagnostics
    , idMACAddress
    , idArpCaches
    , idLinks

    -- ** CommitmentListWarningCode
    , CommitmentListWarningCode (..)

    -- ** LicenseCode
    , LicenseCode
    , licenseCode
    , lcState
    , lcKind
    , lcTransferable
    , lcSelfLink
    , lcName
    , lcCreationTimestamp
    , lcId
    , lcLicenseAlias
    , lcDescription

    -- ** TestFailure
    , TestFailure
    , testFailure
    , tfPath
    , tfExpectedService
    , tfHost
    , tfActualService

    -- ** CommitmentListWarningDataItem
    , CommitmentListWarningDataItem
    , commitmentListWarningDataItem
    , clwdiValue
    , clwdiKey

    -- ** ConditionIAM
    , ConditionIAM (..)

    -- ** CommitmentsScopedListWarning
    , CommitmentsScopedListWarning
    , commitmentsScopedListWarning
    , cslwData
    , cslwCode
    , cslwMessage

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
    , tvgalWarning
    , tvgalId

    -- ** InterconnectAttachmentAggregatedListWarning
    , InterconnectAttachmentAggregatedListWarning
    , interconnectAttachmentAggregatedListWarning
    , iaalwData
    , iaalwCode
    , iaalwMessage

    -- ** MetadataItemsItem
    , MetadataItemsItem
    , metadataItemsItem
    , miiValue
    , miiKey

    -- ** SignedURLKey
    , SignedURLKey
    , signedURLKey
    , sukKeyValue
    , sukKeyName

    -- ** TargetHTTPSProxy
    , TargetHTTPSProxy
    , targetHTTPSProxy
    , thpSSLPolicy
    , thpURLMap
    , thpSSLCertificates
    , thpQuicOverride
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

    -- ** InterconnectAttachmentListWarningDataItem
    , InterconnectAttachmentListWarningDataItem
    , interconnectAttachmentListWarningDataItem
    , ialwdiValue
    , ialwdiKey

    -- ** AddressAggregatedListWarningCode
    , AddressAggregatedListWarningCode (..)

    -- ** CacheInvalidationRule
    , CacheInvalidationRule
    , cacheInvalidationRule
    , cirPath
    , cirHost

    -- ** AddressAggregatedListWarningDataItem
    , AddressAggregatedListWarningDataItem
    , addressAggregatedListWarningDataItem
    , aalwdiaValue
    , aalwdiaKey

    -- ** InterconnectAttachmentListWarningCode
    , InterconnectAttachmentListWarningCode (..)

    -- ** TargetVPNGatewaysScopedList
    , TargetVPNGatewaysScopedList
    , targetVPNGatewaysScopedList
    , tvgslTargetVPNGateways
    , tvgslWarning

    -- ** CommitmentAggregatedListWarning
    , CommitmentAggregatedListWarning
    , commitmentAggregatedListWarning
    , calwData
    , calwCode
    , calwMessage

    -- ** RegionInstanceGroupListWarning
    , RegionInstanceGroupListWarning
    , regionInstanceGroupListWarning
    , riglwData
    , riglwCode
    , riglwMessage

    -- ** AccessConfig
    , AccessConfig
    , accessConfig
    , acNetworkTier
    , acSetPublicPtr
    , acKind
    , acName
    , acNATIP
    , acPublicPtrDomainName
    , acType

    -- ** LogConfig
    , LogConfig
    , logConfig
    , lcCloudAudit
    , lcDataAccess
    , lcCounter

    -- ** ZoneListWarning
    , ZoneListWarning
    , zoneListWarning
    , zlwData
    , zlwCode
    , zlwMessage

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

    -- ** SnapshotLabels
    , SnapshotLabels
    , snapshotLabels
    , slAddtional

    -- ** BackendServicesScopedListWarningDataItem
    , BackendServicesScopedListWarningDataItem
    , backendServicesScopedListWarningDataItem
    , bsslwdiValue
    , bsslwdiKey

    -- ** NodeTemplateAggregatedListItems
    , NodeTemplateAggregatedListItems
    , nodeTemplateAggregatedListItems
    , ntaliAddtional

    -- ** BackendService
    , BackendService
    , backendService
    , bsSessionAffinity
    , bsBackends
    , bsAffinityCookieTtlSec
    , bsIap
    , bsLoadBalancingScheme
    , bsKind
    , bsEnableCDN
    , bsFingerprint
    , bsProtocol
    , bsSecurityPolicy
    , bsCdnPolicy
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

    -- ** InstanceListWarning
    , InstanceListWarning
    , instanceListWarning
    , insData
    , insCode
    , insMessage

    -- ** InstanceMoveRequest
    , InstanceMoveRequest
    , instanceMoveRequest
    , imrTargetInstance
    , imrDestinationZone

    -- ** XpnResourceIdType
    , XpnResourceIdType (..)

    -- ** InterconnectDiagnosticsARPEntry
    , InterconnectDiagnosticsARPEntry
    , interconnectDiagnosticsARPEntry
    , idarpeIPAddress
    , idarpeMACAddress

    -- ** BackendServicesScopedListWarningCode
    , BackendServicesScopedListWarningCode (..)

    -- ** CommitmentList
    , CommitmentList
    , commitmentList
    , clNextPageToken
    , clKind
    , clItems
    , clSelfLink
    , clWarning
    , clId

    -- ** TargetPoolSessionAffinity
    , TargetPoolSessionAffinity (..)

    -- ** InstancesSetLabelsRequestLabels
    , InstancesSetLabelsRequestLabels
    , instancesSetLabelsRequestLabels
    , islrlAddtional

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
    , hhcResponse
    , hhcRequestPath
    , hhcHost
    , hhcProxyHeader
    , hhcPortName
    , hhcPort

    -- ** AutoscalerStatus
    , AutoscalerStatus (..)

    -- ** ImageRawDiskContainerType
    , ImageRawDiskContainerType (..)

    -- ** InstanceAggregatedListWarningCode
    , InstanceAggregatedListWarningCode (..)

    -- ** VPNTunnelAggregatedListItems
    , VPNTunnelAggregatedListItems
    , vpnTunnelAggregatedListItems
    , vtaliAddtional

    -- ** ResourceCommitmentType
    , ResourceCommitmentType (..)

    -- ** InstanceAggregatedListWarningDataItem
    , InstanceAggregatedListWarningDataItem
    , instanceAggregatedListWarningDataItem
    , insValue
    , insKey

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
    , addWarning
    , addId

    -- ** InterconnectAttachmentList
    , InterconnectAttachmentList
    , interconnectAttachmentList
    , ialaNextPageToken
    , ialaKind
    , ialaItems
    , ialaSelfLink
    , ialaWarning
    , ialaId

    -- ** OperationWarningsItem
    , OperationWarningsItem
    , operationWarningsItem
    , owiData
    , owiCode
    , owiMessage

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- ** ForwardingRuleNetworkTier
    , ForwardingRuleNetworkTier (..)

    -- ** URLMapTest
    , URLMapTest
    , urlMapTest
    , umtPath
    , umtService
    , umtHost
    , umtDescription

    -- ** HTTPSHealthCheckListWarning
    , HTTPSHealthCheckListWarning
    , httpsHealthCheckListWarning
    , hhclwData
    , hhclwCode
    , hhclwMessage

    -- ** NodeTypeAggregatedListItems
    , NodeTypeAggregatedListItems
    , nodeTypeAggregatedListItems
    , nAddtional

    -- ** RoutersPreviewResponse
    , RoutersPreviewResponse
    , routersPreviewResponse
    , rprResource

    -- ** LicensesListResponse
    , LicensesListResponse
    , licensesListResponse
    , llrNextPageToken
    , llrItems
    , llrSelfLink
    , llrWarning
    , llrId

    -- ** BackendServiceAggregatedListWarningDataItem
    , BackendServiceAggregatedListWarningDataItem
    , backendServiceAggregatedListWarningDataItem
    , bsalwdiValue
    , bsalwdiKey

    -- ** Instance
    , Instance
    , instance'
    , i1Status
    , i1ServiceAccounts
    , i1DeletionProtection
    , i1Hostname
    , i1NetworkInterfaces
    , i1Kind
    , i1Zone
    , i1CPUPlatform
    , i1SelfLink
    , i1GuestAccelerators
    , i1Name
    , i1StatusMessage
    , i1CreationTimestamp
    , i1MachineType
    , i1Metadata
    , i1Id
    , i1Labels
    , i1StartRestricted
    , i1Scheduling
    , i1MinCPUPlatform
    , i1Disks
    , i1CanIPForward
    , i1LabelFingerprint
    , i1Description
    , i1Tags

    -- ** PathMatcher
    , PathMatcher
    , pathMatcher
    , pmDefaultService
    , pmName
    , pmPathRules
    , pmDescription

    -- ** InstanceGroupManagerUpdatePolicyMinimalAction
    , InstanceGroupManagerUpdatePolicyMinimalAction (..)

    -- ** BackendServiceListWarning
    , BackendServiceListWarning
    , backendServiceListWarning
    , bslwData
    , bslwCode
    , bslwMessage

    -- ** BackendServiceAggregatedListWarningCode
    , BackendServiceAggregatedListWarningCode (..)
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Compute.AcceleratorTypes.AggregatedList
import           Network.Google.Resource.Compute.AcceleratorTypes.Get
import           Network.Google.Resource.Compute.AcceleratorTypes.List
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
import           Network.Google.Resource.Compute.BackendBuckets.AddSignedURLKey
import           Network.Google.Resource.Compute.BackendBuckets.Delete
import           Network.Google.Resource.Compute.BackendBuckets.DeleteSignedURLKey
import           Network.Google.Resource.Compute.BackendBuckets.Get
import           Network.Google.Resource.Compute.BackendBuckets.Insert
import           Network.Google.Resource.Compute.BackendBuckets.List
import           Network.Google.Resource.Compute.BackendBuckets.Patch
import           Network.Google.Resource.Compute.BackendBuckets.Update
import           Network.Google.Resource.Compute.BackendServices.AddSignedURLKey
import           Network.Google.Resource.Compute.BackendServices.AggregatedList
import           Network.Google.Resource.Compute.BackendServices.Delete
import           Network.Google.Resource.Compute.BackendServices.DeleteSignedURLKey
import           Network.Google.Resource.Compute.BackendServices.Get
import           Network.Google.Resource.Compute.BackendServices.GetHealth
import           Network.Google.Resource.Compute.BackendServices.Insert
import           Network.Google.Resource.Compute.BackendServices.List
import           Network.Google.Resource.Compute.BackendServices.Patch
import           Network.Google.Resource.Compute.BackendServices.SetSecurityPolicy
import           Network.Google.Resource.Compute.BackendServices.Update
import           Network.Google.Resource.Compute.Disks.AggregatedList
import           Network.Google.Resource.Compute.Disks.CreateSnapshot
import           Network.Google.Resource.Compute.Disks.Delete
import           Network.Google.Resource.Compute.Disks.Get
import           Network.Google.Resource.Compute.Disks.GetIAMPolicy
import           Network.Google.Resource.Compute.Disks.Insert
import           Network.Google.Resource.Compute.Disks.List
import           Network.Google.Resource.Compute.Disks.Resize
import           Network.Google.Resource.Compute.Disks.SetIAMPolicy
import           Network.Google.Resource.Compute.Disks.SetLabels
import           Network.Google.Resource.Compute.Disks.TestIAMPermissions
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
import           Network.Google.Resource.Compute.Images.GetIAMPolicy
import           Network.Google.Resource.Compute.Images.Insert
import           Network.Google.Resource.Compute.Images.List
import           Network.Google.Resource.Compute.Images.SetIAMPolicy
import           Network.Google.Resource.Compute.Images.SetLabels
import           Network.Google.Resource.Compute.Images.TestIAMPermissions
import           Network.Google.Resource.Compute.InstanceGroupManagers.AbandonInstances
import           Network.Google.Resource.Compute.InstanceGroupManagers.AggregatedList
import           Network.Google.Resource.Compute.InstanceGroupManagers.Delete
import           Network.Google.Resource.Compute.InstanceGroupManagers.DeleteInstances
import           Network.Google.Resource.Compute.InstanceGroupManagers.Get
import           Network.Google.Resource.Compute.InstanceGroupManagers.Insert
import           Network.Google.Resource.Compute.InstanceGroupManagers.List
import           Network.Google.Resource.Compute.InstanceGroupManagers.ListManagedInstances
import           Network.Google.Resource.Compute.InstanceGroupManagers.Patch
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
import           Network.Google.Resource.Compute.Instances.GetIAMPolicy
import           Network.Google.Resource.Compute.Instances.GetSerialPortOutput
import           Network.Google.Resource.Compute.Instances.Insert
import           Network.Google.Resource.Compute.Instances.List
import           Network.Google.Resource.Compute.Instances.ListReferrers
import           Network.Google.Resource.Compute.Instances.Reset
import           Network.Google.Resource.Compute.Instances.SetDeletionProtection
import           Network.Google.Resource.Compute.Instances.SetDiskAutoDelete
import           Network.Google.Resource.Compute.Instances.SetIAMPolicy
import           Network.Google.Resource.Compute.Instances.SetLabels
import           Network.Google.Resource.Compute.Instances.SetMachineResources
import           Network.Google.Resource.Compute.Instances.SetMachineType
import           Network.Google.Resource.Compute.Instances.SetMetadata
import           Network.Google.Resource.Compute.Instances.SetMinCPUPlatform
import           Network.Google.Resource.Compute.Instances.SetScheduling
import           Network.Google.Resource.Compute.Instances.SetServiceAccount
import           Network.Google.Resource.Compute.Instances.SetTags
import           Network.Google.Resource.Compute.Instances.SimulateMaintenanceEvent
import           Network.Google.Resource.Compute.Instances.Start
import           Network.Google.Resource.Compute.Instances.StartWithEncryptionKey
import           Network.Google.Resource.Compute.Instances.Stop
import           Network.Google.Resource.Compute.Instances.TestIAMPermissions
import           Network.Google.Resource.Compute.Instances.UpdateAccessConfig
import           Network.Google.Resource.Compute.Instances.UpdateNetworkInterface
import           Network.Google.Resource.Compute.InstanceTemplates.Delete
import           Network.Google.Resource.Compute.InstanceTemplates.Get
import           Network.Google.Resource.Compute.InstanceTemplates.GetIAMPolicy
import           Network.Google.Resource.Compute.InstanceTemplates.Insert
import           Network.Google.Resource.Compute.InstanceTemplates.List
import           Network.Google.Resource.Compute.InstanceTemplates.SetIAMPolicy
import           Network.Google.Resource.Compute.InstanceTemplates.TestIAMPermissions
import           Network.Google.Resource.Compute.InterconnectAttachments.AggregatedList
import           Network.Google.Resource.Compute.InterconnectAttachments.Delete
import           Network.Google.Resource.Compute.InterconnectAttachments.Get
import           Network.Google.Resource.Compute.InterconnectAttachments.Insert
import           Network.Google.Resource.Compute.InterconnectAttachments.List
import           Network.Google.Resource.Compute.InterconnectAttachments.Patch
import           Network.Google.Resource.Compute.InterconnectLocations.Get
import           Network.Google.Resource.Compute.InterconnectLocations.List
import           Network.Google.Resource.Compute.Interconnects.Delete
import           Network.Google.Resource.Compute.Interconnects.Get
import           Network.Google.Resource.Compute.Interconnects.GetDiagnostics
import           Network.Google.Resource.Compute.Interconnects.Insert
import           Network.Google.Resource.Compute.Interconnects.List
import           Network.Google.Resource.Compute.Interconnects.Patch
import           Network.Google.Resource.Compute.LicenseCodes.Get
import           Network.Google.Resource.Compute.LicenseCodes.TestIAMPermissions
import           Network.Google.Resource.Compute.Licenses.Delete
import           Network.Google.Resource.Compute.Licenses.Get
import           Network.Google.Resource.Compute.Licenses.GetIAMPolicy
import           Network.Google.Resource.Compute.Licenses.Insert
import           Network.Google.Resource.Compute.Licenses.List
import           Network.Google.Resource.Compute.Licenses.SetIAMPolicy
import           Network.Google.Resource.Compute.Licenses.TestIAMPermissions
import           Network.Google.Resource.Compute.MachineTypes.AggregatedList
import           Network.Google.Resource.Compute.MachineTypes.Get
import           Network.Google.Resource.Compute.MachineTypes.List
import           Network.Google.Resource.Compute.Networks.AddPeering
import           Network.Google.Resource.Compute.Networks.Delete
import           Network.Google.Resource.Compute.Networks.Get
import           Network.Google.Resource.Compute.Networks.Insert
import           Network.Google.Resource.Compute.Networks.List
import           Network.Google.Resource.Compute.Networks.Patch
import           Network.Google.Resource.Compute.Networks.RemovePeering
import           Network.Google.Resource.Compute.Networks.SwitchToCustomMode
import           Network.Google.Resource.Compute.NodeGroups.AddNodes
import           Network.Google.Resource.Compute.NodeGroups.AggregatedList
import           Network.Google.Resource.Compute.NodeGroups.Delete
import           Network.Google.Resource.Compute.NodeGroups.DeleteNodes
import           Network.Google.Resource.Compute.NodeGroups.Get
import           Network.Google.Resource.Compute.NodeGroups.GetIAMPolicy
import           Network.Google.Resource.Compute.NodeGroups.Insert
import           Network.Google.Resource.Compute.NodeGroups.List
import           Network.Google.Resource.Compute.NodeGroups.ListNodes
import           Network.Google.Resource.Compute.NodeGroups.SetIAMPolicy
import           Network.Google.Resource.Compute.NodeGroups.SetNodeTemplate
import           Network.Google.Resource.Compute.NodeGroups.TestIAMPermissions
import           Network.Google.Resource.Compute.NodeTemplates.AggregatedList
import           Network.Google.Resource.Compute.NodeTemplates.Delete
import           Network.Google.Resource.Compute.NodeTemplates.Get
import           Network.Google.Resource.Compute.NodeTemplates.GetIAMPolicy
import           Network.Google.Resource.Compute.NodeTemplates.Insert
import           Network.Google.Resource.Compute.NodeTemplates.List
import           Network.Google.Resource.Compute.NodeTemplates.SetIAMPolicy
import           Network.Google.Resource.Compute.NodeTemplates.TestIAMPermissions
import           Network.Google.Resource.Compute.NodeTypes.AggregatedList
import           Network.Google.Resource.Compute.NodeTypes.Get
import           Network.Google.Resource.Compute.NodeTypes.List
import           Network.Google.Resource.Compute.Projects.DisableXpnHost
import           Network.Google.Resource.Compute.Projects.DisableXpnResource
import           Network.Google.Resource.Compute.Projects.EnableXpnHost
import           Network.Google.Resource.Compute.Projects.EnableXpnResource
import           Network.Google.Resource.Compute.Projects.Get
import           Network.Google.Resource.Compute.Projects.GetXpnHost
import           Network.Google.Resource.Compute.Projects.GetXpnResources
import           Network.Google.Resource.Compute.Projects.ListXpnHosts
import           Network.Google.Resource.Compute.Projects.MoveDisk
import           Network.Google.Resource.Compute.Projects.MoveInstance
import           Network.Google.Resource.Compute.Projects.SetCommonInstanceMetadata
import           Network.Google.Resource.Compute.Projects.SetDefaultNetworkTier
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
import           Network.Google.Resource.Compute.RegionCommitments.AggregatedList
import           Network.Google.Resource.Compute.RegionCommitments.Get
import           Network.Google.Resource.Compute.RegionCommitments.Insert
import           Network.Google.Resource.Compute.RegionCommitments.List
import           Network.Google.Resource.Compute.RegionDisks.CreateSnapshot
import           Network.Google.Resource.Compute.RegionDisks.Delete
import           Network.Google.Resource.Compute.RegionDisks.Get
import           Network.Google.Resource.Compute.RegionDisks.Insert
import           Network.Google.Resource.Compute.RegionDisks.List
import           Network.Google.Resource.Compute.RegionDisks.Resize
import           Network.Google.Resource.Compute.RegionDisks.SetLabels
import           Network.Google.Resource.Compute.RegionDisks.TestIAMPermissions
import           Network.Google.Resource.Compute.RegionDiskTypes.Get
import           Network.Google.Resource.Compute.RegionDiskTypes.List
import           Network.Google.Resource.Compute.RegionInstanceGroupManagers.AbandonInstances
import           Network.Google.Resource.Compute.RegionInstanceGroupManagers.Delete
import           Network.Google.Resource.Compute.RegionInstanceGroupManagers.DeleteInstances
import           Network.Google.Resource.Compute.RegionInstanceGroupManagers.Get
import           Network.Google.Resource.Compute.RegionInstanceGroupManagers.Insert
import           Network.Google.Resource.Compute.RegionInstanceGroupManagers.List
import           Network.Google.Resource.Compute.RegionInstanceGroupManagers.ListManagedInstances
import           Network.Google.Resource.Compute.RegionInstanceGroupManagers.Patch
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
import           Network.Google.Resource.Compute.Routers.GetNATMAppingInfo
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
import           Network.Google.Resource.Compute.SecurityPolicies.AddRule
import           Network.Google.Resource.Compute.SecurityPolicies.Delete
import           Network.Google.Resource.Compute.SecurityPolicies.Get
import           Network.Google.Resource.Compute.SecurityPolicies.GetRule
import           Network.Google.Resource.Compute.SecurityPolicies.Insert
import           Network.Google.Resource.Compute.SecurityPolicies.List
import           Network.Google.Resource.Compute.SecurityPolicies.Patch
import           Network.Google.Resource.Compute.SecurityPolicies.PatchRule
import           Network.Google.Resource.Compute.SecurityPolicies.RemoveRule
import           Network.Google.Resource.Compute.Snapshots.Delete
import           Network.Google.Resource.Compute.Snapshots.Get
import           Network.Google.Resource.Compute.Snapshots.GetIAMPolicy
import           Network.Google.Resource.Compute.Snapshots.List
import           Network.Google.Resource.Compute.Snapshots.SetIAMPolicy
import           Network.Google.Resource.Compute.Snapshots.SetLabels
import           Network.Google.Resource.Compute.Snapshots.TestIAMPermissions
import           Network.Google.Resource.Compute.SSLCertificates.Delete
import           Network.Google.Resource.Compute.SSLCertificates.Get
import           Network.Google.Resource.Compute.SSLCertificates.Insert
import           Network.Google.Resource.Compute.SSLCertificates.List
import           Network.Google.Resource.Compute.SSLPolicies.Delete
import           Network.Google.Resource.Compute.SSLPolicies.Get
import           Network.Google.Resource.Compute.SSLPolicies.Insert
import           Network.Google.Resource.Compute.SSLPolicies.List
import           Network.Google.Resource.Compute.SSLPolicies.ListAvailableFeatures
import           Network.Google.Resource.Compute.SSLPolicies.Patch
import           Network.Google.Resource.Compute.Subnetworks.AggregatedList
import           Network.Google.Resource.Compute.Subnetworks.Delete
import           Network.Google.Resource.Compute.Subnetworks.ExpandIPCIdRRange
import           Network.Google.Resource.Compute.Subnetworks.Get
import           Network.Google.Resource.Compute.Subnetworks.GetIAMPolicy
import           Network.Google.Resource.Compute.Subnetworks.Insert
import           Network.Google.Resource.Compute.Subnetworks.List
import           Network.Google.Resource.Compute.Subnetworks.ListUsable
import           Network.Google.Resource.Compute.Subnetworks.Patch
import           Network.Google.Resource.Compute.Subnetworks.SetIAMPolicy
import           Network.Google.Resource.Compute.Subnetworks.SetPrivateIPGoogleAccess
import           Network.Google.Resource.Compute.Subnetworks.TestIAMPermissions
import           Network.Google.Resource.Compute.TargetHTTPProxies.Delete
import           Network.Google.Resource.Compute.TargetHTTPProxies.Get
import           Network.Google.Resource.Compute.TargetHTTPProxies.Insert
import           Network.Google.Resource.Compute.TargetHTTPProxies.List
import           Network.Google.Resource.Compute.TargetHTTPProxies.SetURLMap
import           Network.Google.Resource.Compute.TargetHTTPSProxies.Delete
import           Network.Google.Resource.Compute.TargetHTTPSProxies.Get
import           Network.Google.Resource.Compute.TargetHTTPSProxies.Insert
import           Network.Google.Resource.Compute.TargetHTTPSProxies.List
import           Network.Google.Resource.Compute.TargetHTTPSProxies.SetQuicOverride
import           Network.Google.Resource.Compute.TargetHTTPSProxies.SetSSLCertificates
import           Network.Google.Resource.Compute.TargetHTTPSProxies.SetSSLPolicy
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
import           Network.Google.Resource.Compute.TargetSSLProxies.SetSSLPolicy
import           Network.Google.Resource.Compute.TargetTCPProxies.Delete
import           Network.Google.Resource.Compute.TargetTCPProxies.Get
import           Network.Google.Resource.Compute.TargetTCPProxies.Insert
import           Network.Google.Resource.Compute.TargetTCPProxies.List
import           Network.Google.Resource.Compute.TargetTCPProxies.SetBackendService
import           Network.Google.Resource.Compute.TargetTCPProxies.SetProxyHeader
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
       ImagesGetIAMPolicyResource
       :<|> ImagesGetResource
       :<|> ImagesGetFromFamilyResource
       :<|> ImagesSetIAMPolicyResource
       :<|> ImagesSetLabelsResource
       :<|> ImagesDeprecateResource
       :<|> ImagesTestIAMPermissionsResource
       :<|> ImagesDeleteResource
       :<|> AcceleratorTypesAggregatedListResource
       :<|> AcceleratorTypesListResource
       :<|> AcceleratorTypesGetResource
       :<|> URLMapsInsertResource
       :<|> URLMapsListResource
       :<|> URLMapsPatchResource
       :<|> URLMapsGetResource
       :<|> URLMapsInvalidateCacheResource
       :<|> URLMapsValidateResource
       :<|> URLMapsDeleteResource
       :<|> URLMapsUpdateResource
       :<|> NodeGroupsAggregatedListResource
       :<|> NodeGroupsInsertResource
       :<|> NodeGroupsListResource
       :<|> NodeGroupsAddNodesResource
       :<|> NodeGroupsGetIAMPolicyResource
       :<|> NodeGroupsGetResource
       :<|> NodeGroupsSetIAMPolicyResource
       :<|> NodeGroupsDeleteNodesResource
       :<|> NodeGroupsSetNodeTemplateResource
       :<|> NodeGroupsTestIAMPermissionsResource
       :<|> NodeGroupsDeleteResource
       :<|> NodeGroupsListNodesResource
       :<|> TargetTCPProxiesInsertResource
       :<|> TargetTCPProxiesListResource
       :<|> TargetTCPProxiesGetResource
       :<|> TargetTCPProxiesSetBackendServiceResource
       :<|> TargetTCPProxiesDeleteResource
       :<|> TargetTCPProxiesSetProxyHeaderResource
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
       :<|> InstanceTemplatesGetIAMPolicyResource
       :<|> InstanceTemplatesGetResource
       :<|> InstanceTemplatesSetIAMPolicyResource
       :<|> InstanceTemplatesTestIAMPermissionsResource
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
       :<|> NetworksPatchResource
       :<|> NetworksGetResource
       :<|> NetworksSwitchToCustomModeResource
       :<|> NetworksRemovePeeringResource
       :<|> NetworksAddPeeringResource
       :<|> NetworksDeleteResource
       :<|> RoutersGetNATMAppingInfoResource
       :<|> RoutersAggregatedListResource
       :<|> RoutersInsertResource
       :<|> RoutersListResource
       :<|> RoutersPatchResource
       :<|> RoutersGetResource
       :<|> RoutersPreviewResource
       :<|> RoutersDeleteResource
       :<|> RoutersUpdateResource
       :<|> RoutersGetRouterStatusResource
       :<|> SecurityPoliciesInsertResource
       :<|> SecurityPoliciesListResource
       :<|> SecurityPoliciesRemoveRuleResource
       :<|> SecurityPoliciesPatchRuleResource
       :<|> SecurityPoliciesGetRuleResource
       :<|> SecurityPoliciesPatchResource
       :<|> SecurityPoliciesGetResource
       :<|> SecurityPoliciesAddRuleResource
       :<|> SecurityPoliciesDeleteResource
       :<|> AddressesAggregatedListResource
       :<|> AddressesInsertResource
       :<|> AddressesListResource
       :<|> AddressesGetResource
       :<|> AddressesDeleteResource
       :<|> RegionCommitmentsAggregatedListResource
       :<|> RegionCommitmentsInsertResource
       :<|> RegionCommitmentsListResource
       :<|> RegionCommitmentsGetResource
       :<|> NodeTypesAggregatedListResource
       :<|> NodeTypesListResource
       :<|> NodeTypesGetResource
       :<|> GlobalAddressesInsertResource
       :<|> GlobalAddressesListResource
       :<|> GlobalAddressesGetResource
       :<|> GlobalAddressesDeleteResource
       :<|> RegionsListResource
       :<|> RegionsGetResource
       :<|> NodeTemplatesAggregatedListResource
       :<|> NodeTemplatesInsertResource
       :<|> NodeTemplatesListResource
       :<|> NodeTemplatesGetIAMPolicyResource
       :<|> NodeTemplatesGetResource
       :<|> NodeTemplatesSetIAMPolicyResource
       :<|> NodeTemplatesTestIAMPermissionsResource
       :<|> NodeTemplatesDeleteResource
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
       :<|> RegionDisksInsertResource
       :<|> RegionDisksResizeResource
       :<|> RegionDisksListResource
       :<|> RegionDisksGetResource
       :<|> RegionDisksSetLabelsResource
       :<|> RegionDisksCreateSnapshotResource
       :<|> RegionDisksTestIAMPermissionsResource
       :<|> RegionDisksDeleteResource
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
       :<|> RegionInstanceGroupManagersPatchResource
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
       :<|> SubnetworksGetIAMPolicyResource
       :<|> SubnetworksPatchResource
       :<|> SubnetworksGetResource
       :<|> SubnetworksSetIAMPolicyResource
       :<|> SubnetworksTestIAMPermissionsResource
       :<|> SubnetworksSetPrivateIPGoogleAccessResource
       :<|> SubnetworksListUsableResource
       :<|> SubnetworksDeleteResource
       :<|> InterconnectsInsertResource
       :<|> InterconnectsGetDiagnosticsResource
       :<|> InterconnectsListResource
       :<|> InterconnectsPatchResource
       :<|> InterconnectsGetResource
       :<|> InterconnectsDeleteResource
       :<|> InterconnectLocationsListResource
       :<|> InterconnectLocationsGetResource
       :<|> SnapshotsListResource
       :<|> SnapshotsGetIAMPolicyResource
       :<|> SnapshotsGetResource
       :<|> SnapshotsSetIAMPolicyResource
       :<|> SnapshotsSetLabelsResource
       :<|> SnapshotsTestIAMPermissionsResource
       :<|> SnapshotsDeleteResource
       :<|> TargetSSLProxiesInsertResource
       :<|> TargetSSLProxiesListResource
       :<|> TargetSSLProxiesSetSSLCertificatesResource
       :<|> TargetSSLProxiesGetResource
       :<|> TargetSSLProxiesSetBackendServiceResource
       :<|> TargetSSLProxiesSetSSLPolicyResource
       :<|> TargetSSLProxiesDeleteResource
       :<|> TargetSSLProxiesSetProxyHeaderResource
       :<|> HTTPSHealthChecksInsertResource
       :<|> HTTPSHealthChecksListResource
       :<|> HTTPSHealthChecksPatchResource
       :<|> HTTPSHealthChecksGetResource
       :<|> HTTPSHealthChecksDeleteResource
       :<|> HTTPSHealthChecksUpdateResource
       :<|> SSLPoliciesListAvailableFeaturesResource
       :<|> SSLPoliciesInsertResource
       :<|> SSLPoliciesListResource
       :<|> SSLPoliciesPatchResource
       :<|> SSLPoliciesGetResource
       :<|> SSLPoliciesDeleteResource
       :<|> InstancesAddAccessConfigResource
       :<|> InstancesSimulateMaintenanceEventResource
       :<|> InstancesAggregatedListResource
       :<|> InstancesInsertResource
       :<|> InstancesListReferrersResource
       :<|> InstancesDetachDiskResource
       :<|> InstancesListResource
       :<|> InstancesSetDeletionProtectionResource
       :<|> InstancesStartResource
       :<|> InstancesGetIAMPolicyResource
       :<|> InstancesSetServiceAccountResource
       :<|> InstancesGetResource
       :<|> InstancesSetMachineResourcesResource
       :<|> InstancesSetIAMPolicyResource
       :<|> InstancesSetLabelsResource
       :<|> InstancesSetMachineTypeResource
       :<|> InstancesUpdateAccessConfigResource
       :<|> InstancesDeleteAccessConfigResource
       :<|> InstancesSetMetadataResource
       :<|> InstancesSetSchedulingResource
       :<|> InstancesStartWithEncryptionKeyResource
       :<|> InstancesUpdateNetworkInterfaceResource
       :<|> InstancesResetResource
       :<|> InstancesStopResource
       :<|> InstancesGetSerialPortOutputResource
       :<|> InstancesTestIAMPermissionsResource
       :<|> InstancesSetTagsResource
       :<|> InstancesAttachDiskResource
       :<|> InstancesDeleteResource
       :<|> InstancesSetDiskAutoDeleteResource
       :<|> InstancesSetMinCPUPlatformResource
       :<|> BackendServicesAddSignedURLKeyResource
       :<|> BackendServicesAggregatedListResource
       :<|> BackendServicesInsertResource
       :<|> BackendServicesListResource
       :<|> BackendServicesGetHealthResource
       :<|> BackendServicesPatchResource
       :<|> BackendServicesGetResource
       :<|> BackendServicesSetSecurityPolicyResource
       :<|> BackendServicesDeleteSignedURLKeyResource
       :<|> BackendServicesDeleteResource
       :<|> BackendServicesUpdateResource
       :<|> LicenseCodesGetResource
       :<|> LicenseCodesTestIAMPermissionsResource
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
       :<|> LicensesInsertResource
       :<|> LicensesListResource
       :<|> LicensesGetIAMPolicyResource
       :<|> LicensesGetResource
       :<|> LicensesSetIAMPolicyResource
       :<|> LicensesTestIAMPermissionsResource
       :<|> LicensesDeleteResource
       :<|> ZoneOperationsListResource
       :<|> ZoneOperationsGetResource
       :<|> ZoneOperationsDeleteResource
       :<|> InterconnectAttachmentsAggregatedListResource
       :<|> InterconnectAttachmentsInsertResource
       :<|> InterconnectAttachmentsListResource
       :<|> InterconnectAttachmentsPatchResource
       :<|> InterconnectAttachmentsGetResource
       :<|> InterconnectAttachmentsDeleteResource
       :<|> TargetHTTPSProxiesInsertResource
       :<|> TargetHTTPSProxiesListResource
       :<|> TargetHTTPSProxiesSetURLMapResource
       :<|> TargetHTTPSProxiesSetSSLCertificatesResource
       :<|> TargetHTTPSProxiesSetQuicOverrideResource
       :<|> TargetHTTPSProxiesGetResource
       :<|> TargetHTTPSProxiesSetSSLPolicyResource
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
       :<|> DisksGetIAMPolicyResource
       :<|> DisksGetResource
       :<|> DisksSetIAMPolicyResource
       :<|> DisksSetLabelsResource
       :<|> DisksCreateSnapshotResource
       :<|> DisksTestIAMPermissionsResource
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
       :<|> InstanceGroupManagersPatchResource
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
       :<|> ProjectsEnableXpnHostResource
       :<|> ProjectsListXpnHostsResource
       :<|> ProjectsDisableXpnHostResource
       :<|> ProjectsEnableXpnResourceResource
       :<|> ProjectsSetUsageExportBucketResource
       :<|> ProjectsMoveInstanceResource
       :<|> ProjectsDisableXpnResourceResource
       :<|> ProjectsGetXpnHostResource
       :<|> ProjectsGetResource
       :<|> ProjectsMoveDiskResource
       :<|> ProjectsSetDefaultNetworkTierResource
       :<|> ProjectsSetCommonInstanceMetadataResource
       :<|> ProjectsGetXpnResourcesResource
       :<|> RegionDiskTypesListResource
       :<|> RegionDiskTypesGetResource
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
       :<|> BackendBucketsAddSignedURLKeyResource
       :<|> BackendBucketsInsertResource
       :<|> BackendBucketsListResource
       :<|> BackendBucketsPatchResource
       :<|> BackendBucketsGetResource
       :<|> BackendBucketsDeleteSignedURLKeyResource
       :<|> BackendBucketsDeleteResource
       :<|> BackendBucketsUpdateResource
