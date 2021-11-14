{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Compute
-- Copyright   : (c) 2015-2021 Brendan Hay
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

    -- ** compute.disks.addResourcePolicies
    , module Network.Google.Resource.Compute.Disks.AddResourcePolicies

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

    -- ** compute.disks.removeResourcePolicies
    , module Network.Google.Resource.Compute.Disks.RemoveResourcePolicies

    -- ** compute.disks.resize
    , module Network.Google.Resource.Compute.Disks.Resize

    -- ** compute.disks.setIamPolicy
    , module Network.Google.Resource.Compute.Disks.SetIAMPolicy

    -- ** compute.disks.setLabels
    , module Network.Google.Resource.Compute.Disks.SetLabels

    -- ** compute.disks.testIamPermissions
    , module Network.Google.Resource.Compute.Disks.TestIAMPermissions

    -- ** compute.externalVpnGateways.delete
    , module Network.Google.Resource.Compute.ExternalVPNGateways.Delete

    -- ** compute.externalVpnGateways.get
    , module Network.Google.Resource.Compute.ExternalVPNGateways.Get

    -- ** compute.externalVpnGateways.insert
    , module Network.Google.Resource.Compute.ExternalVPNGateways.Insert

    -- ** compute.externalVpnGateways.list
    , module Network.Google.Resource.Compute.ExternalVPNGateways.List

    -- ** compute.externalVpnGateways.setLabels
    , module Network.Google.Resource.Compute.ExternalVPNGateways.SetLabels

    -- ** compute.externalVpnGateways.testIamPermissions
    , module Network.Google.Resource.Compute.ExternalVPNGateways.TestIAMPermissions

    -- ** compute.firewallPolicies.addAssociation
    , module Network.Google.Resource.Compute.FirewallPolicies.AddAssociation

    -- ** compute.firewallPolicies.addRule
    , module Network.Google.Resource.Compute.FirewallPolicies.AddRule

    -- ** compute.firewallPolicies.cloneRules
    , module Network.Google.Resource.Compute.FirewallPolicies.CloneRules

    -- ** compute.firewallPolicies.delete
    , module Network.Google.Resource.Compute.FirewallPolicies.Delete

    -- ** compute.firewallPolicies.get
    , module Network.Google.Resource.Compute.FirewallPolicies.Get

    -- ** compute.firewallPolicies.getAssociation
    , module Network.Google.Resource.Compute.FirewallPolicies.GetAssociation

    -- ** compute.firewallPolicies.getIamPolicy
    , module Network.Google.Resource.Compute.FirewallPolicies.GetIAMPolicy

    -- ** compute.firewallPolicies.getRule
    , module Network.Google.Resource.Compute.FirewallPolicies.GetRule

    -- ** compute.firewallPolicies.insert
    , module Network.Google.Resource.Compute.FirewallPolicies.Insert

    -- ** compute.firewallPolicies.list
    , module Network.Google.Resource.Compute.FirewallPolicies.List

    -- ** compute.firewallPolicies.listAssociations
    , module Network.Google.Resource.Compute.FirewallPolicies.ListAssociations

    -- ** compute.firewallPolicies.move
    , module Network.Google.Resource.Compute.FirewallPolicies.Move

    -- ** compute.firewallPolicies.patch
    , module Network.Google.Resource.Compute.FirewallPolicies.Patch

    -- ** compute.firewallPolicies.patchRule
    , module Network.Google.Resource.Compute.FirewallPolicies.PatchRule

    -- ** compute.firewallPolicies.removeAssociation
    , module Network.Google.Resource.Compute.FirewallPolicies.RemoveAssociation

    -- ** compute.firewallPolicies.removeRule
    , module Network.Google.Resource.Compute.FirewallPolicies.RemoveRule

    -- ** compute.firewallPolicies.setIamPolicy
    , module Network.Google.Resource.Compute.FirewallPolicies.SetIAMPolicy

    -- ** compute.firewallPolicies.testIamPermissions
    , module Network.Google.Resource.Compute.FirewallPolicies.TestIAMPermissions

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

    -- ** compute.forwardingRules.patch
    , module Network.Google.Resource.Compute.ForwardingRules.Patch

    -- ** compute.forwardingRules.setLabels
    , module Network.Google.Resource.Compute.ForwardingRules.SetLabels

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

    -- ** compute.globalForwardingRules.patch
    , module Network.Google.Resource.Compute.GlobalForwardingRules.Patch

    -- ** compute.globalForwardingRules.setLabels
    , module Network.Google.Resource.Compute.GlobalForwardingRules.SetLabels

    -- ** compute.globalForwardingRules.setTarget
    , module Network.Google.Resource.Compute.GlobalForwardingRules.SetTarget

    -- ** compute.globalNetworkEndpointGroups.attachNetworkEndpoints
    , module Network.Google.Resource.Compute.GlobalNetworkEndpointGroups.AttachNetworkEndpoints

    -- ** compute.globalNetworkEndpointGroups.delete
    , module Network.Google.Resource.Compute.GlobalNetworkEndpointGroups.Delete

    -- ** compute.globalNetworkEndpointGroups.detachNetworkEndpoints
    , module Network.Google.Resource.Compute.GlobalNetworkEndpointGroups.DetachNetworkEndpoints

    -- ** compute.globalNetworkEndpointGroups.get
    , module Network.Google.Resource.Compute.GlobalNetworkEndpointGroups.Get

    -- ** compute.globalNetworkEndpointGroups.insert
    , module Network.Google.Resource.Compute.GlobalNetworkEndpointGroups.Insert

    -- ** compute.globalNetworkEndpointGroups.list
    , module Network.Google.Resource.Compute.GlobalNetworkEndpointGroups.List

    -- ** compute.globalNetworkEndpointGroups.listNetworkEndpoints
    , module Network.Google.Resource.Compute.GlobalNetworkEndpointGroups.ListNetworkEndpoints

    -- ** compute.globalOperations.aggregatedList
    , module Network.Google.Resource.Compute.GlobalOperations.AggregatedList

    -- ** compute.globalOperations.delete
    , module Network.Google.Resource.Compute.GlobalOperations.Delete

    -- ** compute.globalOperations.get
    , module Network.Google.Resource.Compute.GlobalOperations.Get

    -- ** compute.globalOperations.list
    , module Network.Google.Resource.Compute.GlobalOperations.List

    -- ** compute.globalOperations.wait
    , module Network.Google.Resource.Compute.GlobalOperations.Wait

    -- ** compute.globalOrganizationOperations.delete
    , module Network.Google.Resource.Compute.GlobalOrganizationOperations.Delete

    -- ** compute.globalOrganizationOperations.get
    , module Network.Google.Resource.Compute.GlobalOrganizationOperations.Get

    -- ** compute.globalOrganizationOperations.list
    , module Network.Google.Resource.Compute.GlobalOrganizationOperations.List

    -- ** compute.globalPublicDelegatedPrefixes.delete
    , module Network.Google.Resource.Compute.GlobalPublicDelegatedPrefixes.Delete

    -- ** compute.globalPublicDelegatedPrefixes.get
    , module Network.Google.Resource.Compute.GlobalPublicDelegatedPrefixes.Get

    -- ** compute.globalPublicDelegatedPrefixes.insert
    , module Network.Google.Resource.Compute.GlobalPublicDelegatedPrefixes.Insert

    -- ** compute.globalPublicDelegatedPrefixes.list
    , module Network.Google.Resource.Compute.GlobalPublicDelegatedPrefixes.List

    -- ** compute.globalPublicDelegatedPrefixes.patch
    , module Network.Google.Resource.Compute.GlobalPublicDelegatedPrefixes.Patch

    -- ** compute.healthChecks.aggregatedList
    , module Network.Google.Resource.Compute.HealthChecks.AggregatedList

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

    -- ** compute.images.patch
    , module Network.Google.Resource.Compute.Images.Patch

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

    -- ** compute.instanceGroupManagers.applyUpdatesToInstances
    , module Network.Google.Resource.Compute.InstanceGroupManagers.ApplyUpdatesToInstances

    -- ** compute.instanceGroupManagers.createInstances
    , module Network.Google.Resource.Compute.InstanceGroupManagers.CreateInstances

    -- ** compute.instanceGroupManagers.delete
    , module Network.Google.Resource.Compute.InstanceGroupManagers.Delete

    -- ** compute.instanceGroupManagers.deleteInstances
    , module Network.Google.Resource.Compute.InstanceGroupManagers.DeleteInstances

    -- ** compute.instanceGroupManagers.deletePerInstanceConfigs
    , module Network.Google.Resource.Compute.InstanceGroupManagers.DeletePerInstanceConfigs

    -- ** compute.instanceGroupManagers.get
    , module Network.Google.Resource.Compute.InstanceGroupManagers.Get

    -- ** compute.instanceGroupManagers.insert
    , module Network.Google.Resource.Compute.InstanceGroupManagers.Insert

    -- ** compute.instanceGroupManagers.list
    , module Network.Google.Resource.Compute.InstanceGroupManagers.List

    -- ** compute.instanceGroupManagers.listErrors
    , module Network.Google.Resource.Compute.InstanceGroupManagers.ListErrors

    -- ** compute.instanceGroupManagers.listManagedInstances
    , module Network.Google.Resource.Compute.InstanceGroupManagers.ListManagedInstances

    -- ** compute.instanceGroupManagers.listPerInstanceConfigs
    , module Network.Google.Resource.Compute.InstanceGroupManagers.ListPerInstanceConfigs

    -- ** compute.instanceGroupManagers.patch
    , module Network.Google.Resource.Compute.InstanceGroupManagers.Patch

    -- ** compute.instanceGroupManagers.patchPerInstanceConfigs
    , module Network.Google.Resource.Compute.InstanceGroupManagers.PatchPerInstanceConfigs

    -- ** compute.instanceGroupManagers.recreateInstances
    , module Network.Google.Resource.Compute.InstanceGroupManagers.RecreateInstances

    -- ** compute.instanceGroupManagers.resize
    , module Network.Google.Resource.Compute.InstanceGroupManagers.Resize

    -- ** compute.instanceGroupManagers.setInstanceTemplate
    , module Network.Google.Resource.Compute.InstanceGroupManagers.SetInstanceTemplate

    -- ** compute.instanceGroupManagers.setTargetPools
    , module Network.Google.Resource.Compute.InstanceGroupManagers.SetTargetPools

    -- ** compute.instanceGroupManagers.updatePerInstanceConfigs
    , module Network.Google.Resource.Compute.InstanceGroupManagers.UpdatePerInstanceConfigs

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

    -- ** compute.instances.addResourcePolicies
    , module Network.Google.Resource.Compute.Instances.AddResourcePolicies

    -- ** compute.instances.aggregatedList
    , module Network.Google.Resource.Compute.Instances.AggregatedList

    -- ** compute.instances.attachDisk
    , module Network.Google.Resource.Compute.Instances.AttachDisk

    -- ** compute.instances.bulkInsert
    , module Network.Google.Resource.Compute.Instances.BulkInsert

    -- ** compute.instances.delete
    , module Network.Google.Resource.Compute.Instances.Delete

    -- ** compute.instances.deleteAccessConfig
    , module Network.Google.Resource.Compute.Instances.DeleteAccessConfig

    -- ** compute.instances.detachDisk
    , module Network.Google.Resource.Compute.Instances.DetachDisk

    -- ** compute.instances.get
    , module Network.Google.Resource.Compute.Instances.Get

    -- ** compute.instances.getEffectiveFirewalls
    , module Network.Google.Resource.Compute.Instances.GetEffectiveFirewalls

    -- ** compute.instances.getGuestAttributes
    , module Network.Google.Resource.Compute.Instances.GetGuestAttributes

    -- ** compute.instances.getIamPolicy
    , module Network.Google.Resource.Compute.Instances.GetIAMPolicy

    -- ** compute.instances.getScreenshot
    , module Network.Google.Resource.Compute.Instances.GetScreenshot

    -- ** compute.instances.getSerialPortOutput
    , module Network.Google.Resource.Compute.Instances.GetSerialPortOutput

    -- ** compute.instances.getShieldedInstanceIdentity
    , module Network.Google.Resource.Compute.Instances.GetShieldedInstanceIdentity

    -- ** compute.instances.insert
    , module Network.Google.Resource.Compute.Instances.Insert

    -- ** compute.instances.list
    , module Network.Google.Resource.Compute.Instances.List

    -- ** compute.instances.listReferrers
    , module Network.Google.Resource.Compute.Instances.ListReferrers

    -- ** compute.instances.removeResourcePolicies
    , module Network.Google.Resource.Compute.Instances.RemoveResourcePolicies

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

    -- ** compute.instances.setShieldedInstanceIntegrityPolicy
    , module Network.Google.Resource.Compute.Instances.SetShieldedInstanceIntegrityPolicy

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

    -- ** compute.instances.update
    , module Network.Google.Resource.Compute.Instances.Update

    -- ** compute.instances.updateAccessConfig
    , module Network.Google.Resource.Compute.Instances.UpdateAccessConfig

    -- ** compute.instances.updateDisplayDevice
    , module Network.Google.Resource.Compute.Instances.UpdateDisplayDevice

    -- ** compute.instances.updateNetworkInterface
    , module Network.Google.Resource.Compute.Instances.UpdateNetworkInterface

    -- ** compute.instances.updateShieldedInstanceConfig
    , module Network.Google.Resource.Compute.Instances.UpdateShieldedInstanceConfig

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

    -- ** compute.networkEndpointGroups.aggregatedList
    , module Network.Google.Resource.Compute.NetworkEndpointGroups.AggregatedList

    -- ** compute.networkEndpointGroups.attachNetworkEndpoints
    , module Network.Google.Resource.Compute.NetworkEndpointGroups.AttachNetworkEndpoints

    -- ** compute.networkEndpointGroups.delete
    , module Network.Google.Resource.Compute.NetworkEndpointGroups.Delete

    -- ** compute.networkEndpointGroups.detachNetworkEndpoints
    , module Network.Google.Resource.Compute.NetworkEndpointGroups.DetachNetworkEndpoints

    -- ** compute.networkEndpointGroups.get
    , module Network.Google.Resource.Compute.NetworkEndpointGroups.Get

    -- ** compute.networkEndpointGroups.insert
    , module Network.Google.Resource.Compute.NetworkEndpointGroups.Insert

    -- ** compute.networkEndpointGroups.list
    , module Network.Google.Resource.Compute.NetworkEndpointGroups.List

    -- ** compute.networkEndpointGroups.listNetworkEndpoints
    , module Network.Google.Resource.Compute.NetworkEndpointGroups.ListNetworkEndpoints

    -- ** compute.networkEndpointGroups.testIamPermissions
    , module Network.Google.Resource.Compute.NetworkEndpointGroups.TestIAMPermissions

    -- ** compute.networks.addPeering
    , module Network.Google.Resource.Compute.Networks.AddPeering

    -- ** compute.networks.delete
    , module Network.Google.Resource.Compute.Networks.Delete

    -- ** compute.networks.get
    , module Network.Google.Resource.Compute.Networks.Get

    -- ** compute.networks.getEffectiveFirewalls
    , module Network.Google.Resource.Compute.Networks.GetEffectiveFirewalls

    -- ** compute.networks.insert
    , module Network.Google.Resource.Compute.Networks.Insert

    -- ** compute.networks.list
    , module Network.Google.Resource.Compute.Networks.List

    -- ** compute.networks.listPeeringRoutes
    , module Network.Google.Resource.Compute.Networks.ListPeeringRoutes

    -- ** compute.networks.patch
    , module Network.Google.Resource.Compute.Networks.Patch

    -- ** compute.networks.removePeering
    , module Network.Google.Resource.Compute.Networks.RemovePeering

    -- ** compute.networks.switchToCustomMode
    , module Network.Google.Resource.Compute.Networks.SwitchToCustomMode

    -- ** compute.networks.updatePeering
    , module Network.Google.Resource.Compute.Networks.UpdatePeering

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

    -- ** compute.nodeGroups.patch
    , module Network.Google.Resource.Compute.NodeGroups.Patch

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

    -- ** compute.packetMirrorings.aggregatedList
    , module Network.Google.Resource.Compute.PacketMirrorings.AggregatedList

    -- ** compute.packetMirrorings.delete
    , module Network.Google.Resource.Compute.PacketMirrorings.Delete

    -- ** compute.packetMirrorings.get
    , module Network.Google.Resource.Compute.PacketMirrorings.Get

    -- ** compute.packetMirrorings.insert
    , module Network.Google.Resource.Compute.PacketMirrorings.Insert

    -- ** compute.packetMirrorings.list
    , module Network.Google.Resource.Compute.PacketMirrorings.List

    -- ** compute.packetMirrorings.patch
    , module Network.Google.Resource.Compute.PacketMirrorings.Patch

    -- ** compute.packetMirrorings.testIamPermissions
    , module Network.Google.Resource.Compute.PacketMirrorings.TestIAMPermissions

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

    -- ** compute.publicAdvertisedPrefixes.delete
    , module Network.Google.Resource.Compute.PublicAdvertisedPrefixes.Delete

    -- ** compute.publicAdvertisedPrefixes.get
    , module Network.Google.Resource.Compute.PublicAdvertisedPrefixes.Get

    -- ** compute.publicAdvertisedPrefixes.insert
    , module Network.Google.Resource.Compute.PublicAdvertisedPrefixes.Insert

    -- ** compute.publicAdvertisedPrefixes.list
    , module Network.Google.Resource.Compute.PublicAdvertisedPrefixes.List

    -- ** compute.publicAdvertisedPrefixes.patch
    , module Network.Google.Resource.Compute.PublicAdvertisedPrefixes.Patch

    -- ** compute.publicDelegatedPrefixes.aggregatedList
    , module Network.Google.Resource.Compute.PublicDelegatedPrefixes.AggregatedList

    -- ** compute.publicDelegatedPrefixes.delete
    , module Network.Google.Resource.Compute.PublicDelegatedPrefixes.Delete

    -- ** compute.publicDelegatedPrefixes.get
    , module Network.Google.Resource.Compute.PublicDelegatedPrefixes.Get

    -- ** compute.publicDelegatedPrefixes.insert
    , module Network.Google.Resource.Compute.PublicDelegatedPrefixes.Insert

    -- ** compute.publicDelegatedPrefixes.list
    , module Network.Google.Resource.Compute.PublicDelegatedPrefixes.List

    -- ** compute.publicDelegatedPrefixes.patch
    , module Network.Google.Resource.Compute.PublicDelegatedPrefixes.Patch

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

    -- ** compute.regionDisks.addResourcePolicies
    , module Network.Google.Resource.Compute.RegionDisks.AddResourcePolicies

    -- ** compute.regionDisks.createSnapshot
    , module Network.Google.Resource.Compute.RegionDisks.CreateSnapshot

    -- ** compute.regionDisks.delete
    , module Network.Google.Resource.Compute.RegionDisks.Delete

    -- ** compute.regionDisks.get
    , module Network.Google.Resource.Compute.RegionDisks.Get

    -- ** compute.regionDisks.getIamPolicy
    , module Network.Google.Resource.Compute.RegionDisks.GetIAMPolicy

    -- ** compute.regionDisks.insert
    , module Network.Google.Resource.Compute.RegionDisks.Insert

    -- ** compute.regionDisks.list
    , module Network.Google.Resource.Compute.RegionDisks.List

    -- ** compute.regionDisks.removeResourcePolicies
    , module Network.Google.Resource.Compute.RegionDisks.RemoveResourcePolicies

    -- ** compute.regionDisks.resize
    , module Network.Google.Resource.Compute.RegionDisks.Resize

    -- ** compute.regionDisks.setIamPolicy
    , module Network.Google.Resource.Compute.RegionDisks.SetIAMPolicy

    -- ** compute.regionDisks.setLabels
    , module Network.Google.Resource.Compute.RegionDisks.SetLabels

    -- ** compute.regionDisks.testIamPermissions
    , module Network.Google.Resource.Compute.RegionDisks.TestIAMPermissions

    -- ** compute.regionHealthCheckServices.delete
    , module Network.Google.Resource.Compute.RegionHealthCheckServices.Delete

    -- ** compute.regionHealthCheckServices.get
    , module Network.Google.Resource.Compute.RegionHealthCheckServices.Get

    -- ** compute.regionHealthCheckServices.insert
    , module Network.Google.Resource.Compute.RegionHealthCheckServices.Insert

    -- ** compute.regionHealthCheckServices.list
    , module Network.Google.Resource.Compute.RegionHealthCheckServices.List

    -- ** compute.regionHealthCheckServices.patch
    , module Network.Google.Resource.Compute.RegionHealthCheckServices.Patch

    -- ** compute.regionHealthChecks.delete
    , module Network.Google.Resource.Compute.RegionHealthChecks.Delete

    -- ** compute.regionHealthChecks.get
    , module Network.Google.Resource.Compute.RegionHealthChecks.Get

    -- ** compute.regionHealthChecks.insert
    , module Network.Google.Resource.Compute.RegionHealthChecks.Insert

    -- ** compute.regionHealthChecks.list
    , module Network.Google.Resource.Compute.RegionHealthChecks.List

    -- ** compute.regionHealthChecks.patch
    , module Network.Google.Resource.Compute.RegionHealthChecks.Patch

    -- ** compute.regionHealthChecks.update
    , module Network.Google.Resource.Compute.RegionHealthChecks.Update

    -- ** compute.regionInstanceGroupManagers.abandonInstances
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.AbandonInstances

    -- ** compute.regionInstanceGroupManagers.applyUpdatesToInstances
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.ApplyUpdatesToInstances

    -- ** compute.regionInstanceGroupManagers.createInstances
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.CreateInstances

    -- ** compute.regionInstanceGroupManagers.delete
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.Delete

    -- ** compute.regionInstanceGroupManagers.deleteInstances
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.DeleteInstances

    -- ** compute.regionInstanceGroupManagers.deletePerInstanceConfigs
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.DeletePerInstanceConfigs

    -- ** compute.regionInstanceGroupManagers.get
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.Get

    -- ** compute.regionInstanceGroupManagers.insert
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.Insert

    -- ** compute.regionInstanceGroupManagers.list
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.List

    -- ** compute.regionInstanceGroupManagers.listErrors
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.ListErrors

    -- ** compute.regionInstanceGroupManagers.listManagedInstances
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.ListManagedInstances

    -- ** compute.regionInstanceGroupManagers.listPerInstanceConfigs
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.ListPerInstanceConfigs

    -- ** compute.regionInstanceGroupManagers.patch
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.Patch

    -- ** compute.regionInstanceGroupManagers.patchPerInstanceConfigs
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.PatchPerInstanceConfigs

    -- ** compute.regionInstanceGroupManagers.recreateInstances
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.RecreateInstances

    -- ** compute.regionInstanceGroupManagers.resize
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.Resize

    -- ** compute.regionInstanceGroupManagers.setInstanceTemplate
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.SetInstanceTemplate

    -- ** compute.regionInstanceGroupManagers.setTargetPools
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.SetTargetPools

    -- ** compute.regionInstanceGroupManagers.updatePerInstanceConfigs
    , module Network.Google.Resource.Compute.RegionInstanceGroupManagers.UpdatePerInstanceConfigs

    -- ** compute.regionInstanceGroups.get
    , module Network.Google.Resource.Compute.RegionInstanceGroups.Get

    -- ** compute.regionInstanceGroups.list
    , module Network.Google.Resource.Compute.RegionInstanceGroups.List

    -- ** compute.regionInstanceGroups.listInstances
    , module Network.Google.Resource.Compute.RegionInstanceGroups.ListInstances

    -- ** compute.regionInstanceGroups.setNamedPorts
    , module Network.Google.Resource.Compute.RegionInstanceGroups.SetNamedPorts

    -- ** compute.regionInstances.bulkInsert
    , module Network.Google.Resource.Compute.RegionInstances.BulkInsert

    -- ** compute.regionNetworkEndpointGroups.delete
    , module Network.Google.Resource.Compute.RegionNetworkEndpointGroups.Delete

    -- ** compute.regionNetworkEndpointGroups.get
    , module Network.Google.Resource.Compute.RegionNetworkEndpointGroups.Get

    -- ** compute.regionNetworkEndpointGroups.insert
    , module Network.Google.Resource.Compute.RegionNetworkEndpointGroups.Insert

    -- ** compute.regionNetworkEndpointGroups.list
    , module Network.Google.Resource.Compute.RegionNetworkEndpointGroups.List

    -- ** compute.regionNotificationEndpoints.delete
    , module Network.Google.Resource.Compute.RegionNotificationEndpoints.Delete

    -- ** compute.regionNotificationEndpoints.get
    , module Network.Google.Resource.Compute.RegionNotificationEndpoints.Get

    -- ** compute.regionNotificationEndpoints.insert
    , module Network.Google.Resource.Compute.RegionNotificationEndpoints.Insert

    -- ** compute.regionNotificationEndpoints.list
    , module Network.Google.Resource.Compute.RegionNotificationEndpoints.List

    -- ** compute.regionOperations.delete
    , module Network.Google.Resource.Compute.RegionOperations.Delete

    -- ** compute.regionOperations.get
    , module Network.Google.Resource.Compute.RegionOperations.Get

    -- ** compute.regionOperations.list
    , module Network.Google.Resource.Compute.RegionOperations.List

    -- ** compute.regionOperations.wait
    , module Network.Google.Resource.Compute.RegionOperations.Wait

    -- ** compute.regionSslCertificates.delete
    , module Network.Google.Resource.Compute.RegionSSLCertificates.Delete

    -- ** compute.regionSslCertificates.get
    , module Network.Google.Resource.Compute.RegionSSLCertificates.Get

    -- ** compute.regionSslCertificates.insert
    , module Network.Google.Resource.Compute.RegionSSLCertificates.Insert

    -- ** compute.regionSslCertificates.list
    , module Network.Google.Resource.Compute.RegionSSLCertificates.List

    -- ** compute.regionTargetHttpProxies.delete
    , module Network.Google.Resource.Compute.RegionTargetHTTPProxies.Delete

    -- ** compute.regionTargetHttpProxies.get
    , module Network.Google.Resource.Compute.RegionTargetHTTPProxies.Get

    -- ** compute.regionTargetHttpProxies.insert
    , module Network.Google.Resource.Compute.RegionTargetHTTPProxies.Insert

    -- ** compute.regionTargetHttpProxies.list
    , module Network.Google.Resource.Compute.RegionTargetHTTPProxies.List

    -- ** compute.regionTargetHttpProxies.setUrlMap
    , module Network.Google.Resource.Compute.RegionTargetHTTPProxies.SetURLMap

    -- ** compute.regionTargetHttpsProxies.delete
    , module Network.Google.Resource.Compute.RegionTargetHTTPSProxies.Delete

    -- ** compute.regionTargetHttpsProxies.get
    , module Network.Google.Resource.Compute.RegionTargetHTTPSProxies.Get

    -- ** compute.regionTargetHttpsProxies.insert
    , module Network.Google.Resource.Compute.RegionTargetHTTPSProxies.Insert

    -- ** compute.regionTargetHttpsProxies.list
    , module Network.Google.Resource.Compute.RegionTargetHTTPSProxies.List

    -- ** compute.regionTargetHttpsProxies.setSslCertificates
    , module Network.Google.Resource.Compute.RegionTargetHTTPSProxies.SetSSLCertificates

    -- ** compute.regionTargetHttpsProxies.setUrlMap
    , module Network.Google.Resource.Compute.RegionTargetHTTPSProxies.SetURLMap

    -- ** compute.regionUrlMaps.delete
    , module Network.Google.Resource.Compute.RegionURLMaps.Delete

    -- ** compute.regionUrlMaps.get
    , module Network.Google.Resource.Compute.RegionURLMaps.Get

    -- ** compute.regionUrlMaps.insert
    , module Network.Google.Resource.Compute.RegionURLMaps.Insert

    -- ** compute.regionUrlMaps.list
    , module Network.Google.Resource.Compute.RegionURLMaps.List

    -- ** compute.regionUrlMaps.patch
    , module Network.Google.Resource.Compute.RegionURLMaps.Patch

    -- ** compute.regionUrlMaps.update
    , module Network.Google.Resource.Compute.RegionURLMaps.Update

    -- ** compute.regionUrlMaps.validate
    , module Network.Google.Resource.Compute.RegionURLMaps.Validate

    -- ** compute.regions.get
    , module Network.Google.Resource.Compute.Regions.Get

    -- ** compute.regions.list
    , module Network.Google.Resource.Compute.Regions.List

    -- ** compute.reservations.aggregatedList
    , module Network.Google.Resource.Compute.Reservations.AggregatedList

    -- ** compute.reservations.delete
    , module Network.Google.Resource.Compute.Reservations.Delete

    -- ** compute.reservations.get
    , module Network.Google.Resource.Compute.Reservations.Get

    -- ** compute.reservations.getIamPolicy
    , module Network.Google.Resource.Compute.Reservations.GetIAMPolicy

    -- ** compute.reservations.insert
    , module Network.Google.Resource.Compute.Reservations.Insert

    -- ** compute.reservations.list
    , module Network.Google.Resource.Compute.Reservations.List

    -- ** compute.reservations.resize
    , module Network.Google.Resource.Compute.Reservations.Resize

    -- ** compute.reservations.setIamPolicy
    , module Network.Google.Resource.Compute.Reservations.SetIAMPolicy

    -- ** compute.reservations.testIamPermissions
    , module Network.Google.Resource.Compute.Reservations.TestIAMPermissions

    -- ** compute.resourcePolicies.aggregatedList
    , module Network.Google.Resource.Compute.ResourcePolicies.AggregatedList

    -- ** compute.resourcePolicies.delete
    , module Network.Google.Resource.Compute.ResourcePolicies.Delete

    -- ** compute.resourcePolicies.get
    , module Network.Google.Resource.Compute.ResourcePolicies.Get

    -- ** compute.resourcePolicies.getIamPolicy
    , module Network.Google.Resource.Compute.ResourcePolicies.GetIAMPolicy

    -- ** compute.resourcePolicies.insert
    , module Network.Google.Resource.Compute.ResourcePolicies.Insert

    -- ** compute.resourcePolicies.list
    , module Network.Google.Resource.Compute.ResourcePolicies.List

    -- ** compute.resourcePolicies.setIamPolicy
    , module Network.Google.Resource.Compute.ResourcePolicies.SetIAMPolicy

    -- ** compute.resourcePolicies.testIamPermissions
    , module Network.Google.Resource.Compute.ResourcePolicies.TestIAMPermissions

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

    -- ** compute.securityPolicies.listPreconfiguredExpressionSets
    , module Network.Google.Resource.Compute.SecurityPolicies.ListPreConfiguredExpressionSets

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

    -- ** compute.sslCertificates.aggregatedList
    , module Network.Google.Resource.Compute.SSLCertificates.AggregatedList

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

    -- ** compute.targetGrpcProxies.delete
    , module Network.Google.Resource.Compute.TargetGrpcProxies.Delete

    -- ** compute.targetGrpcProxies.get
    , module Network.Google.Resource.Compute.TargetGrpcProxies.Get

    -- ** compute.targetGrpcProxies.insert
    , module Network.Google.Resource.Compute.TargetGrpcProxies.Insert

    -- ** compute.targetGrpcProxies.list
    , module Network.Google.Resource.Compute.TargetGrpcProxies.List

    -- ** compute.targetGrpcProxies.patch
    , module Network.Google.Resource.Compute.TargetGrpcProxies.Patch

    -- ** compute.targetHttpProxies.aggregatedList
    , module Network.Google.Resource.Compute.TargetHTTPProxies.AggregatedList

    -- ** compute.targetHttpProxies.delete
    , module Network.Google.Resource.Compute.TargetHTTPProxies.Delete

    -- ** compute.targetHttpProxies.get
    , module Network.Google.Resource.Compute.TargetHTTPProxies.Get

    -- ** compute.targetHttpProxies.insert
    , module Network.Google.Resource.Compute.TargetHTTPProxies.Insert

    -- ** compute.targetHttpProxies.list
    , module Network.Google.Resource.Compute.TargetHTTPProxies.List

    -- ** compute.targetHttpProxies.patch
    , module Network.Google.Resource.Compute.TargetHTTPProxies.Patch

    -- ** compute.targetHttpProxies.setUrlMap
    , module Network.Google.Resource.Compute.TargetHTTPProxies.SetURLMap

    -- ** compute.targetHttpsProxies.aggregatedList
    , module Network.Google.Resource.Compute.TargetHTTPSProxies.AggregatedList

    -- ** compute.targetHttpsProxies.delete
    , module Network.Google.Resource.Compute.TargetHTTPSProxies.Delete

    -- ** compute.targetHttpsProxies.get
    , module Network.Google.Resource.Compute.TargetHTTPSProxies.Get

    -- ** compute.targetHttpsProxies.insert
    , module Network.Google.Resource.Compute.TargetHTTPSProxies.Insert

    -- ** compute.targetHttpsProxies.list
    , module Network.Google.Resource.Compute.TargetHTTPSProxies.List

    -- ** compute.targetHttpsProxies.patch
    , module Network.Google.Resource.Compute.TargetHTTPSProxies.Patch

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

    -- ** compute.urlMaps.aggregatedList
    , module Network.Google.Resource.Compute.URLMaps.AggregatedList

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

    -- ** compute.vpnGateways.aggregatedList
    , module Network.Google.Resource.Compute.VPNGateways.AggregatedList

    -- ** compute.vpnGateways.delete
    , module Network.Google.Resource.Compute.VPNGateways.Delete

    -- ** compute.vpnGateways.get
    , module Network.Google.Resource.Compute.VPNGateways.Get

    -- ** compute.vpnGateways.getStatus
    , module Network.Google.Resource.Compute.VPNGateways.GetStatus

    -- ** compute.vpnGateways.insert
    , module Network.Google.Resource.Compute.VPNGateways.Insert

    -- ** compute.vpnGateways.list
    , module Network.Google.Resource.Compute.VPNGateways.List

    -- ** compute.vpnGateways.setLabels
    , module Network.Google.Resource.Compute.VPNGateways.SetLabels

    -- ** compute.vpnGateways.testIamPermissions
    , module Network.Google.Resource.Compute.VPNGateways.TestIAMPermissions

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

    -- ** compute.zoneOperations.wait
    , module Network.Google.Resource.Compute.ZoneOperations.Wait

    -- ** compute.zones.get
    , module Network.Google.Resource.Compute.Zones.Get

    -- ** compute.zones.list
    , module Network.Google.Resource.Compute.Zones.List

    -- * Types

    -- ** HTTPSHealthCheckListWarningCode
    , HTTPSHealthCheckListWarningCode (..)

    -- ** RegionInstanceGroupManagersListErrorsResponse
    , RegionInstanceGroupManagersListErrorsResponse
    , regionInstanceGroupManagersListErrorsResponse
    , rigmlerNextPageToken
    , rigmlerItems

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

    -- ** BackendBucketCdnPolicyCacheMode
    , BackendBucketCdnPolicyCacheMode (..)

    -- ** InterconnectDiagnosticsLinkLACPStatus
    , InterconnectDiagnosticsLinkLACPStatus
    , interconnectDiagnosticsLinkLACPStatus
    , idllacpsState
    , idllacpsNeighborSystemId
    , idllacpsGoogleSystemId

    -- ** AdvancedMachineFeatures
    , AdvancedMachineFeatures
    , advancedMachineFeatures
    , amfThreadsPerCore
    , amfEnableNestedVirtualization

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
    , igmupInstanceRedistributionType
    , igmupMaxSurge
    , igmupMaxUnavailable
    , igmupMinimalAction
    , igmupType
    , igmupReplacementMethod

    -- ** RegionInstanceGroupsListInstancesRequest
    , RegionInstanceGroupsListInstancesRequest
    , regionInstanceGroupsListInstancesRequest
    , riglirInstanceState
    , riglirPortName

    -- ** HTTPHeaderMatch
    , HTTPHeaderMatch
    , hTTPHeaderMatch
    , httphmSuffixMatch
    , httphmHeaderName
    , httphmRangeMatch
    , httphmPresentMatch
    , httphmExactMatch
    , httphmPrefixMatch
    , httphmRegexMatch
    , httphmInvertMatch

    -- ** PacketMirroringsScopedListWarning
    , PacketMirroringsScopedListWarning
    , packetMirroringsScopedListWarning
    , pmslwData
    , pmslwCode
    , pmslwMessage

    -- ** RegionInstanceGroupManagersApplyUpdatesRequestMinimalAction
    , RegionInstanceGroupManagersApplyUpdatesRequestMinimalAction (..)

    -- ** BackendServiceAggregatedListWarning
    , BackendServiceAggregatedListWarning
    , backendServiceAggregatedListWarning
    , bsalwData
    , bsalwCode
    , bsalwMessage

    -- ** ExchangedPeeringRoute
    , ExchangedPeeringRoute
    , exchangedPeeringRoute
    , eprImported
    , eprPriority
    , eprDestRange
    , eprNextHopRegion
    , eprType

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

    -- ** TargetHTTPProxyAggregatedListItems
    , TargetHTTPProxyAggregatedListItems
    , targetHTTPProxyAggregatedListItems
    , thttppaliAddtional

    -- ** BackendServiceListWarningCode
    , BackendServiceListWarningCode (..)

    -- ** SubnetworkStackType
    , SubnetworkStackType (..)

    -- ** DiskTypeAggregatedListItems
    , DiskTypeAggregatedListItems
    , diskTypeAggregatedListItems
    , dtaliAddtional

    -- ** PreservedStatePreservedDiskAutoDelete
    , PreservedStatePreservedDiskAutoDelete (..)

    -- ** DistributionPolicyTargetShape
    , DistributionPolicyTargetShape (..)

    -- ** InstancesSetLabelsRequest
    , InstancesSetLabelsRequest
    , instancesSetLabelsRequest
    , islrLabels
    , islrLabelFingerprint

    -- ** RouterAggregatedList
    , RouterAggregatedList
    , routerAggregatedList
    , ralUnreachables
    , ralNextPageToken
    , ralKind
    , ralItems
    , ralSelfLink
    , ralWarning
    , ralId

    -- ** GlobalNetworkEndpointGroupsDetachEndpointsRequest
    , GlobalNetworkEndpointGroupsDetachEndpointsRequest
    , globalNetworkEndpointGroupsDetachEndpointsRequest
    , gnegderNetworkEndpoints

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

    -- ** HealthCheckLogConfig
    , HealthCheckLogConfig
    , healthCheckLogConfig
    , hclcEnable

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

    -- ** PacketMirroringAggregatedListWarning
    , PacketMirroringAggregatedListWarning
    , packetMirroringAggregatedListWarning
    , pmalwData
    , pmalwCode
    , pmalwMessage

    -- ** PacketMirroringListWarningDataItem
    , PacketMirroringListWarningDataItem
    , packetMirroringListWarningDataItem
    , pmlwdiValue
    , pmlwdiKey

    -- ** SecurityPolicyRuleMatcher
    , SecurityPolicyRuleMatcher
    , securityPolicyRuleMatcher
    , sprmVersionedExpr
    , sprmExpr
    , sprmConfig

    -- ** PublicDelegatedPrefixPublicDelegatedSubPrefix
    , PublicDelegatedPrefixPublicDelegatedSubPrefix
    , publicDelegatedPrefixPublicDelegatedSubPrefix
    , pdppdspIsAddress
    , pdppdspStatus
    , pdppdspDelegateeProject
    , pdppdspName
    , pdppdspIPCIdRRange
    , pdppdspRegion
    , pdppdspDescription

    -- ** SubnetworkPurpose
    , SubnetworkPurpose (..)

    -- ** HealthChecksAggregatedListWarning
    , HealthChecksAggregatedListWarning
    , healthChecksAggregatedListWarning
    , hcalwData
    , hcalwCode
    , hcalwMessage

    -- ** PerInstanceConfig
    , PerInstanceConfig
    , perInstanceConfig
    , picStatus
    , picFingerprint
    , picName
    , picPreservedState

    -- ** PacketMirroringListWarningCode
    , PacketMirroringListWarningCode (..)

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

    -- ** ReservationStatus
    , ReservationStatus (..)

    -- ** CustomerEncryptionKey
    , CustomerEncryptionKey
    , customerEncryptionKey
    , cekKmsKeyServiceAccount
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

    -- ** InterconnectAttachmentEncryption
    , InterconnectAttachmentEncryption (..)

    -- ** RouterNATNATIPAllocateOption
    , RouterNATNATIPAllocateOption (..)

    -- ** Screenshot
    , Screenshot
    , screenshot
    , sContents
    , sKind

    -- ** GuestAttributesValue
    , GuestAttributesValue
    , guestAttributesValue
    , gavItems

    -- ** InstancesGetEffectiveFirewallsResponseEffectiveFirewallPolicy
    , InstancesGetEffectiveFirewallsResponseEffectiveFirewallPolicy
    , instancesGetEffectiveFirewallsResponseEffectiveFirewallPolicy
    , igefrefpRules
    , igefrefpShortName
    , igefrefpName
    , igefrefpDisplayName
    , igefrefpType

    -- ** DeprecationStatus
    , DeprecationStatus
    , deprecationStatus
    , dsState
    , dsDeleted
    , dsReplacement
    , dsObsolete
    , dsDeprecated

    -- ** HTTPRouteRuleMatch
    , HTTPRouteRuleMatch
    , hTTPRouteRuleMatch
    , httprrmHeaderMatches
    , httprrmFullPathMatch
    , httprrmQueryParameterMatches
    , httprrmIgnoreCase
    , httprrmPrefixMatch
    , httprrmMetadataFilters
    , httprrmRegexMatch

    -- ** HTTPSHealthCheckListWarningDataItem
    , HTTPSHealthCheckListWarningDataItem
    , httpsHealthCheckListWarningDataItem
    , hhclwdiValue
    , hhclwdiKey

    -- ** ServerBindingType
    , ServerBindingType (..)

    -- ** BulkInsertInstanceResource
    , BulkInsertInstanceResource
    , bulkInsertInstanceResource
    , biirNamePattern
    , biirInstanceProperties
    , biirCount
    , biirSourceInstanceTemplate
    , biirPerInstanceProperties
    , biirLocationPolicy
    , biirMinCount

    -- ** OperationWarningsItemCode
    , OperationWarningsItemCode (..)

    -- ** FirewallPolicyRuleMatcher
    , FirewallPolicyRuleMatcher
    , firewallPolicyRuleMatcher
    , fprmSrcIPRanges
    , fprmDestIPRanges
    , fprmLayer4Configs

    -- ** Snapshot
    , Snapshot
    , snapshot
    , snaStorageBytesStatus
    , snaSatisfiesPzs
    , snaStatus
    , snaChainName
    , snaDiskSizeGb
    , snaDownloadBytes
    , snaSourceDiskId
    , snaKind
    , snaSourceDiskEncryptionKey
    , snaStorageBytes
    , snaSelfLink
    , snaSnapshotEncryptionKey
    , snaAutoCreated
    , snaName
    , snaStorageLocations
    , snaCreationTimestamp
    , snaLicenseCodes
    , snaId
    , snaLabels
    , snaLicenses
    , snaSourceDisk
    , snaLocationHint
    , snaLabelFingerprint
    , snaDescription

    -- ** InstancesUpdateMostDisruptiveAllowedAction
    , InstancesUpdateMostDisruptiveAllowedAction (..)

    -- ** RouterStatus
    , RouterStatus
    , routerStatus
    , rsBestRoutesForRouter
    , rsBGPPeerStatus
    , rsNetwork
    , rsNATStatus
    , rsBestRoutes

    -- ** InstanceManagedByIgmErrorInstanceActionDetailsAction
    , InstanceManagedByIgmErrorInstanceActionDetailsAction (..)

    -- ** AutoscalingPolicyCustomMetricUtilization
    , AutoscalingPolicyCustomMetricUtilization
    , autoscalingPolicyCustomMetricUtilization
    , apcmuUtilizationTarget
    , apcmuMetric
    , apcmuFilter
    , apcmuSingleInstanceAssignment
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
    , ngFingerprint
    , ngZone
    , ngMaintenanceWindow
    , ngSelfLink
    , ngName
    , ngCreationTimestamp
    , ngAutoscalingPolicy
    , ngId
    , ngMaintenancePolicy
    , ngNodeTemplate
    , ngLocationHint
    , ngDescription

    -- ** SubnetworkIPv6AccessType
    , SubnetworkIPv6AccessType (..)

    -- ** VPNTunnelsScopedList
    , VPNTunnelsScopedList
    , vpnTunnelsScopedList
    , vtslVPNTunnels
    , vtslWarning

    -- ** URLMapsScopedListWarningCode
    , URLMapsScopedListWarningCode (..)

    -- ** ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDelete
    , ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDelete (..)

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

    -- ** FirewallPolicyAssociation
    , FirewallPolicyAssociation
    , firewallPolicyAssociation
    , fpaShortName
    , fpaFirewallPolicyId
    , fpaName
    , fpaDisplayName
    , fpaAttachmentTarget

    -- ** RegionInstanceGroupsListInstancesWarning
    , RegionInstanceGroupsListInstancesWarning
    , regionInstanceGroupsListInstancesWarning
    , rigliwData
    , rigliwCode
    , rigliwMessage

    -- ** NetworkEndpointGroupsDetachEndpointsRequest
    , NetworkEndpointGroupsDetachEndpointsRequest
    , networkEndpointGroupsDetachEndpointsRequest
    , negderNetworkEndpoints

    -- ** AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs
    , acExemptedMembers

    -- ** NetworkEndpointGroupNetworkEndpointType
    , NetworkEndpointGroupNetworkEndpointType (..)

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

    -- ** PublicDelegatedPrefixAggregatedListWarning
    , PublicDelegatedPrefixAggregatedListWarning
    , publicDelegatedPrefixAggregatedListWarning
    , pdpalwData
    , pdpalwCode
    , pdpalwMessage

    -- ** AcceleratorTypesScopedListWarningCode
    , AcceleratorTypesScopedListWarningCode (..)

    -- ** NodeTemplateNodeAffinityLabels
    , NodeTemplateNodeAffinityLabels
    , nodeTemplateNodeAffinityLabels
    , ntnalAddtional

    -- ** PublicDelegatedPrefixListWarningCode
    , PublicDelegatedPrefixListWarningCode (..)

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

    -- ** NetworkEndpointGroupsListNetworkEndpointsWarning
    , NetworkEndpointGroupsListNetworkEndpointsWarning
    , networkEndpointGroupsListNetworkEndpointsWarning
    , neglnewData
    , neglnewCode
    , neglnewMessage

    -- ** RegionInstanceGroupManagersListInstanceConfigsRespWarningDataItem
    , RegionInstanceGroupManagersListInstanceConfigsRespWarningDataItem
    , regionInstanceGroupManagersListInstanceConfigsRespWarningDataItem
    , rigmlicrwdiValue
    , rigmlicrwdiKey

    -- ** NodeGroupsScopedListWarningCode
    , NodeGroupsScopedListWarningCode (..)

    -- ** PublicAdvertisedPrefixListWarningCode
    , PublicAdvertisedPrefixListWarningCode (..)

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

    -- ** VPNGatewaysScopedList
    , VPNGatewaysScopedList
    , vpnGatewaysScopedList
    , vgslVPNGateways
    , vgslWarning

    -- ** HTTPRouteRule
    , HTTPRouteRule
    , hTTPRouteRule
    , httprrPriority
    , httprrService
    , httprrHeaderAction
    , httprrRouteAction
    , httprrMatchRules
    , httprrDescription
    , httprrURLRedirect

    -- ** ResourcePolicyListWarningDataItem
    , ResourcePolicyListWarningDataItem
    , resourcePolicyListWarningDataItem
    , rplwdiValue
    , rplwdiKey

    -- ** NetworksUpdatePeeringRequest
    , NetworksUpdatePeeringRequest
    , networksUpdatePeeringRequest
    , nuprNetworkPeering

    -- ** NodeGroupAggregatedListWarningDataItem
    , NodeGroupAggregatedListWarningDataItem
    , nodeGroupAggregatedListWarningDataItem
    , ngalwdiValue
    , ngalwdiKey

    -- ** InstanceGroupsAddInstancesRequest
    , InstanceGroupsAddInstancesRequest
    , instanceGroupsAddInstancesRequest
    , igairInstances

    -- ** TargetHTTPSProxyAggregatedListItems
    , TargetHTTPSProxyAggregatedListItems
    , targetHTTPSProxyAggregatedListItems
    , thpaliAddtional

    -- ** HealthCheckService
    , HealthCheckService
    , healthCheckService
    , hcsNotificationEndpoints
    , hcsKind
    , hcsFingerprint
    , hcsNetworkEndpointGroups
    , hcsHealthStatusAggregationPolicy
    , hcsSelfLink
    , hcsName
    , hcsCreationTimestamp
    , hcsId
    , hcsRegion
    , hcsDescription
    , hcsHealthChecks

    -- ** NodeGroupNode
    , NodeGroupNode
    , nodeGroupNode
    , ngnSatisfiesPzs
    , ngnStatus
    , ngnServerId
    , ngnServerBinding
    , ngnAccelerators
    , ngnName
    , ngnInstances
    , ngnNodeType
    , ngnDisks
    , ngnCPUOvercommitType

    -- ** TargetTCPProxiesSetProxyHeaderRequestProxyHeader
    , TargetTCPProxiesSetProxyHeaderRequestProxyHeader (..)

    -- ** ReservationAggregatedList
    , ReservationAggregatedList
    , reservationAggregatedList
    , resUnreachables
    , resNextPageToken
    , resKind
    , resItems
    , resSelfLink
    , resWarning
    , resId

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

    -- ** NetworkEndpointGroupsScopedListWarning
    , NetworkEndpointGroupsScopedListWarning
    , networkEndpointGroupsScopedListWarning
    , negslwData
    , negslwCode
    , negslwMessage

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

    -- ** BackendServiceLogConfig
    , BackendServiceLogConfig
    , backendServiceLogConfig
    , bslcEnable
    , bslcSampleRate

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
    , iSatisfiesPzs
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
    , iShieldedInstanceInitialState
    , iFamily
    , iRawDisk
    , iSelfLink
    , iName
    , iSourceImageId
    , iStorageLocations
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
    , naprNetworkPeering
    , naprPeerNetwork
    , naprName
    , naprAutoCreateRoutes

    -- ** PublicAdvertisedPrefixListWarningDataItem
    , PublicAdvertisedPrefixListWarningDataItem
    , publicAdvertisedPrefixListWarningDataItem
    , paplwdiValue
    , paplwdiKey

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

    -- ** ResourcePolicyListWarningCode
    , ResourcePolicyListWarningCode (..)

    -- ** URLMap
    , URLMap
    , urlMap
    , umDefaultRouteAction
    , umDefaultURLRedirect
    , umTests
    , umKind
    , umFingerprint
    , umDefaultService
    , umHeaderAction
    , umSelfLink
    , umName
    , umCreationTimestamp
    , umPathMatchers
    , umId
    , umHostRules
    , umRegion
    , umDescription

    -- ** ResourcePolicyAggregatedListWarning
    , ResourcePolicyAggregatedListWarning
    , resourcePolicyAggregatedListWarning
    , rpalwData
    , rpalwCode
    , rpalwMessage

    -- ** ImageListWarning
    , ImageListWarning
    , imageListWarning
    , ilwData
    , ilwCode
    , ilwMessage

    -- ** HealthCheckListWarningCode
    , HealthCheckListWarningCode (..)

    -- ** URLMapsScopedListWarningDataItem
    , URLMapsScopedListWarningDataItem
    , urlMapsScopedListWarningDataItem
    , umslwdiValue
    , umslwdiKey

    -- ** NetworkInterfaceNicType
    , NetworkInterfaceNicType (..)

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

    -- ** ResourcePolicyHourlyCycle
    , ResourcePolicyHourlyCycle
    , resourcePolicyHourlyCycle
    , rphcHoursInCycle
    , rphcStartTime
    , rphcDuration

    -- ** InstanceGroupAggregatedListItems
    , InstanceGroupAggregatedListItems
    , instanceGroupAggregatedListItems
    , igaliAddtional

    -- ** PublicDelegatedPrefixListWarningDataItem
    , PublicDelegatedPrefixListWarningDataItem
    , publicDelegatedPrefixListWarningDataItem
    , pdplwdiValue
    , pdplwdiKey

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

    -- ** HTTPRouteAction
    , HTTPRouteAction
    , hTTPRouteAction
    , httpraFaultInjectionPolicy
    , httpraCORSPolicy
    , httpraURLRewrite
    , httpraRequestMirrorPolicy
    , httpraRetryPolicy
    , httpraWeightedBackendServices
    , httpraTimeout
    , httpraMaxStreamDuration

    -- ** AcceleratorTypesScopedListWarningDataItem
    , AcceleratorTypesScopedListWarningDataItem
    , acceleratorTypesScopedListWarningDataItem
    , atslwdiValue
    , atslwdiKey

    -- ** RegionInstanceGroupManagersListInstanceConfigsRespWarningCode
    , RegionInstanceGroupManagersListInstanceConfigsRespWarningCode (..)

    -- ** TargetHTTPProxiesScopedList
    , TargetHTTPProxiesScopedList
    , targetHTTPProxiesScopedList
    , thttppslTargetHTTPProxies
    , thttppslWarning

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
    , tialUnreachables
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

    -- ** ReservationList
    , ReservationList
    , reservationList
    , rlNextPageToken
    , rlKind
    , rlItems
    , rlSelfLink
    , rlWarning
    , rlId

    -- ** NetworksListPeeringRoutesDirection
    , NetworksListPeeringRoutesDirection (..)

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

    -- ** NetworkEndpointGroupListWarning
    , NetworkEndpointGroupListWarning
    , networkEndpointGroupListWarning
    , neglwData
    , neglwCode
    , neglwMessage

    -- ** ResourcePolicy
    , ResourcePolicy
    , resourcePolicy
    , rpInstanceSchedulePolicy
    , rpStatus
    , rpKind
    , rpResourceStatus
    , rpGroupPlacementPolicy
    , rpSelfLink
    , rpName
    , rpCreationTimestamp
    , rpId
    , rpRegion
    , rpDescription
    , rpSnapshotSchedulePolicy

    -- ** HealthCheck
    , HealthCheck
    , healthCheck
    , hcHealthyThreshold
    , hcTCPHealthCheck
    , hcHTTP2HealthCheck
    , hcKind
    , hcSSLHealthCheck
    , hcGrpcHealthCheck
    , hcSelfLink
    , hcCheckIntervalSec
    , hcName
    , hcCreationTimestamp
    , hcHTTPHealthCheck
    , hcId
    , hcRegion
    , hcType
    , hcTimeoutSec
    , hcLogConfig
    , hcDescription
    , hcUnhealthyThreshold
    , hcHTTPSHealthCheck

    -- ** ExchangedPeeringRoutesListWarningCode
    , ExchangedPeeringRoutesListWarningCode (..)

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
    , dalUnreachables
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

    -- ** AutoscalingPolicyScalingSchedule
    , AutoscalingPolicyScalingSchedule
    , autoscalingPolicyScalingSchedule
    , apssSchedule
    , apssDisabled
    , apssMinRequiredReplicas
    , apssDurationSec
    , apssTimeZone
    , apssDescription

    -- ** InstanceWithNamedPorts
    , InstanceWithNamedPorts
    , instanceWithNamedPorts
    , iwnpStatus
    , iwnpNamedPorts
    , iwnpInstance

    -- ** DisplayDevice
    , DisplayDevice
    , displayDevice
    , ddEnableDisplay

    -- ** InterconnectListWarning
    , InterconnectListWarning
    , interconnectListWarning
    , iData
    , iCode
    , iMessage

    -- ** RegionDisksAddResourcePoliciesRequest
    , RegionDisksAddResourcePoliciesRequest
    , regionDisksAddResourcePoliciesRequest
    , rdarprResourcePolicies

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
    , oalUnreachables
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

    -- ** HealthChecksScopedListWarningDataItem
    , HealthChecksScopedListWarningDataItem
    , healthChecksScopedListWarningDataItem
    , hcslwdiValue
    , hcslwdiKey

    -- ** NetworkEndpointGroupsListEndpointsRequest
    , NetworkEndpointGroupsListEndpointsRequest
    , networkEndpointGroupsListEndpointsRequest
    , neglerHealthStatus

    -- ** InterconnectLocationListWarningCode
    , InterconnectLocationListWarningCode (..)

    -- ** InstanceGroupsListInstancesWarningCode
    , InstanceGroupsListInstancesWarningCode (..)

    -- ** NodeGroupMaintenancePolicy
    , NodeGroupMaintenancePolicy (..)

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

    -- ** BackendServiceReference
    , BackendServiceReference
    , backendServiceReference
    , bsrBackendService

    -- ** NetworkEndpointGroupAggregatedListWarningDataItem
    , NetworkEndpointGroupAggregatedListWarningDataItem
    , networkEndpointGroupAggregatedListWarningDataItem
    , negalwdiValue
    , negalwdiKey

    -- ** SSLHealthCheckPortSpecification
    , SSLHealthCheckPortSpecification (..)

    -- ** TargetInstanceList
    , TargetInstanceList
    , targetInstanceList
    , tilNextPageToken
    , tilKind
    , tilItems
    , tilSelfLink
    , tilWarning
    , tilId

    -- ** PublicDelegatedPrefix
    , PublicDelegatedPrefix
    , publicDelegatedPrefix
    , pdpParentPrefix
    , pdpStatus
    , pdpKind
    , pdpFingerprint
    , pdpSelfLink
    , pdpName
    , pdpCreationTimestamp
    , pdpIPCIdRRange
    , pdpPublicDelegatedSubPrefixs
    , pdpId
    , pdpRegion
    , pdpIsLiveMigration
    , pdpDescription

    -- ** TargetTCPProxyListWarning
    , TargetTCPProxyListWarning
    , targetTCPProxyListWarning
    , ttplwData
    , ttplwCode
    , ttplwMessage

    -- ** InstanceGroupManagerAggregatedList
    , InstanceGroupManagerAggregatedList
    , instanceGroupManagerAggregatedList
    , igmalUnreachables
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
    , bbCustomResponseHeaders
    , bbSelfLink
    , bbName
    , bbCreationTimestamp
    , bbId
    , bbDescription

    -- ** PublicDelegatedPrefixesScopedListWarning
    , PublicDelegatedPrefixesScopedListWarning
    , publicDelegatedPrefixesScopedListWarning
    , pdpslwData
    , pdpslwCode
    , pdpslwMessage

    -- ** AccessConfigNetworkTier
    , AccessConfigNetworkTier (..)

    -- ** ProjectsEnableXpnResourceRequest
    , ProjectsEnableXpnResourceRequest
    , projectsEnableXpnResourceRequest
    , pexrrXpnResource

    -- ** PublicAdvertisedPrefix
    , PublicAdvertisedPrefix
    , publicAdvertisedPrefix
    , papStatus
    , papKind
    , papFingerprint
    , papDNSVerificationIP
    , papSelfLink
    , papSharedSecret
    , papName
    , papCreationTimestamp
    , papIPCIdRRange
    , papId
    , papDescription
    , papPublicDelegatedPrefixs

    -- ** BackendServiceCdnPolicyNegativeCachingPolicy
    , BackendServiceCdnPolicyNegativeCachingPolicy
    , backendServiceCdnPolicyNegativeCachingPolicy
    , bscpncpTtl
    , bscpncpCode

    -- ** ConditionSys
    , ConditionSys (..)

    -- ** HealthChecksScopedListWarningCode
    , HealthChecksScopedListWarningCode (..)

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
    , lccoCustomFields

    -- ** ExchangedPeeringRoutesListWarningDataItem
    , ExchangedPeeringRoutesListWarningDataItem
    , exchangedPeeringRoutesListWarningDataItem
    , eprlwdiValue
    , eprlwdiKey

    -- ** SubnetworkAggregatedListWarningCode
    , SubnetworkAggregatedListWarningCode (..)

    -- ** BackendBucketCdnPolicyBypassCacheOnRequestHeader
    , BackendBucketCdnPolicyBypassCacheOnRequestHeader
    , backendBucketCdnPolicyBypassCacheOnRequestHeader
    , bbcpbcorhHeaderName

    -- ** InstancesSetMinCPUPlatformRequest
    , InstancesSetMinCPUPlatformRequest
    , instancesSetMinCPUPlatformRequest
    , ismcprMinCPUPlatform

    -- ** NetworkEndpointGroupAggregatedListWarningCode
    , NetworkEndpointGroupAggregatedListWarningCode (..)

    -- ** VPNGatewaysGetStatusResponse
    , VPNGatewaysGetStatusResponse
    , vpnGatewaysGetStatusResponse
    , vggsrResult

    -- ** ForwardingRuleAggregatedList
    , ForwardingRuleAggregatedList
    , forwardingRuleAggregatedList
    , fralUnreachables
    , fralNextPageToken
    , fralKind
    , fralItems
    , fralSelfLink
    , fralWarning
    , fralId

    -- ** ResourcePoliciesScopedListWarning
    , ResourcePoliciesScopedListWarning
    , resourcePoliciesScopedListWarning
    , rpslwData
    , rpslwCode
    , rpslwMessage

    -- ** ReservationAffinity
    , ReservationAffinity
    , reservationAffinity
    , raConsumeReservationType
    , raValues
    , raKey

    -- ** TargetReference
    , TargetReference
    , targetReference
    , trTarget

    -- ** TargetPoolAggregatedList
    , TargetPoolAggregatedList
    , targetPoolAggregatedList
    , tpalUnreachables
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

    -- ** HTTPFaultInjection
    , HTTPFaultInjection
    , hTTPFaultInjection
    , httpfiAbort
    , httpfiDelay

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

    -- ** ResourcePolicyAggregatedList
    , ResourcePolicyAggregatedList
    , resourcePolicyAggregatedList
    , rpalEtag
    , rpalUnreachables
    , rpalNextPageToken
    , rpalKind
    , rpalItems
    , rpalSelfLink
    , rpalWarning
    , rpalId

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

    -- ** TargetHTTPProxiesScopedListWarning
    , TargetHTTPProxiesScopedListWarning
    , targetHTTPProxiesScopedListWarning
    , thttppslwData
    , thttppslwCode
    , thttppslwMessage

    -- ** NetworkInterfaceStackType
    , NetworkInterfaceStackType (..)

    -- ** URLMapsAggregatedListItems
    , URLMapsAggregatedListItems
    , urlMapsAggregatedListItems
    , umaliAddtional

    -- ** NodeTemplateNodeTypeFlexibility
    , NodeTemplateNodeTypeFlexibility
    , nodeTemplateNodeTypeFlexibility
    , ntntfMemory
    , ntntfCPUs
    , ntntfLocalSsd

    -- ** ForwardingRulesScopedListWarningCode
    , ForwardingRulesScopedListWarningCode (..)

    -- ** HealthStatusForNetworkEndpointHealthState
    , HealthStatusForNetworkEndpointHealthState (..)

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

    -- ** StatefulPolicyPreservedStateDisks
    , StatefulPolicyPreservedStateDisks
    , statefulPolicyPreservedStateDisks
    , sppsdAddtional

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
    , frIsMirroringCollector
    , frFingerprint
    , frIPVersion
    , frAllPorts
    , frAllowGlobalAccess
    , frNetwork
    , frPortRange
    , frServiceDirectoryRegistrations
    , frSelfLink
    , frName
    , frIPProtocol
    , frCreationTimestamp
    , frServiceName
    , frSubnetwork
    , frPorts
    , frId
    , frLabels
    , frRegion
    , frPscConnectionId
    , frServiceLabel
    , frMetadataFilters
    , frLabelFingerprint
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

    -- ** CORSPolicy
    , CORSPolicy
    , corsPolicy
    , cpMaxAge
    , cpAllowMethods
    , cpAllowHeaders
    , cpDisabled
    , cpExposeHeaders
    , cpAllowOriginRegexes
    , cpAllowOrigins
    , cpAllowCredentials

    -- ** NetworkEndpointGroupsScopedList
    , NetworkEndpointGroupsScopedList
    , networkEndpointGroupsScopedList
    , negslNetworkEndpointGroups
    , negslWarning

    -- ** NotificationEndpointGrpcSettings
    , NotificationEndpointGrpcSettings
    , notificationEndpointGrpcSettings
    , negsResendInterval
    , negsRetryDurationSec
    , negsPayloadName
    , negsEndpoint
    , negsAuthority

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

    -- ** BulkInsertInstanceResourceSchema
    , BulkInsertInstanceResourceSchema
    , bulkInsertInstanceResourceSchema
    , biirsAddtional

    -- ** UsableSubnetworksAggregatedListWarningCode
    , UsableSubnetworksAggregatedListWarningCode (..)

    -- ** ReservationListWarningCode
    , ReservationListWarningCode (..)

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
    , rigmlirNextPageToken
    , rigmlirManagedInstances

    -- ** VPNGatewayLabels
    , VPNGatewayLabels
    , vpnGatewayLabels
    , vglAddtional

    -- ** NodeGroupAutoscalingPolicy
    , NodeGroupAutoscalingPolicy
    , nodeGroupAutoscalingPolicy
    , ngapMode
    , ngapMinNodes
    , ngapMaxNodes

    -- ** Operation
    , Operation
    , operation
    , oTargetId
    , oStatus
    , oOperationGroupId
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

    -- ** NetworkEndpoint
    , NetworkEndpoint
    , networkEndpoint
    , neAnnotations
    , neIPAddress
    , neFqdn
    , nePort
    , neInstance

    -- ** DisksScopedListWarningDataItem
    , DisksScopedListWarningDataItem
    , disksScopedListWarningDataItem
    , dslwdiValue
    , dslwdiKey

    -- ** RegionInstanceGroupManagersApplyUpdatesRequestMostDisruptiveAllowedAction
    , RegionInstanceGroupManagersApplyUpdatesRequestMostDisruptiveAllowedAction (..)

    -- ** InstanceGroupManagersScopedListWarningCode
    , InstanceGroupManagersScopedListWarningCode (..)

    -- ** Disk
    , Disk
    , disk
    , dSatisfiesPzs
    , dStatus
    , dSourceSnapshotId
    , dLastAttachTimestamp
    , dUsers
    , dSourceImage
    , dProvisionedIops
    , dReplicaZones
    , dSourceDiskId
    , dDiskEncryptionKey
    , dSizeGb
    , dKind
    , dLastDetachTimestamp
    , dGuestOSFeatures
    , dZone
    , dResourcePolicies
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
    , dSourceDisk
    , dPhysicalBlockSizeBytes
    , dType
    , dLocationHint
    , dLabelFingerprint
    , dDescription
    , dSourceSnapshotEncryptionKey
    , dSourceStorageObject
    , dSourceSnapshot

    -- ** ReservationListWarningDataItem
    , ReservationListWarningDataItem
    , reservationListWarningDataItem
    , rlwdiValue
    , rlwdiKey

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

    -- ** PublicDelegatedPrefixAggregatedList
    , PublicDelegatedPrefixAggregatedList
    , publicDelegatedPrefixAggregatedList
    , pdpalUnreachables
    , pdpalNextPageToken
    , pdpalKind
    , pdpalItems
    , pdpalSelfLink
    , pdpalWarning
    , pdpalId

    -- ** FirewallPolicyRuleDirection
    , FirewallPolicyRuleDirection (..)

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

    -- ** NetworkEndpointGroupsListNetworkEndpoints
    , NetworkEndpointGroupsListNetworkEndpoints
    , networkEndpointGroupsListNetworkEndpoints
    , neglneNextPageToken
    , neglneKind
    , neglneItems
    , neglneWarning
    , neglneId

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
    , igmStatefulPolicy
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

    -- ** PacketMirroringMirroredResourceInfo
    , PacketMirroringMirroredResourceInfo
    , packetMirroringMirroredResourceInfo
    , pmmriSubnetworks
    , pmmriInstances
    , pmmriTags

    -- ** InstanceGroupManagerListWarning
    , InstanceGroupManagerListWarning
    , instanceGroupManagerListWarning
    , igmlwData
    , igmlwCode
    , igmlwMessage

    -- ** MetadataFilter
    , MetadataFilter
    , metadataFilter
    , mfFilterLabels
    , mfFilterMatchCriteria

    -- ** RegionInstanceGroupsListInstances
    , RegionInstanceGroupsListInstances
    , regionInstanceGroupsListInstances
    , rigliNextPageToken
    , rigliKind
    , rigliItems
    , rigliSelfLink
    , rigliWarning
    , rigliId

    -- ** RegionDisksRemoveResourcePoliciesRequest
    , RegionDisksRemoveResourcePoliciesRequest
    , regionDisksRemoveResourcePoliciesRequest
    , rdrrprResourcePolicies

    -- ** ReservationAggregatedListWarning
    , ReservationAggregatedListWarning
    , reservationAggregatedListWarning
    , ralwData
    , ralwCode
    , ralwMessage

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
    , thcPortSpecification
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

    -- ** VPNGatewaysScopedListWarning
    , VPNGatewaysScopedListWarning
    , vpnGatewaysScopedListWarning
    , vgslwData
    , vgslwCode
    , vgslwMessage

    -- ** TargetPoolsScopedListWarningCode
    , TargetPoolsScopedListWarningCode (..)

    -- ** RegionAutoscalerListWarning
    , RegionAutoscalerListWarning
    , regionAutoscalerListWarning
    , rData
    , rCode
    , rMessage

    -- ** NetworkEndpointGroupAppEngine
    , NetworkEndpointGroupAppEngine
    , networkEndpointGroupAppEngine
    , negaeService
    , negaeURLMask
    , negaeVersion

    -- ** PreservedStateDisks
    , PreservedStateDisks
    , preservedStateDisks
    , psdAddtional

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

    -- ** MetadataFilterFilterMatchCriteria
    , MetadataFilterFilterMatchCriteria (..)

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

    -- ** InstanceGroupManagersListPerInstanceConfigsRespWarningCode
    , InstanceGroupManagersListPerInstanceConfigsRespWarningCode (..)

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

    -- ** ExternalVPNGatewayLabels
    , ExternalVPNGatewayLabels
    , externalVPNGatewayLabels
    , evglAddtional

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

    -- ** CircuitBreakers
    , CircuitBreakers
    , circuitBreakers
    , cbMaxRequests
    , cbMaxConnections
    , cbMaxRequestsPerConnection
    , cbMaxRetries
    , cbMaxPendingRequests

    -- ** FirewallPolicyRule
    , FirewallPolicyRule
    , firewallPolicyRule
    , fprEnableLogging
    , fprPriority
    , fprDirection
    , fprTargetResources
    , fprKind
    , fprDisabled
    , fprAction
    , fprRuleTupleCount
    , fprMatch
    , fprTargetServiceAccounts
    , fprDescription

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

    -- ** ExternalVPNGatewayListWarningDataItem
    , ExternalVPNGatewayListWarningDataItem
    , externalVPNGatewayListWarningDataItem
    , evglwdiValue
    , evglwdiKey

    -- ** PublicDelegatedPrefixList
    , PublicDelegatedPrefixList
    , publicDelegatedPrefixList
    , pdplNextPageToken
    , pdplKind
    , pdplItems
    , pdplSelfLink
    , pdplWarning
    , pdplId

    -- ** BackendServiceCdnPolicy
    , BackendServiceCdnPolicy
    , backendServiceCdnPolicy
    , bscpServeWhileStale
    , bscpSignedURLCacheMaxAgeSec
    , bscpNegativeCachingPolicy
    , bscpBypassCacheOnRequestHeaders
    , bscpRequestCoalescing
    , bscpClientTtl
    , bscpMaxTtl
    , bscpCacheMode
    , bscpDefaultTtl
    , bscpNegativeCaching
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
    , ngalUnreachables
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

    -- ** ReservationsScopedListWarningDataItem
    , ReservationsScopedListWarningDataItem
    , reservationsScopedListWarningDataItem
    , rslwdiValue
    , rslwdiKey

    -- ** VPNTunnelAggregatedListWarningCode
    , VPNTunnelAggregatedListWarningCode (..)

    -- ** Reservation
    , Reservation
    , reservation
    , rrSatisfiesPzs
    , rrStatus
    , rrKind
    , rrSpecificReservation
    , rrZone
    , rrSpecificReservationRequired
    , rrSelfLink
    , rrName
    , rrCreationTimestamp
    , rrId
    , rrCommitment
    , rrDescription

    -- ** InstanceManagedByIgmErrorManagedInstanceError
    , InstanceManagedByIgmErrorManagedInstanceError
    , instanceManagedByIgmErrorManagedInstanceError
    , imbiemieCode
    , imbiemieMessage

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

    -- ** URLMapsScopedList
    , URLMapsScopedList
    , urlMapsScopedList
    , umslURLMaps
    , umslWarning

    -- ** DiskInstantiationConfig
    , DiskInstantiationConfig
    , diskInstantiationConfig
    , dicAutoDelete
    , dicInstantiateFrom
    , dicCustomImage
    , dicDeviceName

    -- ** RegionInstanceGroupManagersListInstanceConfigsResp
    , RegionInstanceGroupManagersListInstanceConfigsResp
    , regionInstanceGroupManagersListInstanceConfigsResp
    , rigmlicrNextPageToken
    , rigmlicrItems
    , rigmlicrWarning

    -- ** LocalDisk
    , LocalDisk
    , localDisk
    , ldDiskSizeGb
    , ldDiskCount
    , ldDiskType

    -- ** DiskTypeAggregatedListWarning
    , DiskTypeAggregatedListWarning
    , diskTypeAggregatedListWarning
    , dtalwData
    , dtalwCode
    , dtalwMessage

    -- ** PublicDelegatedPrefixPublicDelegatedSubPrefixStatus
    , PublicDelegatedPrefixPublicDelegatedSubPrefixStatus (..)

    -- ** PerInstanceConfigStatus
    , PerInstanceConfigStatus (..)

    -- ** DiskTypeListWarningDataItem
    , DiskTypeListWarningDataItem
    , diskTypeListWarningDataItem
    , dtlwdiValue
    , dtlwdiKey

    -- ** HTTPRetryPolicy
    , HTTPRetryPolicy
    , hTTPRetryPolicy
    , httprpNumRetries
    , httprpPerTryTimeout
    , httprpRetryConditions

    -- ** WafExpressionSet
    , WafExpressionSet
    , wafExpressionSet
    , wesAliases
    , wesExpressions
    , wesId

    -- ** SecurityPolicyRule
    , SecurityPolicyRule
    , securityPolicyRule
    , sprPriority
    , sprKind
    , sprAction
    , sprPreview
    , sprMatch
    , sprDescription

    -- ** VPNGatewayAggregatedListWarningCode
    , VPNGatewayAggregatedListWarningCode (..)

    -- ** StatefulPolicyPreservedStateDiskDeviceAutoDelete
    , StatefulPolicyPreservedStateDiskDeviceAutoDelete (..)

    -- ** InterconnectsGetDiagnosticsResponse
    , InterconnectsGetDiagnosticsResponse
    , interconnectsGetDiagnosticsResponse
    , igdrResult

    -- ** WeightedBackendService
    , WeightedBackendService
    , weightedBackendService
    , wbsWeight
    , wbsHeaderAction
    , wbsBackendService

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
    , flcMetadata

    -- ** ShieldedInstanceIntegrityPolicy
    , ShieldedInstanceIntegrityPolicy
    , shieldedInstanceIntegrityPolicy
    , siipUpdateAutoLearnPolicy

    -- ** TargetHTTPProxyListWarningCode
    , TargetHTTPProxyListWarningCode (..)

    -- ** RouterNAT
    , RouterNAT
    , routerNAT
    , rnatNATIPAllocateOption
    , rnatICMPIdleTimeoutSec
    , rnatEnableEndpointIndependentMApping
    , rnatUdpIdleTimeoutSec
    , rnatNATIPs
    , rnatSubnetworks
    , rnatMinPortsPerVM
    , rnatName
    , rnatSourceSubnetworkIPRangesToNAT
    , rnatTCPEstablishedIdleTimeoutSec
    , rnatLogConfig
    , rnatTCPTransitoryIdleTimeoutSec
    , rnatDrainNATIPs

    -- ** AutoscalerAggregatedListWarning
    , AutoscalerAggregatedListWarning
    , autoscalerAggregatedListWarning
    , aalwData
    , aalwCode
    , aalwMessage

    -- ** GRPCHealthCheckPortSpecification
    , GRPCHealthCheckPortSpecification (..)

    -- ** AutoscalerListWarningDataItem
    , AutoscalerListWarningDataItem
    , autoscalerListWarningDataItem
    , alwdiValue
    , alwdiKey

    -- ** PacketMirroringAggregatedListItems
    , PacketMirroringAggregatedListItems
    , packetMirroringAggregatedListItems
    , pmaliAddtional

    -- ** InstanceGroupManagersListPerInstanceConfigsRespWarningDataItem
    , InstanceGroupManagersListPerInstanceConfigsRespWarningDataItem
    , instanceGroupManagersListPerInstanceConfigsRespWarningDataItem
    , igmlpicrwdiValue
    , igmlpicrwdiKey

    -- ** MachineTypeListWarningCode
    , MachineTypeListWarningCode (..)

    -- ** ResourcePolicyList
    , ResourcePolicyList
    , resourcePolicyList
    , rplEtag
    , rplNextPageToken
    , rplKind
    , rplItems
    , rplSelfLink
    , rplWarning
    , rplId

    -- ** NodeTypeListWarning
    , NodeTypeListWarning
    , nodeTypeListWarning
    , ntlwData
    , ntlwCode
    , ntlwMessage

    -- ** PacketMirroringMirroredResourceInfoSubnetInfo
    , PacketMirroringMirroredResourceInfoSubnetInfo
    , packetMirroringMirroredResourceInfoSubnetInfo
    , pmmrisiURL
    , pmmrisiCanonicalURL

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
    , rsnatsDrainAutoAllocatedNATIPs
    , rsnatsUserAllocatedNATIPResources
    , rsnatsDrainUserAllocatedNATIPs
    , rsnatsName
    , rsnatsAutoAllocatedNATIPs
    , rsnatsMinExtraNATIPsNeeded
    , rsnatsNumVMEndpointsWithNATMAppings
    , rsnatsUserAllocatedNATIPs

    -- ** PublicAdvertisedPrefixPublicDelegatedPrefix
    , PublicAdvertisedPrefixPublicDelegatedPrefix
    , publicAdvertisedPrefixPublicDelegatedPrefix
    , pAppdpStatus
    , pAppdpProject
    , pAppdpName
    , pAppdpRegion
    , pAppdpIPRange

    -- ** TargetPoolsRemoveInstanceRequest
    , TargetPoolsRemoveInstanceRequest
    , targetPoolsRemoveInstanceRequest
    , tprirInstances

    -- ** NodeTypeAggregatedListWarningDataItem
    , NodeTypeAggregatedListWarningDataItem
    , nodeTypeAggregatedListWarningDataItem
    , nValue
    , nKey

    -- ** GlobalNetworkEndpointGroupsAttachEndpointsRequest
    , GlobalNetworkEndpointGroupsAttachEndpointsRequest
    , globalNetworkEndpointGroupsAttachEndpointsRequest
    , gnegaerNetworkEndpoints

    -- ** TargetInstancesScopedListWarningDataItem
    , TargetInstancesScopedListWarningDataItem
    , targetInstancesScopedListWarningDataItem
    , tislwdiValue
    , tislwdiKey

    -- ** ReservationsScopedListWarningCode
    , ReservationsScopedListWarningCode (..)

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
    , atalUnreachables
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
    , igmlmirNextPageToken
    , igmlmirManagedInstances

    -- ** InstanceProperties
    , InstanceProperties
    , instanceProperties
    , ipAdvancedMachineFeatures
    , ipServiceAccounts
    , ipReservationAffinity
    , ipNetworkInterfaces
    , ipConfidentialInstanceConfig
    , ipResourcePolicies
    , ipGuestAccelerators
    , ipMachineType
    , ipMetadata
    , ipShieldedInstanceConfig
    , ipLabels
    , ipScheduling
    , ipMinCPUPlatform
    , ipDisks
    , ipCanIPForward
    , ipDescription
    , ipTags
    , ipPrivateIPv6GoogleAccess

    -- ** ExternalVPNGatewayListWarningCode
    , ExternalVPNGatewayListWarningCode (..)

    -- ** ProjectsListXpnHostsRequest
    , ProjectsListXpnHostsRequest
    , projectsListXpnHostsRequest
    , plxhrOrganization

    -- ** VPNGatewayListWarning
    , VPNGatewayListWarning
    , vpnGatewayListWarning
    , vglwData
    , vglwCode
    , vglwMessage

    -- ** RegionListWarning
    , RegionListWarning
    , regionListWarning
    , rlwData
    , rlwCode
    , rlwMessage

    -- ** HealthChecksAggregatedListItems
    , HealthChecksAggregatedListItems
    , healthChecksAggregatedListItems
    , hcaliAddtional

    -- ** HTTP2HealthCheck
    , HTTP2HealthCheck
    , hTTP2HealthCheck
    , httphcResponse
    , httphcPortSpecification
    , httphcRequestPath
    , httphcHost
    , httphcProxyHeader
    , httphcPortName
    , httphcPort

    -- ** NodeTemplateAggregatedListWarningCode
    , NodeTemplateAggregatedListWarningCode (..)

    -- ** VPNGatewayAggregatedListWarningDataItem
    , VPNGatewayAggregatedListWarningDataItem
    , vpnGatewayAggregatedListWarningDataItem
    , vgalwdiValue
    , vgalwdiKey

    -- ** NodeGroupsScopedList
    , NodeGroupsScopedList
    , nodeGroupsScopedList
    , ngslNodeGroups
    , ngslWarning

    -- ** PublicAdvertisedPrefixList
    , PublicAdvertisedPrefixList
    , publicAdvertisedPrefixList
    , paplNextPageToken
    , paplKind
    , paplItems
    , paplSelfLink
    , paplWarning
    , paplId

    -- ** DiskTypesScopedListWarning
    , DiskTypesScopedListWarning
    , diskTypesScopedListWarning
    , dtslwData
    , dtslwCode
    , dtslwMessage

    -- ** InstanceGroupManagerUpdatePolicyInstanceRedistributionType
    , InstanceGroupManagerUpdatePolicyInstanceRedistributionType (..)

    -- ** HTTPFaultAbort
    , HTTPFaultAbort
    , hTTPFaultAbort
    , httpfaHTTPStatus
    , httpfaPercentage

    -- ** RegionInstanceGroupManagerListWarningDataItem
    , RegionInstanceGroupManagerListWarningDataItem
    , regionInstanceGroupManagerListWarningDataItem
    , rigmlwdiValue
    , rigmlwdiKey

    -- ** StatefulPolicy
    , StatefulPolicy
    , statefulPolicy
    , spPreservedState

    -- ** RuleAction
    , RuleAction (..)

    -- ** AddressesScopedListWarningCode
    , AddressesScopedListWarningCode (..)

    -- ** AttachedDiskInitializeParams
    , AttachedDiskInitializeParams
    , attachedDiskInitializeParams
    , adipSourceImage
    , adipDiskSizeGb
    , adipProvisionedIops
    , adipOnUpdateAction
    , adipResourcePolicies
    , adipDiskName
    , adipSourceImageEncryptionKey
    , adipDiskType
    , adipLabels
    , adipDescription
    , adipSourceSnapshotEncryptionKey
    , adipSourceSnapshot

    -- ** UsableSubnetworkSecondaryRange
    , UsableSubnetworkSecondaryRange
    , usableSubnetworkSecondaryRange
    , ussrRangeName
    , ussrIPCIdRRange

    -- ** NetworkEndpointGroupsAttachEndpointsRequest
    , NetworkEndpointGroupsAttachEndpointsRequest
    , networkEndpointGroupsAttachEndpointsRequest
    , negaerNetworkEndpoints

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
    , niIPv6AccessConfigs
    , niIPv6Address
    , niKind
    , niFingerprint
    , niAliasIPRanges
    , niNetwork
    , niStackType
    , niNicType
    , niName
    , niNetworkIP
    , niSubnetwork
    , niIPv6AccessType
    , niAccessConfigs

    -- ** TargetHTTPSProxyAggregatedListWarning
    , TargetHTTPSProxyAggregatedListWarning
    , targetHTTPSProxyAggregatedListWarning
    , thpalwData
    , thpalwCode
    , thpalwMessage

    -- ** InitialStateConfig
    , InitialStateConfig
    , initialStateConfig
    , iscDBxs
    , iscPk
    , iscDBs
    , iscKeks

    -- ** FirewallListWarningCode
    , FirewallListWarningCode (..)

    -- ** RouterListWarning
    , RouterListWarning
    , routerListWarning
    , rouData
    , rouCode
    , rouMessage

    -- ** FirewallListWarningDataItem
    , FirewallListWarningDataItem
    , firewallListWarningDataItem
    , flwdiValue
    , flwdiKey

    -- ** InterconnectAttachmentType
    , InterconnectAttachmentType (..)

    -- ** ResourcePolicyAggregatedListItems
    , ResourcePolicyAggregatedListItems
    , resourcePolicyAggregatedListItems
    , rpaliAddtional

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
    , bbcpServeWhileStale
    , bbcpSignedURLCacheMaxAgeSec
    , bbcpNegativeCachingPolicy
    , bbcpBypassCacheOnRequestHeaders
    , bbcpRequestCoalescing
    , bbcpClientTtl
    , bbcpMaxTtl
    , bbcpCacheMode
    , bbcpDefaultTtl
    , bbcpNegativeCaching
    , bbcpSignedURLKeyNames

    -- ** ResourcePolicyDailyCycle
    , ResourcePolicyDailyCycle
    , resourcePolicyDailyCycle
    , rpdcStartTime
    , rpdcDaysInCycle
    , rpdcDuration

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

    -- ** GlobalOrganizationSetPolicyRequest
    , GlobalOrganizationSetPolicyRequest
    , globalOrganizationSetPolicyRequest
    , gosprEtag
    , gosprBindings
    , gosprPolicy

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

    -- ** HealthCheckServiceHealthStatusAggregationPolicy
    , HealthCheckServiceHealthStatusAggregationPolicy (..)

    -- ** InstanceGroupAggregatedListWarning
    , InstanceGroupAggregatedListWarning
    , instanceGroupAggregatedListWarning
    , igalwData
    , igalwCode
    , igalwMessage

    -- ** RouteList
    , RouteList
    , routeList
    , rouNextPageToken
    , rouKind
    , rouItems
    , rouSelfLink
    , rouWarning
    , rouId

    -- ** DeprecationStatusState
    , DeprecationStatusState (..)

    -- ** URLMapsAggregatedList
    , URLMapsAggregatedList
    , urlMapsAggregatedList
    , umalUnreachables
    , umalNextPageToken
    , umalKind
    , umalItems
    , umalSelfLink
    , umalWarning
    , umalId

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

    -- ** OutlierDetection
    , OutlierDetection
    , outlierDetection
    , odEnforcingConsecutiveErrors
    , odSuccessRateMinimumHosts
    , odConsecutiveGatewayFailure
    , odConsecutiveErrors
    , odEnforcingConsecutiveGatewayFailure
    , odBaseEjectionTime
    , odSuccessRateStdevFactor
    , odInterval
    , odEnforcingSuccessRate
    , odMaxEjectionPercent
    , odSuccessRateRequestVolume

    -- ** ResourcePolicyInstanceSchedulePolicySchedule
    , ResourcePolicyInstanceSchedulePolicySchedule
    , resourcePolicyInstanceSchedulePolicySchedule
    , rpispsSchedule

    -- ** SubnetworkPrivateIPv6GoogleAccess
    , SubnetworkPrivateIPv6GoogleAccess (..)

    -- ** Router
    , Router
    , router
    , rouoBGPPeers
    , rouoEncryptedInterconnectRouter
    , rouoBGP
    , rouoKind
    , rouoNetwork
    , rouoInterfaces
    , rouoSelfLink
    , rouoName
    , rouoCreationTimestamp
    , rouoId
    , rouoRegion
    , rouoNATs
    , rouoDescription

    -- ** NetworksGetEffectiveFirewallsResponseEffectiveFirewallPolicyType
    , NetworksGetEffectiveFirewallsResponseEffectiveFirewallPolicyType (..)

    -- ** LocationPolicyLocations
    , LocationPolicyLocations
    , locationPolicyLocations
    , lplAddtional

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
    , rValue
    , rKey

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

    -- ** VPNGatewayStatusHighAvailabilityRequirementState
    , VPNGatewayStatusHighAvailabilityRequirementState
    , vpnGatewayStatusHighAvailabilityRequirementState
    , vgsharsState
    , vgsharsUnsatisfiedReason

    -- ** PublicDelegatedPrefixAggregatedListItems
    , PublicDelegatedPrefixAggregatedListItems
    , publicDelegatedPrefixAggregatedListItems
    , pdpaliAddtional

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

    -- ** RegionURLMapsValidateRequest
    , RegionURLMapsValidateRequest
    , regionURLMapsValidateRequest
    , rumvrResource

    -- ** SSLCertificateList
    , SSLCertificateList
    , sslCertificateList
    , sclNextPageToken
    , sclKind
    , sclItems
    , sclSelfLink
    , sclWarning
    , sclId

    -- ** SecuritySettings
    , SecuritySettings
    , securitySettings
    , ssClientTLSPolicy
    , ssSubjectAltNames

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

    -- ** ResourcePolicySnapshotSchedulePolicySchedule
    , ResourcePolicySnapshotSchedulePolicySchedule
    , resourcePolicySnapshotSchedulePolicySchedule
    , rpsspsDailySchedule
    , rpsspsHourlySchedule
    , rpsspsWeeklySchedule

    -- ** RouterListWarningDataItem
    , RouterListWarningDataItem
    , routerListWarningDataItem
    , rouValue
    , rouKey

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

    -- ** PacketMirroringsScopedList
    , PacketMirroringsScopedList
    , packetMirroringsScopedList
    , pmslPacketMirrorings
    , pmslWarning

    -- ** BackendServiceAggregatedList
    , BackendServiceAggregatedList
    , backendServiceAggregatedList
    , bsalUnreachables
    , bsalNextPageToken
    , bsalKind
    , bsalItems
    , bsalSelfLink
    , bsalWarning
    , bsalId

    -- ** Network
    , Network
    , network
    , nMtu
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

    -- ** NetworkEndpointGroupAnnotations
    , NetworkEndpointGroupAnnotations
    , networkEndpointGroupAnnotations
    , negaAddtional

    -- ** RoutersScopedListWarning
    , RoutersScopedListWarning
    , routersScopedListWarning
    , rslwData
    , rslwCode
    , rslwMessage

    -- ** TargetHTTPSProxyAggregatedListWarningCode
    , TargetHTTPSProxyAggregatedListWarningCode (..)

    -- ** UsableSubnetwork
    , UsableSubnetwork
    , usableSubnetwork
    , usNetwork
    , usSecondaryIPRanges
    , usIPCIdRRange
    , usSubnetwork

    -- ** RouterBGPPeerAdvertisedGroupsItem
    , RouterBGPPeerAdvertisedGroupsItem (..)

    -- ** AutoscalingPolicyCPUUtilizationPredictiveMethod
    , AutoscalingPolicyCPUUtilizationPredictiveMethod (..)

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
    , secAdvancedOptionsConfig
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

    -- ** BackendServiceLocalityLbPolicy
    , BackendServiceLocalityLbPolicy (..)

    -- ** ForwardingRuleIPVersion
    , ForwardingRuleIPVersion (..)

    -- ** NodeGroupMaintenanceWindow
    , NodeGroupMaintenanceWindow
    , nodeGroupMaintenanceWindow
    , ngmwStartTime
    , ngmwMaintenanceDuration

    -- ** RouterNATLogConfigFilter
    , RouterNATLogConfigFilter (..)

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
    , ialUnreachables
    , ialNextPageToken
    , ialKind
    , ialItems
    , ialSelfLink
    , ialWarning
    , ialId

    -- ** ForwardingRuleReference
    , ForwardingRuleReference
    , forwardingRuleReference
    , frrForwardingRule

    -- ** NotificationEndpoint
    , NotificationEndpoint
    , notificationEndpoint
    , neKind
    , neSelfLink
    , neName
    , neCreationTimestamp
    , neId
    , neRegion
    , neGrpcSettings
    , neDescription

    -- ** TargetTCPProxiesSetBackendServiceRequest
    , TargetTCPProxiesSetBackendServiceRequest
    , targetTCPProxiesSetBackendServiceRequest
    , ttpsbsrService

    -- ** RegionInstanceGroupManagerPatchInstanceConfigReq
    , RegionInstanceGroupManagerPatchInstanceConfigReq
    , regionInstanceGroupManagerPatchInstanceConfigReq
    , rigmpicrPerInstanceConfigs

    -- ** SSLHealthCheck
    , SSLHealthCheck
    , sslHealthCheck
    , shcResponse
    , shcPortSpecification
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

    -- ** InstanceGroupManagersDeletePerInstanceConfigsReq
    , InstanceGroupManagersDeletePerInstanceConfigsReq
    , instanceGroupManagersDeletePerInstanceConfigsReq
    , igmdpicrNames

    -- ** NetworkInterfaceIPv6AccessType
    , NetworkInterfaceIPv6AccessType (..)

    -- ** StatefulPolicyPreservedStateDiskDevice
    , StatefulPolicyPreservedStateDiskDevice
    , statefulPolicyPreservedStateDiskDevice
    , sppsddAutoDelete

    -- ** Zone
    , Zone
    , zone
    , zStatus
    , zKind
    , zSelfLink
    , zName
    , zCreationTimestamp
    , zSupportsPzs
    , zId
    , zRegion
    , zAvailableCPUPlatforms
    , zDescription
    , zDeprecated

    -- ** RouterBGP
    , RouterBGP
    , routerBGP
    , rbKeepaliveInterval
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

    -- ** PacketMirroringAggregatedList
    , PacketMirroringAggregatedList
    , packetMirroringAggregatedList
    , pmalUnreachables
    , pmalNextPageToken
    , pmalKind
    , pmalItems
    , pmalSelfLink
    , pmalWarning
    , pmalId

    -- ** InstanceGroupManagersRecreateInstancesRequest
    , InstanceGroupManagersRecreateInstancesRequest
    , instanceGroupManagersRecreateInstancesRequest
    , igmrirInstances

    -- ** BackendServiceGroupHealthAnnotations
    , BackendServiceGroupHealthAnnotations
    , backendServiceGroupHealthAnnotations
    , bsghaAddtional

    -- ** HealthChecksAggregatedList
    , HealthChecksAggregatedList
    , healthChecksAggregatedList
    , hcalUnreachables
    , hcalNextPageToken
    , hcalKind
    , hcalItems
    , hcalSelfLink
    , hcalWarning
    , hcalId

    -- ** InstanceGroupManagersUpdatePerInstanceConfigsReq
    , InstanceGroupManagersUpdatePerInstanceConfigsReq
    , instanceGroupManagersUpdatePerInstanceConfigsReq
    , igmupicrPerInstanceConfigs

    -- ** TargetSSLProxiesSetSSLCertificatesRequest
    , TargetSSLProxiesSetSSLCertificatesRequest
    , targetSSLProxiesSetSSLCertificatesRequest
    , tspsscrSSLCertificates

    -- ** HealthStatusForNetworkEndpoint
    , HealthStatusForNetworkEndpoint
    , healthStatusForNetworkEndpoint
    , hsfneHealthCheckService
    , hsfneHealthCheck
    , hsfneForwardingRule
    , hsfneHealthState
    , hsfneBackendService

    -- ** FirewallPolicy
    , FirewallPolicy
    , firewallPolicy
    , fpParent
    , fpRules
    , fpShortName
    , fpKind
    , fpFingerprint
    , fpSelfLinkWithId
    , fpSelfLink
    , fpName
    , fpCreationTimestamp
    , fpAssociations
    , fpDisplayName
    , fpId
    , fpRuleTupleCount
    , fpDescription

    -- ** RouterAggregatedListWarning
    , RouterAggregatedListWarning
    , routerAggregatedListWarning
    , ralwaData
    , ralwaCode
    , ralwaMessage

    -- ** TargetHTTPSProxyAggregatedListWarningDataItem
    , TargetHTTPSProxyAggregatedListWarningDataItem
    , targetHTTPSProxyAggregatedListWarningDataItem
    , thpalwdiValue
    , thpalwdiKey

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

    -- ** ConfidentialInstanceConfig
    , ConfidentialInstanceConfig
    , confidentialInstanceConfig
    , cicEnableConfidentialCompute

    -- ** TargetInstanceAggregatedListItems
    , TargetInstanceAggregatedListItems
    , targetInstanceAggregatedListItems
    , tialiAddtional

    -- ** SSLCertificatesScopedListWarningCode
    , SSLCertificatesScopedListWarningCode (..)

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

    -- ** URLMapsAggregatedListWarning
    , URLMapsAggregatedListWarning
    , urlMapsAggregatedListWarning
    , umalwData
    , umalwCode
    , umalwMessage

    -- ** RouteListWarning
    , RouteListWarning
    , routeListWarning
    , rlwlData
    , rlwlCode
    , rlwlMessage

    -- ** ResourcePolicyGroupPlacementPolicyCollocation
    , ResourcePolicyGroupPlacementPolicyCollocation (..)

    -- ** TargetTCPProxyProxyHeader
    , TargetTCPProxyProxyHeader (..)

    -- ** InstanceGroupAggregatedList
    , InstanceGroupAggregatedList
    , instanceGroupAggregatedList
    , igalUnreachables
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
    , r1NextHopIlb
    , r1NextHopPeering
    , r1Priority
    , r1Kind
    , r1NextHopGateway
    , r1NextHopNetwork
    , r1Network
    , r1Warnings
    , r1NextHopIP
    , r1DestRange
    , r1SelfLink
    , r1Name
    , r1CreationTimestamp
    , r1Id
    , r1NextHopVPNTunnel
    , r1Description
    , r1Tags
    , r1NextHopInstance

    -- ** URLRewrite
    , URLRewrite
    , urlRewrite
    , urPathPrefixRewrite
    , urHostRewrite

    -- ** TargetVPNGatewaysScopedListWarningDataItem
    , TargetVPNGatewaysScopedListWarningDataItem
    , targetVPNGatewaysScopedListWarningDataItem
    , tvgslwdiValue
    , tvgslwdiKey

    -- ** LogConfigCloudAuditOptionsLogName
    , LogConfigCloudAuditOptionsLogName (..)

    -- ** AllocationSpecificSKUAllocationReservedInstanceProperties
    , AllocationSpecificSKUAllocationReservedInstanceProperties
    , allocationSpecificSKUAllocationReservedInstanceProperties
    , asskuaripGuestAccelerators
    , asskuaripLocalSsds
    , asskuaripMachineType
    , asskuaripMinCPUPlatform
    , asskuaripLocationHint

    -- ** LicenseCodeState
    , LicenseCodeState (..)

    -- ** InterconnectLocationRegionInfo
    , InterconnectLocationRegionInfo
    , interconnectLocationRegionInfo
    , ilriLocationPresence
    , ilriExpectedRttMs
    , ilriRegion

    -- ** NetworkEndpointGroupCloudFunction
    , NetworkEndpointGroupCloudFunction
    , networkEndpointGroupCloudFunction
    , negcfFunction
    , negcfURLMask

    -- ** TCPHealthCheckPortSpecification
    , TCPHealthCheckPortSpecification (..)

    -- ** TargetVPNGatewaysScopedListWarningCode
    , TargetVPNGatewaysScopedListWarningCode (..)

    -- ** TargetHTTPSProxiesSetSSLCertificatesRequest
    , TargetHTTPSProxiesSetSSLCertificatesRequest
    , targetHTTPSProxiesSetSSLCertificatesRequest
    , thpsscrSSLCertificates

    -- ** InstancesRemoveResourcePoliciesRequest
    , InstancesRemoveResourcePoliciesRequest
    , instancesRemoveResourcePoliciesRequest
    , irrprResourcePolicies

    -- ** FileContentBufferFileType
    , FileContentBufferFileType (..)

    -- ** InstanceGroupManagersPatchPerInstanceConfigsReq
    , InstanceGroupManagersPatchPerInstanceConfigsReq
    , instanceGroupManagersPatchPerInstanceConfigsReq
    , igmppicrPerInstanceConfigs

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
    , igmsVersionTarget
    , igmsIsStable
    , igmsAutoscaler
    , igmsStateful

    -- ** TargetHTTPSProxyAggregatedList
    , TargetHTTPSProxyAggregatedList
    , targetHTTPSProxyAggregatedList
    , thpalUnreachables
    , thpalNextPageToken
    , thpalKind
    , thpalItems
    , thpalSelfLink
    , thpalWarning
    , thpalId

    -- ** ReservationAggregatedListItems
    , ReservationAggregatedListItems
    , reservationAggregatedListItems
    , raliAddtional

    -- ** RegionInstanceGroupManagersCreateInstancesRequest
    , RegionInstanceGroupManagersCreateInstancesRequest
    , regionInstanceGroupManagersCreateInstancesRequest
    , rigmcirInstances

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

    -- ** BackendServiceCdnPolicyBypassCacheOnRequestHeader
    , BackendServiceCdnPolicyBypassCacheOnRequestHeader
    , backendServiceCdnPolicyBypassCacheOnRequestHeader
    , bscpbcorhHeaderName

    -- ** SSLCertificateSelfManagedSSLCertificate
    , SSLCertificateSelfManagedSSLCertificate
    , sslCertificateSelfManagedSSLCertificate
    , scsmscPrivateKey
    , scsmscCertificate

    -- ** DiskStatus
    , DiskStatus (..)

    -- ** ResourceCommitment
    , ResourceCommitment
    , resourceCommitment
    , rcAmount
    , rcAcceleratorType
    , rcType

    -- ** ConsistentHashLoadBalancerSettingsHTTPCookie
    , ConsistentHashLoadBalancerSettingsHTTPCookie
    , consistentHashLoadBalancerSettingsHTTPCookie
    , chlbshttpcTtl
    , chlbshttpcPath
    , chlbshttpcName

    -- ** SnapshotListWarningCode
    , SnapshotListWarningCode (..)

    -- ** SubnetworkLogConfigMetadata
    , SubnetworkLogConfigMetadata (..)

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

    -- ** SecurityPoliciesListPreConfiguredExpressionSetsResponse
    , SecurityPoliciesListPreConfiguredExpressionSetsResponse
    , securityPoliciesListPreConfiguredExpressionSetsResponse
    , splpcesrPreConfiguredExpressionSets

    -- ** ManagedInstanceInstanceStatus
    , ManagedInstanceInstanceStatus (..)

    -- ** HTTPHealthCheckProxyHeader
    , HTTPHealthCheckProxyHeader (..)

    -- ** SSLCertificateAggregatedListWarningDataItem
    , SSLCertificateAggregatedListWarningDataItem
    , sslCertificateAggregatedListWarningDataItem
    , scalwdiValue
    , scalwdiKey

    -- ** VMEndpointNATMAppingsListWarningDataItem
    , VMEndpointNATMAppingsListWarningDataItem
    , vMEndpointNATMAppingsListWarningDataItem
    , vmenatmalwdiValue
    , vmenatmalwdiKey

    -- ** HealthCheckServicesListWarningDataItem
    , HealthCheckServicesListWarningDataItem
    , healthCheckServicesListWarningDataItem
    , hValue
    , hKey

    -- ** InterconnectLocationContinent
    , InterconnectLocationContinent (..)

    -- ** URLMapsValidateResponse
    , URLMapsValidateResponse
    , urlMapsValidateResponse
    , umvrResult

    -- ** SSLCertificate
    , SSLCertificate
    , sslCertificate
    , scSubjectAlternativeNames
    , scPrivateKey
    , scManaged
    , scKind
    , scSelfLink
    , scName
    , scCreationTimestamp
    , scId
    , scCertificate
    , scRegion
    , scType
    , scExpireTime
    , scDescription
    , scSelfManaged

    -- ** SSLCertificatesScopedListWarningDataItem
    , SSLCertificatesScopedListWarningDataItem
    , sslCertificatesScopedListWarningDataItem
    , scslwdiValue
    , scslwdiKey

    -- ** PacketMirroringFilter
    , PacketMirroringFilter
    , packetMirroringFilter
    , pmfDirection
    , pmfCIdRRanges
    , pmfIPProtocols

    -- ** RegionInstanceGroupManagersApplyUpdatesRequest
    , RegionInstanceGroupManagersApplyUpdatesRequest
    , regionInstanceGroupManagersApplyUpdatesRequest
    , rigmaurAllInstances
    , rigmaurMostDisruptiveAllowedAction
    , rigmaurInstances
    , rigmaurMinimalAction

    -- ** SSLCertificateAggregatedListWarningCode
    , SSLCertificateAggregatedListWarningCode (..)

    -- ** NodeTemplateCPUOvercommitType
    , NodeTemplateCPUOvercommitType (..)

    -- ** VMEndpointNATMAppingsListWarningCode
    , VMEndpointNATMAppingsListWarningCode (..)

    -- ** HealthCheckServicesListWarningCode
    , HealthCheckServicesListWarningCode (..)

    -- ** ResourcePolicyGroupPlacementPolicy
    , ResourcePolicyGroupPlacementPolicy
    , resourcePolicyGroupPlacementPolicy
    , rpgppAvailabilityDomainCount
    , rpgppCollocation
    , rpgppVMCount

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

    -- ** SSLCertificatesScopedListWarning
    , SSLCertificatesScopedListWarning
    , sslCertificatesScopedListWarning
    , scslwData
    , scslwCode
    , scslwMessage

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

    -- ** InstanceGroupManagersApplyUpdatesRequestMinimalAction
    , InstanceGroupManagersApplyUpdatesRequestMinimalAction (..)

    -- ** InstanceGroupManagerUpdatePolicyType
    , InstanceGroupManagerUpdatePolicyType (..)

    -- ** HTTPRedirectAction
    , HTTPRedirectAction
    , hTTPRedirectAction
    , httpraRedirectResponseCode
    , httpraHostRedirect
    , httpraPathRedirect
    , httpraPrefixRedirect
    , httpraStripQuery
    , httpraHTTPSRedirect

    -- ** ServerBinding
    , ServerBinding
    , serverBinding
    , sbType

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

    -- ** VPNGatewayStatusHighAvailabilityRequirementStateState
    , VPNGatewayStatusHighAvailabilityRequirementStateState (..)

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

    -- ** GRPCHealthCheck
    , GRPCHealthCheck
    , gRPCHealthCheck
    , grpchcGrpcServiceName
    , grpchcPortSpecification
    , grpchcPortName
    , grpchcPort

    -- ** HealthStatusAnnotations
    , HealthStatusAnnotations
    , healthStatusAnnotations
    , hsaAddtional

    -- ** TargetSSLProxyListWarningCode
    , TargetSSLProxyListWarningCode (..)

    -- ** NotificationEndpointList
    , NotificationEndpointList
    , notificationEndpointList
    , nelNextPageToken
    , nelKind
    , nelItems
    , nelSelfLink
    , nelWarning
    , nelId

    -- ** DistributionPolicyZoneConfiguration
    , DistributionPolicyZoneConfiguration
    , distributionPolicyZoneConfiguration
    , dpzcZone

    -- ** RegionStatus
    , RegionStatus (..)

    -- ** ResourcePolicyResourceStatus
    , ResourcePolicyResourceStatus
    , resourcePolicyResourceStatus
    , rprsInstanceSchedulePolicy

    -- ** TargetTCPProxiesSetProxyHeaderRequest
    , TargetTCPProxiesSetProxyHeaderRequest
    , targetTCPProxiesSetProxyHeaderRequest
    , ttpsphrProxyHeader

    -- ** InterconnectAttachmentBandwidth
    , InterconnectAttachmentBandwidth (..)

    -- ** VPNGatewayStatus
    , VPNGatewayStatus
    , vpnGatewayStatus
    , vgsVPNConnections

    -- ** RouterBGPPeer
    , RouterBGPPeer
    , routerBGPPeer
    , rbpIPAddress
    , rbpInterfaceName
    , rbpPeerIPAddress
    , rbpAdvertisedRoutePriority
    , rbpPeerASN
    , rbpEnable
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
    , miPreservedStateFromConfig
    , miInstanceHealth
    , miCurrentAction
    , miVersion
    , miPreservedStateFromPolicy
    , miId
    , miInstanceStatus
    , miInstance

    -- ** InstanceGroupManagerAggregatedListItems
    , InstanceGroupManagerAggregatedListItems
    , instanceGroupManagerAggregatedListItems
    , igmaliAddtional

    -- ** HTTPHeaderOption
    , HTTPHeaderOption
    , hTTPHeaderOption
    , httphoReplace
    , httphoHeaderValue
    , httphoHeaderName

    -- ** InstanceGroupManagersDeleteInstancesRequest
    , InstanceGroupManagersDeleteInstancesRequest
    , instanceGroupManagersDeleteInstancesRequest
    , igmdirInstances

    -- ** HealthCheckServiceReference
    , HealthCheckServiceReference
    , healthCheckServiceReference
    , hcsrHealthCheckService

    -- ** Backend
    , Backend
    , backend
    , bGroup
    , bBalancingMode
    , bMaxUtilization
    , bMaxRate
    , bMaxConnections
    , bFailover
    , bMaxConnectionsPerInstance
    , bMaxRatePerEndpoint
    , bMaxConnectionsPerEndpoint
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

    -- ** PacketMirroringFilterDirection
    , PacketMirroringFilterDirection (..)

    -- ** TargetHTTPSProxiesScopedList
    , TargetHTTPSProxiesScopedList
    , targetHTTPSProxiesScopedList
    , thpslWarning
    , thpslTargetHTTPSProxies

    -- ** TargetVPNGatewayListWarningDataItem
    , TargetVPNGatewayListWarningDataItem
    , targetVPNGatewayListWarningDataItem
    , tvglwdiValue
    , tvglwdiKey

    -- ** ForwardingRuleAggregatedListItems
    , ForwardingRuleAggregatedListItems
    , forwardingRuleAggregatedListItems
    , fraliAddtional

    -- ** HTTP2HealthCheckPortSpecification
    , HTTP2HealthCheckPortSpecification (..)

    -- ** InterconnectAttachmentAggregatedList
    , InterconnectAttachmentAggregatedList
    , interconnectAttachmentAggregatedList
    , iaalUnreachables
    , iaalNextPageToken
    , iaalKind
    , iaalItems
    , iaalSelfLink
    , iaalWarning
    , iaalId

    -- ** FirewallPolicyList
    , FirewallPolicyList
    , firewallPolicyList
    , fplNextPageToken
    , fplKind
    , fplItems
    , fplWarning
    , fplId

    -- ** ExchangedPeeringRouteType
    , ExchangedPeeringRouteType (..)

    -- ** ScalingScheduleStatus
    , ScalingScheduleStatus
    , scalingScheduleStatus
    , sssState
    , sssLastStartTime
    , sssNextStartTime

    -- ** URLMapsAggregatedListWarningCode
    , URLMapsAggregatedListWarningCode (..)

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

    -- ** InstanceManagedByIgmError
    , InstanceManagedByIgmError
    , instanceManagedByIgmError
    , imbieInstanceActionDetails
    , imbieError
    , imbieTimestamp

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
    , netExchangeSubnetRoutes
    , netExportCustomRoutes
    , netStateDetails
    , netNetwork
    , netImportCustomRoutes
    , netName
    , netExportSubnetRoutesWithPublicIP
    , netImportSubnetRoutesWithPublicIP
    , netPeerMtu
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

    -- ** ExternalVPNGatewayRedundancyType
    , ExternalVPNGatewayRedundancyType (..)

    -- ** MachineTypeAcceleratorsItem
    , MachineTypeAcceleratorsItem
    , machineTypeAcceleratorsItem
    , mtaiGuestAcceleratorCount
    , mtaiGuestAcceleratorType

    -- ** VPNGatewayStatusTunnel
    , VPNGatewayStatusTunnel
    , vpnGatewayStatusTunnel
    , vgstTunnelURL
    , vgstPeerGatewayInterface
    , vgstLocalGatewayInterface

    -- ** URLMapsAggregatedListWarningDataItem
    , URLMapsAggregatedListWarningDataItem
    , urlMapsAggregatedListWarningDataItem
    , umalwdiValue
    , umalwdiKey

    -- ** InstanceListReferrersWarningDataItem
    , InstanceListReferrersWarningDataItem
    , instanceListReferrersWarningDataItem
    , ilrwdiValue
    , ilrwdiKey

    -- ** RouteListWarningDataItem
    , RouteListWarningDataItem
    , routeListWarningDataItem
    , rlwdilValue
    , rlwdilKey

    -- ** InstancesGetEffectiveFirewallsResponseEffectiveFirewallPolicyType
    , InstancesGetEffectiveFirewallsResponseEffectiveFirewallPolicyType (..)

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
    , calUnreachables
    , calNextPageToken
    , calKind
    , calItems
    , calSelfLink
    , calWarning
    , calId

    -- ** InstanceGroupManagersListErrorsResponse
    , InstanceGroupManagersListErrorsResponse
    , instanceGroupManagersListErrorsResponse
    , igmlerNextPageToken
    , igmlerItems

    -- ** RegionInstanceGroupList
    , RegionInstanceGroupList
    , regionInstanceGroupList
    , riglNextPageToken
    , riglKind
    , riglItems
    , riglSelfLink
    , riglWarning
    , riglId

    -- ** SubnetworkLogConfig
    , SubnetworkLogConfig
    , subnetworkLogConfig
    , slcMetadataFields
    , slcAggregationInterval
    , slcEnable
    , slcFilterExpr
    , slcMetadata
    , slcFlowSampling

    -- ** VMEndpointNATMAppingsListWarning
    , VMEndpointNATMAppingsListWarning
    , vMEndpointNATMAppingsListWarning
    , vmenatmalwData
    , vmenatmalwCode
    , vmenatmalwMessage

    -- ** HealthCheckServicesListWarning
    , HealthCheckServicesListWarning
    , healthCheckServicesListWarning
    , hcslwData
    , hcslwCode
    , hcslwMessage

    -- ** SSLCertificateAggregatedListWarning
    , SSLCertificateAggregatedListWarning
    , sslCertificateAggregatedListWarning
    , scalwData
    , scalwCode
    , scalwMessage

    -- ** ResourcePolicyResourceStatusInstanceSchedulePolicyStatus
    , ResourcePolicyResourceStatusInstanceSchedulePolicyStatus
    , resourcePolicyResourceStatusInstanceSchedulePolicyStatus
    , rprsispsNextRunStartTime
    , rprsispsLastRunStartTime

    -- ** TargetPoolAggregatedListItems
    , TargetPoolAggregatedListItems
    , targetPoolAggregatedListItems
    , tpaliAddtional

    -- ** ResourcePoliciesScopedListWarningCode
    , ResourcePoliciesScopedListWarningCode (..)

    -- ** PublicDelegatedPrefixesScopedListWarningDataItem
    , PublicDelegatedPrefixesScopedListWarningDataItem
    , publicDelegatedPrefixesScopedListWarningDataItem
    , pdpslwdiValue
    , pdpslwdiKey

    -- ** ResourcePoliciesScopedListWarningDataItem
    , ResourcePoliciesScopedListWarningDataItem
    , resourcePoliciesScopedListWarningDataItem
    , rpslwdiValue
    , rpslwdiKey

    -- ** NodeGroupsAddNodesRequest
    , NodeGroupsAddNodesRequest
    , nodeGroupsAddNodesRequest
    , nganrAdditionalNodeCount

    -- ** NodeTypeAggregatedList
    , NodeTypeAggregatedList
    , nodeTypeAggregatedList
    , ntalUnreachables
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

    -- ** NetworkEndpointGroupListWarningCode
    , NetworkEndpointGroupListWarningCode (..)

    -- ** NetworkRoutingConfigRoutingMode
    , NetworkRoutingConfigRoutingMode (..)

    -- ** SubnetworkListWarningCode
    , SubnetworkListWarningCode (..)

    -- ** HealthChecksScopedListWarning
    , HealthChecksScopedListWarning
    , healthChecksScopedListWarning
    , hData
    , hCode
    , hMessage

    -- ** SubnetworkListWarningDataItem
    , SubnetworkListWarningDataItem
    , subnetworkListWarningDataItem
    , sValue
    , sKey

    -- ** NetworkEndpointGroupListWarningDataItem
    , NetworkEndpointGroupListWarningDataItem
    , networkEndpointGroupListWarningDataItem
    , neglwdiValue
    , neglwdiKey

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

    -- ** InstanceGroupManagersListPerInstanceConfigsResp
    , InstanceGroupManagersListPerInstanceConfigsResp
    , instanceGroupManagersListPerInstanceConfigsResp
    , igmlpicrNextPageToken
    , igmlpicrItems
    , igmlpicrWarning

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

    -- ** NetworkEndpointGroupAggregatedListWarning
    , NetworkEndpointGroupAggregatedListWarning
    , networkEndpointGroupAggregatedListWarning
    , negalwData
    , negalwCode
    , negalwMessage

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

    -- ** FileContentBuffer
    , FileContentBuffer
    , fileContentBuffer
    , fcbFileType
    , fcbContent

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
    , vtalUnreachables
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
    , adDiskSizeGb
    , adDiskEncryptionKey
    , adKind
    , adMode
    , adGuestOSFeatures
    , adShieldedInstanceInitialState
    , adBoot
    , adAutoDelete
    , adInitializeParams
    , adDeviceName
    , adInterface
    , adSource
    , adLicenses
    , adType
    , adIndex

    -- ** HTTPFaultDelay
    , HTTPFaultDelay
    , hTTPFaultDelay
    , httpfdPercentage
    , httpfdFixedDelay

    -- ** HTTPHealthCheckListWarningDataItem
    , HTTPHealthCheckListWarningDataItem
    , hTTPHealthCheckListWarningDataItem
    , httphclwdiValue
    , httphclwdiKey

    -- ** BackendServiceCdnPolicyCacheMode
    , BackendServiceCdnPolicyCacheMode (..)

    -- ** InterconnectAttachmentOperationalStatus
    , InterconnectAttachmentOperationalStatus (..)

    -- ** ExchangedPeeringRoutesListWarning
    , ExchangedPeeringRoutesListWarning
    , exchangedPeeringRoutesListWarning
    , eprlwData
    , eprlwCode
    , eprlwMessage

    -- ** ResourcePolicySnapshotSchedulePolicyRetentionPolicy
    , ResourcePolicySnapshotSchedulePolicyRetentionPolicy
    , resourcePolicySnapshotSchedulePolicyRetentionPolicy
    , rpssprpMaxRetentionDays
    , rpssprpOnSourceDiskDelete

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

    -- ** ReservationsScopedList
    , ReservationsScopedList
    , reservationsScopedList
    , rslsWarning
    , rslsReservations

    -- ** SubnetworkLogConfigAggregationInterval
    , SubnetworkLogConfigAggregationInterval (..)

    -- ** TestPermissionsRequest
    , TestPermissionsRequest
    , testPermissionsRequest
    , tPermissions

    -- ** TargetTCPProxyListWarningDataItem
    , TargetTCPProxyListWarningDataItem
    , targetTCPProxyListWarningDataItem
    , ttplwdiValue
    , ttplwdiKey

    -- ** GuestAttributes
    , GuestAttributes
    , guestAttributes
    , gaKind
    , gaVariableKey
    , gaSelfLink
    , gaQueryPath
    , gaVariableValue
    , gaQueryValue

    -- ** ProjectsGetXpnResources
    , ProjectsGetXpnResources
    , projectsGetXpnResources
    , pgxrNextPageToken
    , pgxrKind
    , pgxrResources

    -- ** NetworkEndpointWithHealthStatus
    , NetworkEndpointWithHealthStatus
    , networkEndpointWithHealthStatus
    , newhsHealths
    , newhsNetworkEndpoint

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
    , nodUnreachables
    , nodNextPageToken
    , nodKind
    , nodItems
    , nodSelfLink
    , nodWarning
    , nodId

    -- ** ExternalVPNGatewayList
    , ExternalVPNGatewayList
    , externalVPNGatewayList
    , evglEtag
    , evglNextPageToken
    , evglKind
    , evglItems
    , evglSelfLink
    , evglWarning
    , evglId

    -- ** VPNGatewayAggregatedList
    , VPNGatewayAggregatedList
    , vpnGatewayAggregatedList
    , vgalUnreachables
    , vgalNextPageToken
    , vgalKind
    , vgalItems
    , vgalSelfLink
    , vgalWarning
    , vgalId

    -- ** InterconnectLocationListWarning
    , InterconnectLocationListWarning
    , interconnectLocationListWarning
    , illwData
    , illwCode
    , illwMessage

    -- ** InstancesGetEffectiveFirewallsResponse
    , InstancesGetEffectiveFirewallsResponse
    , instancesGetEffectiveFirewallsResponse
    , igefrFirewallPolicys
    , igefrFirewalls

    -- ** InstanceGroupsListInstancesWarning
    , InstanceGroupsListInstancesWarning
    , instanceGroupsListInstancesWarning
    , igliwData
    , igliwCode
    , igliwMessage

    -- ** PublicDelegatedPrefixesScopedListWarningCode
    , PublicDelegatedPrefixesScopedListWarningCode (..)

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

    -- ** NetworkEndpointGroupsListEndpointsRequestHealthStatus
    , NetworkEndpointGroupsListEndpointsRequestHealthStatus (..)

    -- ** PreservedStatePreservedDisk
    , PreservedStatePreservedDisk
    , preservedStatePreservedDisk
    , pspdMode
    , pspdAutoDelete
    , pspdSource

    -- ** SecurityPolicyAdvancedOptionsConfigJSONParsing
    , SecurityPolicyAdvancedOptionsConfigJSONParsing (..)

    -- ** LogConfigCloudAuditOptions
    , LogConfigCloudAuditOptions
    , logConfigCloudAuditOptions
    , lccaoAuthorizationLoggingOptions
    , lccaoLogName

    -- ** ImageListWarningCode
    , ImageListWarningCode (..)

    -- ** ResourcePolicyAggregatedListWarningDataItem
    , ResourcePolicyAggregatedListWarningDataItem
    , resourcePolicyAggregatedListWarningDataItem
    , rpalwdiValue
    , rpalwdiKey

    -- ** AddressStatus
    , AddressStatus (..)

    -- ** ProjectsSetDefaultNetworkTierRequest
    , ProjectsSetDefaultNetworkTierRequest
    , projectsSetDefaultNetworkTierRequest
    , psdntrNetworkTier

    -- ** ResourcePolicyAggregatedListWarningCode
    , ResourcePolicyAggregatedListWarningCode (..)

    -- ** ImageListWarningDataItem
    , ImageListWarningDataItem
    , imageListWarningDataItem
    , imaValue
    , imaKey

    -- ** SecurityPolicyAdvancedOptionsConfig
    , SecurityPolicyAdvancedOptionsConfig
    , securityPolicyAdvancedOptionsConfig
    , spaocLogLevel
    , spaocJSONParsing

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
    , dtalUnreachables
    , dtalNextPageToken
    , dtalKind
    , dtalItems
    , dtalSelfLink
    , dtalWarning
    , dtalId

    -- ** HTTPHealthCheck
    , HTTPHealthCheck
    , hTTPHealthCheck
    , hResponse
    , hPortSpecification
    , hRequestPath
    , hHost
    , hProxyHeader
    , hPortName
    , hPort

    -- ** URLMapListWarningDataItem
    , URLMapListWarningDataItem
    , urlMapListWarningDataItem
    , umlwdiValue
    , umlwdiKey

    -- ** AddressNetworkTier
    , AddressNetworkTier (..)

    -- ** URLMapsScopedListWarning
    , URLMapsScopedListWarning
    , urlMapsScopedListWarning
    , umslwData
    , umslwCode
    , umslwMessage

    -- ** RouterNATSubnetworkToNAT
    , RouterNATSubnetworkToNAT
    , routerNATSubnetworkToNAT
    , rnatstnatSourceIPRangesToNAT
    , rnatstnatName
    , rnatstnatSecondaryIPRangeNames

    -- ** BackendServiceGroupHealth
    , BackendServiceGroupHealth
    , backendServiceGroupHealth
    , bsghAnnotations
    , bsghKind
    , bsghHealthStatus

    -- ** URLMapListWarningCode
    , URLMapListWarningCode (..)

    -- ** InstanceGroupsListInstancesRequestInstanceState
    , InstanceGroupsListInstancesRequestInstanceState (..)

    -- ** WafExpressionSetExpression
    , WafExpressionSetExpression
    , wafExpressionSetExpression
    , weseId

    -- ** VPNGatewayStatusVPNConnection
    , VPNGatewayStatusVPNConnection
    , vpnGatewayStatusVPNConnection
    , vgsvcState
    , vgsvcPeerExternalGateway
    , vgsvcTunnels
    , vgsvcPeerGcpGateway

    -- ** AutoscalersScopedList
    , AutoscalersScopedList
    , autoscalersScopedList
    , aAutoscalers
    , aWarning

    -- ** SecurityPoliciesWafConfig
    , SecurityPoliciesWafConfig
    , securityPoliciesWafConfig
    , spwcWafRules

    -- ** LogConfigDataAccessOptions
    , LogConfigDataAccessOptions
    , logConfigDataAccessOptions
    , lcdaoLogMode

    -- ** AutoscalerAggregatedList
    , AutoscalerAggregatedList
    , autoscalerAggregatedList
    , aalUnreachables
    , aalNextPageToken
    , aalKind
    , aalItems
    , aalSelfLink
    , aalWarning
    , aalId

    -- ** RouterAggregatedListItems
    , RouterAggregatedListItems
    , routerAggregatedListItems
    , rAddtional

    -- ** AcceleratorTypesScopedListWarning
    , AcceleratorTypesScopedListWarning
    , acceleratorTypesScopedListWarning
    , atslwData
    , atslwCode
    , atslwMessage

    -- ** PublicDelegatedPrefixListWarning
    , PublicDelegatedPrefixListWarning
    , publicDelegatedPrefixListWarning
    , pdplwData
    , pdplwCode
    , pdplwMessage

    -- ** TargetTCPProxy
    , TargetTCPProxy
    , targetTCPProxy
    , ttpService
    , ttpProxyBind
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

    -- ** NetworkEndpointGroupCloudRun
    , NetworkEndpointGroupCloudRun
    , networkEndpointGroupCloudRun
    , negcrTag
    , negcrService
    , negcrURLMask

    -- ** ProjectDefaultNetworkTier
    , ProjectDefaultNetworkTier (..)

    -- ** ImageLabels
    , ImageLabels
    , imageLabels
    , iAddtional

    -- ** PublicDelegatedPrefixAggregatedListWarningDataItem
    , PublicDelegatedPrefixAggregatedListWarningDataItem
    , publicDelegatedPrefixAggregatedListWarningDataItem
    , pdpalwdiValue
    , pdpalwdiKey

    -- ** NodeGroupListWarningCode
    , NodeGroupListWarningCode (..)

    -- ** DistributionPolicy
    , DistributionPolicy
    , distributionPolicy
    , dpZones
    , dpTargetShape

    -- ** PublicDelegatedPrefixAggregatedListWarningCode
    , PublicDelegatedPrefixAggregatedListWarningCode (..)

    -- ** RouterNATSourceSubnetworkIPRangesToNAT
    , RouterNATSourceSubnetworkIPRangesToNAT (..)

    -- ** RegionInstanceGroupManagersListInstanceConfigsRespWarning
    , RegionInstanceGroupManagersListInstanceConfigsRespWarning
    , regionInstanceGroupManagersListInstanceConfigsRespWarning
    , rigmlicrwData
    , rigmlicrwCode
    , rigmlicrwMessage

    -- ** NodeGroupListWarningDataItem
    , NodeGroupListWarningDataItem
    , nodeGroupListWarningDataItem
    , nglwdiValue
    , nglwdiKey

    -- ** HTTPSHealthCheckProxyHeader
    , HTTPSHealthCheckProxyHeader (..)

    -- ** LicenseResourceCommitment
    , LicenseResourceCommitment
    , licenseResourceCommitment
    , lrcCoresPerLicense
    , lrcAmount
    , lrcLicense

    -- ** PacketMirroringMirroredResourceInfoInstanceInfo
    , PacketMirroringMirroredResourceInfoInstanceInfo
    , packetMirroringMirroredResourceInfoInstanceInfo
    , pmmriiiURL
    , pmmriiiCanonicalURL

    -- ** AutoscalingPolicy
    , AutoscalingPolicy
    , autoscalingPolicy
    , apScaleInControl
    , apMode
    , apScalingSchedules
    , apCustomMetricUtilizations
    , apMaxNumReplicas
    , apCPUUtilization
    , apLoadBalancingUtilization
    , apMinNumReplicas
    , apCoolDownPeriodSec

    -- ** PacketMirroringForwardingRuleInfo
    , PacketMirroringForwardingRuleInfo
    , packetMirroringForwardingRuleInfo
    , pmfriURL
    , pmfriCanonicalURL

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

    -- ** AutoscalingPolicyScaleInControl
    , AutoscalingPolicyScaleInControl
    , autoscalingPolicyScaleInControl
    , apsicTimeWindowSec
    , apsicMaxScaledInReplicas

    -- ** VPNGatewayList
    , VPNGatewayList
    , vpnGatewayList
    , vglNextPageToken
    , vglKind
    , vglItems
    , vglSelfLink
    , vglWarning
    , vglId

    -- ** ManagedInstanceInstanceHealthDetailedHealthState
    , ManagedInstanceInstanceHealthDetailedHealthState (..)

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

    -- ** DisksAddResourcePoliciesRequest
    , DisksAddResourcePoliciesRequest
    , disksAddResourcePoliciesRequest
    , darprResourcePolicies

    -- ** NetworkEndpointGroupsScopedListWarningDataItem
    , NetworkEndpointGroupsScopedListWarningDataItem
    , networkEndpointGroupsScopedListWarningDataItem
    , negslwdiValue
    , negslwdiKey

    -- ** SubnetworksScopedListWarningDataItem
    , SubnetworksScopedListWarningDataItem
    , subnetworksScopedListWarningDataItem
    , sslwdiValue
    , sslwdiKey

    -- ** NetworkEndpointGroupsScopedListWarningCode
    , NetworkEndpointGroupsScopedListWarningCode (..)

    -- ** MachineTypesScopedList
    , MachineTypesScopedList
    , machineTypesScopedList
    , mtslMachineTypes
    , mtslWarning

    -- ** SubnetworksScopedListWarningCode
    , SubnetworksScopedListWarningCode (..)

    -- ** ResourcePolicyListWarning
    , ResourcePolicyListWarning
    , resourcePolicyListWarning
    , rplwData
    , rplwCode
    , rplwMessage

    -- ** InstanceGroupManagerStatusVersionTarget
    , InstanceGroupManagerStatusVersionTarget
    , instanceGroupManagerStatusVersionTarget
    , igmsvtIsReached

    -- ** NetworkEndpointGroup
    , NetworkEndpointGroup
    , networkEndpointGroup
    , negAnnotations
    , negSize
    , negKind
    , negCloudRun
    , negNetwork
    , negZone
    , negSelfLink
    , negName
    , negAppEngine
    , negCreationTimestamp
    , negDefaultPort
    , negSubnetwork
    , negNetworkEndpointType
    , negId
    , negRegion
    , negCloudFunction
    , negDescription

    -- ** TargetHTTPProxyAggregatedList
    , TargetHTTPProxyAggregatedList
    , targetHTTPProxyAggregatedList
    , thttppalUnreachables
    , thttppalNextPageToken
    , thttppalKind
    , thttppalItems
    , thttppalSelfLink
    , thttppalId

    -- ** NetworkEndpointGroupsListNetworkEndpointsWarningCode
    , NetworkEndpointGroupsListNetworkEndpointsWarningCode (..)

    -- ** Subnetwork
    , Subnetwork
    , subnetwork
    , subExternalIPv6Prefix
    , subState
    , subKind
    , subFingerprint
    , subNetwork
    , subStackType
    , subGatewayAddress
    , subPurpose
    , subRole
    , subSelfLink
    , subEnableFlowLogs
    , subName
    , subSecondaryIPRanges
    , subCreationTimestamp
    , subIPCIdRRange
    , subIPv6CIdRRange
    , subIPv6AccessType
    , subId
    , subRegion
    , subLogConfig
    , subDescription
    , subPrivateIPGoogleAccess
    , subPrivateIPv6GoogleAccess

    -- ** HealthCheckListWarning
    , HealthCheckListWarning
    , healthCheckListWarning
    , hclwData
    , hclwCode
    , hclwMessage

    -- ** MachineTypeAggregatedList
    , MachineTypeAggregatedList
    , machineTypeAggregatedList
    , mtalUnreachables
    , mtalNextPageToken
    , mtalKind
    , mtalItems
    , mtalSelfLink
    , mtalWarning
    , mtalId

    -- ** NetworkEndpointGroupsListNetworkEndpointsWarningDataItem
    , NetworkEndpointGroupsListNetworkEndpointsWarningDataItem
    , networkEndpointGroupsListNetworkEndpointsWarningDataItem
    , neglnewdiValue
    , neglnewdiKey

    -- ** ResourcePolicyWeeklyCycleDayOfWeek
    , ResourcePolicyWeeklyCycleDayOfWeek
    , resourcePolicyWeeklyCycleDayOfWeek
    , rpwcdowStartTime
    , rpwcdowDay
    , rpwcdowDuration

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

    -- ** PublicAdvertisedPrefixListWarning
    , PublicAdvertisedPrefixListWarning
    , publicAdvertisedPrefixListWarning
    , paplwData
    , paplwCode
    , paplwMessage

    -- ** ExternalVPNGatewayListWarning
    , ExternalVPNGatewayListWarning
    , externalVPNGatewayListWarning
    , evglwData
    , evglwCode
    , evglwMessage

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

    -- ** ReservationsScopedListWarning
    , ReservationsScopedListWarning
    , reservationsScopedListWarning
    , resData
    , resCode
    , resMessage

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

    -- ** BackendServiceFailoverPolicy
    , BackendServiceFailoverPolicy
    , backendServiceFailoverPolicy
    , bsfpDisableConnectionDrainOnFailover
    , bsfpDropTrafficIfUnhealthy
    , bsfpFailoverRatio

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

    -- ** RouterBGPPeerEnable
    , RouterBGPPeerEnable (..)

    -- ** AutoscalerAggregatedListWarningCode
    , AutoscalerAggregatedListWarningCode (..)

    -- ** FirewallLogConfigMetadata
    , FirewallLogConfigMetadata (..)

    -- ** InstanceGroupManagersApplyUpdatesRequestMostDisruptiveAllowedAction
    , InstanceGroupManagersApplyUpdatesRequestMostDisruptiveAllowedAction (..)

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

    -- ** ExternalVPNGateway
    , ExternalVPNGateway
    , externalVPNGateway
    , evgKind
    , evgInterfaces
    , evgRedundancyType
    , evgSelfLink
    , evgName
    , evgCreationTimestamp
    , evgId
    , evgLabels
    , evgLabelFingerprint
    , evgDescription

    -- ** NodeTemplateListWarningDataItem
    , NodeTemplateListWarningDataItem
    , nodeTemplateListWarningDataItem
    , nodValue
    , nodKey

    -- ** InstanceGroupManagerUpdatePolicyReplacementMethod
    , InstanceGroupManagerUpdatePolicyReplacementMethod (..)

    -- ** VPNGatewayListWarningDataItem
    , VPNGatewayListWarningDataItem
    , vpnGatewayListWarningDataItem
    , vglwdiValue
    , vglwdiKey

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

    -- ** ExchangedPeeringRoutesList
    , ExchangedPeeringRoutesList
    , exchangedPeeringRoutesList
    , eprlNextPageToken
    , eprlKind
    , eprlItems
    , eprlSelfLink
    , eprlWarning
    , eprlId

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

    -- ** AllocationSpecificSKUReservation
    , AllocationSpecificSKUReservation
    , allocationSpecificSKUReservation
    , asskurInUseCount
    , asskurInstanceProperties
    , asskurCount

    -- ** NodeTemplateListWarningCode
    , NodeTemplateListWarningCode (..)

    -- ** VMEndpointNATMAppingsInterfaceNATMAppings
    , VMEndpointNATMAppingsInterfaceNATMAppings
    , vMEndpointNATMAppingsInterfaceNATMAppings
    , vmenatmainatmaDrainNATIPPortRanges
    , vmenatmainatmaSourceAliasIPRange
    , vmenatmainatmaNumTotalDrainNATPorts
    , vmenatmainatmaSourceVirtualIP
    , vmenatmainatmaNATIPPortRanges
    , vmenatmainatmaNumTotalNATPorts

    -- ** VPNTunnelAggregatedListWarning
    , VPNTunnelAggregatedListWarning
    , vpnTunnelAggregatedListWarning
    , vtalwData
    , vtalwCode
    , vtalwMessage

    -- ** InstanceGroupManagersListPerInstanceConfigsRespWarning
    , InstanceGroupManagersListPerInstanceConfigsRespWarning
    , instanceGroupManagersListPerInstanceConfigsRespWarning
    , igmlpicrwData
    , igmlpicrwCode
    , igmlpicrwMessage

    -- ** TargetHTTPProxy
    , TargetHTTPProxy
    , targetHTTPProxy
    , thttppURLMap
    , thttppProxyBind
    , thttppKind
    , thttppFingerprint
    , thttppSelfLink
    , thttppName
    , thttppCreationTimestamp
    , thttppId
    , thttppRegion
    , thttppDescription

    -- ** ShieldedInstanceConfig
    , ShieldedInstanceConfig
    , shieldedInstanceConfig
    , sicEnableVtpm
    , sicEnableIntegrityMonitoring
    , sicEnableSecureBoot

    -- ** MachineType
    , MachineType
    , machineType
    , mtIsSharedCPU
    , mtKind
    , mtImageSpaceGb
    , mtZone
    , mtSelfLink
    , mtAccelerators
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

    -- ** VPNGatewayListWarningCode
    , VPNGatewayListWarningCode (..)

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

    -- ** LocationPolicy
    , LocationPolicy
    , locationPolicy
    , lpLocations

    -- ** Int64RangeMatch
    , Int64RangeMatch
    , int64RangeMatch
    , irmRangeStart
    , irmRangeEnd

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

    -- ** SSLCertificateManagedSSLCertificate
    , SSLCertificateManagedSSLCertificate
    , sslCertificateManagedSSLCertificate
    , scmscDomainStatus
    , scmscStatus
    , scmscDomains

    -- ** NetworkEndpointGroupAggregatedList
    , NetworkEndpointGroupAggregatedList
    , networkEndpointGroupAggregatedList
    , negalUnreachables
    , negalNextPageToken
    , negalKind
    , negalItems
    , negalSelfLink
    , negalWarning
    , negalId

    -- ** SubnetworkAggregatedList
    , SubnetworkAggregatedList
    , subnetworkAggregatedList
    , salUnreachables
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

    -- ** HealthChecksScopedList
    , HealthChecksScopedList
    , healthChecksScopedList
    , hcslWarning
    , hcslHealthChecks

    -- ** AutoscalersScopedListWarningDataItem
    , AutoscalersScopedListWarningDataItem
    , autoscalersScopedListWarningDataItem
    , aValue
    , aKey

    -- ** DisksRemoveResourcePoliciesRequest
    , DisksRemoveResourcePoliciesRequest
    , disksRemoveResourcePoliciesRequest
    , drrprResourcePolicies

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

    -- ** AttachedDiskInitializeParamsOnUpdateAction
    , AttachedDiskInitializeParamsOnUpdateAction (..)

    -- ** AutoscalersScopedListWarningCode
    , AutoscalersScopedListWarningCode (..)

    -- ** HTTPSHealthCheckPortSpecification
    , HTTPSHealthCheckPortSpecification (..)

    -- ** VPNGatewayAggregatedListWarning
    , VPNGatewayAggregatedListWarning
    , vpnGatewayAggregatedListWarning
    , vgalwData
    , vgalwCode
    , vgalwMessage

    -- ** DiskTypeAggregatedListWarningDataItem
    , DiskTypeAggregatedListWarningDataItem
    , diskTypeAggregatedListWarningDataItem
    , dtalwdiValue
    , dtalwdiKey

    -- ** ShieldedInstanceIdentityEntry
    , ShieldedInstanceIdentityEntry
    , shieldedInstanceIdentityEntry
    , siieEkCert
    , siieEkPub

    -- ** ForwardingRuleLoadBalancingScheme
    , ForwardingRuleLoadBalancingScheme (..)

    -- ** AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk
    , AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk
    , allocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk
    , asskuaaiprdDiskSizeGb
    , asskuaaiprdInterface

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
    , aaScalingScheduleStatus
    , aaSelfLink
    , aaName
    , aaCreationTimestamp
    , aaAutoscalingPolicy
    , aaId
    , aaRegion
    , aaRecommendedSize
    , aaDescription
    , aaTarget

    -- ** ConsistentHashLoadBalancerSettings
    , ConsistentHashLoadBalancerSettings
    , consistentHashLoadBalancerSettings
    , chlbsMinimumRingSize
    , chlbsHTTPCookie
    , chlbsHTTPHeaderName

    -- ** SubnetworkState
    , SubnetworkState (..)

    -- ** VPNGatewayVPNGatewayInterface
    , VPNGatewayVPNGatewayInterface
    , vpnGatewayVPNGatewayInterface
    , vgvgiIPAddress
    , vgvgiId
    , vgvgiInterconnectAttachment

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

    -- ** ResourcePoliciesScopedList
    , ResourcePoliciesScopedList
    , resourcePoliciesScopedList
    , rpslResourcePolicies
    , rpslWarning

    -- ** PacketMirroringEnable
    , PacketMirroringEnable (..)

    -- ** TargetPoolAggregatedListWarning
    , TargetPoolAggregatedListWarning
    , targetPoolAggregatedListWarning
    , tpalwData
    , tpalwCode
    , tpalwMessage

    -- ** HTTPQueryParameterMatch
    , HTTPQueryParameterMatch
    , hTTPQueryParameterMatch
    , httpqpmName
    , httpqpmPresentMatch
    , httpqpmExactMatch
    , httpqpmRegexMatch

    -- ** ReservationListWarning
    , ReservationListWarning
    , reservationListWarning
    , rrData
    , rrCode
    , rrMessage

    -- ** UsableSubnetworksAggregatedListWarning
    , UsableSubnetworksAggregatedListWarning
    , usableSubnetworksAggregatedListWarning
    , usalwData
    , usalwCode
    , usalwMessage

    -- ** ReservationsResizeRequest
    , ReservationsResizeRequest
    , reservationsResizeRequest
    , rrrSpecificSKUCount

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

    -- ** HTTPRedirectActionRedirectResponseCode
    , HTTPRedirectActionRedirectResponseCode (..)

    -- ** ReservationAggregatedListWarningDataItem
    , ReservationAggregatedListWarningDataItem
    , reservationAggregatedListWarningDataItem
    , resValue
    , resKey

    -- ** SSLCertificateAggregatedListItems
    , SSLCertificateAggregatedListItems
    , sslCertificateAggregatedListItems
    , scaliAddtional

    -- ** InterconnectInterconnectType
    , InterconnectInterconnectType (..)

    -- ** MetadataFilterLabelMatch
    , MetadataFilterLabelMatch
    , metadataFilterLabelMatch
    , mflmValue
    , mflmName

    -- ** ForwardingRuleAggregatedListWarning
    , ForwardingRuleAggregatedListWarning
    , forwardingRuleAggregatedListWarning
    , fralwData
    , fralwCode
    , fralwMessage

    -- ** ReservationAggregatedListWarningCode
    , ReservationAggregatedListWarningCode (..)

    -- ** ExternalVPNGatewayInterface
    , ExternalVPNGatewayInterface
    , externalVPNGatewayInterface
    , evgiIPAddress
    , evgiId

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
    , hsAnnotations
    , hsForwardingRuleIP
    , hsIPAddress
    , hsForwardingRule
    , hsWeight
    , hsWeightError
    , hsHealthState
    , hsPort
    , hsInstance

    -- ** VPNGatewaysScopedListWarningDataItem
    , VPNGatewaysScopedListWarningDataItem
    , vpnGatewaysScopedListWarningDataItem
    , vgslwdiValue
    , vgslwdiKey

    -- ** TargetTCPProxyList
    , TargetTCPProxyList
    , targetTCPProxyList
    , ttplNextPageToken
    , ttplKind
    , ttplItems
    , ttplSelfLink
    , ttplWarning
    , ttplId

    -- ** VPNGatewaysScopedListWarningCode
    , VPNGatewaysScopedListWarningCode (..)

    -- ** Region
    , Region
    , region
    , regeStatus
    , regeZones
    , regeKind
    , regeSelfLink
    , regeName
    , regeCreationTimestamp
    , regeSupportsPzs
    , regeQuotas
    , regeId
    , regeDescription
    , regeDeprecated

    -- ** VPNGateway
    , VPNGateway
    , vpnGateway
    , vgKind
    , vgNetwork
    , vgSelfLink
    , vgName
    , vgCreationTimestamp
    , vgId
    , vgLabels
    , vgRegion
    , vgLabelFingerprint
    , vgDescription
    , vgVPNInterfaces

    -- ** RegionAutoscalerListWarningCode
    , RegionAutoscalerListWarningCode (..)

    -- ** RequestMirrorPolicy
    , RequestMirrorPolicy
    , requestMirrorPolicy
    , rmpBackendService

    -- ** PublicDelegatedPrefixesScopedList
    , PublicDelegatedPrefixesScopedList
    , publicDelegatedPrefixesScopedList
    , pdpslPublicDelegatedPrefixes
    , pdpslWarning

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
    , vtVPNGatewayInterface
    , vtKind
    , vtPeerIP
    , vtRouter
    , vtTargetVPNGateway
    , vtRemoteTrafficSelector
    , vtSelfLink
    , vtSharedSecret
    , vtName
    , vtPeerExternalGateway
    , vtCreationTimestamp
    , vtPeerExternalGatewayInterface
    , vtSharedSecretHash
    , vtId
    , vtIkeVersion
    , vtRegion
    , vtVPNGateway
    , vtPeerGcpGateway
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

    -- ** HealthStatusWeightError
    , HealthStatusWeightError (..)

    -- ** AliasIPRange
    , AliasIPRange
    , aliasIPRange
    , airIPCIdRRange
    , airSubnetworkRangeName

    -- ** LocationPolicyLocation
    , LocationPolicyLocation
    , locationPolicyLocation
    , lplPreference

    -- ** ForwardingRuleListWarningCode
    , ForwardingRuleListWarningCode (..)

    -- ** SSLCertificateManagedSSLCertificateDomainStatusAdditional
    , SSLCertificateManagedSSLCertificateDomainStatusAdditional (..)

    -- ** NodeTypesScopedListWarningDataItem
    , NodeTypesScopedListWarningDataItem
    , nodeTypesScopedListWarningDataItem
    , ntslwditValue
    , ntslwditKey

    -- ** VPNTunnelsScopedListWarningCode
    , VPNTunnelsScopedListWarningCode (..)

    -- ** ForwardingRuleServiceDirectoryRegistration
    , ForwardingRuleServiceDirectoryRegistration
    , forwardingRuleServiceDirectoryRegistration
    , frsdrService
    , frsdrNamespace
    , frsdrServiceDirectoryRegion

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

    -- ** AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterface
    , AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterface (..)

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

    -- ** TargetHTTPProxiesScopedListWarningCode
    , TargetHTTPProxiesScopedListWarningCode (..)

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
    , sMinNodeCPUs
    , sAutomaticRestart
    , sNodeAffinities
    , sOnHostMaintenance
    , sLocationHint
    , sPreemptible

    -- ** TargetInstanceAggregatedListWarningCode
    , TargetInstanceAggregatedListWarningCode (..)

    -- ** RegionDiskTypeListWarningCode
    , RegionDiskTypeListWarningCode (..)

    -- ** InstancePrivateIPv6GoogleAccess
    , InstancePrivateIPv6GoogleAccess (..)

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
    , nttServerBinding
    , nttAccelerators
    , nttName
    , nttStatusMessage
    , nttCreationTimestamp
    , nttNodeAffinityLabels
    , nttId
    , nttNodeTypeFlexibility
    , nttNodeType
    , nttRegion
    , nttDisks
    , nttDescription
    , nttCPUOvercommitType

    -- ** NetworksGetEffectiveFirewallsResponse
    , NetworksGetEffectiveFirewallsResponse
    , networksGetEffectiveFirewallsResponse
    , ngefrFirewallPolicys
    , ngefrFirewalls

    -- ** NetworkEndpointGroupList
    , NetworkEndpointGroupList
    , networkEndpointGroupList
    , neglNextPageToken
    , neglKind
    , neglItems
    , neglSelfLink
    , neglWarning
    , neglId

    -- ** TargetHTTPProxiesScopedListWarningDataItem
    , TargetHTTPProxiesScopedListWarningDataItem
    , targetHTTPProxiesScopedListWarningDataItem
    , thttppslwdiValue
    , thttppslwdiKey

    -- ** SubnetworkList
    , SubnetworkList
    , subnetworkList
    , slNextPageToken
    , slKind
    , slItems
    , slSelfLink
    , slWarning
    , slId

    -- ** SecurityPolicyAdvancedOptionsConfigLogLevel
    , SecurityPolicyAdvancedOptionsConfigLogLevel (..)

    -- ** AddressAddressType
    , AddressAddressType (..)

    -- ** TargetPoolListWarningCode
    , TargetPoolListWarningCode (..)

    -- ** ForwardingRuleLabels
    , ForwardingRuleLabels
    , forwardingRuleLabels
    , frlAddtional

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

    -- ** ResourcePolicySnapshotSchedulePolicy
    , ResourcePolicySnapshotSchedulePolicy
    , resourcePolicySnapshotSchedulePolicy
    , rpsspSchedule
    , rpsspRetentionPolicy
    , rpsspSnapshotProperties

    -- ** BulkInsertInstanceResourcePerInstanceProperties
    , BulkInsertInstanceResourcePerInstanceProperties
    , bulkInsertInstanceResourcePerInstanceProperties
    , biirpipName

    -- ** TargetHTTPSProxiesScopedListWarningDataItem
    , TargetHTTPSProxiesScopedListWarningDataItem
    , targetHTTPSProxiesScopedListWarningDataItem
    , thpslwdiValue
    , thpslwdiKey

    -- ** LocationPolicyLocationPreference
    , LocationPolicyLocationPreference (..)

    -- ** NetworksGetEffectiveFirewallsResponseEffectiveFirewallPolicy
    , NetworksGetEffectiveFirewallsResponseEffectiveFirewallPolicy
    , networksGetEffectiveFirewallsResponseEffectiveFirewallPolicy
    , ngefrefpRules
    , ngefrefpShortName
    , ngefrefpName
    , ngefrefpDisplayName
    , ngefrefpType

    -- ** Commitment
    , Commitment
    , commitment
    , cStatus
    , cKind
    , cCategory
    , cPlan
    , cResources
    , cLicenseResource
    , cEndTimestamp
    , cSelfLink
    , cName
    , cStatusMessage
    , cCreationTimestamp
    , cId
    , cRegion
    , cReservations
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
    , prRouteAction
    , prPaths
    , prURLRedirect

    -- ** ScalingScheduleStatusState
    , ScalingScheduleStatusState (..)

    -- ** LicenseCodeLicenseAlias
    , LicenseCodeLicenseAlias
    , licenseCodeLicenseAlias
    , lclaSelfLink
    , lclaDescription

    -- ** XpnHostListWarningCode
    , XpnHostListWarningCode (..)

    -- ** NotificationEndpointListWarningDataItem
    , NotificationEndpointListWarningDataItem
    , notificationEndpointListWarningDataItem
    , nelwdiValue
    , nelwdiKey

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

    -- ** FirewallPolicyListWarningCode
    , FirewallPolicyListWarningCode (..)

    -- ** StatefulPolicyPreservedState
    , StatefulPolicyPreservedState
    , statefulPolicyPreservedState
    , sppsDisks

    -- ** TargetGrpcProxy
    , TargetGrpcProxy
    , targetGrpcProxy
    , tgpURLMap
    , tgpKind
    , tgpValidateForProxyless
    , tgpFingerprint
    , tgpSelfLinkWithId
    , tgpSelfLink
    , tgpName
    , tgpCreationTimestamp
    , tgpId
    , tgpDescription

    -- ** AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcIgnoreChildExemptions
    , alcExemptedMembers

    -- ** GuestAttributesEntry
    , GuestAttributesEntry
    , guestAttributesEntry
    , gaeValue
    , gaeNamespace
    , gaeKey

    -- ** CommitmentsScopedListWarningDataItem
    , CommitmentsScopedListWarningDataItem
    , commitmentsScopedListWarningDataItem
    , cslwdiValue
    , cslwdiKey

    -- ** InterconnectAttachment
    , InterconnectAttachment
    , interconnectAttachment
    , iaMtu
    , iaState
    , iaPartnerASN
    , iaPairingKey
    , iaKind
    , iaCustomerRouterIPAddress
    , iaIPsecInternalAddresses
    , iaPartnerMetadata
    , iaRouter
    , iaOperationalStatus
    , iaDataplaneVersion
    , iaSelfLink
    , iaName
    , iaBandwidth
    , iaEncryption
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

    -- ** ResourcePolicySnapshotSchedulePolicySnapshotPropertiesLabels
    , ResourcePolicySnapshotSchedulePolicySnapshotPropertiesLabels
    , resourcePolicySnapshotSchedulePolicySnapshotPropertiesLabels
    , rpsspsplAddtional

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

    -- ** TargetHTTPSProxiesScopedListWarningCode
    , TargetHTTPSProxiesScopedListWarningCode (..)

    -- ** NetworkPeeringState
    , NetworkPeeringState (..)

    -- ** PacketMirroringList
    , PacketMirroringList
    , packetMirroringList
    , pmlNextPageToken
    , pmlKind
    , pmlItems
    , pmlSelfLink
    , pmlWarning
    , pmlId

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

    -- ** CommitmentCategory
    , CommitmentCategory (..)

    -- ** NotificationEndpointListWarningCode
    , NotificationEndpointListWarningCode (..)

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

    -- ** FirewallPoliciesListAssociationsResponse
    , FirewallPoliciesListAssociationsResponse
    , firewallPoliciesListAssociationsResponse
    , fplarKind
    , fplarAssociations

    -- ** NetworkEndpointGroupAggregatedListItems
    , NetworkEndpointGroupAggregatedListItems
    , networkEndpointGroupAggregatedListItems
    , negaliAddtional

    -- ** InterconnectAttachmentAggregatedListWarningDataItem
    , InterconnectAttachmentAggregatedListWarningDataItem
    , interconnectAttachmentAggregatedListWarningDataItem
    , iaalwdiValue
    , iaalwdiKey

    -- ** AuthorizationLoggingOptionsPermissionType
    , AuthorizationLoggingOptionsPermissionType (..)

    -- ** FirewallPolicyListWarningDataItem
    , FirewallPolicyListWarningDataItem
    , firewallPolicyListWarningDataItem
    , fplwdiValue
    , fplwdiKey

    -- ** ResourcePolicyWeeklyCycle
    , ResourcePolicyWeeklyCycle
    , resourcePolicyWeeklyCycle
    , rpwcDayOfWeeks

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

    -- ** TargetGrpcProxyListWarning
    , TargetGrpcProxyListWarning
    , targetGrpcProxyListWarning
    , tgplwData
    , tgplwCode
    , tgplwMessage

    -- ** HTTP2HealthCheckProxyHeader
    , HTTP2HealthCheckProxyHeader (..)

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

    -- ** LogConfigCounterOptionsCustomField
    , LogConfigCounterOptionsCustomField
    , logConfigCounterOptionsCustomField
    , lccocfValue
    , lccocfName

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

    -- ** PreservedState
    , PreservedState
    , preservedState
    , psMetadata
    , psDisks

    -- ** InterconnectLocationStatus
    , InterconnectLocationStatus (..)

    -- ** AutoscalingPolicyCPUUtilization
    , AutoscalingPolicyCPUUtilization
    , autoscalingPolicyCPUUtilization
    , apcuUtilizationTarget
    , apcuPredictiveMethod

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

    -- ** SubnetworkRole
    , SubnetworkRole (..)

    -- ** Duration
    , Duration
    , duration
    , dNanos
    , dSeconds

    -- ** PublicDelegatedPrefixStatus
    , PublicDelegatedPrefixStatus (..)

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

    -- ** SSLCertificateAggregatedList
    , SSLCertificateAggregatedList
    , sslCertificateAggregatedList
    , scalUnreachables
    , scalNextPageToken
    , scalKind
    , scalItems
    , scalSelfLink
    , scalWarning
    , scalId

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

    -- ** HealthCheckServicesList
    , HealthCheckServicesList
    , healthCheckServicesList
    , hNextPageToken
    , hKind
    , hItems
    , hSelfLink
    , hWarning
    , hId

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

    -- ** ResourcePolicySnapshotSchedulePolicySnapshotProperties
    , ResourcePolicySnapshotSchedulePolicySnapshotProperties
    , resourcePolicySnapshotSchedulePolicySnapshotProperties
    , rpsspspGuestFlush
    , rpsspspChainName
    , rpsspspStorageLocations
    , rpsspspLabels

    -- ** RegionSetLabelsRequest
    , RegionSetLabelsRequest
    , regionSetLabelsRequest
    , rslrLabels
    , rslrLabelFingerprint

    -- ** TargetHTTPSProxiesScopedListWarning
    , TargetHTTPSProxiesScopedListWarning
    , targetHTTPSProxiesScopedListWarning
    , thpslwData
    , thpslwCode
    , thpslwMessage

    -- ** RouterInterface
    , RouterInterface
    , routerInterface
    , riLinkedInterconnectAttachment
    , riName
    , riManagementType
    , riIPRange
    , riLinkedVPNTunnel

    -- ** ResourcePolicyWeeklyCycleDayOfWeekDay
    , ResourcePolicyWeeklyCycleDayOfWeekDay (..)

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
    , sllNextPageToken
    , sllKind
    , sllItems
    , sllSelfLink
    , sllWarning
    , sllId

    -- ** InterconnectDiagnostics
    , InterconnectDiagnostics
    , interconnectDiagnostics
    , idMACAddress
    , idArpCaches
    , idLinks

    -- ** CommitmentListWarningCode
    , CommitmentListWarningCode (..)

    -- ** HTTPHealthCheckPortSpecification
    , HTTPHealthCheckPortSpecification (..)

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
    , tfExpectedOutputURL
    , tfExpectedRedirectResponseCode
    , tfPath
    , tfExpectedService
    , tfHeaders
    , tfActualOutputURL
    , tfActualRedirectResponseCode
    , tfHost
    , tfActualService

    -- ** NodeGroupAutoscalingPolicyMode
    , NodeGroupAutoscalingPolicyMode (..)

    -- ** NotificationEndpointListWarning
    , NotificationEndpointListWarning
    , notificationEndpointListWarning
    , nelwData
    , nelwCode
    , nelwMessage

    -- ** CommitmentListWarningDataItem
    , CommitmentListWarningDataItem
    , commitmentListWarningDataItem
    , clwdiValue
    , clwdiKey

    -- ** ConditionIAM
    , ConditionIAM (..)

    -- ** ManagedInstanceVersion
    , ManagedInstanceVersion
    , managedInstanceVersion
    , mivInstanceTemplate
    , mivName

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

    -- ** InstanceGroupManagerStatusStatefulPerInstanceConfigs
    , InstanceGroupManagerStatusStatefulPerInstanceConfigs
    , instanceGroupManagerStatusStatefulPerInstanceConfigs
    , igmsspicAllEffective

    -- ** ResourcePolicyStatus
    , ResourcePolicyStatus (..)

    -- ** PreservedStateMetadata
    , PreservedStateMetadata
    , preservedStateMetadata
    , psmAddtional

    -- ** TargetVPNGatewayAggregatedList
    , TargetVPNGatewayAggregatedList
    , targetVPNGatewayAggregatedList
    , tvgalUnreachables
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

    -- ** FirewallPolicyListWarning
    , FirewallPolicyListWarning
    , firewallPolicyListWarning
    , fplwData
    , fplwCode
    , fplwMessage

    -- ** MetadataItemsItem
    , MetadataItemsItem
    , metadataItemsItem
    , miiValue
    , miiKey

    -- ** InstancesAddResourcePoliciesRequest
    , InstancesAddResourcePoliciesRequest
    , instancesAddResourcePoliciesRequest
    , iarprResourcePolicies

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
    , thpProxyBind
    , thpKind
    , thpFingerprint
    , thpServerTLSPolicy
    , thpSelfLink
    , thpName
    , thpCreationTimestamp
    , thpId
    , thpRegion
    , thpAuthorizationPolicy
    , thpDescription

    -- ** ConnectionDraining
    , ConnectionDraining
    , connectionDraining
    , cdDrainingTimeoutSec

    -- ** ResourcePolicyInstanceSchedulePolicy
    , ResourcePolicyInstanceSchedulePolicy
    , resourcePolicyInstanceSchedulePolicy
    , rpispStartTime
    , rpispVMStartSchedule
    , rpispVMStopSchedule
    , rpispTimeZone
    , rpispExpirationTime

    -- ** URLMapTestHeader
    , URLMapTestHeader
    , urlMapTestHeader
    , umthValue
    , umthName

    -- ** InterconnectAttachmentListWarningDataItem
    , InterconnectAttachmentListWarningDataItem
    , interconnectAttachmentListWarningDataItem
    , ialwdiValue
    , ialwdiKey

    -- ** VPNGatewayStatusHighAvailabilityRequirementStateUnsatisfiedReason
    , VPNGatewayStatusHighAvailabilityRequirementStateUnsatisfiedReason (..)

    -- ** AddressAggregatedListWarningCode
    , AddressAggregatedListWarningCode (..)

    -- ** CacheInvalidationRule
    , CacheInvalidationRule
    , cacheInvalidationRule
    , cirPath
    , cirHost

    -- ** SSLCertificatesScopedList
    , SSLCertificatesScopedList
    , sslCertificatesScopedList
    , scslSSLCertificates
    , scslWarning

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

    -- ** PublicAdvertisedPrefixStatus
    , PublicAdvertisedPrefixStatus (..)

    -- ** AccessConfig
    , AccessConfig
    , accessConfig
    , acNetworkTier
    , acExternalIPv6
    , acSetPublicPtr
    , acKind
    , acExternalIPv6PrefixLength
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

    -- ** TargetGrpcProxyListWarningCode
    , TargetGrpcProxyListWarningCode (..)

    -- ** TargetGrpcProxyListWarningDataItem
    , TargetGrpcProxyListWarningDataItem
    , targetGrpcProxyListWarningDataItem
    , tgplwdiValue
    , tgplwdiKey

    -- ** NodeGroupNodeCPUOvercommitType
    , NodeGroupNodeCPUOvercommitType (..)

    -- ** ZoneListWarning
    , ZoneListWarning
    , zoneListWarning
    , zlwData
    , zlwCode
    , zlwMessage

    -- ** InstancesUpdateMinimalAction
    , InstancesUpdateMinimalAction (..)

    -- ** RouterNATLogConfig
    , RouterNATLogConfig
    , routerNATLogConfig
    , rnatlcEnable
    , rnatlcFilter

    -- ** ManagedInstanceLastAttemptErrorsErrorsItem
    , ManagedInstanceLastAttemptErrorsErrorsItem
    , managedInstanceLastAttemptErrorsErrorsItem
    , milaeeiLocation
    , milaeeiCode
    , milaeeiMessage

    -- ** ReservationAffinityConsumeReservationType
    , ReservationAffinityConsumeReservationType (..)

    -- ** InstancesScopedListWarningCode
    , InstancesScopedListWarningCode (..)

    -- ** InstancesScopedListWarningDataItem
    , InstancesScopedListWarningDataItem
    , instancesScopedListWarningDataItem
    , islwdiValue
    , islwdiKey

    -- ** PacketMirroringNetworkInfo
    , PacketMirroringNetworkInfo
    , packetMirroringNetworkInfo
    , pmniURL
    , pmniCanonicalURL

    -- ** SnapshotLabels
    , SnapshotLabels
    , snapshotLabels
    , slAddtional

    -- ** InstancePropertiesPrivateIPv6GoogleAccess
    , InstancePropertiesPrivateIPv6GoogleAccess (..)

    -- ** SSLCertificateManagedSSLCertificateStatus
    , SSLCertificateManagedSSLCertificateStatus (..)

    -- ** ManagedInstanceInstanceHealth
    , ManagedInstanceInstanceHealth
    , managedInstanceInstanceHealth
    , miihHealthCheck
    , miihDetailedHealthState

    -- ** HealthChecksAggregatedListWarningCode
    , HealthChecksAggregatedListWarningCode (..)

    -- ** BackendServicesScopedListWarningDataItem
    , BackendServicesScopedListWarningDataItem
    , backendServicesScopedListWarningDataItem
    , bsslwdiValue
    , bsslwdiKey

    -- ** PacketMirroringAggregatedListWarningDataItem
    , PacketMirroringAggregatedListWarningDataItem
    , packetMirroringAggregatedListWarningDataItem
    , pmalwdiValue
    , pmalwdiKey

    -- ** NodeTemplateAggregatedListItems
    , NodeTemplateAggregatedListItems
    , nodeTemplateAggregatedListItems
    , ntaliAddtional

    -- ** HealthChecksAggregatedListWarningDataItem
    , HealthChecksAggregatedListWarningDataItem
    , healthChecksAggregatedListWarningDataItem
    , hcalwdiValue
    , hcalwdiKey

    -- ** RegionInstanceGroupManagerDeleteInstanceConfigReq
    , RegionInstanceGroupManagerDeleteInstanceConfigReq
    , regionInstanceGroupManagerDeleteInstanceConfigReq
    , rigmdicrNames

    -- ** InstanceGroupManagersApplyUpdatesRequest
    , InstanceGroupManagersApplyUpdatesRequest
    , instanceGroupManagersApplyUpdatesRequest
    , igmaurAllInstances
    , igmaurMostDisruptiveAllowedAction
    , igmaurInstances
    , igmaurMinimalAction

    -- ** BackendService
    , BackendService
    , backendService
    , bsSessionAffinity
    , bsFailoverPolicy
    , bsBackends
    , bsLocalityLbPolicy
    , bsAffinityCookieTtlSec
    , bsConsistentHash
    , bsIap
    , bsLoadBalancingScheme
    , bsKind
    , bsEnableCDN
    , bsCircuitBreakers
    , bsFingerprint
    , bsSecuritySettings
    , bsOutlierDetection
    , bsNetwork
    , bsProtocol
    , bsCustomRequestHeaders
    , bsSecurityPolicy
    , bsCdnPolicy
    , bsCustomResponseHeaders
    , bsSelfLink
    , bsName
    , bsCreationTimestamp
    , bsId
    , bsRegion
    , bsMaxStreamDuration
    , bsConnectionDraining
    , bsTimeoutSec
    , bsLogConfig
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

    -- ** InstanceManagedByIgmErrorInstanceActionDetails
    , InstanceManagedByIgmErrorInstanceActionDetails
    , instanceManagedByIgmErrorInstanceActionDetails
    , imbieiadAction
    , imbieiadVersion
    , imbieiadInstance

    -- ** RegionTargetHTTPSProxiesSetSSLCertificatesRequest
    , RegionTargetHTTPSProxiesSetSSLCertificatesRequest
    , regionTargetHTTPSProxiesSetSSLCertificatesRequest
    , rthpsscrSSLCertificates

    -- ** InterconnectDiagnosticsARPEntry
    , InterconnectDiagnosticsARPEntry
    , interconnectDiagnosticsARPEntry
    , idarpeIPAddress
    , idarpeMACAddress

    -- ** ShieldedInstanceIdentity
    , ShieldedInstanceIdentity
    , shieldedInstanceIdentity
    , siiSigningKey
    , siiKind
    , siiEncryptionKey

    -- ** SSLCertificateManagedSSLCertificateDomainStatus
    , SSLCertificateManagedSSLCertificateDomainStatus
    , sslCertificateManagedSSLCertificateDomainStatus
    , scmscdsAddtional

    -- ** PreservedStatePreservedDiskMode
    , PreservedStatePreservedDiskMode (..)

    -- ** BackendServicesScopedListWarningCode
    , BackendServicesScopedListWarningCode (..)

    -- ** PacketMirroringAggregatedListWarningCode
    , PacketMirroringAggregatedListWarningCode (..)

    -- ** CommitmentList
    , CommitmentList
    , commitmentList
    , clNextPageToken
    , clKind
    , clItems
    , clSelfLink
    , clWarning
    , clId

    -- ** PacketMirroringListWarning
    , PacketMirroringListWarning
    , packetMirroringListWarning
    , pmlwData
    , pmlwCode
    , pmlwMessage

    -- ** FirewallPolicyRuleMatcherLayer4Config
    , FirewallPolicyRuleMatcherLayer4Config
    , firewallPolicyRuleMatcherLayer4Config
    , fprmlcIPProtocol
    , fprmlcPorts

    -- ** TargetPoolSessionAffinity
    , TargetPoolSessionAffinity (..)

    -- ** InstanceGroupManagersCreateInstancesRequest
    , InstanceGroupManagersCreateInstancesRequest
    , instanceGroupManagersCreateInstancesRequest
    , igmcirInstances

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
    , hhcPortSpecification
    , hhcRequestPath
    , hhcHost
    , hhcProxyHeader
    , hhcPortName
    , hhcPort

    -- ** HTTPHeaderAction
    , HTTPHeaderAction
    , hTTPHeaderAction
    , httphaResponseHeadersToAdd
    , httphaRequestHeadersToRemove
    , httphaRequestHeadersToAdd
    , httphaResponseHeadersToRemove

    -- ** AutoscalerStatus
    , AutoscalerStatus (..)

    -- ** ImageRawDiskContainerType
    , ImageRawDiskContainerType (..)

    -- ** TargetGrpcProxyList
    , TargetGrpcProxyList
    , targetGrpcProxyList
    , tgplNextPageToken
    , tgplKind
    , tgplItems
    , tgplSelfLink
    , tgplWarning
    , tgplId

    -- ** AutoscalerScalingScheduleStatus
    , AutoscalerScalingScheduleStatus
    , autoscalerScalingScheduleStatus
    , asssAddtional

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

    -- ** RegionInstanceGroupManagerUpdateInstanceConfigReq
    , RegionInstanceGroupManagerUpdateInstanceConfigReq
    , regionInstanceGroupManagerUpdateInstanceConfigReq
    , rigmuicrPerInstanceConfigs

    -- ** Tags
    , Tags
    , tags
    , tFingerprint
    , tItems

    -- ** AddressAggregatedList
    , AddressAggregatedList
    , addressAggregatedList
    , addUnreachables
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

    -- ** BackendBucketCdnPolicyNegativeCachingPolicy
    , BackendBucketCdnPolicyNegativeCachingPolicy
    , backendBucketCdnPolicyNegativeCachingPolicy
    , bbcpncpTtl
    , bbcpncpCode

    -- ** InstanceGroupManagerStatusStateful
    , InstanceGroupManagerStatusStateful
    , instanceGroupManagerStatusStateful
    , igmssHasStatefulConfig
    , igmssPerInstanceConfigs

    -- ** OperationWarningsItem
    , OperationWarningsItem
    , operationWarningsItem
    , owiData
    , owiCode
    , owiMessage

    -- ** AutoscalingPolicyScalingSchedules
    , AutoscalingPolicyScalingSchedules
    , autoscalingPolicyScalingSchedules
    , apssAddtional

    -- ** PreConfiguredWafSet
    , PreConfiguredWafSet
    , preConfiguredWafSet
    , pcwsExpressionSets

    -- ** Binding
    , Binding
    , binding
    , bBindingId
    , bMembers
    , bRole
    , bCondition

    -- ** ForwardingRuleNetworkTier
    , ForwardingRuleNetworkTier (..)

    -- ** URLMapTest
    , URLMapTest
    , urlMapTest
    , umtExpectedOutputURL
    , umtExpectedRedirectResponseCode
    , umtPath
    , umtService
    , umtHeaders
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

    -- ** PacketMirroringsScopedListWarningDataItem
    , PacketMirroringsScopedListWarningDataItem
    , packetMirroringsScopedListWarningDataItem
    , pmslwdiValue
    , pmslwdiKey

    -- ** SSLCertificateType
    , SSLCertificateType (..)

    -- ** BackendServiceAggregatedListWarningDataItem
    , BackendServiceAggregatedListWarningDataItem
    , backendServiceAggregatedListWarningDataItem
    , bsalwdiValue
    , bsalwdiKey

    -- ** Instance
    , Instance
    , instance'
    , i1AdvancedMachineFeatures
    , i1SatisfiesPzs
    , i1Status
    , i1LastStopTimestamp
    , i1ServiceAccounts
    , i1LastSuspendedTimestamp
    , i1DeletionProtection
    , i1Hostname
    , i1ReservationAffinity
    , i1DisplayDevice
    , i1NetworkInterfaces
    , i1ShieldedInstanceIntegrityPolicy
    , i1Kind
    , i1Fingerprint
    , i1Zone
    , i1ConfidentialInstanceConfig
    , i1CPUPlatform
    , i1ResourcePolicies
    , i1SelfLink
    , i1GuestAccelerators
    , i1LastStartTimestamp
    , i1Name
    , i1StatusMessage
    , i1CreationTimestamp
    , i1MachineType
    , i1Metadata
    , i1ShieldedInstanceConfig
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
    , i1PrivateIPv6GoogleAccess

    -- ** NetworkEndpointAnnotations
    , NetworkEndpointAnnotations
    , networkEndpointAnnotations
    , neaAddtional

    -- ** PathMatcher
    , PathMatcher
    , pathMatcher
    , pmDefaultRouteAction
    , pmDefaultURLRedirect
    , pmDefaultService
    , pmHeaderAction
    , pmRouteRules
    , pmName
    , pmPathRules
    , pmDescription

    -- ** PacketMirroring
    , PacketMirroring
    , packetMirroring
    , pacPriority
    , pacKind
    , pacNetwork
    , pacMirroredResources
    , pacEnable
    , pacCollectorIlb
    , pacSelfLink
    , pacName
    , pacCreationTimestamp
    , pacId
    , pacFilter
    , pacRegion
    , pacDescription

    -- ** InstanceGroupManagerUpdatePolicyMinimalAction
    , InstanceGroupManagerUpdatePolicyMinimalAction (..)

    -- ** BackendServiceListWarning
    , BackendServiceListWarning
    , backendServiceListWarning
    , bslwData
    , bslwCode
    , bslwMessage

    -- ** PacketMirroringsScopedListWarningCode
    , PacketMirroringsScopedListWarningCode (..)

    -- ** BackendServiceAggregatedListWarningCode
    , BackendServiceAggregatedListWarningCode (..)

    -- ** VPNGatewayAggregatedListItems
    , VPNGatewayAggregatedListItems
    , vpnGatewayAggregatedListItems
    , vgaliAddtional

    -- ** AutoscalingPolicyMode
    , AutoscalingPolicyMode (..)
    ) where

import Network.Google.Prelude
import Network.Google.Compute.Types
import Network.Google.Resource.Compute.AcceleratorTypes.AggregatedList
import Network.Google.Resource.Compute.AcceleratorTypes.Get
import Network.Google.Resource.Compute.AcceleratorTypes.List
import Network.Google.Resource.Compute.Addresses.AggregatedList
import Network.Google.Resource.Compute.Addresses.Delete
import Network.Google.Resource.Compute.Addresses.Get
import Network.Google.Resource.Compute.Addresses.Insert
import Network.Google.Resource.Compute.Addresses.List
import Network.Google.Resource.Compute.Autoscalers.AggregatedList
import Network.Google.Resource.Compute.Autoscalers.Delete
import Network.Google.Resource.Compute.Autoscalers.Get
import Network.Google.Resource.Compute.Autoscalers.Insert
import Network.Google.Resource.Compute.Autoscalers.List
import Network.Google.Resource.Compute.Autoscalers.Patch
import Network.Google.Resource.Compute.Autoscalers.Update
import Network.Google.Resource.Compute.BackendBuckets.AddSignedURLKey
import Network.Google.Resource.Compute.BackendBuckets.Delete
import Network.Google.Resource.Compute.BackendBuckets.DeleteSignedURLKey
import Network.Google.Resource.Compute.BackendBuckets.Get
import Network.Google.Resource.Compute.BackendBuckets.Insert
import Network.Google.Resource.Compute.BackendBuckets.List
import Network.Google.Resource.Compute.BackendBuckets.Patch
import Network.Google.Resource.Compute.BackendBuckets.Update
import Network.Google.Resource.Compute.BackendServices.AddSignedURLKey
import Network.Google.Resource.Compute.BackendServices.AggregatedList
import Network.Google.Resource.Compute.BackendServices.Delete
import Network.Google.Resource.Compute.BackendServices.DeleteSignedURLKey
import Network.Google.Resource.Compute.BackendServices.Get
import Network.Google.Resource.Compute.BackendServices.GetHealth
import Network.Google.Resource.Compute.BackendServices.Insert
import Network.Google.Resource.Compute.BackendServices.List
import Network.Google.Resource.Compute.BackendServices.Patch
import Network.Google.Resource.Compute.BackendServices.SetSecurityPolicy
import Network.Google.Resource.Compute.BackendServices.Update
import Network.Google.Resource.Compute.DiskTypes.AggregatedList
import Network.Google.Resource.Compute.DiskTypes.Get
import Network.Google.Resource.Compute.DiskTypes.List
import Network.Google.Resource.Compute.Disks.AddResourcePolicies
import Network.Google.Resource.Compute.Disks.AggregatedList
import Network.Google.Resource.Compute.Disks.CreateSnapshot
import Network.Google.Resource.Compute.Disks.Delete
import Network.Google.Resource.Compute.Disks.Get
import Network.Google.Resource.Compute.Disks.GetIAMPolicy
import Network.Google.Resource.Compute.Disks.Insert
import Network.Google.Resource.Compute.Disks.List
import Network.Google.Resource.Compute.Disks.RemoveResourcePolicies
import Network.Google.Resource.Compute.Disks.Resize
import Network.Google.Resource.Compute.Disks.SetIAMPolicy
import Network.Google.Resource.Compute.Disks.SetLabels
import Network.Google.Resource.Compute.Disks.TestIAMPermissions
import Network.Google.Resource.Compute.ExternalVPNGateways.Delete
import Network.Google.Resource.Compute.ExternalVPNGateways.Get
import Network.Google.Resource.Compute.ExternalVPNGateways.Insert
import Network.Google.Resource.Compute.ExternalVPNGateways.List
import Network.Google.Resource.Compute.ExternalVPNGateways.SetLabels
import Network.Google.Resource.Compute.ExternalVPNGateways.TestIAMPermissions
import Network.Google.Resource.Compute.FirewallPolicies.AddAssociation
import Network.Google.Resource.Compute.FirewallPolicies.AddRule
import Network.Google.Resource.Compute.FirewallPolicies.CloneRules
import Network.Google.Resource.Compute.FirewallPolicies.Delete
import Network.Google.Resource.Compute.FirewallPolicies.Get
import Network.Google.Resource.Compute.FirewallPolicies.GetAssociation
import Network.Google.Resource.Compute.FirewallPolicies.GetIAMPolicy
import Network.Google.Resource.Compute.FirewallPolicies.GetRule
import Network.Google.Resource.Compute.FirewallPolicies.Insert
import Network.Google.Resource.Compute.FirewallPolicies.List
import Network.Google.Resource.Compute.FirewallPolicies.ListAssociations
import Network.Google.Resource.Compute.FirewallPolicies.Move
import Network.Google.Resource.Compute.FirewallPolicies.Patch
import Network.Google.Resource.Compute.FirewallPolicies.PatchRule
import Network.Google.Resource.Compute.FirewallPolicies.RemoveAssociation
import Network.Google.Resource.Compute.FirewallPolicies.RemoveRule
import Network.Google.Resource.Compute.FirewallPolicies.SetIAMPolicy
import Network.Google.Resource.Compute.FirewallPolicies.TestIAMPermissions
import Network.Google.Resource.Compute.Firewalls.Delete
import Network.Google.Resource.Compute.Firewalls.Get
import Network.Google.Resource.Compute.Firewalls.Insert
import Network.Google.Resource.Compute.Firewalls.List
import Network.Google.Resource.Compute.Firewalls.Patch
import Network.Google.Resource.Compute.Firewalls.Update
import Network.Google.Resource.Compute.ForwardingRules.AggregatedList
import Network.Google.Resource.Compute.ForwardingRules.Delete
import Network.Google.Resource.Compute.ForwardingRules.Get
import Network.Google.Resource.Compute.ForwardingRules.Insert
import Network.Google.Resource.Compute.ForwardingRules.List
import Network.Google.Resource.Compute.ForwardingRules.Patch
import Network.Google.Resource.Compute.ForwardingRules.SetLabels
import Network.Google.Resource.Compute.ForwardingRules.SetTarget
import Network.Google.Resource.Compute.GlobalAddresses.Delete
import Network.Google.Resource.Compute.GlobalAddresses.Get
import Network.Google.Resource.Compute.GlobalAddresses.Insert
import Network.Google.Resource.Compute.GlobalAddresses.List
import Network.Google.Resource.Compute.GlobalForwardingRules.Delete
import Network.Google.Resource.Compute.GlobalForwardingRules.Get
import Network.Google.Resource.Compute.GlobalForwardingRules.Insert
import Network.Google.Resource.Compute.GlobalForwardingRules.List
import Network.Google.Resource.Compute.GlobalForwardingRules.Patch
import Network.Google.Resource.Compute.GlobalForwardingRules.SetLabels
import Network.Google.Resource.Compute.GlobalForwardingRules.SetTarget
import Network.Google.Resource.Compute.GlobalNetworkEndpointGroups.AttachNetworkEndpoints
import Network.Google.Resource.Compute.GlobalNetworkEndpointGroups.Delete
import Network.Google.Resource.Compute.GlobalNetworkEndpointGroups.DetachNetworkEndpoints
import Network.Google.Resource.Compute.GlobalNetworkEndpointGroups.Get
import Network.Google.Resource.Compute.GlobalNetworkEndpointGroups.Insert
import Network.Google.Resource.Compute.GlobalNetworkEndpointGroups.List
import Network.Google.Resource.Compute.GlobalNetworkEndpointGroups.ListNetworkEndpoints
import Network.Google.Resource.Compute.GlobalOperations.AggregatedList
import Network.Google.Resource.Compute.GlobalOperations.Delete
import Network.Google.Resource.Compute.GlobalOperations.Get
import Network.Google.Resource.Compute.GlobalOperations.List
import Network.Google.Resource.Compute.GlobalOperations.Wait
import Network.Google.Resource.Compute.GlobalOrganizationOperations.Delete
import Network.Google.Resource.Compute.GlobalOrganizationOperations.Get
import Network.Google.Resource.Compute.GlobalOrganizationOperations.List
import Network.Google.Resource.Compute.GlobalPublicDelegatedPrefixes.Delete
import Network.Google.Resource.Compute.GlobalPublicDelegatedPrefixes.Get
import Network.Google.Resource.Compute.GlobalPublicDelegatedPrefixes.Insert
import Network.Google.Resource.Compute.GlobalPublicDelegatedPrefixes.List
import Network.Google.Resource.Compute.GlobalPublicDelegatedPrefixes.Patch
import Network.Google.Resource.Compute.HTTPHealthChecks.Delete
import Network.Google.Resource.Compute.HTTPHealthChecks.Get
import Network.Google.Resource.Compute.HTTPHealthChecks.Insert
import Network.Google.Resource.Compute.HTTPHealthChecks.List
import Network.Google.Resource.Compute.HTTPHealthChecks.Patch
import Network.Google.Resource.Compute.HTTPHealthChecks.Update
import Network.Google.Resource.Compute.HTTPSHealthChecks.Delete
import Network.Google.Resource.Compute.HTTPSHealthChecks.Get
import Network.Google.Resource.Compute.HTTPSHealthChecks.Insert
import Network.Google.Resource.Compute.HTTPSHealthChecks.List
import Network.Google.Resource.Compute.HTTPSHealthChecks.Patch
import Network.Google.Resource.Compute.HTTPSHealthChecks.Update
import Network.Google.Resource.Compute.HealthChecks.AggregatedList
import Network.Google.Resource.Compute.HealthChecks.Delete
import Network.Google.Resource.Compute.HealthChecks.Get
import Network.Google.Resource.Compute.HealthChecks.Insert
import Network.Google.Resource.Compute.HealthChecks.List
import Network.Google.Resource.Compute.HealthChecks.Patch
import Network.Google.Resource.Compute.HealthChecks.Update
import Network.Google.Resource.Compute.Images.Delete
import Network.Google.Resource.Compute.Images.Deprecate
import Network.Google.Resource.Compute.Images.Get
import Network.Google.Resource.Compute.Images.GetFromFamily
import Network.Google.Resource.Compute.Images.GetIAMPolicy
import Network.Google.Resource.Compute.Images.Insert
import Network.Google.Resource.Compute.Images.List
import Network.Google.Resource.Compute.Images.Patch
import Network.Google.Resource.Compute.Images.SetIAMPolicy
import Network.Google.Resource.Compute.Images.SetLabels
import Network.Google.Resource.Compute.Images.TestIAMPermissions
import Network.Google.Resource.Compute.InstanceGroupManagers.AbandonInstances
import Network.Google.Resource.Compute.InstanceGroupManagers.AggregatedList
import Network.Google.Resource.Compute.InstanceGroupManagers.ApplyUpdatesToInstances
import Network.Google.Resource.Compute.InstanceGroupManagers.CreateInstances
import Network.Google.Resource.Compute.InstanceGroupManagers.Delete
import Network.Google.Resource.Compute.InstanceGroupManagers.DeleteInstances
import Network.Google.Resource.Compute.InstanceGroupManagers.DeletePerInstanceConfigs
import Network.Google.Resource.Compute.InstanceGroupManagers.Get
import Network.Google.Resource.Compute.InstanceGroupManagers.Insert
import Network.Google.Resource.Compute.InstanceGroupManagers.List
import Network.Google.Resource.Compute.InstanceGroupManagers.ListErrors
import Network.Google.Resource.Compute.InstanceGroupManagers.ListManagedInstances
import Network.Google.Resource.Compute.InstanceGroupManagers.ListPerInstanceConfigs
import Network.Google.Resource.Compute.InstanceGroupManagers.Patch
import Network.Google.Resource.Compute.InstanceGroupManagers.PatchPerInstanceConfigs
import Network.Google.Resource.Compute.InstanceGroupManagers.RecreateInstances
import Network.Google.Resource.Compute.InstanceGroupManagers.Resize
import Network.Google.Resource.Compute.InstanceGroupManagers.SetInstanceTemplate
import Network.Google.Resource.Compute.InstanceGroupManagers.SetTargetPools
import Network.Google.Resource.Compute.InstanceGroupManagers.UpdatePerInstanceConfigs
import Network.Google.Resource.Compute.InstanceGroups.AddInstances
import Network.Google.Resource.Compute.InstanceGroups.AggregatedList
import Network.Google.Resource.Compute.InstanceGroups.Delete
import Network.Google.Resource.Compute.InstanceGroups.Get
import Network.Google.Resource.Compute.InstanceGroups.Insert
import Network.Google.Resource.Compute.InstanceGroups.List
import Network.Google.Resource.Compute.InstanceGroups.ListInstances
import Network.Google.Resource.Compute.InstanceGroups.RemoveInstances
import Network.Google.Resource.Compute.InstanceGroups.SetNamedPorts
import Network.Google.Resource.Compute.InstanceTemplates.Delete
import Network.Google.Resource.Compute.InstanceTemplates.Get
import Network.Google.Resource.Compute.InstanceTemplates.GetIAMPolicy
import Network.Google.Resource.Compute.InstanceTemplates.Insert
import Network.Google.Resource.Compute.InstanceTemplates.List
import Network.Google.Resource.Compute.InstanceTemplates.SetIAMPolicy
import Network.Google.Resource.Compute.InstanceTemplates.TestIAMPermissions
import Network.Google.Resource.Compute.Instances.AddAccessConfig
import Network.Google.Resource.Compute.Instances.AddResourcePolicies
import Network.Google.Resource.Compute.Instances.AggregatedList
import Network.Google.Resource.Compute.Instances.AttachDisk
import Network.Google.Resource.Compute.Instances.BulkInsert
import Network.Google.Resource.Compute.Instances.Delete
import Network.Google.Resource.Compute.Instances.DeleteAccessConfig
import Network.Google.Resource.Compute.Instances.DetachDisk
import Network.Google.Resource.Compute.Instances.Get
import Network.Google.Resource.Compute.Instances.GetEffectiveFirewalls
import Network.Google.Resource.Compute.Instances.GetGuestAttributes
import Network.Google.Resource.Compute.Instances.GetIAMPolicy
import Network.Google.Resource.Compute.Instances.GetScreenshot
import Network.Google.Resource.Compute.Instances.GetSerialPortOutput
import Network.Google.Resource.Compute.Instances.GetShieldedInstanceIdentity
import Network.Google.Resource.Compute.Instances.Insert
import Network.Google.Resource.Compute.Instances.List
import Network.Google.Resource.Compute.Instances.ListReferrers
import Network.Google.Resource.Compute.Instances.RemoveResourcePolicies
import Network.Google.Resource.Compute.Instances.Reset
import Network.Google.Resource.Compute.Instances.SetDeletionProtection
import Network.Google.Resource.Compute.Instances.SetDiskAutoDelete
import Network.Google.Resource.Compute.Instances.SetIAMPolicy
import Network.Google.Resource.Compute.Instances.SetLabels
import Network.Google.Resource.Compute.Instances.SetMachineResources
import Network.Google.Resource.Compute.Instances.SetMachineType
import Network.Google.Resource.Compute.Instances.SetMetadata
import Network.Google.Resource.Compute.Instances.SetMinCPUPlatform
import Network.Google.Resource.Compute.Instances.SetScheduling
import Network.Google.Resource.Compute.Instances.SetServiceAccount
import Network.Google.Resource.Compute.Instances.SetShieldedInstanceIntegrityPolicy
import Network.Google.Resource.Compute.Instances.SetTags
import Network.Google.Resource.Compute.Instances.SimulateMaintenanceEvent
import Network.Google.Resource.Compute.Instances.Start
import Network.Google.Resource.Compute.Instances.StartWithEncryptionKey
import Network.Google.Resource.Compute.Instances.Stop
import Network.Google.Resource.Compute.Instances.TestIAMPermissions
import Network.Google.Resource.Compute.Instances.Update
import Network.Google.Resource.Compute.Instances.UpdateAccessConfig
import Network.Google.Resource.Compute.Instances.UpdateDisplayDevice
import Network.Google.Resource.Compute.Instances.UpdateNetworkInterface
import Network.Google.Resource.Compute.Instances.UpdateShieldedInstanceConfig
import Network.Google.Resource.Compute.InterconnectAttachments.AggregatedList
import Network.Google.Resource.Compute.InterconnectAttachments.Delete
import Network.Google.Resource.Compute.InterconnectAttachments.Get
import Network.Google.Resource.Compute.InterconnectAttachments.Insert
import Network.Google.Resource.Compute.InterconnectAttachments.List
import Network.Google.Resource.Compute.InterconnectAttachments.Patch
import Network.Google.Resource.Compute.InterconnectLocations.Get
import Network.Google.Resource.Compute.InterconnectLocations.List
import Network.Google.Resource.Compute.Interconnects.Delete
import Network.Google.Resource.Compute.Interconnects.Get
import Network.Google.Resource.Compute.Interconnects.GetDiagnostics
import Network.Google.Resource.Compute.Interconnects.Insert
import Network.Google.Resource.Compute.Interconnects.List
import Network.Google.Resource.Compute.Interconnects.Patch
import Network.Google.Resource.Compute.LicenseCodes.Get
import Network.Google.Resource.Compute.LicenseCodes.TestIAMPermissions
import Network.Google.Resource.Compute.Licenses.Delete
import Network.Google.Resource.Compute.Licenses.Get
import Network.Google.Resource.Compute.Licenses.GetIAMPolicy
import Network.Google.Resource.Compute.Licenses.Insert
import Network.Google.Resource.Compute.Licenses.List
import Network.Google.Resource.Compute.Licenses.SetIAMPolicy
import Network.Google.Resource.Compute.Licenses.TestIAMPermissions
import Network.Google.Resource.Compute.MachineTypes.AggregatedList
import Network.Google.Resource.Compute.MachineTypes.Get
import Network.Google.Resource.Compute.MachineTypes.List
import Network.Google.Resource.Compute.NetworkEndpointGroups.AggregatedList
import Network.Google.Resource.Compute.NetworkEndpointGroups.AttachNetworkEndpoints
import Network.Google.Resource.Compute.NetworkEndpointGroups.Delete
import Network.Google.Resource.Compute.NetworkEndpointGroups.DetachNetworkEndpoints
import Network.Google.Resource.Compute.NetworkEndpointGroups.Get
import Network.Google.Resource.Compute.NetworkEndpointGroups.Insert
import Network.Google.Resource.Compute.NetworkEndpointGroups.List
import Network.Google.Resource.Compute.NetworkEndpointGroups.ListNetworkEndpoints
import Network.Google.Resource.Compute.NetworkEndpointGroups.TestIAMPermissions
import Network.Google.Resource.Compute.Networks.AddPeering
import Network.Google.Resource.Compute.Networks.Delete
import Network.Google.Resource.Compute.Networks.Get
import Network.Google.Resource.Compute.Networks.GetEffectiveFirewalls
import Network.Google.Resource.Compute.Networks.Insert
import Network.Google.Resource.Compute.Networks.List
import Network.Google.Resource.Compute.Networks.ListPeeringRoutes
import Network.Google.Resource.Compute.Networks.Patch
import Network.Google.Resource.Compute.Networks.RemovePeering
import Network.Google.Resource.Compute.Networks.SwitchToCustomMode
import Network.Google.Resource.Compute.Networks.UpdatePeering
import Network.Google.Resource.Compute.NodeGroups.AddNodes
import Network.Google.Resource.Compute.NodeGroups.AggregatedList
import Network.Google.Resource.Compute.NodeGroups.Delete
import Network.Google.Resource.Compute.NodeGroups.DeleteNodes
import Network.Google.Resource.Compute.NodeGroups.Get
import Network.Google.Resource.Compute.NodeGroups.GetIAMPolicy
import Network.Google.Resource.Compute.NodeGroups.Insert
import Network.Google.Resource.Compute.NodeGroups.List
import Network.Google.Resource.Compute.NodeGroups.ListNodes
import Network.Google.Resource.Compute.NodeGroups.Patch
import Network.Google.Resource.Compute.NodeGroups.SetIAMPolicy
import Network.Google.Resource.Compute.NodeGroups.SetNodeTemplate
import Network.Google.Resource.Compute.NodeGroups.TestIAMPermissions
import Network.Google.Resource.Compute.NodeTemplates.AggregatedList
import Network.Google.Resource.Compute.NodeTemplates.Delete
import Network.Google.Resource.Compute.NodeTemplates.Get
import Network.Google.Resource.Compute.NodeTemplates.GetIAMPolicy
import Network.Google.Resource.Compute.NodeTemplates.Insert
import Network.Google.Resource.Compute.NodeTemplates.List
import Network.Google.Resource.Compute.NodeTemplates.SetIAMPolicy
import Network.Google.Resource.Compute.NodeTemplates.TestIAMPermissions
import Network.Google.Resource.Compute.NodeTypes.AggregatedList
import Network.Google.Resource.Compute.NodeTypes.Get
import Network.Google.Resource.Compute.NodeTypes.List
import Network.Google.Resource.Compute.PacketMirrorings.AggregatedList
import Network.Google.Resource.Compute.PacketMirrorings.Delete
import Network.Google.Resource.Compute.PacketMirrorings.Get
import Network.Google.Resource.Compute.PacketMirrorings.Insert
import Network.Google.Resource.Compute.PacketMirrorings.List
import Network.Google.Resource.Compute.PacketMirrorings.Patch
import Network.Google.Resource.Compute.PacketMirrorings.TestIAMPermissions
import Network.Google.Resource.Compute.Projects.DisableXpnHost
import Network.Google.Resource.Compute.Projects.DisableXpnResource
import Network.Google.Resource.Compute.Projects.EnableXpnHost
import Network.Google.Resource.Compute.Projects.EnableXpnResource
import Network.Google.Resource.Compute.Projects.Get
import Network.Google.Resource.Compute.Projects.GetXpnHost
import Network.Google.Resource.Compute.Projects.GetXpnResources
import Network.Google.Resource.Compute.Projects.ListXpnHosts
import Network.Google.Resource.Compute.Projects.MoveDisk
import Network.Google.Resource.Compute.Projects.MoveInstance
import Network.Google.Resource.Compute.Projects.SetCommonInstanceMetadata
import Network.Google.Resource.Compute.Projects.SetDefaultNetworkTier
import Network.Google.Resource.Compute.Projects.SetUsageExportBucket
import Network.Google.Resource.Compute.PublicAdvertisedPrefixes.Delete
import Network.Google.Resource.Compute.PublicAdvertisedPrefixes.Get
import Network.Google.Resource.Compute.PublicAdvertisedPrefixes.Insert
import Network.Google.Resource.Compute.PublicAdvertisedPrefixes.List
import Network.Google.Resource.Compute.PublicAdvertisedPrefixes.Patch
import Network.Google.Resource.Compute.PublicDelegatedPrefixes.AggregatedList
import Network.Google.Resource.Compute.PublicDelegatedPrefixes.Delete
import Network.Google.Resource.Compute.PublicDelegatedPrefixes.Get
import Network.Google.Resource.Compute.PublicDelegatedPrefixes.Insert
import Network.Google.Resource.Compute.PublicDelegatedPrefixes.List
import Network.Google.Resource.Compute.PublicDelegatedPrefixes.Patch
import Network.Google.Resource.Compute.RegionAutoscalers.Delete
import Network.Google.Resource.Compute.RegionAutoscalers.Get
import Network.Google.Resource.Compute.RegionAutoscalers.Insert
import Network.Google.Resource.Compute.RegionAutoscalers.List
import Network.Google.Resource.Compute.RegionAutoscalers.Patch
import Network.Google.Resource.Compute.RegionAutoscalers.Update
import Network.Google.Resource.Compute.RegionBackendServices.Delete
import Network.Google.Resource.Compute.RegionBackendServices.Get
import Network.Google.Resource.Compute.RegionBackendServices.GetHealth
import Network.Google.Resource.Compute.RegionBackendServices.Insert
import Network.Google.Resource.Compute.RegionBackendServices.List
import Network.Google.Resource.Compute.RegionBackendServices.Patch
import Network.Google.Resource.Compute.RegionBackendServices.Update
import Network.Google.Resource.Compute.RegionCommitments.AggregatedList
import Network.Google.Resource.Compute.RegionCommitments.Get
import Network.Google.Resource.Compute.RegionCommitments.Insert
import Network.Google.Resource.Compute.RegionCommitments.List
import Network.Google.Resource.Compute.RegionDiskTypes.Get
import Network.Google.Resource.Compute.RegionDiskTypes.List
import Network.Google.Resource.Compute.RegionDisks.AddResourcePolicies
import Network.Google.Resource.Compute.RegionDisks.CreateSnapshot
import Network.Google.Resource.Compute.RegionDisks.Delete
import Network.Google.Resource.Compute.RegionDisks.Get
import Network.Google.Resource.Compute.RegionDisks.GetIAMPolicy
import Network.Google.Resource.Compute.RegionDisks.Insert
import Network.Google.Resource.Compute.RegionDisks.List
import Network.Google.Resource.Compute.RegionDisks.RemoveResourcePolicies
import Network.Google.Resource.Compute.RegionDisks.Resize
import Network.Google.Resource.Compute.RegionDisks.SetIAMPolicy
import Network.Google.Resource.Compute.RegionDisks.SetLabels
import Network.Google.Resource.Compute.RegionDisks.TestIAMPermissions
import Network.Google.Resource.Compute.RegionHealthCheckServices.Delete
import Network.Google.Resource.Compute.RegionHealthCheckServices.Get
import Network.Google.Resource.Compute.RegionHealthCheckServices.Insert
import Network.Google.Resource.Compute.RegionHealthCheckServices.List
import Network.Google.Resource.Compute.RegionHealthCheckServices.Patch
import Network.Google.Resource.Compute.RegionHealthChecks.Delete
import Network.Google.Resource.Compute.RegionHealthChecks.Get
import Network.Google.Resource.Compute.RegionHealthChecks.Insert
import Network.Google.Resource.Compute.RegionHealthChecks.List
import Network.Google.Resource.Compute.RegionHealthChecks.Patch
import Network.Google.Resource.Compute.RegionHealthChecks.Update
import Network.Google.Resource.Compute.RegionInstanceGroupManagers.AbandonInstances
import Network.Google.Resource.Compute.RegionInstanceGroupManagers.ApplyUpdatesToInstances
import Network.Google.Resource.Compute.RegionInstanceGroupManagers.CreateInstances
import Network.Google.Resource.Compute.RegionInstanceGroupManagers.Delete
import Network.Google.Resource.Compute.RegionInstanceGroupManagers.DeleteInstances
import Network.Google.Resource.Compute.RegionInstanceGroupManagers.DeletePerInstanceConfigs
import Network.Google.Resource.Compute.RegionInstanceGroupManagers.Get
import Network.Google.Resource.Compute.RegionInstanceGroupManagers.Insert
import Network.Google.Resource.Compute.RegionInstanceGroupManagers.List
import Network.Google.Resource.Compute.RegionInstanceGroupManagers.ListErrors
import Network.Google.Resource.Compute.RegionInstanceGroupManagers.ListManagedInstances
import Network.Google.Resource.Compute.RegionInstanceGroupManagers.ListPerInstanceConfigs
import Network.Google.Resource.Compute.RegionInstanceGroupManagers.Patch
import Network.Google.Resource.Compute.RegionInstanceGroupManagers.PatchPerInstanceConfigs
import Network.Google.Resource.Compute.RegionInstanceGroupManagers.RecreateInstances
import Network.Google.Resource.Compute.RegionInstanceGroupManagers.Resize
import Network.Google.Resource.Compute.RegionInstanceGroupManagers.SetInstanceTemplate
import Network.Google.Resource.Compute.RegionInstanceGroupManagers.SetTargetPools
import Network.Google.Resource.Compute.RegionInstanceGroupManagers.UpdatePerInstanceConfigs
import Network.Google.Resource.Compute.RegionInstanceGroups.Get
import Network.Google.Resource.Compute.RegionInstanceGroups.List
import Network.Google.Resource.Compute.RegionInstanceGroups.ListInstances
import Network.Google.Resource.Compute.RegionInstanceGroups.SetNamedPorts
import Network.Google.Resource.Compute.RegionInstances.BulkInsert
import Network.Google.Resource.Compute.RegionNetworkEndpointGroups.Delete
import Network.Google.Resource.Compute.RegionNetworkEndpointGroups.Get
import Network.Google.Resource.Compute.RegionNetworkEndpointGroups.Insert
import Network.Google.Resource.Compute.RegionNetworkEndpointGroups.List
import Network.Google.Resource.Compute.RegionNotificationEndpoints.Delete
import Network.Google.Resource.Compute.RegionNotificationEndpoints.Get
import Network.Google.Resource.Compute.RegionNotificationEndpoints.Insert
import Network.Google.Resource.Compute.RegionNotificationEndpoints.List
import Network.Google.Resource.Compute.RegionOperations.Delete
import Network.Google.Resource.Compute.RegionOperations.Get
import Network.Google.Resource.Compute.RegionOperations.List
import Network.Google.Resource.Compute.RegionOperations.Wait
import Network.Google.Resource.Compute.RegionSSLCertificates.Delete
import Network.Google.Resource.Compute.RegionSSLCertificates.Get
import Network.Google.Resource.Compute.RegionSSLCertificates.Insert
import Network.Google.Resource.Compute.RegionSSLCertificates.List
import Network.Google.Resource.Compute.RegionTargetHTTPProxies.Delete
import Network.Google.Resource.Compute.RegionTargetHTTPProxies.Get
import Network.Google.Resource.Compute.RegionTargetHTTPProxies.Insert
import Network.Google.Resource.Compute.RegionTargetHTTPProxies.List
import Network.Google.Resource.Compute.RegionTargetHTTPProxies.SetURLMap
import Network.Google.Resource.Compute.RegionTargetHTTPSProxies.Delete
import Network.Google.Resource.Compute.RegionTargetHTTPSProxies.Get
import Network.Google.Resource.Compute.RegionTargetHTTPSProxies.Insert
import Network.Google.Resource.Compute.RegionTargetHTTPSProxies.List
import Network.Google.Resource.Compute.RegionTargetHTTPSProxies.SetSSLCertificates
import Network.Google.Resource.Compute.RegionTargetHTTPSProxies.SetURLMap
import Network.Google.Resource.Compute.RegionURLMaps.Delete
import Network.Google.Resource.Compute.RegionURLMaps.Get
import Network.Google.Resource.Compute.RegionURLMaps.Insert
import Network.Google.Resource.Compute.RegionURLMaps.List
import Network.Google.Resource.Compute.RegionURLMaps.Patch
import Network.Google.Resource.Compute.RegionURLMaps.Update
import Network.Google.Resource.Compute.RegionURLMaps.Validate
import Network.Google.Resource.Compute.Regions.Get
import Network.Google.Resource.Compute.Regions.List
import Network.Google.Resource.Compute.Reservations.AggregatedList
import Network.Google.Resource.Compute.Reservations.Delete
import Network.Google.Resource.Compute.Reservations.Get
import Network.Google.Resource.Compute.Reservations.GetIAMPolicy
import Network.Google.Resource.Compute.Reservations.Insert
import Network.Google.Resource.Compute.Reservations.List
import Network.Google.Resource.Compute.Reservations.Resize
import Network.Google.Resource.Compute.Reservations.SetIAMPolicy
import Network.Google.Resource.Compute.Reservations.TestIAMPermissions
import Network.Google.Resource.Compute.ResourcePolicies.AggregatedList
import Network.Google.Resource.Compute.ResourcePolicies.Delete
import Network.Google.Resource.Compute.ResourcePolicies.Get
import Network.Google.Resource.Compute.ResourcePolicies.GetIAMPolicy
import Network.Google.Resource.Compute.ResourcePolicies.Insert
import Network.Google.Resource.Compute.ResourcePolicies.List
import Network.Google.Resource.Compute.ResourcePolicies.SetIAMPolicy
import Network.Google.Resource.Compute.ResourcePolicies.TestIAMPermissions
import Network.Google.Resource.Compute.Routers.AggregatedList
import Network.Google.Resource.Compute.Routers.Delete
import Network.Google.Resource.Compute.Routers.Get
import Network.Google.Resource.Compute.Routers.GetNATMAppingInfo
import Network.Google.Resource.Compute.Routers.GetRouterStatus
import Network.Google.Resource.Compute.Routers.Insert
import Network.Google.Resource.Compute.Routers.List
import Network.Google.Resource.Compute.Routers.Patch
import Network.Google.Resource.Compute.Routers.Preview
import Network.Google.Resource.Compute.Routers.Update
import Network.Google.Resource.Compute.Routes.Delete
import Network.Google.Resource.Compute.Routes.Get
import Network.Google.Resource.Compute.Routes.Insert
import Network.Google.Resource.Compute.Routes.List
import Network.Google.Resource.Compute.SSLCertificates.AggregatedList
import Network.Google.Resource.Compute.SSLCertificates.Delete
import Network.Google.Resource.Compute.SSLCertificates.Get
import Network.Google.Resource.Compute.SSLCertificates.Insert
import Network.Google.Resource.Compute.SSLCertificates.List
import Network.Google.Resource.Compute.SSLPolicies.Delete
import Network.Google.Resource.Compute.SSLPolicies.Get
import Network.Google.Resource.Compute.SSLPolicies.Insert
import Network.Google.Resource.Compute.SSLPolicies.List
import Network.Google.Resource.Compute.SSLPolicies.ListAvailableFeatures
import Network.Google.Resource.Compute.SSLPolicies.Patch
import Network.Google.Resource.Compute.SecurityPolicies.AddRule
import Network.Google.Resource.Compute.SecurityPolicies.Delete
import Network.Google.Resource.Compute.SecurityPolicies.Get
import Network.Google.Resource.Compute.SecurityPolicies.GetRule
import Network.Google.Resource.Compute.SecurityPolicies.Insert
import Network.Google.Resource.Compute.SecurityPolicies.List
import Network.Google.Resource.Compute.SecurityPolicies.ListPreConfiguredExpressionSets
import Network.Google.Resource.Compute.SecurityPolicies.Patch
import Network.Google.Resource.Compute.SecurityPolicies.PatchRule
import Network.Google.Resource.Compute.SecurityPolicies.RemoveRule
import Network.Google.Resource.Compute.Snapshots.Delete
import Network.Google.Resource.Compute.Snapshots.Get
import Network.Google.Resource.Compute.Snapshots.GetIAMPolicy
import Network.Google.Resource.Compute.Snapshots.List
import Network.Google.Resource.Compute.Snapshots.SetIAMPolicy
import Network.Google.Resource.Compute.Snapshots.SetLabels
import Network.Google.Resource.Compute.Snapshots.TestIAMPermissions
import Network.Google.Resource.Compute.Subnetworks.AggregatedList
import Network.Google.Resource.Compute.Subnetworks.Delete
import Network.Google.Resource.Compute.Subnetworks.ExpandIPCIdRRange
import Network.Google.Resource.Compute.Subnetworks.Get
import Network.Google.Resource.Compute.Subnetworks.GetIAMPolicy
import Network.Google.Resource.Compute.Subnetworks.Insert
import Network.Google.Resource.Compute.Subnetworks.List
import Network.Google.Resource.Compute.Subnetworks.ListUsable
import Network.Google.Resource.Compute.Subnetworks.Patch
import Network.Google.Resource.Compute.Subnetworks.SetIAMPolicy
import Network.Google.Resource.Compute.Subnetworks.SetPrivateIPGoogleAccess
import Network.Google.Resource.Compute.Subnetworks.TestIAMPermissions
import Network.Google.Resource.Compute.TargetGrpcProxies.Delete
import Network.Google.Resource.Compute.TargetGrpcProxies.Get
import Network.Google.Resource.Compute.TargetGrpcProxies.Insert
import Network.Google.Resource.Compute.TargetGrpcProxies.List
import Network.Google.Resource.Compute.TargetGrpcProxies.Patch
import Network.Google.Resource.Compute.TargetHTTPProxies.AggregatedList
import Network.Google.Resource.Compute.TargetHTTPProxies.Delete
import Network.Google.Resource.Compute.TargetHTTPProxies.Get
import Network.Google.Resource.Compute.TargetHTTPProxies.Insert
import Network.Google.Resource.Compute.TargetHTTPProxies.List
import Network.Google.Resource.Compute.TargetHTTPProxies.Patch
import Network.Google.Resource.Compute.TargetHTTPProxies.SetURLMap
import Network.Google.Resource.Compute.TargetHTTPSProxies.AggregatedList
import Network.Google.Resource.Compute.TargetHTTPSProxies.Delete
import Network.Google.Resource.Compute.TargetHTTPSProxies.Get
import Network.Google.Resource.Compute.TargetHTTPSProxies.Insert
import Network.Google.Resource.Compute.TargetHTTPSProxies.List
import Network.Google.Resource.Compute.TargetHTTPSProxies.Patch
import Network.Google.Resource.Compute.TargetHTTPSProxies.SetQuicOverride
import Network.Google.Resource.Compute.TargetHTTPSProxies.SetSSLCertificates
import Network.Google.Resource.Compute.TargetHTTPSProxies.SetSSLPolicy
import Network.Google.Resource.Compute.TargetHTTPSProxies.SetURLMap
import Network.Google.Resource.Compute.TargetInstances.AggregatedList
import Network.Google.Resource.Compute.TargetInstances.Delete
import Network.Google.Resource.Compute.TargetInstances.Get
import Network.Google.Resource.Compute.TargetInstances.Insert
import Network.Google.Resource.Compute.TargetInstances.List
import Network.Google.Resource.Compute.TargetPools.AddHealthCheck
import Network.Google.Resource.Compute.TargetPools.AddInstance
import Network.Google.Resource.Compute.TargetPools.AggregatedList
import Network.Google.Resource.Compute.TargetPools.Delete
import Network.Google.Resource.Compute.TargetPools.Get
import Network.Google.Resource.Compute.TargetPools.GetHealth
import Network.Google.Resource.Compute.TargetPools.Insert
import Network.Google.Resource.Compute.TargetPools.List
import Network.Google.Resource.Compute.TargetPools.RemoveHealthCheck
import Network.Google.Resource.Compute.TargetPools.RemoveInstance
import Network.Google.Resource.Compute.TargetPools.SetBackup
import Network.Google.Resource.Compute.TargetSSLProxies.Delete
import Network.Google.Resource.Compute.TargetSSLProxies.Get
import Network.Google.Resource.Compute.TargetSSLProxies.Insert
import Network.Google.Resource.Compute.TargetSSLProxies.List
import Network.Google.Resource.Compute.TargetSSLProxies.SetBackendService
import Network.Google.Resource.Compute.TargetSSLProxies.SetProxyHeader
import Network.Google.Resource.Compute.TargetSSLProxies.SetSSLCertificates
import Network.Google.Resource.Compute.TargetSSLProxies.SetSSLPolicy
import Network.Google.Resource.Compute.TargetTCPProxies.Delete
import Network.Google.Resource.Compute.TargetTCPProxies.Get
import Network.Google.Resource.Compute.TargetTCPProxies.Insert
import Network.Google.Resource.Compute.TargetTCPProxies.List
import Network.Google.Resource.Compute.TargetTCPProxies.SetBackendService
import Network.Google.Resource.Compute.TargetTCPProxies.SetProxyHeader
import Network.Google.Resource.Compute.TargetVPNGateways.AggregatedList
import Network.Google.Resource.Compute.TargetVPNGateways.Delete
import Network.Google.Resource.Compute.TargetVPNGateways.Get
import Network.Google.Resource.Compute.TargetVPNGateways.Insert
import Network.Google.Resource.Compute.TargetVPNGateways.List
import Network.Google.Resource.Compute.URLMaps.AggregatedList
import Network.Google.Resource.Compute.URLMaps.Delete
import Network.Google.Resource.Compute.URLMaps.Get
import Network.Google.Resource.Compute.URLMaps.Insert
import Network.Google.Resource.Compute.URLMaps.InvalidateCache
import Network.Google.Resource.Compute.URLMaps.List
import Network.Google.Resource.Compute.URLMaps.Patch
import Network.Google.Resource.Compute.URLMaps.Update
import Network.Google.Resource.Compute.URLMaps.Validate
import Network.Google.Resource.Compute.VPNGateways.AggregatedList
import Network.Google.Resource.Compute.VPNGateways.Delete
import Network.Google.Resource.Compute.VPNGateways.Get
import Network.Google.Resource.Compute.VPNGateways.GetStatus
import Network.Google.Resource.Compute.VPNGateways.Insert
import Network.Google.Resource.Compute.VPNGateways.List
import Network.Google.Resource.Compute.VPNGateways.SetLabels
import Network.Google.Resource.Compute.VPNGateways.TestIAMPermissions
import Network.Google.Resource.Compute.VPNTunnels.AggregatedList
import Network.Google.Resource.Compute.VPNTunnels.Delete
import Network.Google.Resource.Compute.VPNTunnels.Get
import Network.Google.Resource.Compute.VPNTunnels.Insert
import Network.Google.Resource.Compute.VPNTunnels.List
import Network.Google.Resource.Compute.ZoneOperations.Delete
import Network.Google.Resource.Compute.ZoneOperations.Get
import Network.Google.Resource.Compute.ZoneOperations.List
import Network.Google.Resource.Compute.ZoneOperations.Wait
import Network.Google.Resource.Compute.Zones.Get
import Network.Google.Resource.Compute.Zones.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Compute Engine API service.
type ComputeAPI =
     ImagesInsertResource :<|> ImagesListResource :<|>
       ImagesGetIAMPolicyResource
       :<|> ImagesPatchResource
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
       :<|> URLMapsAggregatedListResource
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
       :<|> NodeGroupsPatchResource
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
       :<|> RegionInstancesBulkInsertResource
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
       :<|>
       GlobalNetworkEndpointGroupsListNetworkEndpointsResource
       :<|> GlobalNetworkEndpointGroupsInsertResource
       :<|> GlobalNetworkEndpointGroupsListResource
       :<|>
       GlobalNetworkEndpointGroupsAttachNetworkEndpointsResource
       :<|> GlobalNetworkEndpointGroupsGetResource
       :<|>
       GlobalNetworkEndpointGroupsDetachNetworkEndpointsResource
       :<|> GlobalNetworkEndpointGroupsDeleteResource
       :<|> TargetVPNGatewaysAggregatedListResource
       :<|> TargetVPNGatewaysInsertResource
       :<|> TargetVPNGatewaysListResource
       :<|> TargetVPNGatewaysGetResource
       :<|> TargetVPNGatewaysDeleteResource
       :<|> SSLCertificatesAggregatedListResource
       :<|> SSLCertificatesInsertResource
       :<|> SSLCertificatesListResource
       :<|> SSLCertificatesGetResource
       :<|> SSLCertificatesDeleteResource
       :<|> TargetGrpcProxiesInsertResource
       :<|> TargetGrpcProxiesListResource
       :<|> TargetGrpcProxiesPatchResource
       :<|> TargetGrpcProxiesGetResource
       :<|> TargetGrpcProxiesDeleteResource
       :<|> ZonesListResource
       :<|> ZonesGetResource
       :<|> RegionInstanceGroupsListResource
       :<|> RegionInstanceGroupsGetResource
       :<|> RegionInstanceGroupsListInstancesResource
       :<|> RegionInstanceGroupsSetNamedPortsResource
       :<|> GlobalForwardingRulesInsertResource
       :<|> GlobalForwardingRulesListResource
       :<|> GlobalForwardingRulesPatchResource
       :<|> GlobalForwardingRulesGetResource
       :<|> GlobalForwardingRulesSetLabelsResource
       :<|> GlobalForwardingRulesSetTargetResource
       :<|> GlobalForwardingRulesDeleteResource
       :<|> NetworksInsertResource
       :<|> NetworksListPeeringRoutesResource
       :<|> NetworksListResource
       :<|> NetworksUpdatePeeringResource
       :<|> NetworksPatchResource
       :<|> NetworksGetResource
       :<|> NetworksSwitchToCustomModeResource
       :<|> NetworksRemovePeeringResource
       :<|> NetworksAddPeeringResource
       :<|> NetworksGetEffectiveFirewallsResource
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
       :<|>
       SecurityPoliciesListPreConfiguredExpressionSetsResource
       :<|> SecurityPoliciesListResource
       :<|> SecurityPoliciesRemoveRuleResource
       :<|> SecurityPoliciesPatchRuleResource
       :<|> SecurityPoliciesGetRuleResource
       :<|> SecurityPoliciesPatchResource
       :<|> SecurityPoliciesGetResource
       :<|> SecurityPoliciesAddRuleResource
       :<|> SecurityPoliciesDeleteResource
       :<|> RegionTargetHTTPSProxiesInsertResource
       :<|> RegionTargetHTTPSProxiesListResource
       :<|> RegionTargetHTTPSProxiesSetURLMapResource
       :<|>
       RegionTargetHTTPSProxiesSetSSLCertificatesResource
       :<|> RegionTargetHTTPSProxiesGetResource
       :<|> RegionTargetHTTPSProxiesDeleteResource
       :<|> AddressesAggregatedListResource
       :<|> AddressesInsertResource
       :<|> AddressesListResource
       :<|> AddressesGetResource
       :<|> AddressesDeleteResource
       :<|> FirewallPoliciesRemoveAssociationResource
       :<|> FirewallPoliciesInsertResource
       :<|> FirewallPoliciesGetAssociationResource
       :<|> FirewallPoliciesListResource
       :<|> FirewallPoliciesRemoveRuleResource
       :<|> FirewallPoliciesAddAssociationResource
       :<|> FirewallPoliciesPatchRuleResource
       :<|> FirewallPoliciesGetRuleResource
       :<|> FirewallPoliciesGetIAMPolicyResource
       :<|> FirewallPoliciesPatchResource
       :<|> FirewallPoliciesCloneRulesResource
       :<|> FirewallPoliciesGetResource
       :<|> FirewallPoliciesSetIAMPolicyResource
       :<|> FirewallPoliciesAddRuleResource
       :<|> FirewallPoliciesListAssociationsResource
       :<|> FirewallPoliciesTestIAMPermissionsResource
       :<|> FirewallPoliciesDeleteResource
       :<|> FirewallPoliciesMoveResource
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
       :<|> VPNGatewaysAggregatedListResource
       :<|> VPNGatewaysInsertResource
       :<|> VPNGatewaysListResource
       :<|> VPNGatewaysGetResource
       :<|> VPNGatewaysSetLabelsResource
       :<|> VPNGatewaysGetStatusResource
       :<|> VPNGatewaysTestIAMPermissionsResource
       :<|> VPNGatewaysDeleteResource
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
       :<|> TargetHTTPProxiesAggregatedListResource
       :<|> TargetHTTPProxiesInsertResource
       :<|> TargetHTTPProxiesListResource
       :<|> TargetHTTPProxiesSetURLMapResource
       :<|> TargetHTTPProxiesPatchResource
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
       :<|> RegionDisksRemoveResourcePoliciesResource
       :<|> RegionDisksGetIAMPolicyResource
       :<|> RegionDisksGetResource
       :<|> RegionDisksSetIAMPolicyResource
       :<|> RegionDisksSetLabelsResource
       :<|> RegionDisksAddResourcePoliciesResource
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
       :<|>
       RegionInstanceGroupManagersApplyUpdatesToInstancesResource
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
       RegionInstanceGroupManagersPatchPerInstanceConfigsResource
       :<|>
       RegionInstanceGroupManagersListPerInstanceConfigsResource
       :<|>
       RegionInstanceGroupManagersDeleteInstancesResource
       :<|>
       RegionInstanceGroupManagersCreateInstancesResource
       :<|>
       RegionInstanceGroupManagersUpdatePerInstanceConfigsResource
       :<|>
       RegionInstanceGroupManagersDeletePerInstanceConfigsResource
       :<|> RegionInstanceGroupManagersDeleteResource
       :<|>
       RegionInstanceGroupManagersRecreateInstancesResource
       :<|> RegionInstanceGroupManagersListErrorsResource
       :<|> ExternalVPNGatewaysInsertResource
       :<|> ExternalVPNGatewaysListResource
       :<|> ExternalVPNGatewaysGetResource
       :<|> ExternalVPNGatewaysSetLabelsResource
       :<|> ExternalVPNGatewaysTestIAMPermissionsResource
       :<|> ExternalVPNGatewaysDeleteResource
       :<|> DiskTypesAggregatedListResource
       :<|> DiskTypesListResource
       :<|> DiskTypesGetResource
       :<|> RegionOperationsListResource
       :<|> RegionOperationsWaitResource
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
       :<|> RegionHealthChecksInsertResource
       :<|> RegionHealthChecksListResource
       :<|> RegionHealthChecksPatchResource
       :<|> RegionHealthChecksGetResource
       :<|> RegionHealthChecksDeleteResource
       :<|> RegionHealthChecksUpdateResource
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
       :<|>
       NetworkEndpointGroupsListNetworkEndpointsResource
       :<|> NetworkEndpointGroupsAggregatedListResource
       :<|> NetworkEndpointGroupsInsertResource
       :<|> NetworkEndpointGroupsListResource
       :<|>
       NetworkEndpointGroupsAttachNetworkEndpointsResource
       :<|> NetworkEndpointGroupsGetResource
       :<|>
       NetworkEndpointGroupsDetachNetworkEndpointsResource
       :<|> NetworkEndpointGroupsTestIAMPermissionsResource
       :<|> NetworkEndpointGroupsDeleteResource
       :<|> InterconnectsInsertResource
       :<|> InterconnectsGetDiagnosticsResource
       :<|> InterconnectsListResource
       :<|> InterconnectsPatchResource
       :<|> InterconnectsGetResource
       :<|> InterconnectsDeleteResource
       :<|> RegionHealthCheckServicesInsertResource
       :<|> RegionHealthCheckServicesListResource
       :<|> RegionHealthCheckServicesPatchResource
       :<|> RegionHealthCheckServicesGetResource
       :<|> RegionHealthCheckServicesDeleteResource
       :<|> InterconnectLocationsListResource
       :<|> InterconnectLocationsGetResource
       :<|> PublicAdvertisedPrefixesInsertResource
       :<|> PublicAdvertisedPrefixesListResource
       :<|> PublicAdvertisedPrefixesPatchResource
       :<|> PublicAdvertisedPrefixesGetResource
       :<|> PublicAdvertisedPrefixesDeleteResource
       :<|> PublicDelegatedPrefixesAggregatedListResource
       :<|> PublicDelegatedPrefixesInsertResource
       :<|> PublicDelegatedPrefixesListResource
       :<|> PublicDelegatedPrefixesPatchResource
       :<|> PublicDelegatedPrefixesGetResource
       :<|> PublicDelegatedPrefixesDeleteResource
       :<|> ResourcePoliciesAggregatedListResource
       :<|> ResourcePoliciesInsertResource
       :<|> ResourcePoliciesListResource
       :<|> ResourcePoliciesGetIAMPolicyResource
       :<|> ResourcePoliciesGetResource
       :<|> ResourcePoliciesSetIAMPolicyResource
       :<|> ResourcePoliciesTestIAMPermissionsResource
       :<|> ResourcePoliciesDeleteResource
       :<|> RegionURLMapsInsertResource
       :<|> RegionURLMapsListResource
       :<|> RegionURLMapsPatchResource
       :<|> RegionURLMapsGetResource
       :<|> RegionURLMapsValidateResource
       :<|> RegionURLMapsDeleteResource
       :<|> RegionURLMapsUpdateResource
       :<|> SnapshotsListResource
       :<|> SnapshotsGetIAMPolicyResource
       :<|> SnapshotsGetResource
       :<|> SnapshotsSetIAMPolicyResource
       :<|> SnapshotsSetLabelsResource
       :<|> SnapshotsTestIAMPermissionsResource
       :<|> SnapshotsDeleteResource
       :<|> GlobalPublicDelegatedPrefixesInsertResource
       :<|> GlobalPublicDelegatedPrefixesListResource
       :<|> GlobalPublicDelegatedPrefixesPatchResource
       :<|> GlobalPublicDelegatedPrefixesGetResource
       :<|> GlobalPublicDelegatedPrefixesDeleteResource
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
       :<|> InstancesUpdateShieldedInstanceConfigResource
       :<|> InstancesGetShieldedInstanceIdentityResource
       :<|> InstancesAddAccessConfigResource
       :<|> InstancesBulkInsertResource
       :<|> InstancesSimulateMaintenanceEventResource
       :<|> InstancesAggregatedListResource
       :<|> InstancesInsertResource
       :<|> InstancesListReferrersResource
       :<|> InstancesDetachDiskResource
       :<|> InstancesListResource
       :<|>
       InstancesSetShieldedInstanceIntegrityPolicyResource
       :<|> InstancesRemoveResourcePoliciesResource
       :<|> InstancesSetDeletionProtectionResource
       :<|> InstancesStartResource
       :<|> InstancesUpdateDisplayDeviceResource
       :<|> InstancesGetIAMPolicyResource
       :<|> InstancesSetServiceAccountResource
       :<|> InstancesGetResource
       :<|> InstancesSetMachineResourcesResource
       :<|> InstancesGetGuestAttributesResource
       :<|> InstancesSetIAMPolicyResource
       :<|> InstancesSetLabelsResource
       :<|> InstancesSetMachineTypeResource
       :<|> InstancesUpdateAccessConfigResource
       :<|> InstancesDeleteAccessConfigResource
       :<|> InstancesSetMetadataResource
       :<|> InstancesSetSchedulingResource
       :<|> InstancesStartWithEncryptionKeyResource
       :<|> InstancesUpdateNetworkInterfaceResource
       :<|> InstancesGetScreenshotResource
       :<|> InstancesResetResource
       :<|> InstancesAddResourcePoliciesResource
       :<|> InstancesStopResource
       :<|> InstancesGetSerialPortOutputResource
       :<|> InstancesTestIAMPermissionsResource
       :<|> InstancesSetTagsResource
       :<|> InstancesAttachDiskResource
       :<|> InstancesGetEffectiveFirewallsResource
       :<|> InstancesDeleteResource
       :<|> InstancesUpdateResource
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
       :<|> PacketMirroringsAggregatedListResource
       :<|> PacketMirroringsInsertResource
       :<|> PacketMirroringsListResource
       :<|> PacketMirroringsPatchResource
       :<|> PacketMirroringsGetResource
       :<|> PacketMirroringsTestIAMPermissionsResource
       :<|> PacketMirroringsDeleteResource
       :<|> RegionSSLCertificatesInsertResource
       :<|> RegionSSLCertificatesListResource
       :<|> RegionSSLCertificatesGetResource
       :<|> RegionSSLCertificatesDeleteResource
       :<|> RegionNotificationEndpointsInsertResource
       :<|> RegionNotificationEndpointsListResource
       :<|> RegionNotificationEndpointsGetResource
       :<|> RegionNotificationEndpointsDeleteResource
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
       :<|> GlobalOperationsWaitResource
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
       :<|> ZoneOperationsWaitResource
       :<|> ZoneOperationsGetResource
       :<|> ZoneOperationsDeleteResource
       :<|> InterconnectAttachmentsAggregatedListResource
       :<|> InterconnectAttachmentsInsertResource
       :<|> InterconnectAttachmentsListResource
       :<|> InterconnectAttachmentsPatchResource
       :<|> InterconnectAttachmentsGetResource
       :<|> InterconnectAttachmentsDeleteResource
       :<|> TargetHTTPSProxiesAggregatedListResource
       :<|> TargetHTTPSProxiesInsertResource
       :<|> TargetHTTPSProxiesListResource
       :<|> TargetHTTPSProxiesSetURLMapResource
       :<|> TargetHTTPSProxiesSetSSLCertificatesResource
       :<|> TargetHTTPSProxiesSetQuicOverrideResource
       :<|> TargetHTTPSProxiesPatchResource
       :<|> TargetHTTPSProxiesGetResource
       :<|> TargetHTTPSProxiesSetSSLPolicyResource
       :<|> TargetHTTPSProxiesDeleteResource
       :<|> RegionTargetHTTPProxiesInsertResource
       :<|> RegionTargetHTTPProxiesListResource
       :<|> RegionTargetHTTPProxiesSetURLMapResource
       :<|> RegionTargetHTTPProxiesGetResource
       :<|> RegionTargetHTTPProxiesDeleteResource
       :<|> ReservationsAggregatedListResource
       :<|> ReservationsInsertResource
       :<|> ReservationsResizeResource
       :<|> ReservationsListResource
       :<|> ReservationsGetIAMPolicyResource
       :<|> ReservationsGetResource
       :<|> ReservationsSetIAMPolicyResource
       :<|> ReservationsTestIAMPermissionsResource
       :<|> ReservationsDeleteResource
       :<|> TargetInstancesAggregatedListResource
       :<|> TargetInstancesInsertResource
       :<|> TargetInstancesListResource
       :<|> TargetInstancesGetResource
       :<|> TargetInstancesDeleteResource
       :<|> DisksAggregatedListResource
       :<|> DisksInsertResource
       :<|> DisksResizeResource
       :<|> DisksListResource
       :<|> DisksRemoveResourcePoliciesResource
       :<|> DisksGetIAMPolicyResource
       :<|> DisksGetResource
       :<|> DisksSetIAMPolicyResource
       :<|> DisksSetLabelsResource
       :<|> DisksAddResourcePoliciesResource
       :<|> DisksCreateSnapshotResource
       :<|> DisksTestIAMPermissionsResource
       :<|> DisksDeleteResource
       :<|> ForwardingRulesAggregatedListResource
       :<|> ForwardingRulesInsertResource
       :<|> ForwardingRulesListResource
       :<|> ForwardingRulesPatchResource
       :<|> ForwardingRulesGetResource
       :<|> ForwardingRulesSetLabelsResource
       :<|> ForwardingRulesSetTargetResource
       :<|> ForwardingRulesDeleteResource
       :<|> InstanceGroupManagersSetTargetPoolsResource
       :<|> InstanceGroupManagersAggregatedListResource
       :<|>
       InstanceGroupManagersApplyUpdatesToInstancesResource
       :<|> InstanceGroupManagersInsertResource
       :<|> InstanceGroupManagersResizeResource
       :<|> InstanceGroupManagersListResource
       :<|>
       InstanceGroupManagersListManagedInstancesResource
       :<|> InstanceGroupManagersAbandonInstancesResource
       :<|> InstanceGroupManagersSetInstanceTemplateResource
       :<|> InstanceGroupManagersPatchResource
       :<|> InstanceGroupManagersGetResource
       :<|>
       InstanceGroupManagersPatchPerInstanceConfigsResource
       :<|>
       InstanceGroupManagersListPerInstanceConfigsResource
       :<|> InstanceGroupManagersDeleteInstancesResource
       :<|> InstanceGroupManagersCreateInstancesResource
       :<|>
       InstanceGroupManagersUpdatePerInstanceConfigsResource
       :<|>
       InstanceGroupManagersDeletePerInstanceConfigsResource
       :<|> InstanceGroupManagersDeleteResource
       :<|> InstanceGroupManagersRecreateInstancesResource
       :<|> InstanceGroupManagersListErrorsResource
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
       :<|> GlobalOrganizationOperationsListResource
       :<|> GlobalOrganizationOperationsGetResource
       :<|> GlobalOrganizationOperationsDeleteResource
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
       :<|> HealthChecksAggregatedListResource
       :<|> HealthChecksInsertResource
       :<|> HealthChecksListResource
       :<|> HealthChecksPatchResource
       :<|> HealthChecksGetResource
       :<|> HealthChecksDeleteResource
       :<|> HealthChecksUpdateResource
       :<|> RegionNetworkEndpointGroupsInsertResource
       :<|> RegionNetworkEndpointGroupsListResource
       :<|> RegionNetworkEndpointGroupsGetResource
       :<|> RegionNetworkEndpointGroupsDeleteResource
       :<|> BackendBucketsAddSignedURLKeyResource
       :<|> BackendBucketsInsertResource
       :<|> BackendBucketsListResource
       :<|> BackendBucketsPatchResource
       :<|> BackendBucketsGetResource
       :<|> BackendBucketsDeleteSignedURLKeyResource
       :<|> BackendBucketsDeleteResource
       :<|> BackendBucketsUpdateResource
