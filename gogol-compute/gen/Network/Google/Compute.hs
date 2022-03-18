{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.Compute
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and runs virtual machines on Google Cloud Platform.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference>
module Network.Google.Compute
  ( -- * Configuration
    computeService,

    -- * OAuth Scopes
    cloudPlatformScope,
    computeScope,
    computeReadOnlyScope,
    storageFull_controlScope,
    storageRead_OnlyScope,
    storageRead_writeScope,

    -- * Resources

    -- ** compute.acceleratorTypes.aggregatedList
    ComputeAcceleratorTypesAggregatedListResource,
    newComputeAcceleratorTypesAggregatedList,
    ComputeAcceleratorTypesAggregatedList,

    -- ** compute.acceleratorTypes.get
    ComputeAcceleratorTypesGetResource,
    newComputeAcceleratorTypesGet,
    ComputeAcceleratorTypesGet,

    -- ** compute.acceleratorTypes.list
    ComputeAcceleratorTypesListResource,
    newComputeAcceleratorTypesList,
    ComputeAcceleratorTypesList,

    -- ** compute.addresses.aggregatedList
    ComputeAddressesAggregatedListResource,
    newComputeAddressesAggregatedList,
    ComputeAddressesAggregatedList,

    -- ** compute.addresses.delete
    ComputeAddressesDeleteResource,
    newComputeAddressesDelete,
    ComputeAddressesDelete,

    -- ** compute.addresses.get
    ComputeAddressesGetResource,
    newComputeAddressesGet,
    ComputeAddressesGet,

    -- ** compute.addresses.insert
    ComputeAddressesInsertResource,
    newComputeAddressesInsert,
    ComputeAddressesInsert,

    -- ** compute.addresses.list
    ComputeAddressesListResource,
    newComputeAddressesList,
    ComputeAddressesList,

    -- ** compute.autoscalers.aggregatedList
    ComputeAutoscalersAggregatedListResource,
    newComputeAutoscalersAggregatedList,
    ComputeAutoscalersAggregatedList,

    -- ** compute.autoscalers.delete
    ComputeAutoscalersDeleteResource,
    newComputeAutoscalersDelete,
    ComputeAutoscalersDelete,

    -- ** compute.autoscalers.get
    ComputeAutoscalersGetResource,
    newComputeAutoscalersGet,
    ComputeAutoscalersGet,

    -- ** compute.autoscalers.insert
    ComputeAutoscalersInsertResource,
    newComputeAutoscalersInsert,
    ComputeAutoscalersInsert,

    -- ** compute.autoscalers.list
    ComputeAutoscalersListResource,
    newComputeAutoscalersList,
    ComputeAutoscalersList,

    -- ** compute.autoscalers.patch
    ComputeAutoscalersPatchResource,
    newComputeAutoscalersPatch,
    ComputeAutoscalersPatch,

    -- ** compute.autoscalers.update
    ComputeAutoscalersUpdateResource,
    newComputeAutoscalersUpdate,
    ComputeAutoscalersUpdate,

    -- ** compute.backendBuckets.addSignedUrlKey
    ComputeBackendBucketsAddSignedUrlKeyResource,
    newComputeBackendBucketsAddSignedUrlKey,
    ComputeBackendBucketsAddSignedUrlKey,

    -- ** compute.backendBuckets.delete
    ComputeBackendBucketsDeleteResource,
    newComputeBackendBucketsDelete,
    ComputeBackendBucketsDelete,

    -- ** compute.backendBuckets.deleteSignedUrlKey
    ComputeBackendBucketsDeleteSignedUrlKeyResource,
    newComputeBackendBucketsDeleteSignedUrlKey,
    ComputeBackendBucketsDeleteSignedUrlKey,

    -- ** compute.backendBuckets.get
    ComputeBackendBucketsGetResource,
    newComputeBackendBucketsGet,
    ComputeBackendBucketsGet,

    -- ** compute.backendBuckets.insert
    ComputeBackendBucketsInsertResource,
    newComputeBackendBucketsInsert,
    ComputeBackendBucketsInsert,

    -- ** compute.backendBuckets.list
    ComputeBackendBucketsListResource,
    newComputeBackendBucketsList,
    ComputeBackendBucketsList,

    -- ** compute.backendBuckets.patch
    ComputeBackendBucketsPatchResource,
    newComputeBackendBucketsPatch,
    ComputeBackendBucketsPatch,

    -- ** compute.backendBuckets.setEdgeSecurityPolicy
    ComputeBackendBucketsSetEdgeSecurityPolicyResource,
    newComputeBackendBucketsSetEdgeSecurityPolicy,
    ComputeBackendBucketsSetEdgeSecurityPolicy,

    -- ** compute.backendBuckets.update
    ComputeBackendBucketsUpdateResource,
    newComputeBackendBucketsUpdate,
    ComputeBackendBucketsUpdate,

    -- ** compute.backendServices.addSignedUrlKey
    ComputeBackendServicesAddSignedUrlKeyResource,
    newComputeBackendServicesAddSignedUrlKey,
    ComputeBackendServicesAddSignedUrlKey,

    -- ** compute.backendServices.aggregatedList
    ComputeBackendServicesAggregatedListResource,
    newComputeBackendServicesAggregatedList,
    ComputeBackendServicesAggregatedList,

    -- ** compute.backendServices.delete
    ComputeBackendServicesDeleteResource,
    newComputeBackendServicesDelete,
    ComputeBackendServicesDelete,

    -- ** compute.backendServices.deleteSignedUrlKey
    ComputeBackendServicesDeleteSignedUrlKeyResource,
    newComputeBackendServicesDeleteSignedUrlKey,
    ComputeBackendServicesDeleteSignedUrlKey,

    -- ** compute.backendServices.get
    ComputeBackendServicesGetResource,
    newComputeBackendServicesGet,
    ComputeBackendServicesGet,

    -- ** compute.backendServices.getHealth
    ComputeBackendServicesGetHealthResource,
    newComputeBackendServicesGetHealth,
    ComputeBackendServicesGetHealth,

    -- ** compute.backendServices.insert
    ComputeBackendServicesInsertResource,
    newComputeBackendServicesInsert,
    ComputeBackendServicesInsert,

    -- ** compute.backendServices.list
    ComputeBackendServicesListResource,
    newComputeBackendServicesList,
    ComputeBackendServicesList,

    -- ** compute.backendServices.patch
    ComputeBackendServicesPatchResource,
    newComputeBackendServicesPatch,
    ComputeBackendServicesPatch,

    -- ** compute.backendServices.setEdgeSecurityPolicy
    ComputeBackendServicesSetEdgeSecurityPolicyResource,
    newComputeBackendServicesSetEdgeSecurityPolicy,
    ComputeBackendServicesSetEdgeSecurityPolicy,

    -- ** compute.backendServices.setSecurityPolicy
    ComputeBackendServicesSetSecurityPolicyResource,
    newComputeBackendServicesSetSecurityPolicy,
    ComputeBackendServicesSetSecurityPolicy,

    -- ** compute.backendServices.update
    ComputeBackendServicesUpdateResource,
    newComputeBackendServicesUpdate,
    ComputeBackendServicesUpdate,

    -- ** compute.diskTypes.aggregatedList
    ComputeDiskTypesAggregatedListResource,
    newComputeDiskTypesAggregatedList,
    ComputeDiskTypesAggregatedList,

    -- ** compute.diskTypes.get
    ComputeDiskTypesGetResource,
    newComputeDiskTypesGet,
    ComputeDiskTypesGet,

    -- ** compute.diskTypes.list
    ComputeDiskTypesListResource,
    newComputeDiskTypesList,
    ComputeDiskTypesList,

    -- ** compute.disks.addResourcePolicies
    ComputeDisksAddResourcePoliciesResource,
    newComputeDisksAddResourcePolicies,
    ComputeDisksAddResourcePolicies,

    -- ** compute.disks.aggregatedList
    ComputeDisksAggregatedListResource,
    newComputeDisksAggregatedList,
    ComputeDisksAggregatedList,

    -- ** compute.disks.createSnapshot
    ComputeDisksCreateSnapshotResource,
    newComputeDisksCreateSnapshot,
    ComputeDisksCreateSnapshot,

    -- ** compute.disks.delete
    ComputeDisksDeleteResource,
    newComputeDisksDelete,
    ComputeDisksDelete,

    -- ** compute.disks.get
    ComputeDisksGetResource,
    newComputeDisksGet,
    ComputeDisksGet,

    -- ** compute.disks.getIamPolicy
    ComputeDisksGetIamPolicyResource,
    newComputeDisksGetIamPolicy,
    ComputeDisksGetIamPolicy,

    -- ** compute.disks.insert
    ComputeDisksInsertResource,
    newComputeDisksInsert,
    ComputeDisksInsert,

    -- ** compute.disks.list
    ComputeDisksListResource,
    newComputeDisksList,
    ComputeDisksList,

    -- ** compute.disks.removeResourcePolicies
    ComputeDisksRemoveResourcePoliciesResource,
    newComputeDisksRemoveResourcePolicies,
    ComputeDisksRemoveResourcePolicies,

    -- ** compute.disks.resize
    ComputeDisksResizeResource,
    newComputeDisksResize,
    ComputeDisksResize,

    -- ** compute.disks.setIamPolicy
    ComputeDisksSetIamPolicyResource,
    newComputeDisksSetIamPolicy,
    ComputeDisksSetIamPolicy,

    -- ** compute.disks.setLabels
    ComputeDisksSetLabelsResource,
    newComputeDisksSetLabels,
    ComputeDisksSetLabels,

    -- ** compute.disks.testIamPermissions
    ComputeDisksTestIamPermissionsResource,
    newComputeDisksTestIamPermissions,
    ComputeDisksTestIamPermissions,

    -- ** compute.externalVpnGateways.delete
    ComputeExternalVpnGatewaysDeleteResource,
    newComputeExternalVpnGatewaysDelete,
    ComputeExternalVpnGatewaysDelete,

    -- ** compute.externalVpnGateways.get
    ComputeExternalVpnGatewaysGetResource,
    newComputeExternalVpnGatewaysGet,
    ComputeExternalVpnGatewaysGet,

    -- ** compute.externalVpnGateways.insert
    ComputeExternalVpnGatewaysInsertResource,
    newComputeExternalVpnGatewaysInsert,
    ComputeExternalVpnGatewaysInsert,

    -- ** compute.externalVpnGateways.list
    ComputeExternalVpnGatewaysListResource,
    newComputeExternalVpnGatewaysList,
    ComputeExternalVpnGatewaysList,

    -- ** compute.externalVpnGateways.setLabels
    ComputeExternalVpnGatewaysSetLabelsResource,
    newComputeExternalVpnGatewaysSetLabels,
    ComputeExternalVpnGatewaysSetLabels,

    -- ** compute.externalVpnGateways.testIamPermissions
    ComputeExternalVpnGatewaysTestIamPermissionsResource,
    newComputeExternalVpnGatewaysTestIamPermissions,
    ComputeExternalVpnGatewaysTestIamPermissions,

    -- ** compute.firewallPolicies.addAssociation
    ComputeFirewallPoliciesAddAssociationResource,
    newComputeFirewallPoliciesAddAssociation,
    ComputeFirewallPoliciesAddAssociation,

    -- ** compute.firewallPolicies.addRule
    ComputeFirewallPoliciesAddRuleResource,
    newComputeFirewallPoliciesAddRule,
    ComputeFirewallPoliciesAddRule,

    -- ** compute.firewallPolicies.cloneRules
    ComputeFirewallPoliciesCloneRulesResource,
    newComputeFirewallPoliciesCloneRules,
    ComputeFirewallPoliciesCloneRules,

    -- ** compute.firewallPolicies.delete
    ComputeFirewallPoliciesDeleteResource,
    newComputeFirewallPoliciesDelete,
    ComputeFirewallPoliciesDelete,

    -- ** compute.firewallPolicies.get
    ComputeFirewallPoliciesGetResource,
    newComputeFirewallPoliciesGet,
    ComputeFirewallPoliciesGet,

    -- ** compute.firewallPolicies.getAssociation
    ComputeFirewallPoliciesGetAssociationResource,
    newComputeFirewallPoliciesGetAssociation,
    ComputeFirewallPoliciesGetAssociation,

    -- ** compute.firewallPolicies.getIamPolicy
    ComputeFirewallPoliciesGetIamPolicyResource,
    newComputeFirewallPoliciesGetIamPolicy,
    ComputeFirewallPoliciesGetIamPolicy,

    -- ** compute.firewallPolicies.getRule
    ComputeFirewallPoliciesGetRuleResource,
    newComputeFirewallPoliciesGetRule,
    ComputeFirewallPoliciesGetRule,

    -- ** compute.firewallPolicies.insert
    ComputeFirewallPoliciesInsertResource,
    newComputeFirewallPoliciesInsert,
    ComputeFirewallPoliciesInsert,

    -- ** compute.firewallPolicies.list
    ComputeFirewallPoliciesListResource,
    newComputeFirewallPoliciesList,
    ComputeFirewallPoliciesList,

    -- ** compute.firewallPolicies.listAssociations
    ComputeFirewallPoliciesListAssociationsResource,
    newComputeFirewallPoliciesListAssociations,
    ComputeFirewallPoliciesListAssociations,

    -- ** compute.firewallPolicies.move
    ComputeFirewallPoliciesMoveResource,
    newComputeFirewallPoliciesMove,
    ComputeFirewallPoliciesMove,

    -- ** compute.firewallPolicies.patch
    ComputeFirewallPoliciesPatchResource,
    newComputeFirewallPoliciesPatch,
    ComputeFirewallPoliciesPatch,

    -- ** compute.firewallPolicies.patchRule
    ComputeFirewallPoliciesPatchRuleResource,
    newComputeFirewallPoliciesPatchRule,
    ComputeFirewallPoliciesPatchRule,

    -- ** compute.firewallPolicies.removeAssociation
    ComputeFirewallPoliciesRemoveAssociationResource,
    newComputeFirewallPoliciesRemoveAssociation,
    ComputeFirewallPoliciesRemoveAssociation,

    -- ** compute.firewallPolicies.removeRule
    ComputeFirewallPoliciesRemoveRuleResource,
    newComputeFirewallPoliciesRemoveRule,
    ComputeFirewallPoliciesRemoveRule,

    -- ** compute.firewallPolicies.setIamPolicy
    ComputeFirewallPoliciesSetIamPolicyResource,
    newComputeFirewallPoliciesSetIamPolicy,
    ComputeFirewallPoliciesSetIamPolicy,

    -- ** compute.firewallPolicies.testIamPermissions
    ComputeFirewallPoliciesTestIamPermissionsResource,
    newComputeFirewallPoliciesTestIamPermissions,
    ComputeFirewallPoliciesTestIamPermissions,

    -- ** compute.firewalls.delete
    ComputeFirewallsDeleteResource,
    newComputeFirewallsDelete,
    ComputeFirewallsDelete,

    -- ** compute.firewalls.get
    ComputeFirewallsGetResource,
    newComputeFirewallsGet,
    ComputeFirewallsGet,

    -- ** compute.firewalls.insert
    ComputeFirewallsInsertResource,
    newComputeFirewallsInsert,
    ComputeFirewallsInsert,

    -- ** compute.firewalls.list
    ComputeFirewallsListResource,
    newComputeFirewallsList,
    ComputeFirewallsList,

    -- ** compute.firewalls.patch
    ComputeFirewallsPatchResource,
    newComputeFirewallsPatch,
    ComputeFirewallsPatch,

    -- ** compute.firewalls.update
    ComputeFirewallsUpdateResource,
    newComputeFirewallsUpdate,
    ComputeFirewallsUpdate,

    -- ** compute.forwardingRules.aggregatedList
    ComputeForwardingRulesAggregatedListResource,
    newComputeForwardingRulesAggregatedList,
    ComputeForwardingRulesAggregatedList,

    -- ** compute.forwardingRules.delete
    ComputeForwardingRulesDeleteResource,
    newComputeForwardingRulesDelete,
    ComputeForwardingRulesDelete,

    -- ** compute.forwardingRules.get
    ComputeForwardingRulesGetResource,
    newComputeForwardingRulesGet,
    ComputeForwardingRulesGet,

    -- ** compute.forwardingRules.insert
    ComputeForwardingRulesInsertResource,
    newComputeForwardingRulesInsert,
    ComputeForwardingRulesInsert,

    -- ** compute.forwardingRules.list
    ComputeForwardingRulesListResource,
    newComputeForwardingRulesList,
    ComputeForwardingRulesList,

    -- ** compute.forwardingRules.patch
    ComputeForwardingRulesPatchResource,
    newComputeForwardingRulesPatch,
    ComputeForwardingRulesPatch,

    -- ** compute.forwardingRules.setLabels
    ComputeForwardingRulesSetLabelsResource,
    newComputeForwardingRulesSetLabels,
    ComputeForwardingRulesSetLabels,

    -- ** compute.forwardingRules.setTarget
    ComputeForwardingRulesSetTargetResource,
    newComputeForwardingRulesSetTarget,
    ComputeForwardingRulesSetTarget,

    -- ** compute.globalAddresses.delete
    ComputeGlobalAddressesDeleteResource,
    newComputeGlobalAddressesDelete,
    ComputeGlobalAddressesDelete,

    -- ** compute.globalAddresses.get
    ComputeGlobalAddressesGetResource,
    newComputeGlobalAddressesGet,
    ComputeGlobalAddressesGet,

    -- ** compute.globalAddresses.insert
    ComputeGlobalAddressesInsertResource,
    newComputeGlobalAddressesInsert,
    ComputeGlobalAddressesInsert,

    -- ** compute.globalAddresses.list
    ComputeGlobalAddressesListResource,
    newComputeGlobalAddressesList,
    ComputeGlobalAddressesList,

    -- ** compute.globalForwardingRules.delete
    ComputeGlobalForwardingRulesDeleteResource,
    newComputeGlobalForwardingRulesDelete,
    ComputeGlobalForwardingRulesDelete,

    -- ** compute.globalForwardingRules.get
    ComputeGlobalForwardingRulesGetResource,
    newComputeGlobalForwardingRulesGet,
    ComputeGlobalForwardingRulesGet,

    -- ** compute.globalForwardingRules.insert
    ComputeGlobalForwardingRulesInsertResource,
    newComputeGlobalForwardingRulesInsert,
    ComputeGlobalForwardingRulesInsert,

    -- ** compute.globalForwardingRules.list
    ComputeGlobalForwardingRulesListResource,
    newComputeGlobalForwardingRulesList,
    ComputeGlobalForwardingRulesList,

    -- ** compute.globalForwardingRules.patch
    ComputeGlobalForwardingRulesPatchResource,
    newComputeGlobalForwardingRulesPatch,
    ComputeGlobalForwardingRulesPatch,

    -- ** compute.globalForwardingRules.setLabels
    ComputeGlobalForwardingRulesSetLabelsResource,
    newComputeGlobalForwardingRulesSetLabels,
    ComputeGlobalForwardingRulesSetLabels,

    -- ** compute.globalForwardingRules.setTarget
    ComputeGlobalForwardingRulesSetTargetResource,
    newComputeGlobalForwardingRulesSetTarget,
    ComputeGlobalForwardingRulesSetTarget,

    -- ** compute.globalNetworkEndpointGroups.attachNetworkEndpoints
    ComputeGlobalNetworkEndpointGroupsAttachNetworkEndpointsResource,
    newComputeGlobalNetworkEndpointGroupsAttachNetworkEndpoints,
    ComputeGlobalNetworkEndpointGroupsAttachNetworkEndpoints,

    -- ** compute.globalNetworkEndpointGroups.delete
    ComputeGlobalNetworkEndpointGroupsDeleteResource,
    newComputeGlobalNetworkEndpointGroupsDelete,
    ComputeGlobalNetworkEndpointGroupsDelete,

    -- ** compute.globalNetworkEndpointGroups.detachNetworkEndpoints
    ComputeGlobalNetworkEndpointGroupsDetachNetworkEndpointsResource,
    newComputeGlobalNetworkEndpointGroupsDetachNetworkEndpoints,
    ComputeGlobalNetworkEndpointGroupsDetachNetworkEndpoints,

    -- ** compute.globalNetworkEndpointGroups.get
    ComputeGlobalNetworkEndpointGroupsGetResource,
    newComputeGlobalNetworkEndpointGroupsGet,
    ComputeGlobalNetworkEndpointGroupsGet,

    -- ** compute.globalNetworkEndpointGroups.insert
    ComputeGlobalNetworkEndpointGroupsInsertResource,
    newComputeGlobalNetworkEndpointGroupsInsert,
    ComputeGlobalNetworkEndpointGroupsInsert,

    -- ** compute.globalNetworkEndpointGroups.list
    ComputeGlobalNetworkEndpointGroupsListResource,
    newComputeGlobalNetworkEndpointGroupsList,
    ComputeGlobalNetworkEndpointGroupsList,

    -- ** compute.globalNetworkEndpointGroups.listNetworkEndpoints
    ComputeGlobalNetworkEndpointGroupsListNetworkEndpointsResource,
    newComputeGlobalNetworkEndpointGroupsListNetworkEndpoints,
    ComputeGlobalNetworkEndpointGroupsListNetworkEndpoints,

    -- ** compute.globalOperations.aggregatedList
    ComputeGlobalOperationsAggregatedListResource,
    newComputeGlobalOperationsAggregatedList,
    ComputeGlobalOperationsAggregatedList,

    -- ** compute.globalOperations.delete
    ComputeGlobalOperationsDeleteResource,
    newComputeGlobalOperationsDelete,
    ComputeGlobalOperationsDelete,

    -- ** compute.globalOperations.get
    ComputeGlobalOperationsGetResource,
    newComputeGlobalOperationsGet,
    ComputeGlobalOperationsGet,

    -- ** compute.globalOperations.list
    ComputeGlobalOperationsListResource,
    newComputeGlobalOperationsList,
    ComputeGlobalOperationsList,

    -- ** compute.globalOperations.wait
    ComputeGlobalOperationsWaitResource,
    newComputeGlobalOperationsWait,
    ComputeGlobalOperationsWait,

    -- ** compute.globalOrganizationOperations.delete
    ComputeGlobalOrganizationOperationsDeleteResource,
    newComputeGlobalOrganizationOperationsDelete,
    ComputeGlobalOrganizationOperationsDelete,

    -- ** compute.globalOrganizationOperations.get
    ComputeGlobalOrganizationOperationsGetResource,
    newComputeGlobalOrganizationOperationsGet,
    ComputeGlobalOrganizationOperationsGet,

    -- ** compute.globalOrganizationOperations.list
    ComputeGlobalOrganizationOperationsListResource,
    newComputeGlobalOrganizationOperationsList,
    ComputeGlobalOrganizationOperationsList,

    -- ** compute.globalPublicDelegatedPrefixes.delete
    ComputeGlobalPublicDelegatedPrefixesDeleteResource,
    newComputeGlobalPublicDelegatedPrefixesDelete,
    ComputeGlobalPublicDelegatedPrefixesDelete,

    -- ** compute.globalPublicDelegatedPrefixes.get
    ComputeGlobalPublicDelegatedPrefixesGetResource,
    newComputeGlobalPublicDelegatedPrefixesGet,
    ComputeGlobalPublicDelegatedPrefixesGet,

    -- ** compute.globalPublicDelegatedPrefixes.insert
    ComputeGlobalPublicDelegatedPrefixesInsertResource,
    newComputeGlobalPublicDelegatedPrefixesInsert,
    ComputeGlobalPublicDelegatedPrefixesInsert,

    -- ** compute.globalPublicDelegatedPrefixes.list
    ComputeGlobalPublicDelegatedPrefixesListResource,
    newComputeGlobalPublicDelegatedPrefixesList,
    ComputeGlobalPublicDelegatedPrefixesList,

    -- ** compute.globalPublicDelegatedPrefixes.patch
    ComputeGlobalPublicDelegatedPrefixesPatchResource,
    newComputeGlobalPublicDelegatedPrefixesPatch,
    ComputeGlobalPublicDelegatedPrefixesPatch,

    -- ** compute.healthChecks.aggregatedList
    ComputeHealthChecksAggregatedListResource,
    newComputeHealthChecksAggregatedList,
    ComputeHealthChecksAggregatedList,

    -- ** compute.healthChecks.delete
    ComputeHealthChecksDeleteResource,
    newComputeHealthChecksDelete,
    ComputeHealthChecksDelete,

    -- ** compute.healthChecks.get
    ComputeHealthChecksGetResource,
    newComputeHealthChecksGet,
    ComputeHealthChecksGet,

    -- ** compute.healthChecks.insert
    ComputeHealthChecksInsertResource,
    newComputeHealthChecksInsert,
    ComputeHealthChecksInsert,

    -- ** compute.healthChecks.list
    ComputeHealthChecksListResource,
    newComputeHealthChecksList,
    ComputeHealthChecksList,

    -- ** compute.healthChecks.patch
    ComputeHealthChecksPatchResource,
    newComputeHealthChecksPatch,
    ComputeHealthChecksPatch,

    -- ** compute.healthChecks.update
    ComputeHealthChecksUpdateResource,
    newComputeHealthChecksUpdate,
    ComputeHealthChecksUpdate,

    -- ** compute.httpHealthChecks.delete
    ComputeHttpHealthChecksDeleteResource,
    newComputeHttpHealthChecksDelete,
    ComputeHttpHealthChecksDelete,

    -- ** compute.httpHealthChecks.get
    ComputeHttpHealthChecksGetResource,
    newComputeHttpHealthChecksGet,
    ComputeHttpHealthChecksGet,

    -- ** compute.httpHealthChecks.insert
    ComputeHttpHealthChecksInsertResource,
    newComputeHttpHealthChecksInsert,
    ComputeHttpHealthChecksInsert,

    -- ** compute.httpHealthChecks.list
    ComputeHttpHealthChecksListResource,
    newComputeHttpHealthChecksList,
    ComputeHttpHealthChecksList,

    -- ** compute.httpHealthChecks.patch
    ComputeHttpHealthChecksPatchResource,
    newComputeHttpHealthChecksPatch,
    ComputeHttpHealthChecksPatch,

    -- ** compute.httpHealthChecks.update
    ComputeHttpHealthChecksUpdateResource,
    newComputeHttpHealthChecksUpdate,
    ComputeHttpHealthChecksUpdate,

    -- ** compute.httpsHealthChecks.delete
    ComputeHttpsHealthChecksDeleteResource,
    newComputeHttpsHealthChecksDelete,
    ComputeHttpsHealthChecksDelete,

    -- ** compute.httpsHealthChecks.get
    ComputeHttpsHealthChecksGetResource,
    newComputeHttpsHealthChecksGet,
    ComputeHttpsHealthChecksGet,

    -- ** compute.httpsHealthChecks.insert
    ComputeHttpsHealthChecksInsertResource,
    newComputeHttpsHealthChecksInsert,
    ComputeHttpsHealthChecksInsert,

    -- ** compute.httpsHealthChecks.list
    ComputeHttpsHealthChecksListResource,
    newComputeHttpsHealthChecksList,
    ComputeHttpsHealthChecksList,

    -- ** compute.httpsHealthChecks.patch
    ComputeHttpsHealthChecksPatchResource,
    newComputeHttpsHealthChecksPatch,
    ComputeHttpsHealthChecksPatch,

    -- ** compute.httpsHealthChecks.update
    ComputeHttpsHealthChecksUpdateResource,
    newComputeHttpsHealthChecksUpdate,
    ComputeHttpsHealthChecksUpdate,

    -- ** compute.imageFamilyViews.get
    ComputeImageFamilyViewsGetResource,
    newComputeImageFamilyViewsGet,
    ComputeImageFamilyViewsGet,

    -- ** compute.images.delete
    ComputeImagesDeleteResource,
    newComputeImagesDelete,
    ComputeImagesDelete,

    -- ** compute.images.deprecate
    ComputeImagesDeprecateResource,
    newComputeImagesDeprecate,
    ComputeImagesDeprecate,

    -- ** compute.images.get
    ComputeImagesGetResource,
    newComputeImagesGet,
    ComputeImagesGet,

    -- ** compute.images.getFromFamily
    ComputeImagesGetFromFamilyResource,
    newComputeImagesGetFromFamily,
    ComputeImagesGetFromFamily,

    -- ** compute.images.getIamPolicy
    ComputeImagesGetIamPolicyResource,
    newComputeImagesGetIamPolicy,
    ComputeImagesGetIamPolicy,

    -- ** compute.images.insert
    ComputeImagesInsertResource,
    newComputeImagesInsert,
    ComputeImagesInsert,

    -- ** compute.images.list
    ComputeImagesListResource,
    newComputeImagesList,
    ComputeImagesList,

    -- ** compute.images.patch
    ComputeImagesPatchResource,
    newComputeImagesPatch,
    ComputeImagesPatch,

    -- ** compute.images.setIamPolicy
    ComputeImagesSetIamPolicyResource,
    newComputeImagesSetIamPolicy,
    ComputeImagesSetIamPolicy,

    -- ** compute.images.setLabels
    ComputeImagesSetLabelsResource,
    newComputeImagesSetLabels,
    ComputeImagesSetLabels,

    -- ** compute.images.testIamPermissions
    ComputeImagesTestIamPermissionsResource,
    newComputeImagesTestIamPermissions,
    ComputeImagesTestIamPermissions,

    -- ** compute.instanceGroupManagers.abandonInstances
    ComputeInstanceGroupManagersAbandonInstancesResource,
    newComputeInstanceGroupManagersAbandonInstances,
    ComputeInstanceGroupManagersAbandonInstances,

    -- ** compute.instanceGroupManagers.aggregatedList
    ComputeInstanceGroupManagersAggregatedListResource,
    newComputeInstanceGroupManagersAggregatedList,
    ComputeInstanceGroupManagersAggregatedList,

    -- ** compute.instanceGroupManagers.applyUpdatesToInstances
    ComputeInstanceGroupManagersApplyUpdatesToInstancesResource,
    newComputeInstanceGroupManagersApplyUpdatesToInstances,
    ComputeInstanceGroupManagersApplyUpdatesToInstances,

    -- ** compute.instanceGroupManagers.createInstances
    ComputeInstanceGroupManagersCreateInstancesResource,
    newComputeInstanceGroupManagersCreateInstances,
    ComputeInstanceGroupManagersCreateInstances,

    -- ** compute.instanceGroupManagers.delete
    ComputeInstanceGroupManagersDeleteResource,
    newComputeInstanceGroupManagersDelete,
    ComputeInstanceGroupManagersDelete,

    -- ** compute.instanceGroupManagers.deleteInstances
    ComputeInstanceGroupManagersDeleteInstancesResource,
    newComputeInstanceGroupManagersDeleteInstances,
    ComputeInstanceGroupManagersDeleteInstances,

    -- ** compute.instanceGroupManagers.deletePerInstanceConfigs
    ComputeInstanceGroupManagersDeletePerInstanceConfigsResource,
    newComputeInstanceGroupManagersDeletePerInstanceConfigs,
    ComputeInstanceGroupManagersDeletePerInstanceConfigs,

    -- ** compute.instanceGroupManagers.get
    ComputeInstanceGroupManagersGetResource,
    newComputeInstanceGroupManagersGet,
    ComputeInstanceGroupManagersGet,

    -- ** compute.instanceGroupManagers.insert
    ComputeInstanceGroupManagersInsertResource,
    newComputeInstanceGroupManagersInsert,
    ComputeInstanceGroupManagersInsert,

    -- ** compute.instanceGroupManagers.list
    ComputeInstanceGroupManagersListResource,
    newComputeInstanceGroupManagersList,
    ComputeInstanceGroupManagersList,

    -- ** compute.instanceGroupManagers.listErrors
    ComputeInstanceGroupManagersListErrorsResource,
    newComputeInstanceGroupManagersListErrors,
    ComputeInstanceGroupManagersListErrors,

    -- ** compute.instanceGroupManagers.listManagedInstances
    ComputeInstanceGroupManagersListManagedInstancesResource,
    newComputeInstanceGroupManagersListManagedInstances,
    ComputeInstanceGroupManagersListManagedInstances,

    -- ** compute.instanceGroupManagers.listPerInstanceConfigs
    ComputeInstanceGroupManagersListPerInstanceConfigsResource,
    newComputeInstanceGroupManagersListPerInstanceConfigs,
    ComputeInstanceGroupManagersListPerInstanceConfigs,

    -- ** compute.instanceGroupManagers.patch
    ComputeInstanceGroupManagersPatchResource,
    newComputeInstanceGroupManagersPatch,
    ComputeInstanceGroupManagersPatch,

    -- ** compute.instanceGroupManagers.patchPerInstanceConfigs
    ComputeInstanceGroupManagersPatchPerInstanceConfigsResource,
    newComputeInstanceGroupManagersPatchPerInstanceConfigs,
    ComputeInstanceGroupManagersPatchPerInstanceConfigs,

    -- ** compute.instanceGroupManagers.recreateInstances
    ComputeInstanceGroupManagersRecreateInstancesResource,
    newComputeInstanceGroupManagersRecreateInstances,
    ComputeInstanceGroupManagersRecreateInstances,

    -- ** compute.instanceGroupManagers.resize
    ComputeInstanceGroupManagersResizeResource,
    newComputeInstanceGroupManagersResize,
    ComputeInstanceGroupManagersResize,

    -- ** compute.instanceGroupManagers.setInstanceTemplate
    ComputeInstanceGroupManagersSetInstanceTemplateResource,
    newComputeInstanceGroupManagersSetInstanceTemplate,
    ComputeInstanceGroupManagersSetInstanceTemplate,

    -- ** compute.instanceGroupManagers.setTargetPools
    ComputeInstanceGroupManagersSetTargetPoolsResource,
    newComputeInstanceGroupManagersSetTargetPools,
    ComputeInstanceGroupManagersSetTargetPools,

    -- ** compute.instanceGroupManagers.updatePerInstanceConfigs
    ComputeInstanceGroupManagersUpdatePerInstanceConfigsResource,
    newComputeInstanceGroupManagersUpdatePerInstanceConfigs,
    ComputeInstanceGroupManagersUpdatePerInstanceConfigs,

    -- ** compute.instanceGroups.addInstances
    ComputeInstanceGroupsAddInstancesResource,
    newComputeInstanceGroupsAddInstances,
    ComputeInstanceGroupsAddInstances,

    -- ** compute.instanceGroups.aggregatedList
    ComputeInstanceGroupsAggregatedListResource,
    newComputeInstanceGroupsAggregatedList,
    ComputeInstanceGroupsAggregatedList,

    -- ** compute.instanceGroups.delete
    ComputeInstanceGroupsDeleteResource,
    newComputeInstanceGroupsDelete,
    ComputeInstanceGroupsDelete,

    -- ** compute.instanceGroups.get
    ComputeInstanceGroupsGetResource,
    newComputeInstanceGroupsGet,
    ComputeInstanceGroupsGet,

    -- ** compute.instanceGroups.insert
    ComputeInstanceGroupsInsertResource,
    newComputeInstanceGroupsInsert,
    ComputeInstanceGroupsInsert,

    -- ** compute.instanceGroups.list
    ComputeInstanceGroupsListResource,
    newComputeInstanceGroupsList,
    ComputeInstanceGroupsList,

    -- ** compute.instanceGroups.listInstances
    ComputeInstanceGroupsListInstancesResource,
    newComputeInstanceGroupsListInstances,
    ComputeInstanceGroupsListInstances,

    -- ** compute.instanceGroups.removeInstances
    ComputeInstanceGroupsRemoveInstancesResource,
    newComputeInstanceGroupsRemoveInstances,
    ComputeInstanceGroupsRemoveInstances,

    -- ** compute.instanceGroups.setNamedPorts
    ComputeInstanceGroupsSetNamedPortsResource,
    newComputeInstanceGroupsSetNamedPorts,
    ComputeInstanceGroupsSetNamedPorts,

    -- ** compute.instanceTemplates.delete
    ComputeInstanceTemplatesDeleteResource,
    newComputeInstanceTemplatesDelete,
    ComputeInstanceTemplatesDelete,

    -- ** compute.instanceTemplates.get
    ComputeInstanceTemplatesGetResource,
    newComputeInstanceTemplatesGet,
    ComputeInstanceTemplatesGet,

    -- ** compute.instanceTemplates.getIamPolicy
    ComputeInstanceTemplatesGetIamPolicyResource,
    newComputeInstanceTemplatesGetIamPolicy,
    ComputeInstanceTemplatesGetIamPolicy,

    -- ** compute.instanceTemplates.insert
    ComputeInstanceTemplatesInsertResource,
    newComputeInstanceTemplatesInsert,
    ComputeInstanceTemplatesInsert,

    -- ** compute.instanceTemplates.list
    ComputeInstanceTemplatesListResource,
    newComputeInstanceTemplatesList,
    ComputeInstanceTemplatesList,

    -- ** compute.instanceTemplates.setIamPolicy
    ComputeInstanceTemplatesSetIamPolicyResource,
    newComputeInstanceTemplatesSetIamPolicy,
    ComputeInstanceTemplatesSetIamPolicy,

    -- ** compute.instanceTemplates.testIamPermissions
    ComputeInstanceTemplatesTestIamPermissionsResource,
    newComputeInstanceTemplatesTestIamPermissions,
    ComputeInstanceTemplatesTestIamPermissions,

    -- ** compute.instances.addAccessConfig
    ComputeInstancesAddAccessConfigResource,
    newComputeInstancesAddAccessConfig,
    ComputeInstancesAddAccessConfig,

    -- ** compute.instances.addResourcePolicies
    ComputeInstancesAddResourcePoliciesResource,
    newComputeInstancesAddResourcePolicies,
    ComputeInstancesAddResourcePolicies,

    -- ** compute.instances.aggregatedList
    ComputeInstancesAggregatedListResource,
    newComputeInstancesAggregatedList,
    ComputeInstancesAggregatedList,

    -- ** compute.instances.attachDisk
    ComputeInstancesAttachDiskResource,
    newComputeInstancesAttachDisk,
    ComputeInstancesAttachDisk,

    -- ** compute.instances.bulkInsert
    ComputeInstancesBulkInsertResource,
    newComputeInstancesBulkInsert,
    ComputeInstancesBulkInsert,

    -- ** compute.instances.delete
    ComputeInstancesDeleteResource,
    newComputeInstancesDelete,
    ComputeInstancesDelete,

    -- ** compute.instances.deleteAccessConfig
    ComputeInstancesDeleteAccessConfigResource,
    newComputeInstancesDeleteAccessConfig,
    ComputeInstancesDeleteAccessConfig,

    -- ** compute.instances.detachDisk
    ComputeInstancesDetachDiskResource,
    newComputeInstancesDetachDisk,
    ComputeInstancesDetachDisk,

    -- ** compute.instances.get
    ComputeInstancesGetResource,
    newComputeInstancesGet,
    ComputeInstancesGet,

    -- ** compute.instances.getEffectiveFirewalls
    ComputeInstancesGetEffectiveFirewallsResource,
    newComputeInstancesGetEffectiveFirewalls,
    ComputeInstancesGetEffectiveFirewalls,

    -- ** compute.instances.getGuestAttributes
    ComputeInstancesGetGuestAttributesResource,
    newComputeInstancesGetGuestAttributes,
    ComputeInstancesGetGuestAttributes,

    -- ** compute.instances.getIamPolicy
    ComputeInstancesGetIamPolicyResource,
    newComputeInstancesGetIamPolicy,
    ComputeInstancesGetIamPolicy,

    -- ** compute.instances.getScreenshot
    ComputeInstancesGetScreenshotResource,
    newComputeInstancesGetScreenshot,
    ComputeInstancesGetScreenshot,

    -- ** compute.instances.getSerialPortOutput
    ComputeInstancesGetSerialPortOutputResource,
    newComputeInstancesGetSerialPortOutput,
    ComputeInstancesGetSerialPortOutput,

    -- ** compute.instances.getShieldedInstanceIdentity
    ComputeInstancesGetShieldedInstanceIdentityResource,
    newComputeInstancesGetShieldedInstanceIdentity,
    ComputeInstancesGetShieldedInstanceIdentity,

    -- ** compute.instances.insert
    ComputeInstancesInsertResource,
    newComputeInstancesInsert,
    ComputeInstancesInsert,

    -- ** compute.instances.list
    ComputeInstancesListResource,
    newComputeInstancesList,
    ComputeInstancesList,

    -- ** compute.instances.listReferrers
    ComputeInstancesListReferrersResource,
    newComputeInstancesListReferrers,
    ComputeInstancesListReferrers,

    -- ** compute.instances.removeResourcePolicies
    ComputeInstancesRemoveResourcePoliciesResource,
    newComputeInstancesRemoveResourcePolicies,
    ComputeInstancesRemoveResourcePolicies,

    -- ** compute.instances.reset
    ComputeInstancesResetResource,
    newComputeInstancesReset,
    ComputeInstancesReset,

    -- ** compute.instances.resume
    ComputeInstancesResumeResource,
    newComputeInstancesResume,
    ComputeInstancesResume,

    -- ** compute.instances.sendDiagnosticInterrupt
    ComputeInstancesSendDiagnosticInterruptResource,
    newComputeInstancesSendDiagnosticInterrupt,
    ComputeInstancesSendDiagnosticInterrupt,

    -- ** compute.instances.setDeletionProtection
    ComputeInstancesSetDeletionProtectionResource,
    newComputeInstancesSetDeletionProtection,
    ComputeInstancesSetDeletionProtection,

    -- ** compute.instances.setDiskAutoDelete
    ComputeInstancesSetDiskAutoDeleteResource,
    newComputeInstancesSetDiskAutoDelete,
    ComputeInstancesSetDiskAutoDelete,

    -- ** compute.instances.setIamPolicy
    ComputeInstancesSetIamPolicyResource,
    newComputeInstancesSetIamPolicy,
    ComputeInstancesSetIamPolicy,

    -- ** compute.instances.setLabels
    ComputeInstancesSetLabelsResource,
    newComputeInstancesSetLabels,
    ComputeInstancesSetLabels,

    -- ** compute.instances.setMachineResources
    ComputeInstancesSetMachineResourcesResource,
    newComputeInstancesSetMachineResources,
    ComputeInstancesSetMachineResources,

    -- ** compute.instances.setMachineType
    ComputeInstancesSetMachineTypeResource,
    newComputeInstancesSetMachineType,
    ComputeInstancesSetMachineType,

    -- ** compute.instances.setMetadata
    ComputeInstancesSetMetadataResource,
    newComputeInstancesSetMetadata,
    ComputeInstancesSetMetadata,

    -- ** compute.instances.setMinCpuPlatform
    ComputeInstancesSetMinCpuPlatformResource,
    newComputeInstancesSetMinCpuPlatform,
    ComputeInstancesSetMinCpuPlatform,

    -- ** compute.instances.setScheduling
    ComputeInstancesSetSchedulingResource,
    newComputeInstancesSetScheduling,
    ComputeInstancesSetScheduling,

    -- ** compute.instances.setServiceAccount
    ComputeInstancesSetServiceAccountResource,
    newComputeInstancesSetServiceAccount,
    ComputeInstancesSetServiceAccount,

    -- ** compute.instances.setShieldedInstanceIntegrityPolicy
    ComputeInstancesSetShieldedInstanceIntegrityPolicyResource,
    newComputeInstancesSetShieldedInstanceIntegrityPolicy,
    ComputeInstancesSetShieldedInstanceIntegrityPolicy,

    -- ** compute.instances.setTags
    ComputeInstancesSetTagsResource,
    newComputeInstancesSetTags,
    ComputeInstancesSetTags,

    -- ** compute.instances.simulateMaintenanceEvent
    ComputeInstancesSimulateMaintenanceEventResource,
    newComputeInstancesSimulateMaintenanceEvent,
    ComputeInstancesSimulateMaintenanceEvent,

    -- ** compute.instances.start
    ComputeInstancesStartResource,
    newComputeInstancesStart,
    ComputeInstancesStart,

    -- ** compute.instances.startWithEncryptionKey
    ComputeInstancesStartWithEncryptionKeyResource,
    newComputeInstancesStartWithEncryptionKey,
    ComputeInstancesStartWithEncryptionKey,

    -- ** compute.instances.stop
    ComputeInstancesStopResource,
    newComputeInstancesStop,
    ComputeInstancesStop,

    -- ** compute.instances.suspend
    ComputeInstancesSuspendResource,
    newComputeInstancesSuspend,
    ComputeInstancesSuspend,

    -- ** compute.instances.testIamPermissions
    ComputeInstancesTestIamPermissionsResource,
    newComputeInstancesTestIamPermissions,
    ComputeInstancesTestIamPermissions,

    -- ** compute.instances.update
    ComputeInstancesUpdateResource,
    newComputeInstancesUpdate,
    ComputeInstancesUpdate,

    -- ** compute.instances.updateAccessConfig
    ComputeInstancesUpdateAccessConfigResource,
    newComputeInstancesUpdateAccessConfig,
    ComputeInstancesUpdateAccessConfig,

    -- ** compute.instances.updateDisplayDevice
    ComputeInstancesUpdateDisplayDeviceResource,
    newComputeInstancesUpdateDisplayDevice,
    ComputeInstancesUpdateDisplayDevice,

    -- ** compute.instances.updateNetworkInterface
    ComputeInstancesUpdateNetworkInterfaceResource,
    newComputeInstancesUpdateNetworkInterface,
    ComputeInstancesUpdateNetworkInterface,

    -- ** compute.instances.updateShieldedInstanceConfig
    ComputeInstancesUpdateShieldedInstanceConfigResource,
    newComputeInstancesUpdateShieldedInstanceConfig,
    ComputeInstancesUpdateShieldedInstanceConfig,

    -- ** compute.interconnectAttachments.aggregatedList
    ComputeInterconnectAttachmentsAggregatedListResource,
    newComputeInterconnectAttachmentsAggregatedList,
    ComputeInterconnectAttachmentsAggregatedList,

    -- ** compute.interconnectAttachments.delete
    ComputeInterconnectAttachmentsDeleteResource,
    newComputeInterconnectAttachmentsDelete,
    ComputeInterconnectAttachmentsDelete,

    -- ** compute.interconnectAttachments.get
    ComputeInterconnectAttachmentsGetResource,
    newComputeInterconnectAttachmentsGet,
    ComputeInterconnectAttachmentsGet,

    -- ** compute.interconnectAttachments.insert
    ComputeInterconnectAttachmentsInsertResource,
    newComputeInterconnectAttachmentsInsert,
    ComputeInterconnectAttachmentsInsert,

    -- ** compute.interconnectAttachments.list
    ComputeInterconnectAttachmentsListResource,
    newComputeInterconnectAttachmentsList,
    ComputeInterconnectAttachmentsList,

    -- ** compute.interconnectAttachments.patch
    ComputeInterconnectAttachmentsPatchResource,
    newComputeInterconnectAttachmentsPatch,
    ComputeInterconnectAttachmentsPatch,

    -- ** compute.interconnectLocations.get
    ComputeInterconnectLocationsGetResource,
    newComputeInterconnectLocationsGet,
    ComputeInterconnectLocationsGet,

    -- ** compute.interconnectLocations.list
    ComputeInterconnectLocationsListResource,
    newComputeInterconnectLocationsList,
    ComputeInterconnectLocationsList,

    -- ** compute.interconnects.delete
    ComputeInterconnectsDeleteResource,
    newComputeInterconnectsDelete,
    ComputeInterconnectsDelete,

    -- ** compute.interconnects.get
    ComputeInterconnectsGetResource,
    newComputeInterconnectsGet,
    ComputeInterconnectsGet,

    -- ** compute.interconnects.getDiagnostics
    ComputeInterconnectsGetDiagnosticsResource,
    newComputeInterconnectsGetDiagnostics,
    ComputeInterconnectsGetDiagnostics,

    -- ** compute.interconnects.insert
    ComputeInterconnectsInsertResource,
    newComputeInterconnectsInsert,
    ComputeInterconnectsInsert,

    -- ** compute.interconnects.list
    ComputeInterconnectsListResource,
    newComputeInterconnectsList,
    ComputeInterconnectsList,

    -- ** compute.interconnects.patch
    ComputeInterconnectsPatchResource,
    newComputeInterconnectsPatch,
    ComputeInterconnectsPatch,

    -- ** compute.licenseCodes.get
    ComputeLicenseCodesGetResource,
    newComputeLicenseCodesGet,
    ComputeLicenseCodesGet,

    -- ** compute.licenseCodes.testIamPermissions
    ComputeLicenseCodesTestIamPermissionsResource,
    newComputeLicenseCodesTestIamPermissions,
    ComputeLicenseCodesTestIamPermissions,

    -- ** compute.licenses.delete
    ComputeLicensesDeleteResource,
    newComputeLicensesDelete,
    ComputeLicensesDelete,

    -- ** compute.licenses.get
    ComputeLicensesGetResource,
    newComputeLicensesGet,
    ComputeLicensesGet,

    -- ** compute.licenses.getIamPolicy
    ComputeLicensesGetIamPolicyResource,
    newComputeLicensesGetIamPolicy,
    ComputeLicensesGetIamPolicy,

    -- ** compute.licenses.insert
    ComputeLicensesInsertResource,
    newComputeLicensesInsert,
    ComputeLicensesInsert,

    -- ** compute.licenses.list
    ComputeLicensesListResource,
    newComputeLicensesList,
    ComputeLicensesList,

    -- ** compute.licenses.setIamPolicy
    ComputeLicensesSetIamPolicyResource,
    newComputeLicensesSetIamPolicy,
    ComputeLicensesSetIamPolicy,

    -- ** compute.licenses.testIamPermissions
    ComputeLicensesTestIamPermissionsResource,
    newComputeLicensesTestIamPermissions,
    ComputeLicensesTestIamPermissions,

    -- ** compute.machineImages.delete
    ComputeMachineImagesDeleteResource,
    newComputeMachineImagesDelete,
    ComputeMachineImagesDelete,

    -- ** compute.machineImages.get
    ComputeMachineImagesGetResource,
    newComputeMachineImagesGet,
    ComputeMachineImagesGet,

    -- ** compute.machineImages.getIamPolicy
    ComputeMachineImagesGetIamPolicyResource,
    newComputeMachineImagesGetIamPolicy,
    ComputeMachineImagesGetIamPolicy,

    -- ** compute.machineImages.insert
    ComputeMachineImagesInsertResource,
    newComputeMachineImagesInsert,
    ComputeMachineImagesInsert,

    -- ** compute.machineImages.list
    ComputeMachineImagesListResource,
    newComputeMachineImagesList,
    ComputeMachineImagesList,

    -- ** compute.machineImages.setIamPolicy
    ComputeMachineImagesSetIamPolicyResource,
    newComputeMachineImagesSetIamPolicy,
    ComputeMachineImagesSetIamPolicy,

    -- ** compute.machineImages.testIamPermissions
    ComputeMachineImagesTestIamPermissionsResource,
    newComputeMachineImagesTestIamPermissions,
    ComputeMachineImagesTestIamPermissions,

    -- ** compute.machineTypes.aggregatedList
    ComputeMachineTypesAggregatedListResource,
    newComputeMachineTypesAggregatedList,
    ComputeMachineTypesAggregatedList,

    -- ** compute.machineTypes.get
    ComputeMachineTypesGetResource,
    newComputeMachineTypesGet,
    ComputeMachineTypesGet,

    -- ** compute.machineTypes.list
    ComputeMachineTypesListResource,
    newComputeMachineTypesList,
    ComputeMachineTypesList,

    -- ** compute.networkEndpointGroups.aggregatedList
    ComputeNetworkEndpointGroupsAggregatedListResource,
    newComputeNetworkEndpointGroupsAggregatedList,
    ComputeNetworkEndpointGroupsAggregatedList,

    -- ** compute.networkEndpointGroups.attachNetworkEndpoints
    ComputeNetworkEndpointGroupsAttachNetworkEndpointsResource,
    newComputeNetworkEndpointGroupsAttachNetworkEndpoints,
    ComputeNetworkEndpointGroupsAttachNetworkEndpoints,

    -- ** compute.networkEndpointGroups.delete
    ComputeNetworkEndpointGroupsDeleteResource,
    newComputeNetworkEndpointGroupsDelete,
    ComputeNetworkEndpointGroupsDelete,

    -- ** compute.networkEndpointGroups.detachNetworkEndpoints
    ComputeNetworkEndpointGroupsDetachNetworkEndpointsResource,
    newComputeNetworkEndpointGroupsDetachNetworkEndpoints,
    ComputeNetworkEndpointGroupsDetachNetworkEndpoints,

    -- ** compute.networkEndpointGroups.get
    ComputeNetworkEndpointGroupsGetResource,
    newComputeNetworkEndpointGroupsGet,
    ComputeNetworkEndpointGroupsGet,

    -- ** compute.networkEndpointGroups.insert
    ComputeNetworkEndpointGroupsInsertResource,
    newComputeNetworkEndpointGroupsInsert,
    ComputeNetworkEndpointGroupsInsert,

    -- ** compute.networkEndpointGroups.list
    ComputeNetworkEndpointGroupsListResource,
    newComputeNetworkEndpointGroupsList,
    ComputeNetworkEndpointGroupsList,

    -- ** compute.networkEndpointGroups.listNetworkEndpoints
    ComputeNetworkEndpointGroupsListNetworkEndpointsResource,
    newComputeNetworkEndpointGroupsListNetworkEndpoints,
    ComputeNetworkEndpointGroupsListNetworkEndpoints,

    -- ** compute.networkEndpointGroups.testIamPermissions
    ComputeNetworkEndpointGroupsTestIamPermissionsResource,
    newComputeNetworkEndpointGroupsTestIamPermissions,
    ComputeNetworkEndpointGroupsTestIamPermissions,

    -- ** compute.networkFirewallPolicies.addAssociation
    ComputeNetworkFirewallPoliciesAddAssociationResource,
    newComputeNetworkFirewallPoliciesAddAssociation,
    ComputeNetworkFirewallPoliciesAddAssociation,

    -- ** compute.networkFirewallPolicies.addRule
    ComputeNetworkFirewallPoliciesAddRuleResource,
    newComputeNetworkFirewallPoliciesAddRule,
    ComputeNetworkFirewallPoliciesAddRule,

    -- ** compute.networkFirewallPolicies.cloneRules
    ComputeNetworkFirewallPoliciesCloneRulesResource,
    newComputeNetworkFirewallPoliciesCloneRules,
    ComputeNetworkFirewallPoliciesCloneRules,

    -- ** compute.networkFirewallPolicies.delete
    ComputeNetworkFirewallPoliciesDeleteResource,
    newComputeNetworkFirewallPoliciesDelete,
    ComputeNetworkFirewallPoliciesDelete,

    -- ** compute.networkFirewallPolicies.get
    ComputeNetworkFirewallPoliciesGetResource,
    newComputeNetworkFirewallPoliciesGet,
    ComputeNetworkFirewallPoliciesGet,

    -- ** compute.networkFirewallPolicies.getAssociation
    ComputeNetworkFirewallPoliciesGetAssociationResource,
    newComputeNetworkFirewallPoliciesGetAssociation,
    ComputeNetworkFirewallPoliciesGetAssociation,

    -- ** compute.networkFirewallPolicies.getIamPolicy
    ComputeNetworkFirewallPoliciesGetIamPolicyResource,
    newComputeNetworkFirewallPoliciesGetIamPolicy,
    ComputeNetworkFirewallPoliciesGetIamPolicy,

    -- ** compute.networkFirewallPolicies.getRule
    ComputeNetworkFirewallPoliciesGetRuleResource,
    newComputeNetworkFirewallPoliciesGetRule,
    ComputeNetworkFirewallPoliciesGetRule,

    -- ** compute.networkFirewallPolicies.insert
    ComputeNetworkFirewallPoliciesInsertResource,
    newComputeNetworkFirewallPoliciesInsert,
    ComputeNetworkFirewallPoliciesInsert,

    -- ** compute.networkFirewallPolicies.list
    ComputeNetworkFirewallPoliciesListResource,
    newComputeNetworkFirewallPoliciesList,
    ComputeNetworkFirewallPoliciesList,

    -- ** compute.networkFirewallPolicies.patch
    ComputeNetworkFirewallPoliciesPatchResource,
    newComputeNetworkFirewallPoliciesPatch,
    ComputeNetworkFirewallPoliciesPatch,

    -- ** compute.networkFirewallPolicies.patchRule
    ComputeNetworkFirewallPoliciesPatchRuleResource,
    newComputeNetworkFirewallPoliciesPatchRule,
    ComputeNetworkFirewallPoliciesPatchRule,

    -- ** compute.networkFirewallPolicies.removeAssociation
    ComputeNetworkFirewallPoliciesRemoveAssociationResource,
    newComputeNetworkFirewallPoliciesRemoveAssociation,
    ComputeNetworkFirewallPoliciesRemoveAssociation,

    -- ** compute.networkFirewallPolicies.removeRule
    ComputeNetworkFirewallPoliciesRemoveRuleResource,
    newComputeNetworkFirewallPoliciesRemoveRule,
    ComputeNetworkFirewallPoliciesRemoveRule,

    -- ** compute.networkFirewallPolicies.setIamPolicy
    ComputeNetworkFirewallPoliciesSetIamPolicyResource,
    newComputeNetworkFirewallPoliciesSetIamPolicy,
    ComputeNetworkFirewallPoliciesSetIamPolicy,

    -- ** compute.networkFirewallPolicies.testIamPermissions
    ComputeNetworkFirewallPoliciesTestIamPermissionsResource,
    newComputeNetworkFirewallPoliciesTestIamPermissions,
    ComputeNetworkFirewallPoliciesTestIamPermissions,

    -- ** compute.networks.addPeering
    ComputeNetworksAddPeeringResource,
    newComputeNetworksAddPeering,
    ComputeNetworksAddPeering,

    -- ** compute.networks.delete
    ComputeNetworksDeleteResource,
    newComputeNetworksDelete,
    ComputeNetworksDelete,

    -- ** compute.networks.get
    ComputeNetworksGetResource,
    newComputeNetworksGet,
    ComputeNetworksGet,

    -- ** compute.networks.getEffectiveFirewalls
    ComputeNetworksGetEffectiveFirewallsResource,
    newComputeNetworksGetEffectiveFirewalls,
    ComputeNetworksGetEffectiveFirewalls,

    -- ** compute.networks.insert
    ComputeNetworksInsertResource,
    newComputeNetworksInsert,
    ComputeNetworksInsert,

    -- ** compute.networks.list
    ComputeNetworksListResource,
    newComputeNetworksList,
    ComputeNetworksList,

    -- ** compute.networks.listPeeringRoutes
    ComputeNetworksListPeeringRoutesResource,
    newComputeNetworksListPeeringRoutes,
    ComputeNetworksListPeeringRoutes,

    -- ** compute.networks.patch
    ComputeNetworksPatchResource,
    newComputeNetworksPatch,
    ComputeNetworksPatch,

    -- ** compute.networks.removePeering
    ComputeNetworksRemovePeeringResource,
    newComputeNetworksRemovePeering,
    ComputeNetworksRemovePeering,

    -- ** compute.networks.switchToCustomMode
    ComputeNetworksSwitchToCustomModeResource,
    newComputeNetworksSwitchToCustomMode,
    ComputeNetworksSwitchToCustomMode,

    -- ** compute.networks.updatePeering
    ComputeNetworksUpdatePeeringResource,
    newComputeNetworksUpdatePeering,
    ComputeNetworksUpdatePeering,

    -- ** compute.nodeGroups.addNodes
    ComputeNodeGroupsAddNodesResource,
    newComputeNodeGroupsAddNodes,
    ComputeNodeGroupsAddNodes,

    -- ** compute.nodeGroups.aggregatedList
    ComputeNodeGroupsAggregatedListResource,
    newComputeNodeGroupsAggregatedList,
    ComputeNodeGroupsAggregatedList,

    -- ** compute.nodeGroups.delete
    ComputeNodeGroupsDeleteResource,
    newComputeNodeGroupsDelete,
    ComputeNodeGroupsDelete,

    -- ** compute.nodeGroups.deleteNodes
    ComputeNodeGroupsDeleteNodesResource,
    newComputeNodeGroupsDeleteNodes,
    ComputeNodeGroupsDeleteNodes,

    -- ** compute.nodeGroups.get
    ComputeNodeGroupsGetResource,
    newComputeNodeGroupsGet,
    ComputeNodeGroupsGet,

    -- ** compute.nodeGroups.getIamPolicy
    ComputeNodeGroupsGetIamPolicyResource,
    newComputeNodeGroupsGetIamPolicy,
    ComputeNodeGroupsGetIamPolicy,

    -- ** compute.nodeGroups.insert
    ComputeNodeGroupsInsertResource,
    newComputeNodeGroupsInsert,
    ComputeNodeGroupsInsert,

    -- ** compute.nodeGroups.list
    ComputeNodeGroupsListResource,
    newComputeNodeGroupsList,
    ComputeNodeGroupsList,

    -- ** compute.nodeGroups.listNodes
    ComputeNodeGroupsListNodesResource,
    newComputeNodeGroupsListNodes,
    ComputeNodeGroupsListNodes,

    -- ** compute.nodeGroups.patch
    ComputeNodeGroupsPatchResource,
    newComputeNodeGroupsPatch,
    ComputeNodeGroupsPatch,

    -- ** compute.nodeGroups.setIamPolicy
    ComputeNodeGroupsSetIamPolicyResource,
    newComputeNodeGroupsSetIamPolicy,
    ComputeNodeGroupsSetIamPolicy,

    -- ** compute.nodeGroups.setNodeTemplate
    ComputeNodeGroupsSetNodeTemplateResource,
    newComputeNodeGroupsSetNodeTemplate,
    ComputeNodeGroupsSetNodeTemplate,

    -- ** compute.nodeGroups.testIamPermissions
    ComputeNodeGroupsTestIamPermissionsResource,
    newComputeNodeGroupsTestIamPermissions,
    ComputeNodeGroupsTestIamPermissions,

    -- ** compute.nodeTemplates.aggregatedList
    ComputeNodeTemplatesAggregatedListResource,
    newComputeNodeTemplatesAggregatedList,
    ComputeNodeTemplatesAggregatedList,

    -- ** compute.nodeTemplates.delete
    ComputeNodeTemplatesDeleteResource,
    newComputeNodeTemplatesDelete,
    ComputeNodeTemplatesDelete,

    -- ** compute.nodeTemplates.get
    ComputeNodeTemplatesGetResource,
    newComputeNodeTemplatesGet,
    ComputeNodeTemplatesGet,

    -- ** compute.nodeTemplates.getIamPolicy
    ComputeNodeTemplatesGetIamPolicyResource,
    newComputeNodeTemplatesGetIamPolicy,
    ComputeNodeTemplatesGetIamPolicy,

    -- ** compute.nodeTemplates.insert
    ComputeNodeTemplatesInsertResource,
    newComputeNodeTemplatesInsert,
    ComputeNodeTemplatesInsert,

    -- ** compute.nodeTemplates.list
    ComputeNodeTemplatesListResource,
    newComputeNodeTemplatesList,
    ComputeNodeTemplatesList,

    -- ** compute.nodeTemplates.setIamPolicy
    ComputeNodeTemplatesSetIamPolicyResource,
    newComputeNodeTemplatesSetIamPolicy,
    ComputeNodeTemplatesSetIamPolicy,

    -- ** compute.nodeTemplates.testIamPermissions
    ComputeNodeTemplatesTestIamPermissionsResource,
    newComputeNodeTemplatesTestIamPermissions,
    ComputeNodeTemplatesTestIamPermissions,

    -- ** compute.nodeTypes.aggregatedList
    ComputeNodeTypesAggregatedListResource,
    newComputeNodeTypesAggregatedList,
    ComputeNodeTypesAggregatedList,

    -- ** compute.nodeTypes.get
    ComputeNodeTypesGetResource,
    newComputeNodeTypesGet,
    ComputeNodeTypesGet,

    -- ** compute.nodeTypes.list
    ComputeNodeTypesListResource,
    newComputeNodeTypesList,
    ComputeNodeTypesList,

    -- ** compute.packetMirrorings.aggregatedList
    ComputePacketMirroringsAggregatedListResource,
    newComputePacketMirroringsAggregatedList,
    ComputePacketMirroringsAggregatedList,

    -- ** compute.packetMirrorings.delete
    ComputePacketMirroringsDeleteResource,
    newComputePacketMirroringsDelete,
    ComputePacketMirroringsDelete,

    -- ** compute.packetMirrorings.get
    ComputePacketMirroringsGetResource,
    newComputePacketMirroringsGet,
    ComputePacketMirroringsGet,

    -- ** compute.packetMirrorings.insert
    ComputePacketMirroringsInsertResource,
    newComputePacketMirroringsInsert,
    ComputePacketMirroringsInsert,

    -- ** compute.packetMirrorings.list
    ComputePacketMirroringsListResource,
    newComputePacketMirroringsList,
    ComputePacketMirroringsList,

    -- ** compute.packetMirrorings.patch
    ComputePacketMirroringsPatchResource,
    newComputePacketMirroringsPatch,
    ComputePacketMirroringsPatch,

    -- ** compute.packetMirrorings.testIamPermissions
    ComputePacketMirroringsTestIamPermissionsResource,
    newComputePacketMirroringsTestIamPermissions,
    ComputePacketMirroringsTestIamPermissions,

    -- ** compute.projects.disableXpnHost
    ComputeProjectsDisableXpnHostResource,
    newComputeProjectsDisableXpnHost,
    ComputeProjectsDisableXpnHost,

    -- ** compute.projects.disableXpnResource
    ComputeProjectsDisableXpnResourceResource,
    newComputeProjectsDisableXpnResource,
    ComputeProjectsDisableXpnResource,

    -- ** compute.projects.enableXpnHost
    ComputeProjectsEnableXpnHostResource,
    newComputeProjectsEnableXpnHost,
    ComputeProjectsEnableXpnHost,

    -- ** compute.projects.enableXpnResource
    ComputeProjectsEnableXpnResourceResource,
    newComputeProjectsEnableXpnResource,
    ComputeProjectsEnableXpnResource,

    -- ** compute.projects.get
    ComputeProjectsGetResource,
    newComputeProjectsGet,
    ComputeProjectsGet,

    -- ** compute.projects.getXpnHost
    ComputeProjectsGetXpnHostResource,
    newComputeProjectsGetXpnHost,
    ComputeProjectsGetXpnHost,

    -- ** compute.projects.getXpnResources
    ComputeProjectsGetXpnResourcesResource,
    newComputeProjectsGetXpnResources,
    ComputeProjectsGetXpnResources,

    -- ** compute.projects.listXpnHosts
    ComputeProjectsListXpnHostsResource,
    newComputeProjectsListXpnHosts,
    ComputeProjectsListXpnHosts,

    -- ** compute.projects.moveDisk
    ComputeProjectsMoveDiskResource,
    newComputeProjectsMoveDisk,
    ComputeProjectsMoveDisk,

    -- ** compute.projects.moveInstance
    ComputeProjectsMoveInstanceResource,
    newComputeProjectsMoveInstance,
    ComputeProjectsMoveInstance,

    -- ** compute.projects.setCommonInstanceMetadata
    ComputeProjectsSetCommonInstanceMetadataResource,
    newComputeProjectsSetCommonInstanceMetadata,
    ComputeProjectsSetCommonInstanceMetadata,

    -- ** compute.projects.setDefaultNetworkTier
    ComputeProjectsSetDefaultNetworkTierResource,
    newComputeProjectsSetDefaultNetworkTier,
    ComputeProjectsSetDefaultNetworkTier,

    -- ** compute.projects.setUsageExportBucket
    ComputeProjectsSetUsageExportBucketResource,
    newComputeProjectsSetUsageExportBucket,
    ComputeProjectsSetUsageExportBucket,

    -- ** compute.publicAdvertisedPrefixes.delete
    ComputePublicAdvertisedPrefixesDeleteResource,
    newComputePublicAdvertisedPrefixesDelete,
    ComputePublicAdvertisedPrefixesDelete,

    -- ** compute.publicAdvertisedPrefixes.get
    ComputePublicAdvertisedPrefixesGetResource,
    newComputePublicAdvertisedPrefixesGet,
    ComputePublicAdvertisedPrefixesGet,

    -- ** compute.publicAdvertisedPrefixes.insert
    ComputePublicAdvertisedPrefixesInsertResource,
    newComputePublicAdvertisedPrefixesInsert,
    ComputePublicAdvertisedPrefixesInsert,

    -- ** compute.publicAdvertisedPrefixes.list
    ComputePublicAdvertisedPrefixesListResource,
    newComputePublicAdvertisedPrefixesList,
    ComputePublicAdvertisedPrefixesList,

    -- ** compute.publicAdvertisedPrefixes.patch
    ComputePublicAdvertisedPrefixesPatchResource,
    newComputePublicAdvertisedPrefixesPatch,
    ComputePublicAdvertisedPrefixesPatch,

    -- ** compute.publicDelegatedPrefixes.aggregatedList
    ComputePublicDelegatedPrefixesAggregatedListResource,
    newComputePublicDelegatedPrefixesAggregatedList,
    ComputePublicDelegatedPrefixesAggregatedList,

    -- ** compute.publicDelegatedPrefixes.delete
    ComputePublicDelegatedPrefixesDeleteResource,
    newComputePublicDelegatedPrefixesDelete,
    ComputePublicDelegatedPrefixesDelete,

    -- ** compute.publicDelegatedPrefixes.get
    ComputePublicDelegatedPrefixesGetResource,
    newComputePublicDelegatedPrefixesGet,
    ComputePublicDelegatedPrefixesGet,

    -- ** compute.publicDelegatedPrefixes.insert
    ComputePublicDelegatedPrefixesInsertResource,
    newComputePublicDelegatedPrefixesInsert,
    ComputePublicDelegatedPrefixesInsert,

    -- ** compute.publicDelegatedPrefixes.list
    ComputePublicDelegatedPrefixesListResource,
    newComputePublicDelegatedPrefixesList,
    ComputePublicDelegatedPrefixesList,

    -- ** compute.publicDelegatedPrefixes.patch
    ComputePublicDelegatedPrefixesPatchResource,
    newComputePublicDelegatedPrefixesPatch,
    ComputePublicDelegatedPrefixesPatch,

    -- ** compute.regionAutoscalers.delete
    ComputeRegionAutoscalersDeleteResource,
    newComputeRegionAutoscalersDelete,
    ComputeRegionAutoscalersDelete,

    -- ** compute.regionAutoscalers.get
    ComputeRegionAutoscalersGetResource,
    newComputeRegionAutoscalersGet,
    ComputeRegionAutoscalersGet,

    -- ** compute.regionAutoscalers.insert
    ComputeRegionAutoscalersInsertResource,
    newComputeRegionAutoscalersInsert,
    ComputeRegionAutoscalersInsert,

    -- ** compute.regionAutoscalers.list
    ComputeRegionAutoscalersListResource,
    newComputeRegionAutoscalersList,
    ComputeRegionAutoscalersList,

    -- ** compute.regionAutoscalers.patch
    ComputeRegionAutoscalersPatchResource,
    newComputeRegionAutoscalersPatch,
    ComputeRegionAutoscalersPatch,

    -- ** compute.regionAutoscalers.update
    ComputeRegionAutoscalersUpdateResource,
    newComputeRegionAutoscalersUpdate,
    ComputeRegionAutoscalersUpdate,

    -- ** compute.regionBackendServices.delete
    ComputeRegionBackendServicesDeleteResource,
    newComputeRegionBackendServicesDelete,
    ComputeRegionBackendServicesDelete,

    -- ** compute.regionBackendServices.get
    ComputeRegionBackendServicesGetResource,
    newComputeRegionBackendServicesGet,
    ComputeRegionBackendServicesGet,

    -- ** compute.regionBackendServices.getHealth
    ComputeRegionBackendServicesGetHealthResource,
    newComputeRegionBackendServicesGetHealth,
    ComputeRegionBackendServicesGetHealth,

    -- ** compute.regionBackendServices.insert
    ComputeRegionBackendServicesInsertResource,
    newComputeRegionBackendServicesInsert,
    ComputeRegionBackendServicesInsert,

    -- ** compute.regionBackendServices.list
    ComputeRegionBackendServicesListResource,
    newComputeRegionBackendServicesList,
    ComputeRegionBackendServicesList,

    -- ** compute.regionBackendServices.patch
    ComputeRegionBackendServicesPatchResource,
    newComputeRegionBackendServicesPatch,
    ComputeRegionBackendServicesPatch,

    -- ** compute.regionBackendServices.update
    ComputeRegionBackendServicesUpdateResource,
    newComputeRegionBackendServicesUpdate,
    ComputeRegionBackendServicesUpdate,

    -- ** compute.regionCommitments.aggregatedList
    ComputeRegionCommitmentsAggregatedListResource,
    newComputeRegionCommitmentsAggregatedList,
    ComputeRegionCommitmentsAggregatedList,

    -- ** compute.regionCommitments.get
    ComputeRegionCommitmentsGetResource,
    newComputeRegionCommitmentsGet,
    ComputeRegionCommitmentsGet,

    -- ** compute.regionCommitments.insert
    ComputeRegionCommitmentsInsertResource,
    newComputeRegionCommitmentsInsert,
    ComputeRegionCommitmentsInsert,

    -- ** compute.regionCommitments.list
    ComputeRegionCommitmentsListResource,
    newComputeRegionCommitmentsList,
    ComputeRegionCommitmentsList,

    -- ** compute.regionCommitments.update
    ComputeRegionCommitmentsUpdateResource,
    newComputeRegionCommitmentsUpdate,
    ComputeRegionCommitmentsUpdate,

    -- ** compute.regionDiskTypes.get
    ComputeRegionDiskTypesGetResource,
    newComputeRegionDiskTypesGet,
    ComputeRegionDiskTypesGet,

    -- ** compute.regionDiskTypes.list
    ComputeRegionDiskTypesListResource,
    newComputeRegionDiskTypesList,
    ComputeRegionDiskTypesList,

    -- ** compute.regionDisks.addResourcePolicies
    ComputeRegionDisksAddResourcePoliciesResource,
    newComputeRegionDisksAddResourcePolicies,
    ComputeRegionDisksAddResourcePolicies,

    -- ** compute.regionDisks.createSnapshot
    ComputeRegionDisksCreateSnapshotResource,
    newComputeRegionDisksCreateSnapshot,
    ComputeRegionDisksCreateSnapshot,

    -- ** compute.regionDisks.delete
    ComputeRegionDisksDeleteResource,
    newComputeRegionDisksDelete,
    ComputeRegionDisksDelete,

    -- ** compute.regionDisks.get
    ComputeRegionDisksGetResource,
    newComputeRegionDisksGet,
    ComputeRegionDisksGet,

    -- ** compute.regionDisks.getIamPolicy
    ComputeRegionDisksGetIamPolicyResource,
    newComputeRegionDisksGetIamPolicy,
    ComputeRegionDisksGetIamPolicy,

    -- ** compute.regionDisks.insert
    ComputeRegionDisksInsertResource,
    newComputeRegionDisksInsert,
    ComputeRegionDisksInsert,

    -- ** compute.regionDisks.list
    ComputeRegionDisksListResource,
    newComputeRegionDisksList,
    ComputeRegionDisksList,

    -- ** compute.regionDisks.removeResourcePolicies
    ComputeRegionDisksRemoveResourcePoliciesResource,
    newComputeRegionDisksRemoveResourcePolicies,
    ComputeRegionDisksRemoveResourcePolicies,

    -- ** compute.regionDisks.resize
    ComputeRegionDisksResizeResource,
    newComputeRegionDisksResize,
    ComputeRegionDisksResize,

    -- ** compute.regionDisks.setIamPolicy
    ComputeRegionDisksSetIamPolicyResource,
    newComputeRegionDisksSetIamPolicy,
    ComputeRegionDisksSetIamPolicy,

    -- ** compute.regionDisks.setLabels
    ComputeRegionDisksSetLabelsResource,
    newComputeRegionDisksSetLabels,
    ComputeRegionDisksSetLabels,

    -- ** compute.regionDisks.testIamPermissions
    ComputeRegionDisksTestIamPermissionsResource,
    newComputeRegionDisksTestIamPermissions,
    ComputeRegionDisksTestIamPermissions,

    -- ** compute.regionHealthCheckServices.delete
    ComputeRegionHealthCheckServicesDeleteResource,
    newComputeRegionHealthCheckServicesDelete,
    ComputeRegionHealthCheckServicesDelete,

    -- ** compute.regionHealthCheckServices.get
    ComputeRegionHealthCheckServicesGetResource,
    newComputeRegionHealthCheckServicesGet,
    ComputeRegionHealthCheckServicesGet,

    -- ** compute.regionHealthCheckServices.insert
    ComputeRegionHealthCheckServicesInsertResource,
    newComputeRegionHealthCheckServicesInsert,
    ComputeRegionHealthCheckServicesInsert,

    -- ** compute.regionHealthCheckServices.list
    ComputeRegionHealthCheckServicesListResource,
    newComputeRegionHealthCheckServicesList,
    ComputeRegionHealthCheckServicesList,

    -- ** compute.regionHealthCheckServices.patch
    ComputeRegionHealthCheckServicesPatchResource,
    newComputeRegionHealthCheckServicesPatch,
    ComputeRegionHealthCheckServicesPatch,

    -- ** compute.regionHealthChecks.delete
    ComputeRegionHealthChecksDeleteResource,
    newComputeRegionHealthChecksDelete,
    ComputeRegionHealthChecksDelete,

    -- ** compute.regionHealthChecks.get
    ComputeRegionHealthChecksGetResource,
    newComputeRegionHealthChecksGet,
    ComputeRegionHealthChecksGet,

    -- ** compute.regionHealthChecks.insert
    ComputeRegionHealthChecksInsertResource,
    newComputeRegionHealthChecksInsert,
    ComputeRegionHealthChecksInsert,

    -- ** compute.regionHealthChecks.list
    ComputeRegionHealthChecksListResource,
    newComputeRegionHealthChecksList,
    ComputeRegionHealthChecksList,

    -- ** compute.regionHealthChecks.patch
    ComputeRegionHealthChecksPatchResource,
    newComputeRegionHealthChecksPatch,
    ComputeRegionHealthChecksPatch,

    -- ** compute.regionHealthChecks.update
    ComputeRegionHealthChecksUpdateResource,
    newComputeRegionHealthChecksUpdate,
    ComputeRegionHealthChecksUpdate,

    -- ** compute.regionInstanceGroupManagers.abandonInstances
    ComputeRegionInstanceGroupManagersAbandonInstancesResource,
    newComputeRegionInstanceGroupManagersAbandonInstances,
    ComputeRegionInstanceGroupManagersAbandonInstances,

    -- ** compute.regionInstanceGroupManagers.applyUpdatesToInstances
    ComputeRegionInstanceGroupManagersApplyUpdatesToInstancesResource,
    newComputeRegionInstanceGroupManagersApplyUpdatesToInstances,
    ComputeRegionInstanceGroupManagersApplyUpdatesToInstances,

    -- ** compute.regionInstanceGroupManagers.createInstances
    ComputeRegionInstanceGroupManagersCreateInstancesResource,
    newComputeRegionInstanceGroupManagersCreateInstances,
    ComputeRegionInstanceGroupManagersCreateInstances,

    -- ** compute.regionInstanceGroupManagers.delete
    ComputeRegionInstanceGroupManagersDeleteResource,
    newComputeRegionInstanceGroupManagersDelete,
    ComputeRegionInstanceGroupManagersDelete,

    -- ** compute.regionInstanceGroupManagers.deleteInstances
    ComputeRegionInstanceGroupManagersDeleteInstancesResource,
    newComputeRegionInstanceGroupManagersDeleteInstances,
    ComputeRegionInstanceGroupManagersDeleteInstances,

    -- ** compute.regionInstanceGroupManagers.deletePerInstanceConfigs
    ComputeRegionInstanceGroupManagersDeletePerInstanceConfigsResource,
    newComputeRegionInstanceGroupManagersDeletePerInstanceConfigs,
    ComputeRegionInstanceGroupManagersDeletePerInstanceConfigs,

    -- ** compute.regionInstanceGroupManagers.get
    ComputeRegionInstanceGroupManagersGetResource,
    newComputeRegionInstanceGroupManagersGet,
    ComputeRegionInstanceGroupManagersGet,

    -- ** compute.regionInstanceGroupManagers.insert
    ComputeRegionInstanceGroupManagersInsertResource,
    newComputeRegionInstanceGroupManagersInsert,
    ComputeRegionInstanceGroupManagersInsert,

    -- ** compute.regionInstanceGroupManagers.list
    ComputeRegionInstanceGroupManagersListResource,
    newComputeRegionInstanceGroupManagersList,
    ComputeRegionInstanceGroupManagersList,

    -- ** compute.regionInstanceGroupManagers.listErrors
    ComputeRegionInstanceGroupManagersListErrorsResource,
    newComputeRegionInstanceGroupManagersListErrors,
    ComputeRegionInstanceGroupManagersListErrors,

    -- ** compute.regionInstanceGroupManagers.listManagedInstances
    ComputeRegionInstanceGroupManagersListManagedInstancesResource,
    newComputeRegionInstanceGroupManagersListManagedInstances,
    ComputeRegionInstanceGroupManagersListManagedInstances,

    -- ** compute.regionInstanceGroupManagers.listPerInstanceConfigs
    ComputeRegionInstanceGroupManagersListPerInstanceConfigsResource,
    newComputeRegionInstanceGroupManagersListPerInstanceConfigs,
    ComputeRegionInstanceGroupManagersListPerInstanceConfigs,

    -- ** compute.regionInstanceGroupManagers.patch
    ComputeRegionInstanceGroupManagersPatchResource,
    newComputeRegionInstanceGroupManagersPatch,
    ComputeRegionInstanceGroupManagersPatch,

    -- ** compute.regionInstanceGroupManagers.patchPerInstanceConfigs
    ComputeRegionInstanceGroupManagersPatchPerInstanceConfigsResource,
    newComputeRegionInstanceGroupManagersPatchPerInstanceConfigs,
    ComputeRegionInstanceGroupManagersPatchPerInstanceConfigs,

    -- ** compute.regionInstanceGroupManagers.recreateInstances
    ComputeRegionInstanceGroupManagersRecreateInstancesResource,
    newComputeRegionInstanceGroupManagersRecreateInstances,
    ComputeRegionInstanceGroupManagersRecreateInstances,

    -- ** compute.regionInstanceGroupManagers.resize
    ComputeRegionInstanceGroupManagersResizeResource,
    newComputeRegionInstanceGroupManagersResize,
    ComputeRegionInstanceGroupManagersResize,

    -- ** compute.regionInstanceGroupManagers.setInstanceTemplate
    ComputeRegionInstanceGroupManagersSetInstanceTemplateResource,
    newComputeRegionInstanceGroupManagersSetInstanceTemplate,
    ComputeRegionInstanceGroupManagersSetInstanceTemplate,

    -- ** compute.regionInstanceGroupManagers.setTargetPools
    ComputeRegionInstanceGroupManagersSetTargetPoolsResource,
    newComputeRegionInstanceGroupManagersSetTargetPools,
    ComputeRegionInstanceGroupManagersSetTargetPools,

    -- ** compute.regionInstanceGroupManagers.updatePerInstanceConfigs
    ComputeRegionInstanceGroupManagersUpdatePerInstanceConfigsResource,
    newComputeRegionInstanceGroupManagersUpdatePerInstanceConfigs,
    ComputeRegionInstanceGroupManagersUpdatePerInstanceConfigs,

    -- ** compute.regionInstanceGroups.get
    ComputeRegionInstanceGroupsGetResource,
    newComputeRegionInstanceGroupsGet,
    ComputeRegionInstanceGroupsGet,

    -- ** compute.regionInstanceGroups.list
    ComputeRegionInstanceGroupsListResource,
    newComputeRegionInstanceGroupsList,
    ComputeRegionInstanceGroupsList,

    -- ** compute.regionInstanceGroups.listInstances
    ComputeRegionInstanceGroupsListInstancesResource,
    newComputeRegionInstanceGroupsListInstances,
    ComputeRegionInstanceGroupsListInstances,

    -- ** compute.regionInstanceGroups.setNamedPorts
    ComputeRegionInstanceGroupsSetNamedPortsResource,
    newComputeRegionInstanceGroupsSetNamedPorts,
    ComputeRegionInstanceGroupsSetNamedPorts,

    -- ** compute.regionInstances.bulkInsert
    ComputeRegionInstancesBulkInsertResource,
    newComputeRegionInstancesBulkInsert,
    ComputeRegionInstancesBulkInsert,

    -- ** compute.regionNetworkEndpointGroups.delete
    ComputeRegionNetworkEndpointGroupsDeleteResource,
    newComputeRegionNetworkEndpointGroupsDelete,
    ComputeRegionNetworkEndpointGroupsDelete,

    -- ** compute.regionNetworkEndpointGroups.get
    ComputeRegionNetworkEndpointGroupsGetResource,
    newComputeRegionNetworkEndpointGroupsGet,
    ComputeRegionNetworkEndpointGroupsGet,

    -- ** compute.regionNetworkEndpointGroups.insert
    ComputeRegionNetworkEndpointGroupsInsertResource,
    newComputeRegionNetworkEndpointGroupsInsert,
    ComputeRegionNetworkEndpointGroupsInsert,

    -- ** compute.regionNetworkEndpointGroups.list
    ComputeRegionNetworkEndpointGroupsListResource,
    newComputeRegionNetworkEndpointGroupsList,
    ComputeRegionNetworkEndpointGroupsList,

    -- ** compute.regionNetworkFirewallPolicies.addAssociation
    ComputeRegionNetworkFirewallPoliciesAddAssociationResource,
    newComputeRegionNetworkFirewallPoliciesAddAssociation,
    ComputeRegionNetworkFirewallPoliciesAddAssociation,

    -- ** compute.regionNetworkFirewallPolicies.addRule
    ComputeRegionNetworkFirewallPoliciesAddRuleResource,
    newComputeRegionNetworkFirewallPoliciesAddRule,
    ComputeRegionNetworkFirewallPoliciesAddRule,

    -- ** compute.regionNetworkFirewallPolicies.cloneRules
    ComputeRegionNetworkFirewallPoliciesCloneRulesResource,
    newComputeRegionNetworkFirewallPoliciesCloneRules,
    ComputeRegionNetworkFirewallPoliciesCloneRules,

    -- ** compute.regionNetworkFirewallPolicies.delete
    ComputeRegionNetworkFirewallPoliciesDeleteResource,
    newComputeRegionNetworkFirewallPoliciesDelete,
    ComputeRegionNetworkFirewallPoliciesDelete,

    -- ** compute.regionNetworkFirewallPolicies.get
    ComputeRegionNetworkFirewallPoliciesGetResource,
    newComputeRegionNetworkFirewallPoliciesGet,
    ComputeRegionNetworkFirewallPoliciesGet,

    -- ** compute.regionNetworkFirewallPolicies.getAssociation
    ComputeRegionNetworkFirewallPoliciesGetAssociationResource,
    newComputeRegionNetworkFirewallPoliciesGetAssociation,
    ComputeRegionNetworkFirewallPoliciesGetAssociation,

    -- ** compute.regionNetworkFirewallPolicies.getEffectiveFirewalls
    ComputeRegionNetworkFirewallPoliciesGetEffectiveFirewallsResource,
    newComputeRegionNetworkFirewallPoliciesGetEffectiveFirewalls,
    ComputeRegionNetworkFirewallPoliciesGetEffectiveFirewalls,

    -- ** compute.regionNetworkFirewallPolicies.getIamPolicy
    ComputeRegionNetworkFirewallPoliciesGetIamPolicyResource,
    newComputeRegionNetworkFirewallPoliciesGetIamPolicy,
    ComputeRegionNetworkFirewallPoliciesGetIamPolicy,

    -- ** compute.regionNetworkFirewallPolicies.getRule
    ComputeRegionNetworkFirewallPoliciesGetRuleResource,
    newComputeRegionNetworkFirewallPoliciesGetRule,
    ComputeRegionNetworkFirewallPoliciesGetRule,

    -- ** compute.regionNetworkFirewallPolicies.insert
    ComputeRegionNetworkFirewallPoliciesInsertResource,
    newComputeRegionNetworkFirewallPoliciesInsert,
    ComputeRegionNetworkFirewallPoliciesInsert,

    -- ** compute.regionNetworkFirewallPolicies.list
    ComputeRegionNetworkFirewallPoliciesListResource,
    newComputeRegionNetworkFirewallPoliciesList,
    ComputeRegionNetworkFirewallPoliciesList,

    -- ** compute.regionNetworkFirewallPolicies.patch
    ComputeRegionNetworkFirewallPoliciesPatchResource,
    newComputeRegionNetworkFirewallPoliciesPatch,
    ComputeRegionNetworkFirewallPoliciesPatch,

    -- ** compute.regionNetworkFirewallPolicies.patchRule
    ComputeRegionNetworkFirewallPoliciesPatchRuleResource,
    newComputeRegionNetworkFirewallPoliciesPatchRule,
    ComputeRegionNetworkFirewallPoliciesPatchRule,

    -- ** compute.regionNetworkFirewallPolicies.removeAssociation
    ComputeRegionNetworkFirewallPoliciesRemoveAssociationResource,
    newComputeRegionNetworkFirewallPoliciesRemoveAssociation,
    ComputeRegionNetworkFirewallPoliciesRemoveAssociation,

    -- ** compute.regionNetworkFirewallPolicies.removeRule
    ComputeRegionNetworkFirewallPoliciesRemoveRuleResource,
    newComputeRegionNetworkFirewallPoliciesRemoveRule,
    ComputeRegionNetworkFirewallPoliciesRemoveRule,

    -- ** compute.regionNetworkFirewallPolicies.setIamPolicy
    ComputeRegionNetworkFirewallPoliciesSetIamPolicyResource,
    newComputeRegionNetworkFirewallPoliciesSetIamPolicy,
    ComputeRegionNetworkFirewallPoliciesSetIamPolicy,

    -- ** compute.regionNetworkFirewallPolicies.testIamPermissions
    ComputeRegionNetworkFirewallPoliciesTestIamPermissionsResource,
    newComputeRegionNetworkFirewallPoliciesTestIamPermissions,
    ComputeRegionNetworkFirewallPoliciesTestIamPermissions,

    -- ** compute.regionNotificationEndpoints.delete
    ComputeRegionNotificationEndpointsDeleteResource,
    newComputeRegionNotificationEndpointsDelete,
    ComputeRegionNotificationEndpointsDelete,

    -- ** compute.regionNotificationEndpoints.get
    ComputeRegionNotificationEndpointsGetResource,
    newComputeRegionNotificationEndpointsGet,
    ComputeRegionNotificationEndpointsGet,

    -- ** compute.regionNotificationEndpoints.insert
    ComputeRegionNotificationEndpointsInsertResource,
    newComputeRegionNotificationEndpointsInsert,
    ComputeRegionNotificationEndpointsInsert,

    -- ** compute.regionNotificationEndpoints.list
    ComputeRegionNotificationEndpointsListResource,
    newComputeRegionNotificationEndpointsList,
    ComputeRegionNotificationEndpointsList,

    -- ** compute.regionOperations.delete
    ComputeRegionOperationsDeleteResource,
    newComputeRegionOperationsDelete,
    ComputeRegionOperationsDelete,

    -- ** compute.regionOperations.get
    ComputeRegionOperationsGetResource,
    newComputeRegionOperationsGet,
    ComputeRegionOperationsGet,

    -- ** compute.regionOperations.list
    ComputeRegionOperationsListResource,
    newComputeRegionOperationsList,
    ComputeRegionOperationsList,

    -- ** compute.regionOperations.wait
    ComputeRegionOperationsWaitResource,
    newComputeRegionOperationsWait,
    ComputeRegionOperationsWait,

    -- ** compute.regionSslCertificates.delete
    ComputeRegionSslCertificatesDeleteResource,
    newComputeRegionSslCertificatesDelete,
    ComputeRegionSslCertificatesDelete,

    -- ** compute.regionSslCertificates.get
    ComputeRegionSslCertificatesGetResource,
    newComputeRegionSslCertificatesGet,
    ComputeRegionSslCertificatesGet,

    -- ** compute.regionSslCertificates.insert
    ComputeRegionSslCertificatesInsertResource,
    newComputeRegionSslCertificatesInsert,
    ComputeRegionSslCertificatesInsert,

    -- ** compute.regionSslCertificates.list
    ComputeRegionSslCertificatesListResource,
    newComputeRegionSslCertificatesList,
    ComputeRegionSslCertificatesList,

    -- ** compute.regionTargetHttpProxies.delete
    ComputeRegionTargetHttpProxiesDeleteResource,
    newComputeRegionTargetHttpProxiesDelete,
    ComputeRegionTargetHttpProxiesDelete,

    -- ** compute.regionTargetHttpProxies.get
    ComputeRegionTargetHttpProxiesGetResource,
    newComputeRegionTargetHttpProxiesGet,
    ComputeRegionTargetHttpProxiesGet,

    -- ** compute.regionTargetHttpProxies.insert
    ComputeRegionTargetHttpProxiesInsertResource,
    newComputeRegionTargetHttpProxiesInsert,
    ComputeRegionTargetHttpProxiesInsert,

    -- ** compute.regionTargetHttpProxies.list
    ComputeRegionTargetHttpProxiesListResource,
    newComputeRegionTargetHttpProxiesList,
    ComputeRegionTargetHttpProxiesList,

    -- ** compute.regionTargetHttpProxies.setUrlMap
    ComputeRegionTargetHttpProxiesSetUrlMapResource,
    newComputeRegionTargetHttpProxiesSetUrlMap,
    ComputeRegionTargetHttpProxiesSetUrlMap,

    -- ** compute.regionTargetHttpsProxies.delete
    ComputeRegionTargetHttpsProxiesDeleteResource,
    newComputeRegionTargetHttpsProxiesDelete,
    ComputeRegionTargetHttpsProxiesDelete,

    -- ** compute.regionTargetHttpsProxies.get
    ComputeRegionTargetHttpsProxiesGetResource,
    newComputeRegionTargetHttpsProxiesGet,
    ComputeRegionTargetHttpsProxiesGet,

    -- ** compute.regionTargetHttpsProxies.insert
    ComputeRegionTargetHttpsProxiesInsertResource,
    newComputeRegionTargetHttpsProxiesInsert,
    ComputeRegionTargetHttpsProxiesInsert,

    -- ** compute.regionTargetHttpsProxies.list
    ComputeRegionTargetHttpsProxiesListResource,
    newComputeRegionTargetHttpsProxiesList,
    ComputeRegionTargetHttpsProxiesList,

    -- ** compute.regionTargetHttpsProxies.patch
    ComputeRegionTargetHttpsProxiesPatchResource,
    newComputeRegionTargetHttpsProxiesPatch,
    ComputeRegionTargetHttpsProxiesPatch,

    -- ** compute.regionTargetHttpsProxies.setSslCertificates
    ComputeRegionTargetHttpsProxiesSetSslCertificatesResource,
    newComputeRegionTargetHttpsProxiesSetSslCertificates,
    ComputeRegionTargetHttpsProxiesSetSslCertificates,

    -- ** compute.regionTargetHttpsProxies.setUrlMap
    ComputeRegionTargetHttpsProxiesSetUrlMapResource,
    newComputeRegionTargetHttpsProxiesSetUrlMap,
    ComputeRegionTargetHttpsProxiesSetUrlMap,

    -- ** compute.regionUrlMaps.delete
    ComputeRegionUrlMapsDeleteResource,
    newComputeRegionUrlMapsDelete,
    ComputeRegionUrlMapsDelete,

    -- ** compute.regionUrlMaps.get
    ComputeRegionUrlMapsGetResource,
    newComputeRegionUrlMapsGet,
    ComputeRegionUrlMapsGet,

    -- ** compute.regionUrlMaps.insert
    ComputeRegionUrlMapsInsertResource,
    newComputeRegionUrlMapsInsert,
    ComputeRegionUrlMapsInsert,

    -- ** compute.regionUrlMaps.list
    ComputeRegionUrlMapsListResource,
    newComputeRegionUrlMapsList,
    ComputeRegionUrlMapsList,

    -- ** compute.regionUrlMaps.patch
    ComputeRegionUrlMapsPatchResource,
    newComputeRegionUrlMapsPatch,
    ComputeRegionUrlMapsPatch,

    -- ** compute.regionUrlMaps.update
    ComputeRegionUrlMapsUpdateResource,
    newComputeRegionUrlMapsUpdate,
    ComputeRegionUrlMapsUpdate,

    -- ** compute.regionUrlMaps.validate
    ComputeRegionUrlMapsValidateResource,
    newComputeRegionUrlMapsValidate,
    ComputeRegionUrlMapsValidate,

    -- ** compute.regions.get
    ComputeRegionsGetResource,
    newComputeRegionsGet,
    ComputeRegionsGet,

    -- ** compute.regions.list
    ComputeRegionsListResource,
    newComputeRegionsList,
    ComputeRegionsList,

    -- ** compute.reservations.aggregatedList
    ComputeReservationsAggregatedListResource,
    newComputeReservationsAggregatedList,
    ComputeReservationsAggregatedList,

    -- ** compute.reservations.delete
    ComputeReservationsDeleteResource,
    newComputeReservationsDelete,
    ComputeReservationsDelete,

    -- ** compute.reservations.get
    ComputeReservationsGetResource,
    newComputeReservationsGet,
    ComputeReservationsGet,

    -- ** compute.reservations.getIamPolicy
    ComputeReservationsGetIamPolicyResource,
    newComputeReservationsGetIamPolicy,
    ComputeReservationsGetIamPolicy,

    -- ** compute.reservations.insert
    ComputeReservationsInsertResource,
    newComputeReservationsInsert,
    ComputeReservationsInsert,

    -- ** compute.reservations.list
    ComputeReservationsListResource,
    newComputeReservationsList,
    ComputeReservationsList,

    -- ** compute.reservations.resize
    ComputeReservationsResizeResource,
    newComputeReservationsResize,
    ComputeReservationsResize,

    -- ** compute.reservations.setIamPolicy
    ComputeReservationsSetIamPolicyResource,
    newComputeReservationsSetIamPolicy,
    ComputeReservationsSetIamPolicy,

    -- ** compute.reservations.testIamPermissions
    ComputeReservationsTestIamPermissionsResource,
    newComputeReservationsTestIamPermissions,
    ComputeReservationsTestIamPermissions,

    -- ** compute.reservations.update
    ComputeReservationsUpdateResource,
    newComputeReservationsUpdate,
    ComputeReservationsUpdate,

    -- ** compute.resourcePolicies.aggregatedList
    ComputeResourcePoliciesAggregatedListResource,
    newComputeResourcePoliciesAggregatedList,
    ComputeResourcePoliciesAggregatedList,

    -- ** compute.resourcePolicies.delete
    ComputeResourcePoliciesDeleteResource,
    newComputeResourcePoliciesDelete,
    ComputeResourcePoliciesDelete,

    -- ** compute.resourcePolicies.get
    ComputeResourcePoliciesGetResource,
    newComputeResourcePoliciesGet,
    ComputeResourcePoliciesGet,

    -- ** compute.resourcePolicies.getIamPolicy
    ComputeResourcePoliciesGetIamPolicyResource,
    newComputeResourcePoliciesGetIamPolicy,
    ComputeResourcePoliciesGetIamPolicy,

    -- ** compute.resourcePolicies.insert
    ComputeResourcePoliciesInsertResource,
    newComputeResourcePoliciesInsert,
    ComputeResourcePoliciesInsert,

    -- ** compute.resourcePolicies.list
    ComputeResourcePoliciesListResource,
    newComputeResourcePoliciesList,
    ComputeResourcePoliciesList,

    -- ** compute.resourcePolicies.setIamPolicy
    ComputeResourcePoliciesSetIamPolicyResource,
    newComputeResourcePoliciesSetIamPolicy,
    ComputeResourcePoliciesSetIamPolicy,

    -- ** compute.resourcePolicies.testIamPermissions
    ComputeResourcePoliciesTestIamPermissionsResource,
    newComputeResourcePoliciesTestIamPermissions,
    ComputeResourcePoliciesTestIamPermissions,

    -- ** compute.routers.aggregatedList
    ComputeRoutersAggregatedListResource,
    newComputeRoutersAggregatedList,
    ComputeRoutersAggregatedList,

    -- ** compute.routers.delete
    ComputeRoutersDeleteResource,
    newComputeRoutersDelete,
    ComputeRoutersDelete,

    -- ** compute.routers.get
    ComputeRoutersGetResource,
    newComputeRoutersGet,
    ComputeRoutersGet,

    -- ** compute.routers.getNatMappingInfo
    ComputeRoutersGetNatMappingInfoResource,
    newComputeRoutersGetNatMappingInfo,
    ComputeRoutersGetNatMappingInfo,

    -- ** compute.routers.getRouterStatus
    ComputeRoutersGetRouterStatusResource,
    newComputeRoutersGetRouterStatus,
    ComputeRoutersGetRouterStatus,

    -- ** compute.routers.insert
    ComputeRoutersInsertResource,
    newComputeRoutersInsert,
    ComputeRoutersInsert,

    -- ** compute.routers.list
    ComputeRoutersListResource,
    newComputeRoutersList,
    ComputeRoutersList,

    -- ** compute.routers.patch
    ComputeRoutersPatchResource,
    newComputeRoutersPatch,
    ComputeRoutersPatch,

    -- ** compute.routers.preview
    ComputeRoutersPreviewResource,
    newComputeRoutersPreview,
    ComputeRoutersPreview,

    -- ** compute.routers.update
    ComputeRoutersUpdateResource,
    newComputeRoutersUpdate,
    ComputeRoutersUpdate,

    -- ** compute.routes.delete
    ComputeRoutesDeleteResource,
    newComputeRoutesDelete,
    ComputeRoutesDelete,

    -- ** compute.routes.get
    ComputeRoutesGetResource,
    newComputeRoutesGet,
    ComputeRoutesGet,

    -- ** compute.routes.insert
    ComputeRoutesInsertResource,
    newComputeRoutesInsert,
    ComputeRoutesInsert,

    -- ** compute.routes.list
    ComputeRoutesListResource,
    newComputeRoutesList,
    ComputeRoutesList,

    -- ** compute.securityPolicies.addRule
    ComputeSecurityPoliciesAddRuleResource,
    newComputeSecurityPoliciesAddRule,
    ComputeSecurityPoliciesAddRule,

    -- ** compute.securityPolicies.delete
    ComputeSecurityPoliciesDeleteResource,
    newComputeSecurityPoliciesDelete,
    ComputeSecurityPoliciesDelete,

    -- ** compute.securityPolicies.get
    ComputeSecurityPoliciesGetResource,
    newComputeSecurityPoliciesGet,
    ComputeSecurityPoliciesGet,

    -- ** compute.securityPolicies.getRule
    ComputeSecurityPoliciesGetRuleResource,
    newComputeSecurityPoliciesGetRule,
    ComputeSecurityPoliciesGetRule,

    -- ** compute.securityPolicies.insert
    ComputeSecurityPoliciesInsertResource,
    newComputeSecurityPoliciesInsert,
    ComputeSecurityPoliciesInsert,

    -- ** compute.securityPolicies.list
    ComputeSecurityPoliciesListResource,
    newComputeSecurityPoliciesList,
    ComputeSecurityPoliciesList,

    -- ** compute.securityPolicies.listPreconfiguredExpressionSets
    ComputeSecurityPoliciesListPreconfiguredExpressionSetsResource,
    newComputeSecurityPoliciesListPreconfiguredExpressionSets,
    ComputeSecurityPoliciesListPreconfiguredExpressionSets,

    -- ** compute.securityPolicies.patch
    ComputeSecurityPoliciesPatchResource,
    newComputeSecurityPoliciesPatch,
    ComputeSecurityPoliciesPatch,

    -- ** compute.securityPolicies.patchRule
    ComputeSecurityPoliciesPatchRuleResource,
    newComputeSecurityPoliciesPatchRule,
    ComputeSecurityPoliciesPatchRule,

    -- ** compute.securityPolicies.removeRule
    ComputeSecurityPoliciesRemoveRuleResource,
    newComputeSecurityPoliciesRemoveRule,
    ComputeSecurityPoliciesRemoveRule,

    -- ** compute.serviceAttachments.aggregatedList
    ComputeServiceAttachmentsAggregatedListResource,
    newComputeServiceAttachmentsAggregatedList,
    ComputeServiceAttachmentsAggregatedList,

    -- ** compute.serviceAttachments.delete
    ComputeServiceAttachmentsDeleteResource,
    newComputeServiceAttachmentsDelete,
    ComputeServiceAttachmentsDelete,

    -- ** compute.serviceAttachments.get
    ComputeServiceAttachmentsGetResource,
    newComputeServiceAttachmentsGet,
    ComputeServiceAttachmentsGet,

    -- ** compute.serviceAttachments.getIamPolicy
    ComputeServiceAttachmentsGetIamPolicyResource,
    newComputeServiceAttachmentsGetIamPolicy,
    ComputeServiceAttachmentsGetIamPolicy,

    -- ** compute.serviceAttachments.insert
    ComputeServiceAttachmentsInsertResource,
    newComputeServiceAttachmentsInsert,
    ComputeServiceAttachmentsInsert,

    -- ** compute.serviceAttachments.list
    ComputeServiceAttachmentsListResource,
    newComputeServiceAttachmentsList,
    ComputeServiceAttachmentsList,

    -- ** compute.serviceAttachments.patch
    ComputeServiceAttachmentsPatchResource,
    newComputeServiceAttachmentsPatch,
    ComputeServiceAttachmentsPatch,

    -- ** compute.serviceAttachments.setIamPolicy
    ComputeServiceAttachmentsSetIamPolicyResource,
    newComputeServiceAttachmentsSetIamPolicy,
    ComputeServiceAttachmentsSetIamPolicy,

    -- ** compute.serviceAttachments.testIamPermissions
    ComputeServiceAttachmentsTestIamPermissionsResource,
    newComputeServiceAttachmentsTestIamPermissions,
    ComputeServiceAttachmentsTestIamPermissions,

    -- ** compute.snapshots.delete
    ComputeSnapshotsDeleteResource,
    newComputeSnapshotsDelete,
    ComputeSnapshotsDelete,

    -- ** compute.snapshots.get
    ComputeSnapshotsGetResource,
    newComputeSnapshotsGet,
    ComputeSnapshotsGet,

    -- ** compute.snapshots.getIamPolicy
    ComputeSnapshotsGetIamPolicyResource,
    newComputeSnapshotsGetIamPolicy,
    ComputeSnapshotsGetIamPolicy,

    -- ** compute.snapshots.insert
    ComputeSnapshotsInsertResource,
    newComputeSnapshotsInsert,
    ComputeSnapshotsInsert,

    -- ** compute.snapshots.list
    ComputeSnapshotsListResource,
    newComputeSnapshotsList,
    ComputeSnapshotsList,

    -- ** compute.snapshots.setIamPolicy
    ComputeSnapshotsSetIamPolicyResource,
    newComputeSnapshotsSetIamPolicy,
    ComputeSnapshotsSetIamPolicy,

    -- ** compute.snapshots.setLabels
    ComputeSnapshotsSetLabelsResource,
    newComputeSnapshotsSetLabels,
    ComputeSnapshotsSetLabels,

    -- ** compute.snapshots.testIamPermissions
    ComputeSnapshotsTestIamPermissionsResource,
    newComputeSnapshotsTestIamPermissions,
    ComputeSnapshotsTestIamPermissions,

    -- ** compute.sslCertificates.aggregatedList
    ComputeSslCertificatesAggregatedListResource,
    newComputeSslCertificatesAggregatedList,
    ComputeSslCertificatesAggregatedList,

    -- ** compute.sslCertificates.delete
    ComputeSslCertificatesDeleteResource,
    newComputeSslCertificatesDelete,
    ComputeSslCertificatesDelete,

    -- ** compute.sslCertificates.get
    ComputeSslCertificatesGetResource,
    newComputeSslCertificatesGet,
    ComputeSslCertificatesGet,

    -- ** compute.sslCertificates.insert
    ComputeSslCertificatesInsertResource,
    newComputeSslCertificatesInsert,
    ComputeSslCertificatesInsert,

    -- ** compute.sslCertificates.list
    ComputeSslCertificatesListResource,
    newComputeSslCertificatesList,
    ComputeSslCertificatesList,

    -- ** compute.sslPolicies.delete
    ComputeSslPoliciesDeleteResource,
    newComputeSslPoliciesDelete,
    ComputeSslPoliciesDelete,

    -- ** compute.sslPolicies.get
    ComputeSslPoliciesGetResource,
    newComputeSslPoliciesGet,
    ComputeSslPoliciesGet,

    -- ** compute.sslPolicies.insert
    ComputeSslPoliciesInsertResource,
    newComputeSslPoliciesInsert,
    ComputeSslPoliciesInsert,

    -- ** compute.sslPolicies.list
    ComputeSslPoliciesListResource,
    newComputeSslPoliciesList,
    ComputeSslPoliciesList,

    -- ** compute.sslPolicies.listAvailableFeatures
    ComputeSslPoliciesListAvailableFeaturesResource,
    newComputeSslPoliciesListAvailableFeatures,
    ComputeSslPoliciesListAvailableFeatures,

    -- ** compute.sslPolicies.patch
    ComputeSslPoliciesPatchResource,
    newComputeSslPoliciesPatch,
    ComputeSslPoliciesPatch,

    -- ** compute.subnetworks.aggregatedList
    ComputeSubnetworksAggregatedListResource,
    newComputeSubnetworksAggregatedList,
    ComputeSubnetworksAggregatedList,

    -- ** compute.subnetworks.delete
    ComputeSubnetworksDeleteResource,
    newComputeSubnetworksDelete,
    ComputeSubnetworksDelete,

    -- ** compute.subnetworks.expandIpCidrRange
    ComputeSubnetworksExpandIpCidrRangeResource,
    newComputeSubnetworksExpandIpCidrRange,
    ComputeSubnetworksExpandIpCidrRange,

    -- ** compute.subnetworks.get
    ComputeSubnetworksGetResource,
    newComputeSubnetworksGet,
    ComputeSubnetworksGet,

    -- ** compute.subnetworks.getIamPolicy
    ComputeSubnetworksGetIamPolicyResource,
    newComputeSubnetworksGetIamPolicy,
    ComputeSubnetworksGetIamPolicy,

    -- ** compute.subnetworks.insert
    ComputeSubnetworksInsertResource,
    newComputeSubnetworksInsert,
    ComputeSubnetworksInsert,

    -- ** compute.subnetworks.list
    ComputeSubnetworksListResource,
    newComputeSubnetworksList,
    ComputeSubnetworksList,

    -- ** compute.subnetworks.listUsable
    ComputeSubnetworksListUsableResource,
    newComputeSubnetworksListUsable,
    ComputeSubnetworksListUsable,

    -- ** compute.subnetworks.patch
    ComputeSubnetworksPatchResource,
    newComputeSubnetworksPatch,
    ComputeSubnetworksPatch,

    -- ** compute.subnetworks.setIamPolicy
    ComputeSubnetworksSetIamPolicyResource,
    newComputeSubnetworksSetIamPolicy,
    ComputeSubnetworksSetIamPolicy,

    -- ** compute.subnetworks.setPrivateIpGoogleAccess
    ComputeSubnetworksSetPrivateIpGoogleAccessResource,
    newComputeSubnetworksSetPrivateIpGoogleAccess,
    ComputeSubnetworksSetPrivateIpGoogleAccess,

    -- ** compute.subnetworks.testIamPermissions
    ComputeSubnetworksTestIamPermissionsResource,
    newComputeSubnetworksTestIamPermissions,
    ComputeSubnetworksTestIamPermissions,

    -- ** compute.targetGrpcProxies.delete
    ComputeTargetGrpcProxiesDeleteResource,
    newComputeTargetGrpcProxiesDelete,
    ComputeTargetGrpcProxiesDelete,

    -- ** compute.targetGrpcProxies.get
    ComputeTargetGrpcProxiesGetResource,
    newComputeTargetGrpcProxiesGet,
    ComputeTargetGrpcProxiesGet,

    -- ** compute.targetGrpcProxies.insert
    ComputeTargetGrpcProxiesInsertResource,
    newComputeTargetGrpcProxiesInsert,
    ComputeTargetGrpcProxiesInsert,

    -- ** compute.targetGrpcProxies.list
    ComputeTargetGrpcProxiesListResource,
    newComputeTargetGrpcProxiesList,
    ComputeTargetGrpcProxiesList,

    -- ** compute.targetGrpcProxies.patch
    ComputeTargetGrpcProxiesPatchResource,
    newComputeTargetGrpcProxiesPatch,
    ComputeTargetGrpcProxiesPatch,

    -- ** compute.targetHttpProxies.aggregatedList
    ComputeTargetHttpProxiesAggregatedListResource,
    newComputeTargetHttpProxiesAggregatedList,
    ComputeTargetHttpProxiesAggregatedList,

    -- ** compute.targetHttpProxies.delete
    ComputeTargetHttpProxiesDeleteResource,
    newComputeTargetHttpProxiesDelete,
    ComputeTargetHttpProxiesDelete,

    -- ** compute.targetHttpProxies.get
    ComputeTargetHttpProxiesGetResource,
    newComputeTargetHttpProxiesGet,
    ComputeTargetHttpProxiesGet,

    -- ** compute.targetHttpProxies.insert
    ComputeTargetHttpProxiesInsertResource,
    newComputeTargetHttpProxiesInsert,
    ComputeTargetHttpProxiesInsert,

    -- ** compute.targetHttpProxies.list
    ComputeTargetHttpProxiesListResource,
    newComputeTargetHttpProxiesList,
    ComputeTargetHttpProxiesList,

    -- ** compute.targetHttpProxies.patch
    ComputeTargetHttpProxiesPatchResource,
    newComputeTargetHttpProxiesPatch,
    ComputeTargetHttpProxiesPatch,

    -- ** compute.targetHttpProxies.setUrlMap
    ComputeTargetHttpProxiesSetUrlMapResource,
    newComputeTargetHttpProxiesSetUrlMap,
    ComputeTargetHttpProxiesSetUrlMap,

    -- ** compute.targetHttpsProxies.aggregatedList
    ComputeTargetHttpsProxiesAggregatedListResource,
    newComputeTargetHttpsProxiesAggregatedList,
    ComputeTargetHttpsProxiesAggregatedList,

    -- ** compute.targetHttpsProxies.delete
    ComputeTargetHttpsProxiesDeleteResource,
    newComputeTargetHttpsProxiesDelete,
    ComputeTargetHttpsProxiesDelete,

    -- ** compute.targetHttpsProxies.get
    ComputeTargetHttpsProxiesGetResource,
    newComputeTargetHttpsProxiesGet,
    ComputeTargetHttpsProxiesGet,

    -- ** compute.targetHttpsProxies.insert
    ComputeTargetHttpsProxiesInsertResource,
    newComputeTargetHttpsProxiesInsert,
    ComputeTargetHttpsProxiesInsert,

    -- ** compute.targetHttpsProxies.list
    ComputeTargetHttpsProxiesListResource,
    newComputeTargetHttpsProxiesList,
    ComputeTargetHttpsProxiesList,

    -- ** compute.targetHttpsProxies.patch
    ComputeTargetHttpsProxiesPatchResource,
    newComputeTargetHttpsProxiesPatch,
    ComputeTargetHttpsProxiesPatch,

    -- ** compute.targetHttpsProxies.setQuicOverride
    ComputeTargetHttpsProxiesSetQuicOverrideResource,
    newComputeTargetHttpsProxiesSetQuicOverride,
    ComputeTargetHttpsProxiesSetQuicOverride,

    -- ** compute.targetHttpsProxies.setSslCertificates
    ComputeTargetHttpsProxiesSetSslCertificatesResource,
    newComputeTargetHttpsProxiesSetSslCertificates,
    ComputeTargetHttpsProxiesSetSslCertificates,

    -- ** compute.targetHttpsProxies.setSslPolicy
    ComputeTargetHttpsProxiesSetSslPolicyResource,
    newComputeTargetHttpsProxiesSetSslPolicy,
    ComputeTargetHttpsProxiesSetSslPolicy,

    -- ** compute.targetHttpsProxies.setUrlMap
    ComputeTargetHttpsProxiesSetUrlMapResource,
    newComputeTargetHttpsProxiesSetUrlMap,
    ComputeTargetHttpsProxiesSetUrlMap,

    -- ** compute.targetInstances.aggregatedList
    ComputeTargetInstancesAggregatedListResource,
    newComputeTargetInstancesAggregatedList,
    ComputeTargetInstancesAggregatedList,

    -- ** compute.targetInstances.delete
    ComputeTargetInstancesDeleteResource,
    newComputeTargetInstancesDelete,
    ComputeTargetInstancesDelete,

    -- ** compute.targetInstances.get
    ComputeTargetInstancesGetResource,
    newComputeTargetInstancesGet,
    ComputeTargetInstancesGet,

    -- ** compute.targetInstances.insert
    ComputeTargetInstancesInsertResource,
    newComputeTargetInstancesInsert,
    ComputeTargetInstancesInsert,

    -- ** compute.targetInstances.list
    ComputeTargetInstancesListResource,
    newComputeTargetInstancesList,
    ComputeTargetInstancesList,

    -- ** compute.targetPools.addHealthCheck
    ComputeTargetPoolsAddHealthCheckResource,
    newComputeTargetPoolsAddHealthCheck,
    ComputeTargetPoolsAddHealthCheck,

    -- ** compute.targetPools.addInstance
    ComputeTargetPoolsAddInstanceResource,
    newComputeTargetPoolsAddInstance,
    ComputeTargetPoolsAddInstance,

    -- ** compute.targetPools.aggregatedList
    ComputeTargetPoolsAggregatedListResource,
    newComputeTargetPoolsAggregatedList,
    ComputeTargetPoolsAggregatedList,

    -- ** compute.targetPools.delete
    ComputeTargetPoolsDeleteResource,
    newComputeTargetPoolsDelete,
    ComputeTargetPoolsDelete,

    -- ** compute.targetPools.get
    ComputeTargetPoolsGetResource,
    newComputeTargetPoolsGet,
    ComputeTargetPoolsGet,

    -- ** compute.targetPools.getHealth
    ComputeTargetPoolsGetHealthResource,
    newComputeTargetPoolsGetHealth,
    ComputeTargetPoolsGetHealth,

    -- ** compute.targetPools.insert
    ComputeTargetPoolsInsertResource,
    newComputeTargetPoolsInsert,
    ComputeTargetPoolsInsert,

    -- ** compute.targetPools.list
    ComputeTargetPoolsListResource,
    newComputeTargetPoolsList,
    ComputeTargetPoolsList,

    -- ** compute.targetPools.removeHealthCheck
    ComputeTargetPoolsRemoveHealthCheckResource,
    newComputeTargetPoolsRemoveHealthCheck,
    ComputeTargetPoolsRemoveHealthCheck,

    -- ** compute.targetPools.removeInstance
    ComputeTargetPoolsRemoveInstanceResource,
    newComputeTargetPoolsRemoveInstance,
    ComputeTargetPoolsRemoveInstance,

    -- ** compute.targetPools.setBackup
    ComputeTargetPoolsSetBackupResource,
    newComputeTargetPoolsSetBackup,
    ComputeTargetPoolsSetBackup,

    -- ** compute.targetSslProxies.delete
    ComputeTargetSslProxiesDeleteResource,
    newComputeTargetSslProxiesDelete,
    ComputeTargetSslProxiesDelete,

    -- ** compute.targetSslProxies.get
    ComputeTargetSslProxiesGetResource,
    newComputeTargetSslProxiesGet,
    ComputeTargetSslProxiesGet,

    -- ** compute.targetSslProxies.insert
    ComputeTargetSslProxiesInsertResource,
    newComputeTargetSslProxiesInsert,
    ComputeTargetSslProxiesInsert,

    -- ** compute.targetSslProxies.list
    ComputeTargetSslProxiesListResource,
    newComputeTargetSslProxiesList,
    ComputeTargetSslProxiesList,

    -- ** compute.targetSslProxies.setBackendService
    ComputeTargetSslProxiesSetBackendServiceResource,
    newComputeTargetSslProxiesSetBackendService,
    ComputeTargetSslProxiesSetBackendService,

    -- ** compute.targetSslProxies.setProxyHeader
    ComputeTargetSslProxiesSetProxyHeaderResource,
    newComputeTargetSslProxiesSetProxyHeader,
    ComputeTargetSslProxiesSetProxyHeader,

    -- ** compute.targetSslProxies.setSslCertificates
    ComputeTargetSslProxiesSetSslCertificatesResource,
    newComputeTargetSslProxiesSetSslCertificates,
    ComputeTargetSslProxiesSetSslCertificates,

    -- ** compute.targetSslProxies.setSslPolicy
    ComputeTargetSslProxiesSetSslPolicyResource,
    newComputeTargetSslProxiesSetSslPolicy,
    ComputeTargetSslProxiesSetSslPolicy,

    -- ** compute.targetTcpProxies.delete
    ComputeTargetTcpProxiesDeleteResource,
    newComputeTargetTcpProxiesDelete,
    ComputeTargetTcpProxiesDelete,

    -- ** compute.targetTcpProxies.get
    ComputeTargetTcpProxiesGetResource,
    newComputeTargetTcpProxiesGet,
    ComputeTargetTcpProxiesGet,

    -- ** compute.targetTcpProxies.insert
    ComputeTargetTcpProxiesInsertResource,
    newComputeTargetTcpProxiesInsert,
    ComputeTargetTcpProxiesInsert,

    -- ** compute.targetTcpProxies.list
    ComputeTargetTcpProxiesListResource,
    newComputeTargetTcpProxiesList,
    ComputeTargetTcpProxiesList,

    -- ** compute.targetTcpProxies.setBackendService
    ComputeTargetTcpProxiesSetBackendServiceResource,
    newComputeTargetTcpProxiesSetBackendService,
    ComputeTargetTcpProxiesSetBackendService,

    -- ** compute.targetTcpProxies.setProxyHeader
    ComputeTargetTcpProxiesSetProxyHeaderResource,
    newComputeTargetTcpProxiesSetProxyHeader,
    ComputeTargetTcpProxiesSetProxyHeader,

    -- ** compute.targetVpnGateways.aggregatedList
    ComputeTargetVpnGatewaysAggregatedListResource,
    newComputeTargetVpnGatewaysAggregatedList,
    ComputeTargetVpnGatewaysAggregatedList,

    -- ** compute.targetVpnGateways.delete
    ComputeTargetVpnGatewaysDeleteResource,
    newComputeTargetVpnGatewaysDelete,
    ComputeTargetVpnGatewaysDelete,

    -- ** compute.targetVpnGateways.get
    ComputeTargetVpnGatewaysGetResource,
    newComputeTargetVpnGatewaysGet,
    ComputeTargetVpnGatewaysGet,

    -- ** compute.targetVpnGateways.insert
    ComputeTargetVpnGatewaysInsertResource,
    newComputeTargetVpnGatewaysInsert,
    ComputeTargetVpnGatewaysInsert,

    -- ** compute.targetVpnGateways.list
    ComputeTargetVpnGatewaysListResource,
    newComputeTargetVpnGatewaysList,
    ComputeTargetVpnGatewaysList,

    -- ** compute.urlMaps.aggregatedList
    ComputeUrlMapsAggregatedListResource,
    newComputeUrlMapsAggregatedList,
    ComputeUrlMapsAggregatedList,

    -- ** compute.urlMaps.delete
    ComputeUrlMapsDeleteResource,
    newComputeUrlMapsDelete,
    ComputeUrlMapsDelete,

    -- ** compute.urlMaps.get
    ComputeUrlMapsGetResource,
    newComputeUrlMapsGet,
    ComputeUrlMapsGet,

    -- ** compute.urlMaps.insert
    ComputeUrlMapsInsertResource,
    newComputeUrlMapsInsert,
    ComputeUrlMapsInsert,

    -- ** compute.urlMaps.invalidateCache
    ComputeUrlMapsInvalidateCacheResource,
    newComputeUrlMapsInvalidateCache,
    ComputeUrlMapsInvalidateCache,

    -- ** compute.urlMaps.list
    ComputeUrlMapsListResource,
    newComputeUrlMapsList,
    ComputeUrlMapsList,

    -- ** compute.urlMaps.patch
    ComputeUrlMapsPatchResource,
    newComputeUrlMapsPatch,
    ComputeUrlMapsPatch,

    -- ** compute.urlMaps.update
    ComputeUrlMapsUpdateResource,
    newComputeUrlMapsUpdate,
    ComputeUrlMapsUpdate,

    -- ** compute.urlMaps.validate
    ComputeUrlMapsValidateResource,
    newComputeUrlMapsValidate,
    ComputeUrlMapsValidate,

    -- ** compute.vpnGateways.aggregatedList
    ComputeVpnGatewaysAggregatedListResource,
    newComputeVpnGatewaysAggregatedList,
    ComputeVpnGatewaysAggregatedList,

    -- ** compute.vpnGateways.delete
    ComputeVpnGatewaysDeleteResource,
    newComputeVpnGatewaysDelete,
    ComputeVpnGatewaysDelete,

    -- ** compute.vpnGateways.get
    ComputeVpnGatewaysGetResource,
    newComputeVpnGatewaysGet,
    ComputeVpnGatewaysGet,

    -- ** compute.vpnGateways.getStatus
    ComputeVpnGatewaysGetStatusResource,
    newComputeVpnGatewaysGetStatus,
    ComputeVpnGatewaysGetStatus,

    -- ** compute.vpnGateways.insert
    ComputeVpnGatewaysInsertResource,
    newComputeVpnGatewaysInsert,
    ComputeVpnGatewaysInsert,

    -- ** compute.vpnGateways.list
    ComputeVpnGatewaysListResource,
    newComputeVpnGatewaysList,
    ComputeVpnGatewaysList,

    -- ** compute.vpnGateways.setLabels
    ComputeVpnGatewaysSetLabelsResource,
    newComputeVpnGatewaysSetLabels,
    ComputeVpnGatewaysSetLabels,

    -- ** compute.vpnGateways.testIamPermissions
    ComputeVpnGatewaysTestIamPermissionsResource,
    newComputeVpnGatewaysTestIamPermissions,
    ComputeVpnGatewaysTestIamPermissions,

    -- ** compute.vpnTunnels.aggregatedList
    ComputeVpnTunnelsAggregatedListResource,
    newComputeVpnTunnelsAggregatedList,
    ComputeVpnTunnelsAggregatedList,

    -- ** compute.vpnTunnels.delete
    ComputeVpnTunnelsDeleteResource,
    newComputeVpnTunnelsDelete,
    ComputeVpnTunnelsDelete,

    -- ** compute.vpnTunnels.get
    ComputeVpnTunnelsGetResource,
    newComputeVpnTunnelsGet,
    ComputeVpnTunnelsGet,

    -- ** compute.vpnTunnels.insert
    ComputeVpnTunnelsInsertResource,
    newComputeVpnTunnelsInsert,
    ComputeVpnTunnelsInsert,

    -- ** compute.vpnTunnels.list
    ComputeVpnTunnelsListResource,
    newComputeVpnTunnelsList,
    ComputeVpnTunnelsList,

    -- ** compute.zoneOperations.delete
    ComputeZoneOperationsDeleteResource,
    newComputeZoneOperationsDelete,
    ComputeZoneOperationsDelete,

    -- ** compute.zoneOperations.get
    ComputeZoneOperationsGetResource,
    newComputeZoneOperationsGet,
    ComputeZoneOperationsGet,

    -- ** compute.zoneOperations.list
    ComputeZoneOperationsListResource,
    newComputeZoneOperationsList,
    ComputeZoneOperationsList,

    -- ** compute.zoneOperations.wait
    ComputeZoneOperationsWaitResource,
    newComputeZoneOperationsWait,
    ComputeZoneOperationsWait,

    -- ** compute.zones.get
    ComputeZonesGetResource,
    newComputeZonesGet,
    ComputeZonesGet,

    -- ** compute.zones.list
    ComputeZonesListResource,
    newComputeZonesList,
    ComputeZonesList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AcceleratorConfig
    AcceleratorConfig (..),
    newAcceleratorConfig,

    -- ** AcceleratorType
    AcceleratorType (..),
    newAcceleratorType,

    -- ** AcceleratorTypeAggregatedList
    AcceleratorTypeAggregatedList (..),
    newAcceleratorTypeAggregatedList,

    -- ** AcceleratorTypeAggregatedList_Items
    AcceleratorTypeAggregatedList_Items (..),
    newAcceleratorTypeAggregatedList_Items,

    -- ** AcceleratorTypeAggregatedList_Warning
    AcceleratorTypeAggregatedList_Warning (..),
    newAcceleratorTypeAggregatedList_Warning,

    -- ** AcceleratorTypeAggregatedList_Warning_Code
    AcceleratorTypeAggregatedList_Warning_Code (..),

    -- ** AcceleratorTypeAggregatedList_Warning_DataItem
    AcceleratorTypeAggregatedList_Warning_DataItem (..),
    newAcceleratorTypeAggregatedList_Warning_DataItem,

    -- ** AcceleratorTypeList
    AcceleratorTypeList (..),
    newAcceleratorTypeList,

    -- ** AcceleratorTypeList_Warning
    AcceleratorTypeList_Warning (..),
    newAcceleratorTypeList_Warning,

    -- ** AcceleratorTypeList_Warning_Code
    AcceleratorTypeList_Warning_Code (..),

    -- ** AcceleratorTypeList_Warning_DataItem
    AcceleratorTypeList_Warning_DataItem (..),
    newAcceleratorTypeList_Warning_DataItem,

    -- ** AcceleratorTypesScopedList
    AcceleratorTypesScopedList (..),
    newAcceleratorTypesScopedList,

    -- ** AcceleratorTypesScopedList_Warning
    AcceleratorTypesScopedList_Warning (..),
    newAcceleratorTypesScopedList_Warning,

    -- ** AcceleratorTypesScopedList_Warning_Code
    AcceleratorTypesScopedList_Warning_Code (..),

    -- ** AcceleratorTypesScopedList_Warning_DataItem
    AcceleratorTypesScopedList_Warning_DataItem (..),
    newAcceleratorTypesScopedList_Warning_DataItem,

    -- ** AccessConfig
    AccessConfig (..),
    newAccessConfig,

    -- ** AccessConfig_NetworkTier
    AccessConfig_NetworkTier (..),

    -- ** AccessConfig_Type
    AccessConfig_Type (..),

    -- ** Address
    Address (..),
    newAddress,

    -- ** Address_AddressType
    Address_AddressType (..),

    -- ** Address_IpVersion
    Address_IpVersion (..),

    -- ** Address_NetworkTier
    Address_NetworkTier (..),

    -- ** Address_Purpose
    Address_Purpose (..),

    -- ** Address_Status
    Address_Status (..),

    -- ** AddressAggregatedList
    AddressAggregatedList (..),
    newAddressAggregatedList,

    -- ** AddressAggregatedList_Items
    AddressAggregatedList_Items (..),
    newAddressAggregatedList_Items,

    -- ** AddressAggregatedList_Warning
    AddressAggregatedList_Warning (..),
    newAddressAggregatedList_Warning,

    -- ** AddressAggregatedList_Warning_Code
    AddressAggregatedList_Warning_Code (..),

    -- ** AddressAggregatedList_Warning_DataItem
    AddressAggregatedList_Warning_DataItem (..),
    newAddressAggregatedList_Warning_DataItem,

    -- ** AddressList
    AddressList (..),
    newAddressList,

    -- ** AddressList_Warning
    AddressList_Warning (..),
    newAddressList_Warning,

    -- ** AddressList_Warning_Code
    AddressList_Warning_Code (..),

    -- ** AddressList_Warning_DataItem
    AddressList_Warning_DataItem (..),
    newAddressList_Warning_DataItem,

    -- ** AddressesScopedList
    AddressesScopedList (..),
    newAddressesScopedList,

    -- ** AddressesScopedList_Warning
    AddressesScopedList_Warning (..),
    newAddressesScopedList_Warning,

    -- ** AddressesScopedList_Warning_Code
    AddressesScopedList_Warning_Code (..),

    -- ** AddressesScopedList_Warning_DataItem
    AddressesScopedList_Warning_DataItem (..),
    newAddressesScopedList_Warning_DataItem,

    -- ** AdvancedMachineFeatures
    AdvancedMachineFeatures (..),
    newAdvancedMachineFeatures,

    -- ** AliasIpRange
    AliasIpRange (..),
    newAliasIpRange,

    -- ** AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk
    AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk (..),
    newAllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk,

    -- ** AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk_Interface
    AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk_Interface (..),

    -- ** AllocationSpecificSKUAllocationReservedInstanceProperties
    AllocationSpecificSKUAllocationReservedInstanceProperties (..),
    newAllocationSpecificSKUAllocationReservedInstanceProperties,

    -- ** AllocationSpecificSKUReservation
    AllocationSpecificSKUReservation (..),
    newAllocationSpecificSKUReservation,

    -- ** AttachedDisk
    AttachedDisk (..),
    newAttachedDisk,

    -- ** AttachedDisk_Interface
    AttachedDisk_Interface (..),

    -- ** AttachedDisk_Mode
    AttachedDisk_Mode (..),

    -- ** AttachedDisk_Type
    AttachedDisk_Type (..),

    -- ** AttachedDiskInitializeParams
    AttachedDiskInitializeParams (..),
    newAttachedDiskInitializeParams,

    -- ** AttachedDiskInitializeParams_Labels
    AttachedDiskInitializeParams_Labels (..),
    newAttachedDiskInitializeParams_Labels,

    -- ** AttachedDiskInitializeParams_OnUpdateAction
    AttachedDiskInitializeParams_OnUpdateAction (..),

    -- ** AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- ** AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- ** AuditLogConfig_LogType
    AuditLogConfig_LogType (..),

    -- ** AuthorizationLoggingOptions
    AuthorizationLoggingOptions (..),
    newAuthorizationLoggingOptions,

    -- ** AuthorizationLoggingOptions_PermissionType
    AuthorizationLoggingOptions_PermissionType (..),

    -- ** Autoscaler
    Autoscaler (..),
    newAutoscaler,

    -- ** Autoscaler_ScalingScheduleStatus
    Autoscaler_ScalingScheduleStatus (..),
    newAutoscaler_ScalingScheduleStatus,

    -- ** Autoscaler_Status
    Autoscaler_Status (..),

    -- ** AutoscalerAggregatedList
    AutoscalerAggregatedList (..),
    newAutoscalerAggregatedList,

    -- ** AutoscalerAggregatedList_Items
    AutoscalerAggregatedList_Items (..),
    newAutoscalerAggregatedList_Items,

    -- ** AutoscalerAggregatedList_Warning
    AutoscalerAggregatedList_Warning (..),
    newAutoscalerAggregatedList_Warning,

    -- ** AutoscalerAggregatedList_Warning_Code
    AutoscalerAggregatedList_Warning_Code (..),

    -- ** AutoscalerAggregatedList_Warning_DataItem
    AutoscalerAggregatedList_Warning_DataItem (..),
    newAutoscalerAggregatedList_Warning_DataItem,

    -- ** AutoscalerList
    AutoscalerList (..),
    newAutoscalerList,

    -- ** AutoscalerList_Warning
    AutoscalerList_Warning (..),
    newAutoscalerList_Warning,

    -- ** AutoscalerList_Warning_Code
    AutoscalerList_Warning_Code (..),

    -- ** AutoscalerList_Warning_DataItem
    AutoscalerList_Warning_DataItem (..),
    newAutoscalerList_Warning_DataItem,

    -- ** AutoscalerStatusDetails
    AutoscalerStatusDetails (..),
    newAutoscalerStatusDetails,

    -- ** AutoscalerStatusDetails_Type
    AutoscalerStatusDetails_Type (..),

    -- ** AutoscalersScopedList
    AutoscalersScopedList (..),
    newAutoscalersScopedList,

    -- ** AutoscalersScopedList_Warning
    AutoscalersScopedList_Warning (..),
    newAutoscalersScopedList_Warning,

    -- ** AutoscalersScopedList_Warning_Code
    AutoscalersScopedList_Warning_Code (..),

    -- ** AutoscalersScopedList_Warning_DataItem
    AutoscalersScopedList_Warning_DataItem (..),
    newAutoscalersScopedList_Warning_DataItem,

    -- ** AutoscalingPolicy
    AutoscalingPolicy (..),
    newAutoscalingPolicy,

    -- ** AutoscalingPolicy_Mode
    AutoscalingPolicy_Mode (..),

    -- ** AutoscalingPolicy_ScalingSchedules
    AutoscalingPolicy_ScalingSchedules (..),
    newAutoscalingPolicy_ScalingSchedules,

    -- ** AutoscalingPolicyCpuUtilization
    AutoscalingPolicyCpuUtilization (..),
    newAutoscalingPolicyCpuUtilization,

    -- ** AutoscalingPolicyCpuUtilization_PredictiveMethod
    AutoscalingPolicyCpuUtilization_PredictiveMethod (..),

    -- ** AutoscalingPolicyCustomMetricUtilization
    AutoscalingPolicyCustomMetricUtilization (..),
    newAutoscalingPolicyCustomMetricUtilization,

    -- ** AutoscalingPolicyCustomMetricUtilization_UtilizationTargetType
    AutoscalingPolicyCustomMetricUtilization_UtilizationTargetType (..),

    -- ** AutoscalingPolicyLoadBalancingUtilization
    AutoscalingPolicyLoadBalancingUtilization (..),
    newAutoscalingPolicyLoadBalancingUtilization,

    -- ** AutoscalingPolicyScaleInControl
    AutoscalingPolicyScaleInControl (..),
    newAutoscalingPolicyScaleInControl,

    -- ** AutoscalingPolicyScalingSchedule
    AutoscalingPolicyScalingSchedule (..),
    newAutoscalingPolicyScalingSchedule,

    -- ** Backend
    Backend (..),
    newBackend,

    -- ** Backend_BalancingMode
    Backend_BalancingMode (..),

    -- ** BackendBucket
    BackendBucket (..),
    newBackendBucket,

    -- ** BackendBucketCdnPolicy
    BackendBucketCdnPolicy (..),
    newBackendBucketCdnPolicy,

    -- ** BackendBucketCdnPolicy_CacheMode
    BackendBucketCdnPolicy_CacheMode (..),

    -- ** BackendBucketCdnPolicyBypassCacheOnRequestHeader
    BackendBucketCdnPolicyBypassCacheOnRequestHeader (..),
    newBackendBucketCdnPolicyBypassCacheOnRequestHeader,

    -- ** BackendBucketCdnPolicyCacheKeyPolicy
    BackendBucketCdnPolicyCacheKeyPolicy (..),
    newBackendBucketCdnPolicyCacheKeyPolicy,

    -- ** BackendBucketCdnPolicyNegativeCachingPolicy
    BackendBucketCdnPolicyNegativeCachingPolicy (..),
    newBackendBucketCdnPolicyNegativeCachingPolicy,

    -- ** BackendBucketList
    BackendBucketList (..),
    newBackendBucketList,

    -- ** BackendBucketList_Warning
    BackendBucketList_Warning (..),
    newBackendBucketList_Warning,

    -- ** BackendBucketList_Warning_Code
    BackendBucketList_Warning_Code (..),

    -- ** BackendBucketList_Warning_DataItem
    BackendBucketList_Warning_DataItem (..),
    newBackendBucketList_Warning_DataItem,

    -- ** BackendService
    BackendService (..),
    newBackendService,

    -- ** BackendService_LoadBalancingScheme
    BackendService_LoadBalancingScheme (..),

    -- ** BackendService_LocalityLbPolicy
    BackendService_LocalityLbPolicy (..),

    -- ** BackendService_Protocol
    BackendService_Protocol (..),

    -- ** BackendService_SessionAffinity
    BackendService_SessionAffinity (..),

    -- ** BackendServiceAggregatedList
    BackendServiceAggregatedList (..),
    newBackendServiceAggregatedList,

    -- ** BackendServiceAggregatedList_Items
    BackendServiceAggregatedList_Items (..),
    newBackendServiceAggregatedList_Items,

    -- ** BackendServiceAggregatedList_Warning
    BackendServiceAggregatedList_Warning (..),
    newBackendServiceAggregatedList_Warning,

    -- ** BackendServiceAggregatedList_Warning_Code
    BackendServiceAggregatedList_Warning_Code (..),

    -- ** BackendServiceAggregatedList_Warning_DataItem
    BackendServiceAggregatedList_Warning_DataItem (..),
    newBackendServiceAggregatedList_Warning_DataItem,

    -- ** BackendServiceCdnPolicy
    BackendServiceCdnPolicy (..),
    newBackendServiceCdnPolicy,

    -- ** BackendServiceCdnPolicy_CacheMode
    BackendServiceCdnPolicy_CacheMode (..),

    -- ** BackendServiceCdnPolicyBypassCacheOnRequestHeader
    BackendServiceCdnPolicyBypassCacheOnRequestHeader (..),
    newBackendServiceCdnPolicyBypassCacheOnRequestHeader,

    -- ** BackendServiceCdnPolicyNegativeCachingPolicy
    BackendServiceCdnPolicyNegativeCachingPolicy (..),
    newBackendServiceCdnPolicyNegativeCachingPolicy,

    -- ** BackendServiceConnectionTrackingPolicy
    BackendServiceConnectionTrackingPolicy (..),
    newBackendServiceConnectionTrackingPolicy,

    -- ** BackendServiceConnectionTrackingPolicy_ConnectionPersistenceOnUnhealthyBackends
    BackendServiceConnectionTrackingPolicy_ConnectionPersistenceOnUnhealthyBackends (..),

    -- ** BackendServiceConnectionTrackingPolicy_TrackingMode
    BackendServiceConnectionTrackingPolicy_TrackingMode (..),

    -- ** BackendServiceFailoverPolicy
    BackendServiceFailoverPolicy (..),
    newBackendServiceFailoverPolicy,

    -- ** BackendServiceGroupHealth
    BackendServiceGroupHealth (..),
    newBackendServiceGroupHealth,

    -- ** BackendServiceGroupHealth_Annotations
    BackendServiceGroupHealth_Annotations (..),
    newBackendServiceGroupHealth_Annotations,

    -- ** BackendServiceIAP
    BackendServiceIAP (..),
    newBackendServiceIAP,

    -- ** BackendServiceList
    BackendServiceList (..),
    newBackendServiceList,

    -- ** BackendServiceList_Warning
    BackendServiceList_Warning (..),
    newBackendServiceList_Warning,

    -- ** BackendServiceList_Warning_Code
    BackendServiceList_Warning_Code (..),

    -- ** BackendServiceList_Warning_DataItem
    BackendServiceList_Warning_DataItem (..),
    newBackendServiceList_Warning_DataItem,

    -- ** BackendServiceLogConfig
    BackendServiceLogConfig (..),
    newBackendServiceLogConfig,

    -- ** BackendServiceReference
    BackendServiceReference (..),
    newBackendServiceReference,

    -- ** BackendServicesScopedList
    BackendServicesScopedList (..),
    newBackendServicesScopedList,

    -- ** BackendServicesScopedList_Warning
    BackendServicesScopedList_Warning (..),
    newBackendServicesScopedList_Warning,

    -- ** BackendServicesScopedList_Warning_Code
    BackendServicesScopedList_Warning_Code (..),

    -- ** BackendServicesScopedList_Warning_DataItem
    BackendServicesScopedList_Warning_DataItem (..),
    newBackendServicesScopedList_Warning_DataItem,

    -- ** BfdPacket
    BfdPacket (..),
    newBfdPacket,

    -- ** BfdPacket_Diagnostic
    BfdPacket_Diagnostic (..),

    -- ** BfdPacket_State
    BfdPacket_State (..),

    -- ** BfdStatus
    BfdStatus (..),
    newBfdStatus,

    -- ** BfdStatus_BfdSessionInitializationMode
    BfdStatus_BfdSessionInitializationMode (..),

    -- ** BfdStatus_LocalDiagnostic
    BfdStatus_LocalDiagnostic (..),

    -- ** BfdStatus_LocalState
    BfdStatus_LocalState (..),

    -- ** BfdStatusPacketCounts
    BfdStatusPacketCounts (..),
    newBfdStatusPacketCounts,

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** BulkInsertInstanceResource
    BulkInsertInstanceResource (..),
    newBulkInsertInstanceResource,

    -- ** BulkInsertInstanceResource_PerInstanceProperties
    BulkInsertInstanceResource_PerInstanceProperties (..),
    newBulkInsertInstanceResource_PerInstanceProperties,

    -- ** BulkInsertInstanceResourcePerInstanceProperties
    BulkInsertInstanceResourcePerInstanceProperties (..),
    newBulkInsertInstanceResourcePerInstanceProperties,

    -- ** CacheInvalidationRule
    CacheInvalidationRule (..),
    newCacheInvalidationRule,

    -- ** CacheKeyPolicy
    CacheKeyPolicy (..),
    newCacheKeyPolicy,

    -- ** CircuitBreakers
    CircuitBreakers (..),
    newCircuitBreakers,

    -- ** Commitment
    Commitment (..),
    newCommitment,

    -- ** Commitment_Category
    Commitment_Category (..),

    -- ** Commitment_Plan
    Commitment_Plan (..),

    -- ** Commitment_Status
    Commitment_Status (..),

    -- ** Commitment_Type
    Commitment_Type (..),

    -- ** CommitmentAggregatedList
    CommitmentAggregatedList (..),
    newCommitmentAggregatedList,

    -- ** CommitmentAggregatedList_Items
    CommitmentAggregatedList_Items (..),
    newCommitmentAggregatedList_Items,

    -- ** CommitmentAggregatedList_Warning
    CommitmentAggregatedList_Warning (..),
    newCommitmentAggregatedList_Warning,

    -- ** CommitmentAggregatedList_Warning_Code
    CommitmentAggregatedList_Warning_Code (..),

    -- ** CommitmentAggregatedList_Warning_DataItem
    CommitmentAggregatedList_Warning_DataItem (..),
    newCommitmentAggregatedList_Warning_DataItem,

    -- ** CommitmentList
    CommitmentList (..),
    newCommitmentList,

    -- ** CommitmentList_Warning
    CommitmentList_Warning (..),
    newCommitmentList_Warning,

    -- ** CommitmentList_Warning_Code
    CommitmentList_Warning_Code (..),

    -- ** CommitmentList_Warning_DataItem
    CommitmentList_Warning_DataItem (..),
    newCommitmentList_Warning_DataItem,

    -- ** CommitmentsScopedList
    CommitmentsScopedList (..),
    newCommitmentsScopedList,

    -- ** CommitmentsScopedList_Warning
    CommitmentsScopedList_Warning (..),
    newCommitmentsScopedList_Warning,

    -- ** CommitmentsScopedList_Warning_Code
    CommitmentsScopedList_Warning_Code (..),

    -- ** CommitmentsScopedList_Warning_DataItem
    CommitmentsScopedList_Warning_DataItem (..),
    newCommitmentsScopedList_Warning_DataItem,

    -- ** Condition
    Condition (..),
    newCondition,

    -- ** Condition_Iam
    Condition_Iam (..),

    -- ** Condition_Op
    Condition_Op (..),

    -- ** Condition_Sys
    Condition_Sys (..),

    -- ** ConfidentialInstanceConfig
    ConfidentialInstanceConfig (..),
    newConfidentialInstanceConfig,

    -- ** ConnectionDraining
    ConnectionDraining (..),
    newConnectionDraining,

    -- ** ConsistentHashLoadBalancerSettings
    ConsistentHashLoadBalancerSettings (..),
    newConsistentHashLoadBalancerSettings,

    -- ** ConsistentHashLoadBalancerSettingsHttpCookie
    ConsistentHashLoadBalancerSettingsHttpCookie (..),
    newConsistentHashLoadBalancerSettingsHttpCookie,

    -- ** CorsPolicy
    CorsPolicy (..),
    newCorsPolicy,

    -- ** CustomerEncryptionKey
    CustomerEncryptionKey (..),
    newCustomerEncryptionKey,

    -- ** CustomerEncryptionKeyProtectedDisk
    CustomerEncryptionKeyProtectedDisk (..),
    newCustomerEncryptionKeyProtectedDisk,

    -- ** DeprecationStatus
    DeprecationStatus (..),
    newDeprecationStatus,

    -- ** DeprecationStatus_State
    DeprecationStatus_State (..),

    -- ** Disk
    Disk (..),
    newDisk,

    -- ** Disk_Labels
    Disk_Labels (..),
    newDisk_Labels,

    -- ** Disk_Status
    Disk_Status (..),

    -- ** DiskAggregatedList
    DiskAggregatedList (..),
    newDiskAggregatedList,

    -- ** DiskAggregatedList_Items
    DiskAggregatedList_Items (..),
    newDiskAggregatedList_Items,

    -- ** DiskAggregatedList_Warning
    DiskAggregatedList_Warning (..),
    newDiskAggregatedList_Warning,

    -- ** DiskAggregatedList_Warning_Code
    DiskAggregatedList_Warning_Code (..),

    -- ** DiskAggregatedList_Warning_DataItem
    DiskAggregatedList_Warning_DataItem (..),
    newDiskAggregatedList_Warning_DataItem,

    -- ** DiskInstantiationConfig
    DiskInstantiationConfig (..),
    newDiskInstantiationConfig,

    -- ** DiskInstantiationConfig_InstantiateFrom
    DiskInstantiationConfig_InstantiateFrom (..),

    -- ** DiskList
    DiskList (..),
    newDiskList,

    -- ** DiskList_Warning
    DiskList_Warning (..),
    newDiskList_Warning,

    -- ** DiskList_Warning_Code
    DiskList_Warning_Code (..),

    -- ** DiskList_Warning_DataItem
    DiskList_Warning_DataItem (..),
    newDiskList_Warning_DataItem,

    -- ** DiskMoveRequest
    DiskMoveRequest (..),
    newDiskMoveRequest,

    -- ** DiskType
    DiskType (..),
    newDiskType,

    -- ** DiskTypeAggregatedList
    DiskTypeAggregatedList (..),
    newDiskTypeAggregatedList,

    -- ** DiskTypeAggregatedList_Items
    DiskTypeAggregatedList_Items (..),
    newDiskTypeAggregatedList_Items,

    -- ** DiskTypeAggregatedList_Warning
    DiskTypeAggregatedList_Warning (..),
    newDiskTypeAggregatedList_Warning,

    -- ** DiskTypeAggregatedList_Warning_Code
    DiskTypeAggregatedList_Warning_Code (..),

    -- ** DiskTypeAggregatedList_Warning_DataItem
    DiskTypeAggregatedList_Warning_DataItem (..),
    newDiskTypeAggregatedList_Warning_DataItem,

    -- ** DiskTypeList
    DiskTypeList (..),
    newDiskTypeList,

    -- ** DiskTypeList_Warning
    DiskTypeList_Warning (..),
    newDiskTypeList_Warning,

    -- ** DiskTypeList_Warning_Code
    DiskTypeList_Warning_Code (..),

    -- ** DiskTypeList_Warning_DataItem
    DiskTypeList_Warning_DataItem (..),
    newDiskTypeList_Warning_DataItem,

    -- ** DiskTypesScopedList
    DiskTypesScopedList (..),
    newDiskTypesScopedList,

    -- ** DiskTypesScopedList_Warning
    DiskTypesScopedList_Warning (..),
    newDiskTypesScopedList_Warning,

    -- ** DiskTypesScopedList_Warning_Code
    DiskTypesScopedList_Warning_Code (..),

    -- ** DiskTypesScopedList_Warning_DataItem
    DiskTypesScopedList_Warning_DataItem (..),
    newDiskTypesScopedList_Warning_DataItem,

    -- ** DisksAddResourcePoliciesRequest
    DisksAddResourcePoliciesRequest (..),
    newDisksAddResourcePoliciesRequest,

    -- ** DisksRemoveResourcePoliciesRequest
    DisksRemoveResourcePoliciesRequest (..),
    newDisksRemoveResourcePoliciesRequest,

    -- ** DisksResizeRequest
    DisksResizeRequest (..),
    newDisksResizeRequest,

    -- ** DisksScopedList
    DisksScopedList (..),
    newDisksScopedList,

    -- ** DisksScopedList_Warning
    DisksScopedList_Warning (..),
    newDisksScopedList_Warning,

    -- ** DisksScopedList_Warning_Code
    DisksScopedList_Warning_Code (..),

    -- ** DisksScopedList_Warning_DataItem
    DisksScopedList_Warning_DataItem (..),
    newDisksScopedList_Warning_DataItem,

    -- ** DisplayDevice
    DisplayDevice (..),
    newDisplayDevice,

    -- ** DistributionPolicy
    DistributionPolicy (..),
    newDistributionPolicy,

    -- ** DistributionPolicy_TargetShape
    DistributionPolicy_TargetShape (..),

    -- ** DistributionPolicyZoneConfiguration
    DistributionPolicyZoneConfiguration (..),
    newDistributionPolicyZoneConfiguration,

    -- ** Duration
    Duration (..),
    newDuration,

    -- ** ExchangedPeeringRoute
    ExchangedPeeringRoute (..),
    newExchangedPeeringRoute,

    -- ** ExchangedPeeringRoute_Type
    ExchangedPeeringRoute_Type (..),

    -- ** ExchangedPeeringRoutesList
    ExchangedPeeringRoutesList (..),
    newExchangedPeeringRoutesList,

    -- ** ExchangedPeeringRoutesList_Warning
    ExchangedPeeringRoutesList_Warning (..),
    newExchangedPeeringRoutesList_Warning,

    -- ** ExchangedPeeringRoutesList_Warning_Code
    ExchangedPeeringRoutesList_Warning_Code (..),

    -- ** ExchangedPeeringRoutesList_Warning_DataItem
    ExchangedPeeringRoutesList_Warning_DataItem (..),
    newExchangedPeeringRoutesList_Warning_DataItem,

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** ExternalVpnGateway
    ExternalVpnGateway (..),
    newExternalVpnGateway,

    -- ** ExternalVpnGateway_Labels
    ExternalVpnGateway_Labels (..),
    newExternalVpnGateway_Labels,

    -- ** ExternalVpnGateway_RedundancyType
    ExternalVpnGateway_RedundancyType (..),

    -- ** ExternalVpnGatewayInterface
    ExternalVpnGatewayInterface (..),
    newExternalVpnGatewayInterface,

    -- ** ExternalVpnGatewayList
    ExternalVpnGatewayList (..),
    newExternalVpnGatewayList,

    -- ** ExternalVpnGatewayList_Warning
    ExternalVpnGatewayList_Warning (..),
    newExternalVpnGatewayList_Warning,

    -- ** ExternalVpnGatewayList_Warning_Code
    ExternalVpnGatewayList_Warning_Code (..),

    -- ** ExternalVpnGatewayList_Warning_DataItem
    ExternalVpnGatewayList_Warning_DataItem (..),
    newExternalVpnGatewayList_Warning_DataItem,

    -- ** FileContentBuffer
    FileContentBuffer (..),
    newFileContentBuffer,

    -- ** FileContentBuffer_FileType
    FileContentBuffer_FileType (..),

    -- ** Firewall
    Firewall (..),
    newFirewall,

    -- ** Firewall_AllowedItem
    Firewall_AllowedItem (..),
    newFirewall_AllowedItem,

    -- ** Firewall_DeniedItem
    Firewall_DeniedItem (..),
    newFirewall_DeniedItem,

    -- ** Firewall_Direction
    Firewall_Direction (..),

    -- ** FirewallList
    FirewallList (..),
    newFirewallList,

    -- ** FirewallList_Warning
    FirewallList_Warning (..),
    newFirewallList_Warning,

    -- ** FirewallList_Warning_Code
    FirewallList_Warning_Code (..),

    -- ** FirewallList_Warning_DataItem
    FirewallList_Warning_DataItem (..),
    newFirewallList_Warning_DataItem,

    -- ** FirewallLogConfig
    FirewallLogConfig (..),
    newFirewallLogConfig,

    -- ** FirewallLogConfig_Metadata
    FirewallLogConfig_Metadata (..),

    -- ** FirewallPoliciesListAssociationsResponse
    FirewallPoliciesListAssociationsResponse (..),
    newFirewallPoliciesListAssociationsResponse,

    -- ** FirewallPolicy
    FirewallPolicy (..),
    newFirewallPolicy,

    -- ** FirewallPolicyAssociation
    FirewallPolicyAssociation (..),
    newFirewallPolicyAssociation,

    -- ** FirewallPolicyList
    FirewallPolicyList (..),
    newFirewallPolicyList,

    -- ** FirewallPolicyList_Warning
    FirewallPolicyList_Warning (..),
    newFirewallPolicyList_Warning,

    -- ** FirewallPolicyList_Warning_Code
    FirewallPolicyList_Warning_Code (..),

    -- ** FirewallPolicyList_Warning_DataItem
    FirewallPolicyList_Warning_DataItem (..),
    newFirewallPolicyList_Warning_DataItem,

    -- ** FirewallPolicyRule
    FirewallPolicyRule (..),
    newFirewallPolicyRule,

    -- ** FirewallPolicyRule_Direction
    FirewallPolicyRule_Direction (..),

    -- ** FirewallPolicyRuleMatcher
    FirewallPolicyRuleMatcher (..),
    newFirewallPolicyRuleMatcher,

    -- ** FirewallPolicyRuleMatcherLayer4Config
    FirewallPolicyRuleMatcherLayer4Config (..),
    newFirewallPolicyRuleMatcherLayer4Config,

    -- ** FirewallPolicyRuleSecureTag
    FirewallPolicyRuleSecureTag (..),
    newFirewallPolicyRuleSecureTag,

    -- ** FirewallPolicyRuleSecureTag_State
    FirewallPolicyRuleSecureTag_State (..),

    -- ** FixedOrPercent
    FixedOrPercent (..),
    newFixedOrPercent,

    -- ** ForwardingRule
    ForwardingRule (..),
    newForwardingRule,

    -- ** ForwardingRule_IPProtocol
    ForwardingRule_IPProtocol (..),

    -- ** ForwardingRule_IpVersion
    ForwardingRule_IpVersion (..),

    -- ** ForwardingRule_Labels
    ForwardingRule_Labels (..),
    newForwardingRule_Labels,

    -- ** ForwardingRule_LoadBalancingScheme
    ForwardingRule_LoadBalancingScheme (..),

    -- ** ForwardingRule_NetworkTier
    ForwardingRule_NetworkTier (..),

    -- ** ForwardingRule_PscConnectionStatus
    ForwardingRule_PscConnectionStatus (..),

    -- ** ForwardingRuleAggregatedList
    ForwardingRuleAggregatedList (..),
    newForwardingRuleAggregatedList,

    -- ** ForwardingRuleAggregatedList_Items
    ForwardingRuleAggregatedList_Items (..),
    newForwardingRuleAggregatedList_Items,

    -- ** ForwardingRuleAggregatedList_Warning
    ForwardingRuleAggregatedList_Warning (..),
    newForwardingRuleAggregatedList_Warning,

    -- ** ForwardingRuleAggregatedList_Warning_Code
    ForwardingRuleAggregatedList_Warning_Code (..),

    -- ** ForwardingRuleAggregatedList_Warning_DataItem
    ForwardingRuleAggregatedList_Warning_DataItem (..),
    newForwardingRuleAggregatedList_Warning_DataItem,

    -- ** ForwardingRuleList
    ForwardingRuleList (..),
    newForwardingRuleList,

    -- ** ForwardingRuleList_Warning
    ForwardingRuleList_Warning (..),
    newForwardingRuleList_Warning,

    -- ** ForwardingRuleList_Warning_Code
    ForwardingRuleList_Warning_Code (..),

    -- ** ForwardingRuleList_Warning_DataItem
    ForwardingRuleList_Warning_DataItem (..),
    newForwardingRuleList_Warning_DataItem,

    -- ** ForwardingRuleReference
    ForwardingRuleReference (..),
    newForwardingRuleReference,

    -- ** ForwardingRuleServiceDirectoryRegistration
    ForwardingRuleServiceDirectoryRegistration (..),
    newForwardingRuleServiceDirectoryRegistration,

    -- ** ForwardingRulesScopedList
    ForwardingRulesScopedList (..),
    newForwardingRulesScopedList,

    -- ** ForwardingRulesScopedList_Warning
    ForwardingRulesScopedList_Warning (..),
    newForwardingRulesScopedList_Warning,

    -- ** ForwardingRulesScopedList_Warning_Code
    ForwardingRulesScopedList_Warning_Code (..),

    -- ** ForwardingRulesScopedList_Warning_DataItem
    ForwardingRulesScopedList_Warning_DataItem (..),
    newForwardingRulesScopedList_Warning_DataItem,

    -- ** GRPCHealthCheck
    GRPCHealthCheck (..),
    newGRPCHealthCheck,

    -- ** GRPCHealthCheck_PortSpecification
    GRPCHealthCheck_PortSpecification (..),

    -- ** GlobalNetworkEndpointGroupsAttachEndpointsRequest
    GlobalNetworkEndpointGroupsAttachEndpointsRequest (..),
    newGlobalNetworkEndpointGroupsAttachEndpointsRequest,

    -- ** GlobalNetworkEndpointGroupsDetachEndpointsRequest
    GlobalNetworkEndpointGroupsDetachEndpointsRequest (..),
    newGlobalNetworkEndpointGroupsDetachEndpointsRequest,

    -- ** GlobalOrganizationSetPolicyRequest
    GlobalOrganizationSetPolicyRequest (..),
    newGlobalOrganizationSetPolicyRequest,

    -- ** GlobalSetLabelsRequest
    GlobalSetLabelsRequest (..),
    newGlobalSetLabelsRequest,

    -- ** GlobalSetLabelsRequest_Labels
    GlobalSetLabelsRequest_Labels (..),
    newGlobalSetLabelsRequest_Labels,

    -- ** GlobalSetPolicyRequest
    GlobalSetPolicyRequest (..),
    newGlobalSetPolicyRequest,

    -- ** GuestAttributes
    GuestAttributes (..),
    newGuestAttributes,

    -- ** GuestAttributesEntry
    GuestAttributesEntry (..),
    newGuestAttributesEntry,

    -- ** GuestAttributesValue
    GuestAttributesValue (..),
    newGuestAttributesValue,

    -- ** GuestOsFeature
    GuestOsFeature (..),
    newGuestOsFeature,

    -- ** GuestOsFeature_Type
    GuestOsFeature_Type (..),

    -- ** HTTP2HealthCheck
    HTTP2HealthCheck (..),
    newHTTP2HealthCheck,

    -- ** HTTP2HealthCheck_PortSpecification
    HTTP2HealthCheck_PortSpecification (..),

    -- ** HTTP2HealthCheck_ProxyHeader
    HTTP2HealthCheck_ProxyHeader (..),

    -- ** HTTPHealthCheck
    HTTPHealthCheck (..),
    newHTTPHealthCheck,

    -- ** HTTPHealthCheck_PortSpecification
    HTTPHealthCheck_PortSpecification (..),

    -- ** HTTPHealthCheck_ProxyHeader
    HTTPHealthCheck_ProxyHeader (..),

    -- ** HTTPSHealthCheck
    HTTPSHealthCheck (..),
    newHTTPSHealthCheck,

    -- ** HTTPSHealthCheck_PortSpecification
    HTTPSHealthCheck_PortSpecification (..),

    -- ** HTTPSHealthCheck_ProxyHeader
    HTTPSHealthCheck_ProxyHeader (..),

    -- ** HealthCheck
    HealthCheck (..),
    newHealthCheck,

    -- ** HealthCheck_Type
    HealthCheck_Type (..),

    -- ** HealthCheckList
    HealthCheckList (..),
    newHealthCheckList,

    -- ** HealthCheckList_Warning
    HealthCheckList_Warning (..),
    newHealthCheckList_Warning,

    -- ** HealthCheckList_Warning_Code
    HealthCheckList_Warning_Code (..),

    -- ** HealthCheckList_Warning_DataItem
    HealthCheckList_Warning_DataItem (..),
    newHealthCheckList_Warning_DataItem,

    -- ** HealthCheckLogConfig
    HealthCheckLogConfig (..),
    newHealthCheckLogConfig,

    -- ** HealthCheckReference
    HealthCheckReference (..),
    newHealthCheckReference,

    -- ** HealthCheckService
    HealthCheckService (..),
    newHealthCheckService,

    -- ** HealthCheckService_HealthStatusAggregationPolicy
    HealthCheckService_HealthStatusAggregationPolicy (..),

    -- ** HealthCheckServiceReference
    HealthCheckServiceReference (..),
    newHealthCheckServiceReference,

    -- ** HealthCheckServicesList
    HealthCheckServicesList (..),
    newHealthCheckServicesList,

    -- ** HealthCheckServicesList_Warning
    HealthCheckServicesList_Warning (..),
    newHealthCheckServicesList_Warning,

    -- ** HealthCheckServicesList_Warning_Code
    HealthCheckServicesList_Warning_Code (..),

    -- ** HealthCheckServicesList_Warning_DataItem
    HealthCheckServicesList_Warning_DataItem (..),
    newHealthCheckServicesList_Warning_DataItem,

    -- ** HealthChecksAggregatedList
    HealthChecksAggregatedList (..),
    newHealthChecksAggregatedList,

    -- ** HealthChecksAggregatedList_Items
    HealthChecksAggregatedList_Items (..),
    newHealthChecksAggregatedList_Items,

    -- ** HealthChecksAggregatedList_Warning
    HealthChecksAggregatedList_Warning (..),
    newHealthChecksAggregatedList_Warning,

    -- ** HealthChecksAggregatedList_Warning_Code
    HealthChecksAggregatedList_Warning_Code (..),

    -- ** HealthChecksAggregatedList_Warning_DataItem
    HealthChecksAggregatedList_Warning_DataItem (..),
    newHealthChecksAggregatedList_Warning_DataItem,

    -- ** HealthChecksScopedList
    HealthChecksScopedList (..),
    newHealthChecksScopedList,

    -- ** HealthChecksScopedList_Warning
    HealthChecksScopedList_Warning (..),
    newHealthChecksScopedList_Warning,

    -- ** HealthChecksScopedList_Warning_Code
    HealthChecksScopedList_Warning_Code (..),

    -- ** HealthChecksScopedList_Warning_DataItem
    HealthChecksScopedList_Warning_DataItem (..),
    newHealthChecksScopedList_Warning_DataItem,

    -- ** HealthStatus
    HealthStatus (..),
    newHealthStatus,

    -- ** HealthStatus_Annotations
    HealthStatus_Annotations (..),
    newHealthStatus_Annotations,

    -- ** HealthStatus_HealthState
    HealthStatus_HealthState (..),

    -- ** HealthStatus_WeightError
    HealthStatus_WeightError (..),

    -- ** HealthStatusForNetworkEndpoint
    HealthStatusForNetworkEndpoint (..),
    newHealthStatusForNetworkEndpoint,

    -- ** HealthStatusForNetworkEndpoint_HealthState
    HealthStatusForNetworkEndpoint_HealthState (..),

    -- ** HostRule
    HostRule (..),
    newHostRule,

    -- ** HttpFaultAbort
    HttpFaultAbort (..),
    newHttpFaultAbort,

    -- ** HttpFaultDelay
    HttpFaultDelay (..),
    newHttpFaultDelay,

    -- ** HttpFaultInjection
    HttpFaultInjection (..),
    newHttpFaultInjection,

    -- ** HttpHeaderAction
    HttpHeaderAction (..),
    newHttpHeaderAction,

    -- ** HttpHeaderMatch
    HttpHeaderMatch (..),
    newHttpHeaderMatch,

    -- ** HttpHeaderOption
    HttpHeaderOption (..),
    newHttpHeaderOption,

    -- ** HttpHealthCheck
    HttpHealthCheck (..),
    newHttpHealthCheck,

    -- ** HttpHealthCheckList
    HttpHealthCheckList (..),
    newHttpHealthCheckList,

    -- ** HttpHealthCheckList_Warning
    HttpHealthCheckList_Warning (..),
    newHttpHealthCheckList_Warning,

    -- ** HttpHealthCheckList_Warning_Code
    HttpHealthCheckList_Warning_Code (..),

    -- ** HttpHealthCheckList_Warning_DataItem
    HttpHealthCheckList_Warning_DataItem (..),
    newHttpHealthCheckList_Warning_DataItem,

    -- ** HttpQueryParameterMatch
    HttpQueryParameterMatch (..),
    newHttpQueryParameterMatch,

    -- ** HttpRedirectAction
    HttpRedirectAction (..),
    newHttpRedirectAction,

    -- ** HttpRedirectAction_RedirectResponseCode
    HttpRedirectAction_RedirectResponseCode (..),

    -- ** HttpRetryPolicy
    HttpRetryPolicy (..),
    newHttpRetryPolicy,

    -- ** HttpRouteAction
    HttpRouteAction (..),
    newHttpRouteAction,

    -- ** HttpRouteRule
    HttpRouteRule (..),
    newHttpRouteRule,

    -- ** HttpRouteRuleMatch
    HttpRouteRuleMatch (..),
    newHttpRouteRuleMatch,

    -- ** HttpsHealthCheck
    HttpsHealthCheck (..),
    newHttpsHealthCheck,

    -- ** HttpsHealthCheckList
    HttpsHealthCheckList (..),
    newHttpsHealthCheckList,

    -- ** HttpsHealthCheckList_Warning
    HttpsHealthCheckList_Warning (..),
    newHttpsHealthCheckList_Warning,

    -- ** HttpsHealthCheckList_Warning_Code
    HttpsHealthCheckList_Warning_Code (..),

    -- ** HttpsHealthCheckList_Warning_DataItem
    HttpsHealthCheckList_Warning_DataItem (..),
    newHttpsHealthCheckList_Warning_DataItem,

    -- ** Image
    Image (..),
    newImage,

    -- ** Image_Labels
    Image_Labels (..),
    newImage_Labels,

    -- ** Image_RawDisk
    Image_RawDisk (..),
    newImage_RawDisk,

    -- ** Image_RawDisk_ContainerType
    Image_RawDisk_ContainerType (..),

    -- ** Image_SourceType
    Image_SourceType (..),

    -- ** Image_Status
    Image_Status (..),

    -- ** ImageFamilyView
    ImageFamilyView (..),
    newImageFamilyView,

    -- ** ImageList
    ImageList (..),
    newImageList,

    -- ** ImageList_Warning
    ImageList_Warning (..),
    newImageList_Warning,

    -- ** ImageList_Warning_Code
    ImageList_Warning_Code (..),

    -- ** ImageList_Warning_DataItem
    ImageList_Warning_DataItem (..),
    newImageList_Warning_DataItem,

    -- ** InitialStateConfig
    InitialStateConfig (..),
    newInitialStateConfig,

    -- ** Instance
    Instance (..),
    newInstance,

    -- ** Instance_Labels
    Instance_Labels (..),
    newInstance_Labels,

    -- ** Instance_PrivateIpv6GoogleAccess
    Instance_PrivateIpv6GoogleAccess (..),

    -- ** Instance_Status
    Instance_Status (..),

    -- ** InstanceAggregatedList
    InstanceAggregatedList (..),
    newInstanceAggregatedList,

    -- ** InstanceAggregatedList_Items
    InstanceAggregatedList_Items (..),
    newInstanceAggregatedList_Items,

    -- ** InstanceAggregatedList_Warning
    InstanceAggregatedList_Warning (..),
    newInstanceAggregatedList_Warning,

    -- ** InstanceAggregatedList_Warning_Code
    InstanceAggregatedList_Warning_Code (..),

    -- ** InstanceAggregatedList_Warning_DataItem
    InstanceAggregatedList_Warning_DataItem (..),
    newInstanceAggregatedList_Warning_DataItem,

    -- ** InstanceGroup
    InstanceGroup (..),
    newInstanceGroup,

    -- ** InstanceGroupAggregatedList
    InstanceGroupAggregatedList (..),
    newInstanceGroupAggregatedList,

    -- ** InstanceGroupAggregatedList_Items
    InstanceGroupAggregatedList_Items (..),
    newInstanceGroupAggregatedList_Items,

    -- ** InstanceGroupAggregatedList_Warning
    InstanceGroupAggregatedList_Warning (..),
    newInstanceGroupAggregatedList_Warning,

    -- ** InstanceGroupAggregatedList_Warning_Code
    InstanceGroupAggregatedList_Warning_Code (..),

    -- ** InstanceGroupAggregatedList_Warning_DataItem
    InstanceGroupAggregatedList_Warning_DataItem (..),
    newInstanceGroupAggregatedList_Warning_DataItem,

    -- ** InstanceGroupList
    InstanceGroupList (..),
    newInstanceGroupList,

    -- ** InstanceGroupList_Warning
    InstanceGroupList_Warning (..),
    newInstanceGroupList_Warning,

    -- ** InstanceGroupList_Warning_Code
    InstanceGroupList_Warning_Code (..),

    -- ** InstanceGroupList_Warning_DataItem
    InstanceGroupList_Warning_DataItem (..),
    newInstanceGroupList_Warning_DataItem,

    -- ** InstanceGroupManager
    InstanceGroupManager (..),
    newInstanceGroupManager,

    -- ** InstanceGroupManagerActionsSummary
    InstanceGroupManagerActionsSummary (..),
    newInstanceGroupManagerActionsSummary,

    -- ** InstanceGroupManagerAggregatedList
    InstanceGroupManagerAggregatedList (..),
    newInstanceGroupManagerAggregatedList,

    -- ** InstanceGroupManagerAggregatedList_Items
    InstanceGroupManagerAggregatedList_Items (..),
    newInstanceGroupManagerAggregatedList_Items,

    -- ** InstanceGroupManagerAggregatedList_Warning
    InstanceGroupManagerAggregatedList_Warning (..),
    newInstanceGroupManagerAggregatedList_Warning,

    -- ** InstanceGroupManagerAggregatedList_Warning_Code
    InstanceGroupManagerAggregatedList_Warning_Code (..),

    -- ** InstanceGroupManagerAggregatedList_Warning_DataItem
    InstanceGroupManagerAggregatedList_Warning_DataItem (..),
    newInstanceGroupManagerAggregatedList_Warning_DataItem,

    -- ** InstanceGroupManagerAutoHealingPolicy
    InstanceGroupManagerAutoHealingPolicy (..),
    newInstanceGroupManagerAutoHealingPolicy,

    -- ** InstanceGroupManagerList
    InstanceGroupManagerList (..),
    newInstanceGroupManagerList,

    -- ** InstanceGroupManagerList_Warning
    InstanceGroupManagerList_Warning (..),
    newInstanceGroupManagerList_Warning,

    -- ** InstanceGroupManagerList_Warning_Code
    InstanceGroupManagerList_Warning_Code (..),

    -- ** InstanceGroupManagerList_Warning_DataItem
    InstanceGroupManagerList_Warning_DataItem (..),
    newInstanceGroupManagerList_Warning_DataItem,

    -- ** InstanceGroupManagerStatus
    InstanceGroupManagerStatus (..),
    newInstanceGroupManagerStatus,

    -- ** InstanceGroupManagerStatusStateful
    InstanceGroupManagerStatusStateful (..),
    newInstanceGroupManagerStatusStateful,

    -- ** InstanceGroupManagerStatusStatefulPerInstanceConfigs
    InstanceGroupManagerStatusStatefulPerInstanceConfigs (..),
    newInstanceGroupManagerStatusStatefulPerInstanceConfigs,

    -- ** InstanceGroupManagerStatusVersionTarget
    InstanceGroupManagerStatusVersionTarget (..),
    newInstanceGroupManagerStatusVersionTarget,

    -- ** InstanceGroupManagerUpdatePolicy
    InstanceGroupManagerUpdatePolicy (..),
    newInstanceGroupManagerUpdatePolicy,

    -- ** InstanceGroupManagerUpdatePolicy_InstanceRedistributionType
    InstanceGroupManagerUpdatePolicy_InstanceRedistributionType (..),

    -- ** InstanceGroupManagerUpdatePolicy_MinimalAction
    InstanceGroupManagerUpdatePolicy_MinimalAction (..),

    -- ** InstanceGroupManagerUpdatePolicy_MostDisruptiveAllowedAction
    InstanceGroupManagerUpdatePolicy_MostDisruptiveAllowedAction (..),

    -- ** InstanceGroupManagerUpdatePolicy_ReplacementMethod
    InstanceGroupManagerUpdatePolicy_ReplacementMethod (..),

    -- ** InstanceGroupManagerUpdatePolicy_Type
    InstanceGroupManagerUpdatePolicy_Type (..),

    -- ** InstanceGroupManagerVersion
    InstanceGroupManagerVersion (..),
    newInstanceGroupManagerVersion,

    -- ** InstanceGroupManagersAbandonInstancesRequest
    InstanceGroupManagersAbandonInstancesRequest (..),
    newInstanceGroupManagersAbandonInstancesRequest,

    -- ** InstanceGroupManagersApplyUpdatesRequest
    InstanceGroupManagersApplyUpdatesRequest (..),
    newInstanceGroupManagersApplyUpdatesRequest,

    -- ** InstanceGroupManagersApplyUpdatesRequest_MinimalAction
    InstanceGroupManagersApplyUpdatesRequest_MinimalAction (..),

    -- ** InstanceGroupManagersApplyUpdatesRequest_MostDisruptiveAllowedAction
    InstanceGroupManagersApplyUpdatesRequest_MostDisruptiveAllowedAction (..),

    -- ** InstanceGroupManagersCreateInstancesRequest
    InstanceGroupManagersCreateInstancesRequest (..),
    newInstanceGroupManagersCreateInstancesRequest,

    -- ** InstanceGroupManagersDeleteInstancesRequest
    InstanceGroupManagersDeleteInstancesRequest (..),
    newInstanceGroupManagersDeleteInstancesRequest,

    -- ** InstanceGroupManagersDeletePerInstanceConfigsReq
    InstanceGroupManagersDeletePerInstanceConfigsReq (..),
    newInstanceGroupManagersDeletePerInstanceConfigsReq,

    -- ** InstanceGroupManagersListErrorsResponse
    InstanceGroupManagersListErrorsResponse (..),
    newInstanceGroupManagersListErrorsResponse,

    -- ** InstanceGroupManagersListManagedInstancesResponse
    InstanceGroupManagersListManagedInstancesResponse (..),
    newInstanceGroupManagersListManagedInstancesResponse,

    -- ** InstanceGroupManagersListPerInstanceConfigsResp
    InstanceGroupManagersListPerInstanceConfigsResp (..),
    newInstanceGroupManagersListPerInstanceConfigsResp,

    -- ** InstanceGroupManagersListPerInstanceConfigsResp_Warning
    InstanceGroupManagersListPerInstanceConfigsResp_Warning (..),
    newInstanceGroupManagersListPerInstanceConfigsResp_Warning,

    -- ** InstanceGroupManagersListPerInstanceConfigsResp_Warning_Code
    InstanceGroupManagersListPerInstanceConfigsResp_Warning_Code (..),

    -- ** InstanceGroupManagersListPerInstanceConfigsResp_Warning_DataItem
    InstanceGroupManagersListPerInstanceConfigsResp_Warning_DataItem (..),
    newInstanceGroupManagersListPerInstanceConfigsResp_Warning_DataItem,

    -- ** InstanceGroupManagersPatchPerInstanceConfigsReq
    InstanceGroupManagersPatchPerInstanceConfigsReq (..),
    newInstanceGroupManagersPatchPerInstanceConfigsReq,

    -- ** InstanceGroupManagersRecreateInstancesRequest
    InstanceGroupManagersRecreateInstancesRequest (..),
    newInstanceGroupManagersRecreateInstancesRequest,

    -- ** InstanceGroupManagersScopedList
    InstanceGroupManagersScopedList (..),
    newInstanceGroupManagersScopedList,

    -- ** InstanceGroupManagersScopedList_Warning
    InstanceGroupManagersScopedList_Warning (..),
    newInstanceGroupManagersScopedList_Warning,

    -- ** InstanceGroupManagersScopedList_Warning_Code
    InstanceGroupManagersScopedList_Warning_Code (..),

    -- ** InstanceGroupManagersScopedList_Warning_DataItem
    InstanceGroupManagersScopedList_Warning_DataItem (..),
    newInstanceGroupManagersScopedList_Warning_DataItem,

    -- ** InstanceGroupManagersSetInstanceTemplateRequest
    InstanceGroupManagersSetInstanceTemplateRequest (..),
    newInstanceGroupManagersSetInstanceTemplateRequest,

    -- ** InstanceGroupManagersSetTargetPoolsRequest
    InstanceGroupManagersSetTargetPoolsRequest (..),
    newInstanceGroupManagersSetTargetPoolsRequest,

    -- ** InstanceGroupManagersUpdatePerInstanceConfigsReq
    InstanceGroupManagersUpdatePerInstanceConfigsReq (..),
    newInstanceGroupManagersUpdatePerInstanceConfigsReq,

    -- ** InstanceGroupsAddInstancesRequest
    InstanceGroupsAddInstancesRequest (..),
    newInstanceGroupsAddInstancesRequest,

    -- ** InstanceGroupsListInstances
    InstanceGroupsListInstances (..),
    newInstanceGroupsListInstances,

    -- ** InstanceGroupsListInstances_Warning
    InstanceGroupsListInstances_Warning (..),
    newInstanceGroupsListInstances_Warning,

    -- ** InstanceGroupsListInstances_Warning_Code
    InstanceGroupsListInstances_Warning_Code (..),

    -- ** InstanceGroupsListInstances_Warning_DataItem
    InstanceGroupsListInstances_Warning_DataItem (..),
    newInstanceGroupsListInstances_Warning_DataItem,

    -- ** InstanceGroupsListInstancesRequest
    InstanceGroupsListInstancesRequest (..),
    newInstanceGroupsListInstancesRequest,

    -- ** InstanceGroupsListInstancesRequest_InstanceState
    InstanceGroupsListInstancesRequest_InstanceState (..),

    -- ** InstanceGroupsRemoveInstancesRequest
    InstanceGroupsRemoveInstancesRequest (..),
    newInstanceGroupsRemoveInstancesRequest,

    -- ** InstanceGroupsScopedList
    InstanceGroupsScopedList (..),
    newInstanceGroupsScopedList,

    -- ** InstanceGroupsScopedList_Warning
    InstanceGroupsScopedList_Warning (..),
    newInstanceGroupsScopedList_Warning,

    -- ** InstanceGroupsScopedList_Warning_Code
    InstanceGroupsScopedList_Warning_Code (..),

    -- ** InstanceGroupsScopedList_Warning_DataItem
    InstanceGroupsScopedList_Warning_DataItem (..),
    newInstanceGroupsScopedList_Warning_DataItem,

    -- ** InstanceGroupsSetNamedPortsRequest
    InstanceGroupsSetNamedPortsRequest (..),
    newInstanceGroupsSetNamedPortsRequest,

    -- ** InstanceList
    InstanceList (..),
    newInstanceList,

    -- ** InstanceList_Warning
    InstanceList_Warning (..),
    newInstanceList_Warning,

    -- ** InstanceList_Warning_Code
    InstanceList_Warning_Code (..),

    -- ** InstanceList_Warning_DataItem
    InstanceList_Warning_DataItem (..),
    newInstanceList_Warning_DataItem,

    -- ** InstanceListReferrers
    InstanceListReferrers (..),
    newInstanceListReferrers,

    -- ** InstanceListReferrers_Warning
    InstanceListReferrers_Warning (..),
    newInstanceListReferrers_Warning,

    -- ** InstanceListReferrers_Warning_Code
    InstanceListReferrers_Warning_Code (..),

    -- ** InstanceListReferrers_Warning_DataItem
    InstanceListReferrers_Warning_DataItem (..),
    newInstanceListReferrers_Warning_DataItem,

    -- ** InstanceManagedByIgmError
    InstanceManagedByIgmError (..),
    newInstanceManagedByIgmError,

    -- ** InstanceManagedByIgmErrorInstanceActionDetails
    InstanceManagedByIgmErrorInstanceActionDetails (..),
    newInstanceManagedByIgmErrorInstanceActionDetails,

    -- ** InstanceManagedByIgmErrorInstanceActionDetails_Action
    InstanceManagedByIgmErrorInstanceActionDetails_Action (..),

    -- ** InstanceManagedByIgmErrorManagedInstanceError
    InstanceManagedByIgmErrorManagedInstanceError (..),
    newInstanceManagedByIgmErrorManagedInstanceError,

    -- ** InstanceMoveRequest
    InstanceMoveRequest (..),
    newInstanceMoveRequest,

    -- ** InstanceParams
    InstanceParams (..),
    newInstanceParams,

    -- ** InstanceParams_ResourceManagerTags
    InstanceParams_ResourceManagerTags (..),
    newInstanceParams_ResourceManagerTags,

    -- ** InstanceProperties
    InstanceProperties (..),
    newInstanceProperties,

    -- ** InstanceProperties_Labels
    InstanceProperties_Labels (..),
    newInstanceProperties_Labels,

    -- ** InstanceProperties_PrivateIpv6GoogleAccess
    InstanceProperties_PrivateIpv6GoogleAccess (..),

    -- ** InstanceProperties_ResourceManagerTags
    InstanceProperties_ResourceManagerTags (..),
    newInstanceProperties_ResourceManagerTags,

    -- ** InstanceReference
    InstanceReference (..),
    newInstanceReference,

    -- ** InstanceTemplate
    InstanceTemplate (..),
    newInstanceTemplate,

    -- ** InstanceTemplateList
    InstanceTemplateList (..),
    newInstanceTemplateList,

    -- ** InstanceTemplateList_Warning
    InstanceTemplateList_Warning (..),
    newInstanceTemplateList_Warning,

    -- ** InstanceTemplateList_Warning_Code
    InstanceTemplateList_Warning_Code (..),

    -- ** InstanceTemplateList_Warning_DataItem
    InstanceTemplateList_Warning_DataItem (..),
    newInstanceTemplateList_Warning_DataItem,

    -- ** InstanceWithNamedPorts
    InstanceWithNamedPorts (..),
    newInstanceWithNamedPorts,

    -- ** InstanceWithNamedPorts_Status
    InstanceWithNamedPorts_Status (..),

    -- ** InstancesAddResourcePoliciesRequest
    InstancesAddResourcePoliciesRequest (..),
    newInstancesAddResourcePoliciesRequest,

    -- ** InstancesGetEffectiveFirewallsResponse
    InstancesGetEffectiveFirewallsResponse (..),
    newInstancesGetEffectiveFirewallsResponse,

    -- ** InstancesGetEffectiveFirewallsResponseEffectiveFirewallPolicy
    InstancesGetEffectiveFirewallsResponseEffectiveFirewallPolicy (..),
    newInstancesGetEffectiveFirewallsResponseEffectiveFirewallPolicy,

    -- ** InstancesGetEffectiveFirewallsResponseEffectiveFirewallPolicy_Type
    InstancesGetEffectiveFirewallsResponseEffectiveFirewallPolicy_Type (..),

    -- ** InstancesRemoveResourcePoliciesRequest
    InstancesRemoveResourcePoliciesRequest (..),
    newInstancesRemoveResourcePoliciesRequest,

    -- ** InstancesScopedList
    InstancesScopedList (..),
    newInstancesScopedList,

    -- ** InstancesScopedList_Warning
    InstancesScopedList_Warning (..),
    newInstancesScopedList_Warning,

    -- ** InstancesScopedList_Warning_Code
    InstancesScopedList_Warning_Code (..),

    -- ** InstancesScopedList_Warning_DataItem
    InstancesScopedList_Warning_DataItem (..),
    newInstancesScopedList_Warning_DataItem,

    -- ** InstancesSetLabelsRequest
    InstancesSetLabelsRequest (..),
    newInstancesSetLabelsRequest,

    -- ** InstancesSetLabelsRequest_Labels
    InstancesSetLabelsRequest_Labels (..),
    newInstancesSetLabelsRequest_Labels,

    -- ** InstancesSetMachineResourcesRequest
    InstancesSetMachineResourcesRequest (..),
    newInstancesSetMachineResourcesRequest,

    -- ** InstancesSetMachineTypeRequest
    InstancesSetMachineTypeRequest (..),
    newInstancesSetMachineTypeRequest,

    -- ** InstancesSetMinCpuPlatformRequest
    InstancesSetMinCpuPlatformRequest (..),
    newInstancesSetMinCpuPlatformRequest,

    -- ** InstancesSetServiceAccountRequest
    InstancesSetServiceAccountRequest (..),
    newInstancesSetServiceAccountRequest,

    -- ** InstancesStartWithEncryptionKeyRequest
    InstancesStartWithEncryptionKeyRequest (..),
    newInstancesStartWithEncryptionKeyRequest,

    -- ** Int64RangeMatch
    Int64RangeMatch (..),
    newInt64RangeMatch,

    -- ** Interconnect
    Interconnect (..),
    newInterconnect,

    -- ** Interconnect_InterconnectType
    Interconnect_InterconnectType (..),

    -- ** Interconnect_LinkType
    Interconnect_LinkType (..),

    -- ** Interconnect_OperationalStatus
    Interconnect_OperationalStatus (..),

    -- ** Interconnect_State
    Interconnect_State (..),

    -- ** InterconnectAttachment
    InterconnectAttachment (..),
    newInterconnectAttachment,

    -- ** InterconnectAttachment_Bandwidth
    InterconnectAttachment_Bandwidth (..),

    -- ** InterconnectAttachment_EdgeAvailabilityDomain
    InterconnectAttachment_EdgeAvailabilityDomain (..),

    -- ** InterconnectAttachment_Encryption
    InterconnectAttachment_Encryption (..),

    -- ** InterconnectAttachment_OperationalStatus
    InterconnectAttachment_OperationalStatus (..),

    -- ** InterconnectAttachment_StackType
    InterconnectAttachment_StackType (..),

    -- ** InterconnectAttachment_State
    InterconnectAttachment_State (..),

    -- ** InterconnectAttachment_Type
    InterconnectAttachment_Type (..),

    -- ** InterconnectAttachmentAggregatedList
    InterconnectAttachmentAggregatedList (..),
    newInterconnectAttachmentAggregatedList,

    -- ** InterconnectAttachmentAggregatedList_Items
    InterconnectAttachmentAggregatedList_Items (..),
    newInterconnectAttachmentAggregatedList_Items,

    -- ** InterconnectAttachmentAggregatedList_Warning
    InterconnectAttachmentAggregatedList_Warning (..),
    newInterconnectAttachmentAggregatedList_Warning,

    -- ** InterconnectAttachmentAggregatedList_Warning_Code
    InterconnectAttachmentAggregatedList_Warning_Code (..),

    -- ** InterconnectAttachmentAggregatedList_Warning_DataItem
    InterconnectAttachmentAggregatedList_Warning_DataItem (..),
    newInterconnectAttachmentAggregatedList_Warning_DataItem,

    -- ** InterconnectAttachmentList
    InterconnectAttachmentList (..),
    newInterconnectAttachmentList,

    -- ** InterconnectAttachmentList_Warning
    InterconnectAttachmentList_Warning (..),
    newInterconnectAttachmentList_Warning,

    -- ** InterconnectAttachmentList_Warning_Code
    InterconnectAttachmentList_Warning_Code (..),

    -- ** InterconnectAttachmentList_Warning_DataItem
    InterconnectAttachmentList_Warning_DataItem (..),
    newInterconnectAttachmentList_Warning_DataItem,

    -- ** InterconnectAttachmentPartnerMetadata
    InterconnectAttachmentPartnerMetadata (..),
    newInterconnectAttachmentPartnerMetadata,

    -- ** InterconnectAttachmentPrivateInfo
    InterconnectAttachmentPrivateInfo (..),
    newInterconnectAttachmentPrivateInfo,

    -- ** InterconnectAttachmentsScopedList
    InterconnectAttachmentsScopedList (..),
    newInterconnectAttachmentsScopedList,

    -- ** InterconnectAttachmentsScopedList_Warning
    InterconnectAttachmentsScopedList_Warning (..),
    newInterconnectAttachmentsScopedList_Warning,

    -- ** InterconnectAttachmentsScopedList_Warning_Code
    InterconnectAttachmentsScopedList_Warning_Code (..),

    -- ** InterconnectAttachmentsScopedList_Warning_DataItem
    InterconnectAttachmentsScopedList_Warning_DataItem (..),
    newInterconnectAttachmentsScopedList_Warning_DataItem,

    -- ** InterconnectCircuitInfo
    InterconnectCircuitInfo (..),
    newInterconnectCircuitInfo,

    -- ** InterconnectDiagnostics
    InterconnectDiagnostics (..),
    newInterconnectDiagnostics,

    -- ** InterconnectDiagnosticsARPEntry
    InterconnectDiagnosticsARPEntry (..),
    newInterconnectDiagnosticsARPEntry,

    -- ** InterconnectDiagnosticsLinkLACPStatus
    InterconnectDiagnosticsLinkLACPStatus (..),
    newInterconnectDiagnosticsLinkLACPStatus,

    -- ** InterconnectDiagnosticsLinkLACPStatus_State
    InterconnectDiagnosticsLinkLACPStatus_State (..),

    -- ** InterconnectDiagnosticsLinkOpticalPower
    InterconnectDiagnosticsLinkOpticalPower (..),
    newInterconnectDiagnosticsLinkOpticalPower,

    -- ** InterconnectDiagnosticsLinkOpticalPower_State
    InterconnectDiagnosticsLinkOpticalPower_State (..),

    -- ** InterconnectDiagnosticsLinkStatus
    InterconnectDiagnosticsLinkStatus (..),
    newInterconnectDiagnosticsLinkStatus,

    -- ** InterconnectList
    InterconnectList (..),
    newInterconnectList,

    -- ** InterconnectList_Warning
    InterconnectList_Warning (..),
    newInterconnectList_Warning,

    -- ** InterconnectList_Warning_Code
    InterconnectList_Warning_Code (..),

    -- ** InterconnectList_Warning_DataItem
    InterconnectList_Warning_DataItem (..),
    newInterconnectList_Warning_DataItem,

    -- ** InterconnectLocation
    InterconnectLocation (..),
    newInterconnectLocation,

    -- ** InterconnectLocation_Continent
    InterconnectLocation_Continent (..),

    -- ** InterconnectLocation_Status
    InterconnectLocation_Status (..),

    -- ** InterconnectLocationList
    InterconnectLocationList (..),
    newInterconnectLocationList,

    -- ** InterconnectLocationList_Warning
    InterconnectLocationList_Warning (..),
    newInterconnectLocationList_Warning,

    -- ** InterconnectLocationList_Warning_Code
    InterconnectLocationList_Warning_Code (..),

    -- ** InterconnectLocationList_Warning_DataItem
    InterconnectLocationList_Warning_DataItem (..),
    newInterconnectLocationList_Warning_DataItem,

    -- ** InterconnectLocationRegionInfo
    InterconnectLocationRegionInfo (..),
    newInterconnectLocationRegionInfo,

    -- ** InterconnectLocationRegionInfo_LocationPresence
    InterconnectLocationRegionInfo_LocationPresence (..),

    -- ** InterconnectOutageNotification
    InterconnectOutageNotification (..),
    newInterconnectOutageNotification,

    -- ** InterconnectOutageNotification_IssueType
    InterconnectOutageNotification_IssueType (..),

    -- ** InterconnectOutageNotification_Source
    InterconnectOutageNotification_Source (..),

    -- ** InterconnectOutageNotification_State
    InterconnectOutageNotification_State (..),

    -- ** InterconnectsGetDiagnosticsResponse
    InterconnectsGetDiagnosticsResponse (..),
    newInterconnectsGetDiagnosticsResponse,

    -- ** License
    License (..),
    newLicense,

    -- ** LicenseCode
    LicenseCode (..),
    newLicenseCode,

    -- ** LicenseCode_State
    LicenseCode_State (..),

    -- ** LicenseCodeLicenseAlias
    LicenseCodeLicenseAlias (..),
    newLicenseCodeLicenseAlias,

    -- ** LicenseResourceCommitment
    LicenseResourceCommitment (..),
    newLicenseResourceCommitment,

    -- ** LicenseResourceRequirements
    LicenseResourceRequirements (..),
    newLicenseResourceRequirements,

    -- ** LicensesListResponse
    LicensesListResponse (..),
    newLicensesListResponse,

    -- ** LicensesListResponse_Warning
    LicensesListResponse_Warning (..),
    newLicensesListResponse_Warning,

    -- ** LicensesListResponse_Warning_Code
    LicensesListResponse_Warning_Code (..),

    -- ** LicensesListResponse_Warning_DataItem
    LicensesListResponse_Warning_DataItem (..),
    newLicensesListResponse_Warning_DataItem,

    -- ** LocalDisk
    LocalDisk (..),
    newLocalDisk,

    -- ** LocationPolicy
    LocationPolicy (..),
    newLocationPolicy,

    -- ** LocationPolicy_Locations
    LocationPolicy_Locations (..),
    newLocationPolicy_Locations,

    -- ** LocationPolicyLocation
    LocationPolicyLocation (..),
    newLocationPolicyLocation,

    -- ** LocationPolicyLocation_Preference
    LocationPolicyLocation_Preference (..),

    -- ** LogConfig
    LogConfig (..),
    newLogConfig,

    -- ** LogConfigCloudAuditOptions
    LogConfigCloudAuditOptions (..),
    newLogConfigCloudAuditOptions,

    -- ** LogConfigCloudAuditOptions_LogName
    LogConfigCloudAuditOptions_LogName (..),

    -- ** LogConfigCounterOptions
    LogConfigCounterOptions (..),
    newLogConfigCounterOptions,

    -- ** LogConfigCounterOptionsCustomField
    LogConfigCounterOptionsCustomField (..),
    newLogConfigCounterOptionsCustomField,

    -- ** LogConfigDataAccessOptions
    LogConfigDataAccessOptions (..),
    newLogConfigDataAccessOptions,

    -- ** LogConfigDataAccessOptions_LogMode
    LogConfigDataAccessOptions_LogMode (..),

    -- ** MachineImage
    MachineImage (..),
    newMachineImage,

    -- ** MachineImage_Status
    MachineImage_Status (..),

    -- ** MachineImageList
    MachineImageList (..),
    newMachineImageList,

    -- ** MachineImageList_Warning
    MachineImageList_Warning (..),
    newMachineImageList_Warning,

    -- ** MachineImageList_Warning_Code
    MachineImageList_Warning_Code (..),

    -- ** MachineImageList_Warning_DataItem
    MachineImageList_Warning_DataItem (..),
    newMachineImageList_Warning_DataItem,

    -- ** MachineType
    MachineType (..),
    newMachineType,

    -- ** MachineType_AcceleratorsItem
    MachineType_AcceleratorsItem (..),
    newMachineType_AcceleratorsItem,

    -- ** MachineType_ScratchDisksItem
    MachineType_ScratchDisksItem (..),
    newMachineType_ScratchDisksItem,

    -- ** MachineTypeAggregatedList
    MachineTypeAggregatedList (..),
    newMachineTypeAggregatedList,

    -- ** MachineTypeAggregatedList_Items
    MachineTypeAggregatedList_Items (..),
    newMachineTypeAggregatedList_Items,

    -- ** MachineTypeAggregatedList_Warning
    MachineTypeAggregatedList_Warning (..),
    newMachineTypeAggregatedList_Warning,

    -- ** MachineTypeAggregatedList_Warning_Code
    MachineTypeAggregatedList_Warning_Code (..),

    -- ** MachineTypeAggregatedList_Warning_DataItem
    MachineTypeAggregatedList_Warning_DataItem (..),
    newMachineTypeAggregatedList_Warning_DataItem,

    -- ** MachineTypeList
    MachineTypeList (..),
    newMachineTypeList,

    -- ** MachineTypeList_Warning
    MachineTypeList_Warning (..),
    newMachineTypeList_Warning,

    -- ** MachineTypeList_Warning_Code
    MachineTypeList_Warning_Code (..),

    -- ** MachineTypeList_Warning_DataItem
    MachineTypeList_Warning_DataItem (..),
    newMachineTypeList_Warning_DataItem,

    -- ** MachineTypesScopedList
    MachineTypesScopedList (..),
    newMachineTypesScopedList,

    -- ** MachineTypesScopedList_Warning
    MachineTypesScopedList_Warning (..),
    newMachineTypesScopedList_Warning,

    -- ** MachineTypesScopedList_Warning_Code
    MachineTypesScopedList_Warning_Code (..),

    -- ** MachineTypesScopedList_Warning_DataItem
    MachineTypesScopedList_Warning_DataItem (..),
    newMachineTypesScopedList_Warning_DataItem,

    -- ** ManagedInstance
    ManagedInstance (..),
    newManagedInstance,

    -- ** ManagedInstance_CurrentAction
    ManagedInstance_CurrentAction (..),

    -- ** ManagedInstance_InstanceStatus
    ManagedInstance_InstanceStatus (..),

    -- ** ManagedInstanceInstanceHealth
    ManagedInstanceInstanceHealth (..),
    newManagedInstanceInstanceHealth,

    -- ** ManagedInstanceInstanceHealth_DetailedHealthState
    ManagedInstanceInstanceHealth_DetailedHealthState (..),

    -- ** ManagedInstanceLastAttempt
    ManagedInstanceLastAttempt (..),
    newManagedInstanceLastAttempt,

    -- ** ManagedInstanceLastAttempt_Errors
    ManagedInstanceLastAttempt_Errors (..),
    newManagedInstanceLastAttempt_Errors,

    -- ** ManagedInstanceLastAttempt_Errors_ErrorsItem
    ManagedInstanceLastAttempt_Errors_ErrorsItem (..),
    newManagedInstanceLastAttempt_Errors_ErrorsItem,

    -- ** ManagedInstanceVersion
    ManagedInstanceVersion (..),
    newManagedInstanceVersion,

    -- ** Metadata
    Metadata (..),
    newMetadata,

    -- ** Metadata_ItemsItem
    Metadata_ItemsItem (..),
    newMetadata_ItemsItem,

    -- ** MetadataFilter
    MetadataFilter (..),
    newMetadataFilter,

    -- ** MetadataFilter_FilterMatchCriteria
    MetadataFilter_FilterMatchCriteria (..),

    -- ** MetadataFilterLabelMatch
    MetadataFilterLabelMatch (..),
    newMetadataFilterLabelMatch,

    -- ** NamedPort
    NamedPort (..),
    newNamedPort,

    -- ** Network
    Network (..),
    newNetwork,

    -- ** Network_NetworkFirewallPolicyEnforcementOrder
    Network_NetworkFirewallPolicyEnforcementOrder (..),

    -- ** NetworkEndpoint
    NetworkEndpoint (..),
    newNetworkEndpoint,

    -- ** NetworkEndpoint_Annotations
    NetworkEndpoint_Annotations (..),
    newNetworkEndpoint_Annotations,

    -- ** NetworkEndpointGroup
    NetworkEndpointGroup (..),
    newNetworkEndpointGroup,

    -- ** NetworkEndpointGroup_Annotations
    NetworkEndpointGroup_Annotations (..),
    newNetworkEndpointGroup_Annotations,

    -- ** NetworkEndpointGroup_NetworkEndpointType
    NetworkEndpointGroup_NetworkEndpointType (..),

    -- ** NetworkEndpointGroupAggregatedList
    NetworkEndpointGroupAggregatedList (..),
    newNetworkEndpointGroupAggregatedList,

    -- ** NetworkEndpointGroupAggregatedList_Items
    NetworkEndpointGroupAggregatedList_Items (..),
    newNetworkEndpointGroupAggregatedList_Items,

    -- ** NetworkEndpointGroupAggregatedList_Warning
    NetworkEndpointGroupAggregatedList_Warning (..),
    newNetworkEndpointGroupAggregatedList_Warning,

    -- ** NetworkEndpointGroupAggregatedList_Warning_Code
    NetworkEndpointGroupAggregatedList_Warning_Code (..),

    -- ** NetworkEndpointGroupAggregatedList_Warning_DataItem
    NetworkEndpointGroupAggregatedList_Warning_DataItem (..),
    newNetworkEndpointGroupAggregatedList_Warning_DataItem,

    -- ** NetworkEndpointGroupAppEngine
    NetworkEndpointGroupAppEngine (..),
    newNetworkEndpointGroupAppEngine,

    -- ** NetworkEndpointGroupCloudFunction
    NetworkEndpointGroupCloudFunction (..),
    newNetworkEndpointGroupCloudFunction,

    -- ** NetworkEndpointGroupCloudRun
    NetworkEndpointGroupCloudRun (..),
    newNetworkEndpointGroupCloudRun,

    -- ** NetworkEndpointGroupList
    NetworkEndpointGroupList (..),
    newNetworkEndpointGroupList,

    -- ** NetworkEndpointGroupList_Warning
    NetworkEndpointGroupList_Warning (..),
    newNetworkEndpointGroupList_Warning,

    -- ** NetworkEndpointGroupList_Warning_Code
    NetworkEndpointGroupList_Warning_Code (..),

    -- ** NetworkEndpointGroupList_Warning_DataItem
    NetworkEndpointGroupList_Warning_DataItem (..),
    newNetworkEndpointGroupList_Warning_DataItem,

    -- ** NetworkEndpointGroupsAttachEndpointsRequest
    NetworkEndpointGroupsAttachEndpointsRequest (..),
    newNetworkEndpointGroupsAttachEndpointsRequest,

    -- ** NetworkEndpointGroupsDetachEndpointsRequest
    NetworkEndpointGroupsDetachEndpointsRequest (..),
    newNetworkEndpointGroupsDetachEndpointsRequest,

    -- ** NetworkEndpointGroupsListEndpointsRequest
    NetworkEndpointGroupsListEndpointsRequest (..),
    newNetworkEndpointGroupsListEndpointsRequest,

    -- ** NetworkEndpointGroupsListEndpointsRequest_HealthStatus
    NetworkEndpointGroupsListEndpointsRequest_HealthStatus (..),

    -- ** NetworkEndpointGroupsListNetworkEndpoints
    NetworkEndpointGroupsListNetworkEndpoints (..),
    newNetworkEndpointGroupsListNetworkEndpoints,

    -- ** NetworkEndpointGroupsListNetworkEndpoints_Warning
    NetworkEndpointGroupsListNetworkEndpoints_Warning (..),
    newNetworkEndpointGroupsListNetworkEndpoints_Warning,

    -- ** NetworkEndpointGroupsListNetworkEndpoints_Warning_Code
    NetworkEndpointGroupsListNetworkEndpoints_Warning_Code (..),

    -- ** NetworkEndpointGroupsListNetworkEndpoints_Warning_DataItem
    NetworkEndpointGroupsListNetworkEndpoints_Warning_DataItem (..),
    newNetworkEndpointGroupsListNetworkEndpoints_Warning_DataItem,

    -- ** NetworkEndpointGroupsScopedList
    NetworkEndpointGroupsScopedList (..),
    newNetworkEndpointGroupsScopedList,

    -- ** NetworkEndpointGroupsScopedList_Warning
    NetworkEndpointGroupsScopedList_Warning (..),
    newNetworkEndpointGroupsScopedList_Warning,

    -- ** NetworkEndpointGroupsScopedList_Warning_Code
    NetworkEndpointGroupsScopedList_Warning_Code (..),

    -- ** NetworkEndpointGroupsScopedList_Warning_DataItem
    NetworkEndpointGroupsScopedList_Warning_DataItem (..),
    newNetworkEndpointGroupsScopedList_Warning_DataItem,

    -- ** NetworkEndpointWithHealthStatus
    NetworkEndpointWithHealthStatus (..),
    newNetworkEndpointWithHealthStatus,

    -- ** NetworkInterface
    NetworkInterface (..),
    newNetworkInterface,

    -- ** NetworkInterface_Ipv6AccessType
    NetworkInterface_Ipv6AccessType (..),

    -- ** NetworkInterface_NicType
    NetworkInterface_NicType (..),

    -- ** NetworkInterface_StackType
    NetworkInterface_StackType (..),

    -- ** NetworkList
    NetworkList (..),
    newNetworkList,

    -- ** NetworkList_Warning
    NetworkList_Warning (..),
    newNetworkList_Warning,

    -- ** NetworkList_Warning_Code
    NetworkList_Warning_Code (..),

    -- ** NetworkList_Warning_DataItem
    NetworkList_Warning_DataItem (..),
    newNetworkList_Warning_DataItem,

    -- ** NetworkPeering
    NetworkPeering (..),
    newNetworkPeering,

    -- ** NetworkPeering_State
    NetworkPeering_State (..),

    -- ** NetworkPerformanceConfig
    NetworkPerformanceConfig (..),
    newNetworkPerformanceConfig,

    -- ** NetworkPerformanceConfig_TotalEgressBandwidthTier
    NetworkPerformanceConfig_TotalEgressBandwidthTier (..),

    -- ** NetworkRoutingConfig
    NetworkRoutingConfig (..),
    newNetworkRoutingConfig,

    -- ** NetworkRoutingConfig_RoutingMode
    NetworkRoutingConfig_RoutingMode (..),

    -- ** NetworksAddPeeringRequest
    NetworksAddPeeringRequest (..),
    newNetworksAddPeeringRequest,

    -- ** NetworksGetEffectiveFirewallsResponse
    NetworksGetEffectiveFirewallsResponse (..),
    newNetworksGetEffectiveFirewallsResponse,

    -- ** NetworksGetEffectiveFirewallsResponseEffectiveFirewallPolicy
    NetworksGetEffectiveFirewallsResponseEffectiveFirewallPolicy (..),
    newNetworksGetEffectiveFirewallsResponseEffectiveFirewallPolicy,

    -- ** NetworksGetEffectiveFirewallsResponseEffectiveFirewallPolicy_Type
    NetworksGetEffectiveFirewallsResponseEffectiveFirewallPolicy_Type (..),

    -- ** NetworksRemovePeeringRequest
    NetworksRemovePeeringRequest (..),
    newNetworksRemovePeeringRequest,

    -- ** NetworksUpdatePeeringRequest
    NetworksUpdatePeeringRequest (..),
    newNetworksUpdatePeeringRequest,

    -- ** NodeGroup
    NodeGroup (..),
    newNodeGroup,

    -- ** NodeGroup_MaintenancePolicy
    NodeGroup_MaintenancePolicy (..),

    -- ** NodeGroup_Status
    NodeGroup_Status (..),

    -- ** NodeGroupAggregatedList
    NodeGroupAggregatedList (..),
    newNodeGroupAggregatedList,

    -- ** NodeGroupAggregatedList_Items
    NodeGroupAggregatedList_Items (..),
    newNodeGroupAggregatedList_Items,

    -- ** NodeGroupAggregatedList_Warning
    NodeGroupAggregatedList_Warning (..),
    newNodeGroupAggregatedList_Warning,

    -- ** NodeGroupAggregatedList_Warning_Code
    NodeGroupAggregatedList_Warning_Code (..),

    -- ** NodeGroupAggregatedList_Warning_DataItem
    NodeGroupAggregatedList_Warning_DataItem (..),
    newNodeGroupAggregatedList_Warning_DataItem,

    -- ** NodeGroupAutoscalingPolicy
    NodeGroupAutoscalingPolicy (..),
    newNodeGroupAutoscalingPolicy,

    -- ** NodeGroupAutoscalingPolicy_Mode
    NodeGroupAutoscalingPolicy_Mode (..),

    -- ** NodeGroupList
    NodeGroupList (..),
    newNodeGroupList,

    -- ** NodeGroupList_Warning
    NodeGroupList_Warning (..),
    newNodeGroupList_Warning,

    -- ** NodeGroupList_Warning_Code
    NodeGroupList_Warning_Code (..),

    -- ** NodeGroupList_Warning_DataItem
    NodeGroupList_Warning_DataItem (..),
    newNodeGroupList_Warning_DataItem,

    -- ** NodeGroupMaintenanceWindow
    NodeGroupMaintenanceWindow (..),
    newNodeGroupMaintenanceWindow,

    -- ** NodeGroupNode
    NodeGroupNode (..),
    newNodeGroupNode,

    -- ** NodeGroupNode_CpuOvercommitType
    NodeGroupNode_CpuOvercommitType (..),

    -- ** NodeGroupNode_Status
    NodeGroupNode_Status (..),

    -- ** NodeGroupsAddNodesRequest
    NodeGroupsAddNodesRequest (..),
    newNodeGroupsAddNodesRequest,

    -- ** NodeGroupsDeleteNodesRequest
    NodeGroupsDeleteNodesRequest (..),
    newNodeGroupsDeleteNodesRequest,

    -- ** NodeGroupsListNodes
    NodeGroupsListNodes (..),
    newNodeGroupsListNodes,

    -- ** NodeGroupsListNodes_Warning
    NodeGroupsListNodes_Warning (..),
    newNodeGroupsListNodes_Warning,

    -- ** NodeGroupsListNodes_Warning_Code
    NodeGroupsListNodes_Warning_Code (..),

    -- ** NodeGroupsListNodes_Warning_DataItem
    NodeGroupsListNodes_Warning_DataItem (..),
    newNodeGroupsListNodes_Warning_DataItem,

    -- ** NodeGroupsScopedList
    NodeGroupsScopedList (..),
    newNodeGroupsScopedList,

    -- ** NodeGroupsScopedList_Warning
    NodeGroupsScopedList_Warning (..),
    newNodeGroupsScopedList_Warning,

    -- ** NodeGroupsScopedList_Warning_Code
    NodeGroupsScopedList_Warning_Code (..),

    -- ** NodeGroupsScopedList_Warning_DataItem
    NodeGroupsScopedList_Warning_DataItem (..),
    newNodeGroupsScopedList_Warning_DataItem,

    -- ** NodeGroupsSetNodeTemplateRequest
    NodeGroupsSetNodeTemplateRequest (..),
    newNodeGroupsSetNodeTemplateRequest,

    -- ** NodeTemplate
    NodeTemplate (..),
    newNodeTemplate,

    -- ** NodeTemplate_CpuOvercommitType
    NodeTemplate_CpuOvercommitType (..),

    -- ** NodeTemplate_NodeAffinityLabels
    NodeTemplate_NodeAffinityLabels (..),
    newNodeTemplate_NodeAffinityLabels,

    -- ** NodeTemplate_Status
    NodeTemplate_Status (..),

    -- ** NodeTemplateAggregatedList
    NodeTemplateAggregatedList (..),
    newNodeTemplateAggregatedList,

    -- ** NodeTemplateAggregatedList_Items
    NodeTemplateAggregatedList_Items (..),
    newNodeTemplateAggregatedList_Items,

    -- ** NodeTemplateAggregatedList_Warning
    NodeTemplateAggregatedList_Warning (..),
    newNodeTemplateAggregatedList_Warning,

    -- ** NodeTemplateAggregatedList_Warning_Code
    NodeTemplateAggregatedList_Warning_Code (..),

    -- ** NodeTemplateAggregatedList_Warning_DataItem
    NodeTemplateAggregatedList_Warning_DataItem (..),
    newNodeTemplateAggregatedList_Warning_DataItem,

    -- ** NodeTemplateList
    NodeTemplateList (..),
    newNodeTemplateList,

    -- ** NodeTemplateList_Warning
    NodeTemplateList_Warning (..),
    newNodeTemplateList_Warning,

    -- ** NodeTemplateList_Warning_Code
    NodeTemplateList_Warning_Code (..),

    -- ** NodeTemplateList_Warning_DataItem
    NodeTemplateList_Warning_DataItem (..),
    newNodeTemplateList_Warning_DataItem,

    -- ** NodeTemplateNodeTypeFlexibility
    NodeTemplateNodeTypeFlexibility (..),
    newNodeTemplateNodeTypeFlexibility,

    -- ** NodeTemplatesScopedList
    NodeTemplatesScopedList (..),
    newNodeTemplatesScopedList,

    -- ** NodeTemplatesScopedList_Warning
    NodeTemplatesScopedList_Warning (..),
    newNodeTemplatesScopedList_Warning,

    -- ** NodeTemplatesScopedList_Warning_Code
    NodeTemplatesScopedList_Warning_Code (..),

    -- ** NodeTemplatesScopedList_Warning_DataItem
    NodeTemplatesScopedList_Warning_DataItem (..),
    newNodeTemplatesScopedList_Warning_DataItem,

    -- ** NodeType
    NodeType (..),
    newNodeType,

    -- ** NodeTypeAggregatedList
    NodeTypeAggregatedList (..),
    newNodeTypeAggregatedList,

    -- ** NodeTypeAggregatedList_Items
    NodeTypeAggregatedList_Items (..),
    newNodeTypeAggregatedList_Items,

    -- ** NodeTypeAggregatedList_Warning
    NodeTypeAggregatedList_Warning (..),
    newNodeTypeAggregatedList_Warning,

    -- ** NodeTypeAggregatedList_Warning_Code
    NodeTypeAggregatedList_Warning_Code (..),

    -- ** NodeTypeAggregatedList_Warning_DataItem
    NodeTypeAggregatedList_Warning_DataItem (..),
    newNodeTypeAggregatedList_Warning_DataItem,

    -- ** NodeTypeList
    NodeTypeList (..),
    newNodeTypeList,

    -- ** NodeTypeList_Warning
    NodeTypeList_Warning (..),
    newNodeTypeList_Warning,

    -- ** NodeTypeList_Warning_Code
    NodeTypeList_Warning_Code (..),

    -- ** NodeTypeList_Warning_DataItem
    NodeTypeList_Warning_DataItem (..),
    newNodeTypeList_Warning_DataItem,

    -- ** NodeTypesScopedList
    NodeTypesScopedList (..),
    newNodeTypesScopedList,

    -- ** NodeTypesScopedList_Warning
    NodeTypesScopedList_Warning (..),
    newNodeTypesScopedList_Warning,

    -- ** NodeTypesScopedList_Warning_Code
    NodeTypesScopedList_Warning_Code (..),

    -- ** NodeTypesScopedList_Warning_DataItem
    NodeTypesScopedList_Warning_DataItem (..),
    newNodeTypesScopedList_Warning_DataItem,

    -- ** NotificationEndpoint
    NotificationEndpoint (..),
    newNotificationEndpoint,

    -- ** NotificationEndpointGrpcSettings
    NotificationEndpointGrpcSettings (..),
    newNotificationEndpointGrpcSettings,

    -- ** NotificationEndpointList
    NotificationEndpointList (..),
    newNotificationEndpointList,

    -- ** NotificationEndpointList_Warning
    NotificationEndpointList_Warning (..),
    newNotificationEndpointList_Warning,

    -- ** NotificationEndpointList_Warning_Code
    NotificationEndpointList_Warning_Code (..),

    -- ** NotificationEndpointList_Warning_DataItem
    NotificationEndpointList_Warning_DataItem (..),
    newNotificationEndpointList_Warning_DataItem,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Error
    Operation_Error (..),
    newOperation_Error,

    -- ** Operation_Error_ErrorsItem
    Operation_Error_ErrorsItem (..),
    newOperation_Error_ErrorsItem,

    -- ** Operation_Status
    Operation_Status (..),

    -- ** Operation_WarningsItem
    Operation_WarningsItem (..),
    newOperation_WarningsItem,

    -- ** Operation_WarningsItem_Code
    Operation_WarningsItem_Code (..),

    -- ** Operation_WarningsItem_DataItem
    Operation_WarningsItem_DataItem (..),
    newOperation_WarningsItem_DataItem,

    -- ** OperationAggregatedList
    OperationAggregatedList (..),
    newOperationAggregatedList,

    -- ** OperationAggregatedList_Items
    OperationAggregatedList_Items (..),
    newOperationAggregatedList_Items,

    -- ** OperationAggregatedList_Warning
    OperationAggregatedList_Warning (..),
    newOperationAggregatedList_Warning,

    -- ** OperationAggregatedList_Warning_Code
    OperationAggregatedList_Warning_Code (..),

    -- ** OperationAggregatedList_Warning_DataItem
    OperationAggregatedList_Warning_DataItem (..),
    newOperationAggregatedList_Warning_DataItem,

    -- ** OperationList
    OperationList (..),
    newOperationList,

    -- ** OperationList_Warning
    OperationList_Warning (..),
    newOperationList_Warning,

    -- ** OperationList_Warning_Code
    OperationList_Warning_Code (..),

    -- ** OperationList_Warning_DataItem
    OperationList_Warning_DataItem (..),
    newOperationList_Warning_DataItem,

    -- ** OperationsScopedList
    OperationsScopedList (..),
    newOperationsScopedList,

    -- ** OperationsScopedList_Warning
    OperationsScopedList_Warning (..),
    newOperationsScopedList_Warning,

    -- ** OperationsScopedList_Warning_Code
    OperationsScopedList_Warning_Code (..),

    -- ** OperationsScopedList_Warning_DataItem
    OperationsScopedList_Warning_DataItem (..),
    newOperationsScopedList_Warning_DataItem,

    -- ** OutlierDetection
    OutlierDetection (..),
    newOutlierDetection,

    -- ** PacketIntervals
    PacketIntervals (..),
    newPacketIntervals,

    -- ** PacketIntervals_Duration
    PacketIntervals_Duration (..),

    -- ** PacketIntervals_Type
    PacketIntervals_Type (..),

    -- ** PacketMirroring
    PacketMirroring (..),
    newPacketMirroring,

    -- ** PacketMirroring_Enable
    PacketMirroring_Enable (..),

    -- ** PacketMirroringAggregatedList
    PacketMirroringAggregatedList (..),
    newPacketMirroringAggregatedList,

    -- ** PacketMirroringAggregatedList_Items
    PacketMirroringAggregatedList_Items (..),
    newPacketMirroringAggregatedList_Items,

    -- ** PacketMirroringAggregatedList_Warning
    PacketMirroringAggregatedList_Warning (..),
    newPacketMirroringAggregatedList_Warning,

    -- ** PacketMirroringAggregatedList_Warning_Code
    PacketMirroringAggregatedList_Warning_Code (..),

    -- ** PacketMirroringAggregatedList_Warning_DataItem
    PacketMirroringAggregatedList_Warning_DataItem (..),
    newPacketMirroringAggregatedList_Warning_DataItem,

    -- ** PacketMirroringFilter
    PacketMirroringFilter (..),
    newPacketMirroringFilter,

    -- ** PacketMirroringFilter_Direction
    PacketMirroringFilter_Direction (..),

    -- ** PacketMirroringForwardingRuleInfo
    PacketMirroringForwardingRuleInfo (..),
    newPacketMirroringForwardingRuleInfo,

    -- ** PacketMirroringList
    PacketMirroringList (..),
    newPacketMirroringList,

    -- ** PacketMirroringList_Warning
    PacketMirroringList_Warning (..),
    newPacketMirroringList_Warning,

    -- ** PacketMirroringList_Warning_Code
    PacketMirroringList_Warning_Code (..),

    -- ** PacketMirroringList_Warning_DataItem
    PacketMirroringList_Warning_DataItem (..),
    newPacketMirroringList_Warning_DataItem,

    -- ** PacketMirroringMirroredResourceInfo
    PacketMirroringMirroredResourceInfo (..),
    newPacketMirroringMirroredResourceInfo,

    -- ** PacketMirroringMirroredResourceInfoInstanceInfo
    PacketMirroringMirroredResourceInfoInstanceInfo (..),
    newPacketMirroringMirroredResourceInfoInstanceInfo,

    -- ** PacketMirroringMirroredResourceInfoSubnetInfo
    PacketMirroringMirroredResourceInfoSubnetInfo (..),
    newPacketMirroringMirroredResourceInfoSubnetInfo,

    -- ** PacketMirroringNetworkInfo
    PacketMirroringNetworkInfo (..),
    newPacketMirroringNetworkInfo,

    -- ** PacketMirroringsScopedList
    PacketMirroringsScopedList (..),
    newPacketMirroringsScopedList,

    -- ** PacketMirroringsScopedList_Warning
    PacketMirroringsScopedList_Warning (..),
    newPacketMirroringsScopedList_Warning,

    -- ** PacketMirroringsScopedList_Warning_Code
    PacketMirroringsScopedList_Warning_Code (..),

    -- ** PacketMirroringsScopedList_Warning_DataItem
    PacketMirroringsScopedList_Warning_DataItem (..),
    newPacketMirroringsScopedList_Warning_DataItem,

    -- ** PathMatcher
    PathMatcher (..),
    newPathMatcher,

    -- ** PathRule
    PathRule (..),
    newPathRule,

    -- ** PerInstanceConfig
    PerInstanceConfig (..),
    newPerInstanceConfig,

    -- ** PerInstanceConfig_Status
    PerInstanceConfig_Status (..),

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** PreconfiguredWafSet
    PreconfiguredWafSet (..),
    newPreconfiguredWafSet,

    -- ** PreservedState
    PreservedState (..),
    newPreservedState,

    -- ** PreservedState_Disks
    PreservedState_Disks (..),
    newPreservedState_Disks,

    -- ** PreservedState_Metadata
    PreservedState_Metadata (..),
    newPreservedState_Metadata,

    -- ** PreservedStatePreservedDisk
    PreservedStatePreservedDisk (..),
    newPreservedStatePreservedDisk,

    -- ** PreservedStatePreservedDisk_AutoDelete
    PreservedStatePreservedDisk_AutoDelete (..),

    -- ** PreservedStatePreservedDisk_Mode
    PreservedStatePreservedDisk_Mode (..),

    -- ** Project
    Project (..),
    newProject,

    -- ** Project_DefaultNetworkTier
    Project_DefaultNetworkTier (..),

    -- ** Project_XpnProjectStatus
    Project_XpnProjectStatus (..),

    -- ** ProjectsDisableXpnResourceRequest
    ProjectsDisableXpnResourceRequest (..),
    newProjectsDisableXpnResourceRequest,

    -- ** ProjectsEnableXpnResourceRequest
    ProjectsEnableXpnResourceRequest (..),
    newProjectsEnableXpnResourceRequest,

    -- ** ProjectsGetXpnResources
    ProjectsGetXpnResources (..),
    newProjectsGetXpnResources,

    -- ** ProjectsListXpnHostsRequest
    ProjectsListXpnHostsRequest (..),
    newProjectsListXpnHostsRequest,

    -- ** ProjectsSetDefaultNetworkTierRequest
    ProjectsSetDefaultNetworkTierRequest (..),
    newProjectsSetDefaultNetworkTierRequest,

    -- ** ProjectsSetDefaultNetworkTierRequest_NetworkTier
    ProjectsSetDefaultNetworkTierRequest_NetworkTier (..),

    -- ** PublicAdvertisedPrefix
    PublicAdvertisedPrefix (..),
    newPublicAdvertisedPrefix,

    -- ** PublicAdvertisedPrefix_Status
    PublicAdvertisedPrefix_Status (..),

    -- ** PublicAdvertisedPrefixList
    PublicAdvertisedPrefixList (..),
    newPublicAdvertisedPrefixList,

    -- ** PublicAdvertisedPrefixList_Warning
    PublicAdvertisedPrefixList_Warning (..),
    newPublicAdvertisedPrefixList_Warning,

    -- ** PublicAdvertisedPrefixList_Warning_Code
    PublicAdvertisedPrefixList_Warning_Code (..),

    -- ** PublicAdvertisedPrefixList_Warning_DataItem
    PublicAdvertisedPrefixList_Warning_DataItem (..),
    newPublicAdvertisedPrefixList_Warning_DataItem,

    -- ** PublicAdvertisedPrefixPublicDelegatedPrefix
    PublicAdvertisedPrefixPublicDelegatedPrefix (..),
    newPublicAdvertisedPrefixPublicDelegatedPrefix,

    -- ** PublicDelegatedPrefix
    PublicDelegatedPrefix (..),
    newPublicDelegatedPrefix,

    -- ** PublicDelegatedPrefix_Status
    PublicDelegatedPrefix_Status (..),

    -- ** PublicDelegatedPrefixAggregatedList
    PublicDelegatedPrefixAggregatedList (..),
    newPublicDelegatedPrefixAggregatedList,

    -- ** PublicDelegatedPrefixAggregatedList_Items
    PublicDelegatedPrefixAggregatedList_Items (..),
    newPublicDelegatedPrefixAggregatedList_Items,

    -- ** PublicDelegatedPrefixAggregatedList_Warning
    PublicDelegatedPrefixAggregatedList_Warning (..),
    newPublicDelegatedPrefixAggregatedList_Warning,

    -- ** PublicDelegatedPrefixAggregatedList_Warning_Code
    PublicDelegatedPrefixAggregatedList_Warning_Code (..),

    -- ** PublicDelegatedPrefixAggregatedList_Warning_DataItem
    PublicDelegatedPrefixAggregatedList_Warning_DataItem (..),
    newPublicDelegatedPrefixAggregatedList_Warning_DataItem,

    -- ** PublicDelegatedPrefixList
    PublicDelegatedPrefixList (..),
    newPublicDelegatedPrefixList,

    -- ** PublicDelegatedPrefixList_Warning
    PublicDelegatedPrefixList_Warning (..),
    newPublicDelegatedPrefixList_Warning,

    -- ** PublicDelegatedPrefixList_Warning_Code
    PublicDelegatedPrefixList_Warning_Code (..),

    -- ** PublicDelegatedPrefixList_Warning_DataItem
    PublicDelegatedPrefixList_Warning_DataItem (..),
    newPublicDelegatedPrefixList_Warning_DataItem,

    -- ** PublicDelegatedPrefixPublicDelegatedSubPrefix
    PublicDelegatedPrefixPublicDelegatedSubPrefix (..),
    newPublicDelegatedPrefixPublicDelegatedSubPrefix,

    -- ** PublicDelegatedPrefixPublicDelegatedSubPrefix_Status
    PublicDelegatedPrefixPublicDelegatedSubPrefix_Status (..),

    -- ** PublicDelegatedPrefixesScopedList
    PublicDelegatedPrefixesScopedList (..),
    newPublicDelegatedPrefixesScopedList,

    -- ** PublicDelegatedPrefixesScopedList_Warning
    PublicDelegatedPrefixesScopedList_Warning (..),
    newPublicDelegatedPrefixesScopedList_Warning,

    -- ** PublicDelegatedPrefixesScopedList_Warning_Code
    PublicDelegatedPrefixesScopedList_Warning_Code (..),

    -- ** PublicDelegatedPrefixesScopedList_Warning_DataItem
    PublicDelegatedPrefixesScopedList_Warning_DataItem (..),
    newPublicDelegatedPrefixesScopedList_Warning_DataItem,

    -- ** Quota
    Quota (..),
    newQuota,

    -- ** Quota_Metric
    Quota_Metric (..),

    -- ** Reference
    Reference (..),
    newReference,

    -- ** Region
    Region (..),
    newRegion,

    -- ** Region_Status
    Region_Status (..),

    -- ** RegionAutoscalerList
    RegionAutoscalerList (..),
    newRegionAutoscalerList,

    -- ** RegionAutoscalerList_Warning
    RegionAutoscalerList_Warning (..),
    newRegionAutoscalerList_Warning,

    -- ** RegionAutoscalerList_Warning_Code
    RegionAutoscalerList_Warning_Code (..),

    -- ** RegionAutoscalerList_Warning_DataItem
    RegionAutoscalerList_Warning_DataItem (..),
    newRegionAutoscalerList_Warning_DataItem,

    -- ** RegionDiskTypeList
    RegionDiskTypeList (..),
    newRegionDiskTypeList,

    -- ** RegionDiskTypeList_Warning
    RegionDiskTypeList_Warning (..),
    newRegionDiskTypeList_Warning,

    -- ** RegionDiskTypeList_Warning_Code
    RegionDiskTypeList_Warning_Code (..),

    -- ** RegionDiskTypeList_Warning_DataItem
    RegionDiskTypeList_Warning_DataItem (..),
    newRegionDiskTypeList_Warning_DataItem,

    -- ** RegionDisksAddResourcePoliciesRequest
    RegionDisksAddResourcePoliciesRequest (..),
    newRegionDisksAddResourcePoliciesRequest,

    -- ** RegionDisksRemoveResourcePoliciesRequest
    RegionDisksRemoveResourcePoliciesRequest (..),
    newRegionDisksRemoveResourcePoliciesRequest,

    -- ** RegionDisksResizeRequest
    RegionDisksResizeRequest (..),
    newRegionDisksResizeRequest,

    -- ** RegionInstanceGroupList
    RegionInstanceGroupList (..),
    newRegionInstanceGroupList,

    -- ** RegionInstanceGroupList_Warning
    RegionInstanceGroupList_Warning (..),
    newRegionInstanceGroupList_Warning,

    -- ** RegionInstanceGroupList_Warning_Code
    RegionInstanceGroupList_Warning_Code (..),

    -- ** RegionInstanceGroupList_Warning_DataItem
    RegionInstanceGroupList_Warning_DataItem (..),
    newRegionInstanceGroupList_Warning_DataItem,

    -- ** RegionInstanceGroupManagerDeleteInstanceConfigReq
    RegionInstanceGroupManagerDeleteInstanceConfigReq (..),
    newRegionInstanceGroupManagerDeleteInstanceConfigReq,

    -- ** RegionInstanceGroupManagerList
    RegionInstanceGroupManagerList (..),
    newRegionInstanceGroupManagerList,

    -- ** RegionInstanceGroupManagerList_Warning
    RegionInstanceGroupManagerList_Warning (..),
    newRegionInstanceGroupManagerList_Warning,

    -- ** RegionInstanceGroupManagerList_Warning_Code
    RegionInstanceGroupManagerList_Warning_Code (..),

    -- ** RegionInstanceGroupManagerList_Warning_DataItem
    RegionInstanceGroupManagerList_Warning_DataItem (..),
    newRegionInstanceGroupManagerList_Warning_DataItem,

    -- ** RegionInstanceGroupManagerPatchInstanceConfigReq
    RegionInstanceGroupManagerPatchInstanceConfigReq (..),
    newRegionInstanceGroupManagerPatchInstanceConfigReq,

    -- ** RegionInstanceGroupManagerUpdateInstanceConfigReq
    RegionInstanceGroupManagerUpdateInstanceConfigReq (..),
    newRegionInstanceGroupManagerUpdateInstanceConfigReq,

    -- ** RegionInstanceGroupManagersAbandonInstancesRequest
    RegionInstanceGroupManagersAbandonInstancesRequest (..),
    newRegionInstanceGroupManagersAbandonInstancesRequest,

    -- ** RegionInstanceGroupManagersApplyUpdatesRequest
    RegionInstanceGroupManagersApplyUpdatesRequest (..),
    newRegionInstanceGroupManagersApplyUpdatesRequest,

    -- ** RegionInstanceGroupManagersApplyUpdatesRequest_MinimalAction
    RegionInstanceGroupManagersApplyUpdatesRequest_MinimalAction (..),

    -- ** RegionInstanceGroupManagersApplyUpdatesRequest_MostDisruptiveAllowedAction
    RegionInstanceGroupManagersApplyUpdatesRequest_MostDisruptiveAllowedAction (..),

    -- ** RegionInstanceGroupManagersCreateInstancesRequest
    RegionInstanceGroupManagersCreateInstancesRequest (..),
    newRegionInstanceGroupManagersCreateInstancesRequest,

    -- ** RegionInstanceGroupManagersDeleteInstancesRequest
    RegionInstanceGroupManagersDeleteInstancesRequest (..),
    newRegionInstanceGroupManagersDeleteInstancesRequest,

    -- ** RegionInstanceGroupManagersListErrorsResponse
    RegionInstanceGroupManagersListErrorsResponse (..),
    newRegionInstanceGroupManagersListErrorsResponse,

    -- ** RegionInstanceGroupManagersListInstanceConfigsResp
    RegionInstanceGroupManagersListInstanceConfigsResp (..),
    newRegionInstanceGroupManagersListInstanceConfigsResp,

    -- ** RegionInstanceGroupManagersListInstanceConfigsResp_Warning
    RegionInstanceGroupManagersListInstanceConfigsResp_Warning (..),
    newRegionInstanceGroupManagersListInstanceConfigsResp_Warning,

    -- ** RegionInstanceGroupManagersListInstanceConfigsResp_Warning_Code
    RegionInstanceGroupManagersListInstanceConfigsResp_Warning_Code (..),

    -- ** RegionInstanceGroupManagersListInstanceConfigsResp_Warning_DataItem
    RegionInstanceGroupManagersListInstanceConfigsResp_Warning_DataItem (..),
    newRegionInstanceGroupManagersListInstanceConfigsResp_Warning_DataItem,

    -- ** RegionInstanceGroupManagersListInstancesResponse
    RegionInstanceGroupManagersListInstancesResponse (..),
    newRegionInstanceGroupManagersListInstancesResponse,

    -- ** RegionInstanceGroupManagersRecreateRequest
    RegionInstanceGroupManagersRecreateRequest (..),
    newRegionInstanceGroupManagersRecreateRequest,

    -- ** RegionInstanceGroupManagersSetTargetPoolsRequest
    RegionInstanceGroupManagersSetTargetPoolsRequest (..),
    newRegionInstanceGroupManagersSetTargetPoolsRequest,

    -- ** RegionInstanceGroupManagersSetTemplateRequest
    RegionInstanceGroupManagersSetTemplateRequest (..),
    newRegionInstanceGroupManagersSetTemplateRequest,

    -- ** RegionInstanceGroupsListInstances
    RegionInstanceGroupsListInstances (..),
    newRegionInstanceGroupsListInstances,

    -- ** RegionInstanceGroupsListInstances_Warning
    RegionInstanceGroupsListInstances_Warning (..),
    newRegionInstanceGroupsListInstances_Warning,

    -- ** RegionInstanceGroupsListInstances_Warning_Code
    RegionInstanceGroupsListInstances_Warning_Code (..),

    -- ** RegionInstanceGroupsListInstances_Warning_DataItem
    RegionInstanceGroupsListInstances_Warning_DataItem (..),
    newRegionInstanceGroupsListInstances_Warning_DataItem,

    -- ** RegionInstanceGroupsListInstancesRequest
    RegionInstanceGroupsListInstancesRequest (..),
    newRegionInstanceGroupsListInstancesRequest,

    -- ** RegionInstanceGroupsListInstancesRequest_InstanceState
    RegionInstanceGroupsListInstancesRequest_InstanceState (..),

    -- ** RegionInstanceGroupsSetNamedPortsRequest
    RegionInstanceGroupsSetNamedPortsRequest (..),
    newRegionInstanceGroupsSetNamedPortsRequest,

    -- ** RegionList
    RegionList (..),
    newRegionList,

    -- ** RegionList_Warning
    RegionList_Warning (..),
    newRegionList_Warning,

    -- ** RegionList_Warning_Code
    RegionList_Warning_Code (..),

    -- ** RegionList_Warning_DataItem
    RegionList_Warning_DataItem (..),
    newRegionList_Warning_DataItem,

    -- ** RegionNetworkFirewallPoliciesGetEffectiveFirewallsResponse
    RegionNetworkFirewallPoliciesGetEffectiveFirewallsResponse (..),
    newRegionNetworkFirewallPoliciesGetEffectiveFirewallsResponse,

    -- ** RegionNetworkFirewallPoliciesGetEffectiveFirewallsResponseEffectiveFirewallPolicy
    RegionNetworkFirewallPoliciesGetEffectiveFirewallsResponseEffectiveFirewallPolicy (..),
    newRegionNetworkFirewallPoliciesGetEffectiveFirewallsResponseEffectiveFirewallPolicy,

    -- ** RegionNetworkFirewallPoliciesGetEffectiveFirewallsResponseEffectiveFirewallPolicy_Type
    RegionNetworkFirewallPoliciesGetEffectiveFirewallsResponseEffectiveFirewallPolicy_Type (..),

    -- ** RegionSetLabelsRequest
    RegionSetLabelsRequest (..),
    newRegionSetLabelsRequest,

    -- ** RegionSetLabelsRequest_Labels
    RegionSetLabelsRequest_Labels (..),
    newRegionSetLabelsRequest_Labels,

    -- ** RegionSetPolicyRequest
    RegionSetPolicyRequest (..),
    newRegionSetPolicyRequest,

    -- ** RegionTargetHttpsProxiesSetSslCertificatesRequest
    RegionTargetHttpsProxiesSetSslCertificatesRequest (..),
    newRegionTargetHttpsProxiesSetSslCertificatesRequest,

    -- ** RegionUrlMapsValidateRequest
    RegionUrlMapsValidateRequest (..),
    newRegionUrlMapsValidateRequest,

    -- ** RequestMirrorPolicy
    RequestMirrorPolicy (..),
    newRequestMirrorPolicy,

    -- ** Reservation
    Reservation (..),
    newReservation,

    -- ** Reservation_Status
    Reservation_Status (..),

    -- ** ReservationAffinity
    ReservationAffinity (..),
    newReservationAffinity,

    -- ** ReservationAffinity_ConsumeReservationType
    ReservationAffinity_ConsumeReservationType (..),

    -- ** ReservationAggregatedList
    ReservationAggregatedList (..),
    newReservationAggregatedList,

    -- ** ReservationAggregatedList_Items
    ReservationAggregatedList_Items (..),
    newReservationAggregatedList_Items,

    -- ** ReservationAggregatedList_Warning
    ReservationAggregatedList_Warning (..),
    newReservationAggregatedList_Warning,

    -- ** ReservationAggregatedList_Warning_Code
    ReservationAggregatedList_Warning_Code (..),

    -- ** ReservationAggregatedList_Warning_DataItem
    ReservationAggregatedList_Warning_DataItem (..),
    newReservationAggregatedList_Warning_DataItem,

    -- ** ReservationList
    ReservationList (..),
    newReservationList,

    -- ** ReservationList_Warning
    ReservationList_Warning (..),
    newReservationList_Warning,

    -- ** ReservationList_Warning_Code
    ReservationList_Warning_Code (..),

    -- ** ReservationList_Warning_DataItem
    ReservationList_Warning_DataItem (..),
    newReservationList_Warning_DataItem,

    -- ** ReservationsResizeRequest
    ReservationsResizeRequest (..),
    newReservationsResizeRequest,

    -- ** ReservationsScopedList
    ReservationsScopedList (..),
    newReservationsScopedList,

    -- ** ReservationsScopedList_Warning
    ReservationsScopedList_Warning (..),
    newReservationsScopedList_Warning,

    -- ** ReservationsScopedList_Warning_Code
    ReservationsScopedList_Warning_Code (..),

    -- ** ReservationsScopedList_Warning_DataItem
    ReservationsScopedList_Warning_DataItem (..),
    newReservationsScopedList_Warning_DataItem,

    -- ** ResourceCommitment
    ResourceCommitment (..),
    newResourceCommitment,

    -- ** ResourceCommitment_Type
    ResourceCommitment_Type (..),

    -- ** ResourceGroupReference
    ResourceGroupReference (..),
    newResourceGroupReference,

    -- ** ResourcePoliciesScopedList
    ResourcePoliciesScopedList (..),
    newResourcePoliciesScopedList,

    -- ** ResourcePoliciesScopedList_Warning
    ResourcePoliciesScopedList_Warning (..),
    newResourcePoliciesScopedList_Warning,

    -- ** ResourcePoliciesScopedList_Warning_Code
    ResourcePoliciesScopedList_Warning_Code (..),

    -- ** ResourcePoliciesScopedList_Warning_DataItem
    ResourcePoliciesScopedList_Warning_DataItem (..),
    newResourcePoliciesScopedList_Warning_DataItem,

    -- ** ResourcePolicy
    ResourcePolicy (..),
    newResourcePolicy,

    -- ** ResourcePolicy_Status
    ResourcePolicy_Status (..),

    -- ** ResourcePolicyAggregatedList
    ResourcePolicyAggregatedList (..),
    newResourcePolicyAggregatedList,

    -- ** ResourcePolicyAggregatedList_Items
    ResourcePolicyAggregatedList_Items (..),
    newResourcePolicyAggregatedList_Items,

    -- ** ResourcePolicyAggregatedList_Warning
    ResourcePolicyAggregatedList_Warning (..),
    newResourcePolicyAggregatedList_Warning,

    -- ** ResourcePolicyAggregatedList_Warning_Code
    ResourcePolicyAggregatedList_Warning_Code (..),

    -- ** ResourcePolicyAggregatedList_Warning_DataItem
    ResourcePolicyAggregatedList_Warning_DataItem (..),
    newResourcePolicyAggregatedList_Warning_DataItem,

    -- ** ResourcePolicyDailyCycle
    ResourcePolicyDailyCycle (..),
    newResourcePolicyDailyCycle,

    -- ** ResourcePolicyGroupPlacementPolicy
    ResourcePolicyGroupPlacementPolicy (..),
    newResourcePolicyGroupPlacementPolicy,

    -- ** ResourcePolicyGroupPlacementPolicy_Collocation
    ResourcePolicyGroupPlacementPolicy_Collocation (..),

    -- ** ResourcePolicyHourlyCycle
    ResourcePolicyHourlyCycle (..),
    newResourcePolicyHourlyCycle,

    -- ** ResourcePolicyInstanceSchedulePolicy
    ResourcePolicyInstanceSchedulePolicy (..),
    newResourcePolicyInstanceSchedulePolicy,

    -- ** ResourcePolicyInstanceSchedulePolicySchedule
    ResourcePolicyInstanceSchedulePolicySchedule (..),
    newResourcePolicyInstanceSchedulePolicySchedule,

    -- ** ResourcePolicyList
    ResourcePolicyList (..),
    newResourcePolicyList,

    -- ** ResourcePolicyList_Warning
    ResourcePolicyList_Warning (..),
    newResourcePolicyList_Warning,

    -- ** ResourcePolicyList_Warning_Code
    ResourcePolicyList_Warning_Code (..),

    -- ** ResourcePolicyList_Warning_DataItem
    ResourcePolicyList_Warning_DataItem (..),
    newResourcePolicyList_Warning_DataItem,

    -- ** ResourcePolicyResourceStatus
    ResourcePolicyResourceStatus (..),
    newResourcePolicyResourceStatus,

    -- ** ResourcePolicyResourceStatusInstanceSchedulePolicyStatus
    ResourcePolicyResourceStatusInstanceSchedulePolicyStatus (..),
    newResourcePolicyResourceStatusInstanceSchedulePolicyStatus,

    -- ** ResourcePolicySnapshotSchedulePolicy
    ResourcePolicySnapshotSchedulePolicy (..),
    newResourcePolicySnapshotSchedulePolicy,

    -- ** ResourcePolicySnapshotSchedulePolicyRetentionPolicy
    ResourcePolicySnapshotSchedulePolicyRetentionPolicy (..),
    newResourcePolicySnapshotSchedulePolicyRetentionPolicy,

    -- ** ResourcePolicySnapshotSchedulePolicyRetentionPolicy_OnSourceDiskDelete
    ResourcePolicySnapshotSchedulePolicyRetentionPolicy_OnSourceDiskDelete (..),

    -- ** ResourcePolicySnapshotSchedulePolicySchedule
    ResourcePolicySnapshotSchedulePolicySchedule (..),
    newResourcePolicySnapshotSchedulePolicySchedule,

    -- ** ResourcePolicySnapshotSchedulePolicySnapshotProperties
    ResourcePolicySnapshotSchedulePolicySnapshotProperties (..),
    newResourcePolicySnapshotSchedulePolicySnapshotProperties,

    -- ** ResourcePolicySnapshotSchedulePolicySnapshotProperties_Labels
    ResourcePolicySnapshotSchedulePolicySnapshotProperties_Labels (..),
    newResourcePolicySnapshotSchedulePolicySnapshotProperties_Labels,

    -- ** ResourcePolicyWeeklyCycle
    ResourcePolicyWeeklyCycle (..),
    newResourcePolicyWeeklyCycle,

    -- ** ResourcePolicyWeeklyCycleDayOfWeek
    ResourcePolicyWeeklyCycleDayOfWeek (..),
    newResourcePolicyWeeklyCycleDayOfWeek,

    -- ** ResourcePolicyWeeklyCycleDayOfWeek_Day
    ResourcePolicyWeeklyCycleDayOfWeek_Day (..),

    -- ** Route
    Route (..),
    newRoute,

    -- ** Route_RouteType
    Route_RouteType (..),

    -- ** Route_WarningsItem
    Route_WarningsItem (..),
    newRoute_WarningsItem,

    -- ** Route_WarningsItem_Code
    Route_WarningsItem_Code (..),

    -- ** Route_WarningsItem_DataItem
    Route_WarningsItem_DataItem (..),
    newRoute_WarningsItem_DataItem,

    -- ** RouteAsPath
    RouteAsPath (..),
    newRouteAsPath,

    -- ** RouteAsPath_PathSegmentType
    RouteAsPath_PathSegmentType (..),

    -- ** RouteList
    RouteList (..),
    newRouteList,

    -- ** RouteList_Warning
    RouteList_Warning (..),
    newRouteList_Warning,

    -- ** RouteList_Warning_Code
    RouteList_Warning_Code (..),

    -- ** RouteList_Warning_DataItem
    RouteList_Warning_DataItem (..),
    newRouteList_Warning_DataItem,

    -- ** Router
    Router (..),
    newRouter,

    -- ** RouterAdvertisedIpRange
    RouterAdvertisedIpRange (..),
    newRouterAdvertisedIpRange,

    -- ** RouterAggregatedList
    RouterAggregatedList (..),
    newRouterAggregatedList,

    -- ** RouterAggregatedList_Items
    RouterAggregatedList_Items (..),
    newRouterAggregatedList_Items,

    -- ** RouterAggregatedList_Warning
    RouterAggregatedList_Warning (..),
    newRouterAggregatedList_Warning,

    -- ** RouterAggregatedList_Warning_Code
    RouterAggregatedList_Warning_Code (..),

    -- ** RouterAggregatedList_Warning_DataItem
    RouterAggregatedList_Warning_DataItem (..),
    newRouterAggregatedList_Warning_DataItem,

    -- ** RouterBgp
    RouterBgp (..),
    newRouterBgp,

    -- ** RouterBgp_AdvertiseMode
    RouterBgp_AdvertiseMode (..),

    -- ** RouterBgp_AdvertisedGroupsItem
    RouterBgp_AdvertisedGroupsItem (..),

    -- ** RouterBgpPeer
    RouterBgpPeer (..),
    newRouterBgpPeer,

    -- ** RouterBgpPeer_AdvertiseMode
    RouterBgpPeer_AdvertiseMode (..),

    -- ** RouterBgpPeer_AdvertisedGroupsItem
    RouterBgpPeer_AdvertisedGroupsItem (..),

    -- ** RouterBgpPeer_Enable
    RouterBgpPeer_Enable (..),

    -- ** RouterBgpPeer_ManagementType
    RouterBgpPeer_ManagementType (..),

    -- ** RouterBgpPeerBfd
    RouterBgpPeerBfd (..),
    newRouterBgpPeerBfd,

    -- ** RouterBgpPeerBfd_SessionInitializationMode
    RouterBgpPeerBfd_SessionInitializationMode (..),

    -- ** RouterInterface
    RouterInterface (..),
    newRouterInterface,

    -- ** RouterInterface_ManagementType
    RouterInterface_ManagementType (..),

    -- ** RouterList
    RouterList (..),
    newRouterList,

    -- ** RouterList_Warning
    RouterList_Warning (..),
    newRouterList_Warning,

    -- ** RouterList_Warning_Code
    RouterList_Warning_Code (..),

    -- ** RouterList_Warning_DataItem
    RouterList_Warning_DataItem (..),
    newRouterList_Warning_DataItem,

    -- ** RouterNat
    RouterNat (..),
    newRouterNat,

    -- ** RouterNat_NatIpAllocateOption
    RouterNat_NatIpAllocateOption (..),

    -- ** RouterNat_SourceSubnetworkIpRangesToNat
    RouterNat_SourceSubnetworkIpRangesToNat (..),

    -- ** RouterNatLogConfig
    RouterNatLogConfig (..),
    newRouterNatLogConfig,

    -- ** RouterNatLogConfig_Filter
    RouterNatLogConfig_Filter (..),

    -- ** RouterNatRule
    RouterNatRule (..),
    newRouterNatRule,

    -- ** RouterNatRuleAction
    RouterNatRuleAction (..),
    newRouterNatRuleAction,

    -- ** RouterNatSubnetworkToNat
    RouterNatSubnetworkToNat (..),
    newRouterNatSubnetworkToNat,

    -- ** RouterNatSubnetworkToNat_SourceIpRangesToNatItem
    RouterNatSubnetworkToNat_SourceIpRangesToNatItem (..),

    -- ** RouterStatus
    RouterStatus (..),
    newRouterStatus,

    -- ** RouterStatusBgpPeerStatus
    RouterStatusBgpPeerStatus (..),
    newRouterStatusBgpPeerStatus,

    -- ** RouterStatusBgpPeerStatus_Status
    RouterStatusBgpPeerStatus_Status (..),

    -- ** RouterStatusNatStatus
    RouterStatusNatStatus (..),
    newRouterStatusNatStatus,

    -- ** RouterStatusNatStatusNatRuleStatus
    RouterStatusNatStatusNatRuleStatus (..),
    newRouterStatusNatStatusNatRuleStatus,

    -- ** RouterStatusResponse
    RouterStatusResponse (..),
    newRouterStatusResponse,

    -- ** RoutersPreviewResponse
    RoutersPreviewResponse (..),
    newRoutersPreviewResponse,

    -- ** RoutersScopedList
    RoutersScopedList (..),
    newRoutersScopedList,

    -- ** RoutersScopedList_Warning
    RoutersScopedList_Warning (..),
    newRoutersScopedList_Warning,

    -- ** RoutersScopedList_Warning_Code
    RoutersScopedList_Warning_Code (..),

    -- ** RoutersScopedList_Warning_DataItem
    RoutersScopedList_Warning_DataItem (..),
    newRoutersScopedList_Warning_DataItem,

    -- ** Rule
    Rule (..),
    newRule,

    -- ** Rule_Action
    Rule_Action (..),

    -- ** SSLHealthCheck
    SSLHealthCheck (..),
    newSSLHealthCheck,

    -- ** SSLHealthCheck_PortSpecification
    SSLHealthCheck_PortSpecification (..),

    -- ** SSLHealthCheck_ProxyHeader
    SSLHealthCheck_ProxyHeader (..),

    -- ** SavedAttachedDisk
    SavedAttachedDisk (..),
    newSavedAttachedDisk,

    -- ** SavedAttachedDisk_Interface
    SavedAttachedDisk_Interface (..),

    -- ** SavedAttachedDisk_Mode
    SavedAttachedDisk_Mode (..),

    -- ** SavedAttachedDisk_StorageBytesStatus
    SavedAttachedDisk_StorageBytesStatus (..),

    -- ** SavedAttachedDisk_Type
    SavedAttachedDisk_Type (..),

    -- ** SavedDisk
    SavedDisk (..),
    newSavedDisk,

    -- ** SavedDisk_StorageBytesStatus
    SavedDisk_StorageBytesStatus (..),

    -- ** ScalingScheduleStatus
    ScalingScheduleStatus (..),
    newScalingScheduleStatus,

    -- ** ScalingScheduleStatus_State
    ScalingScheduleStatus_State (..),

    -- ** Scheduling
    Scheduling (..),
    newScheduling,

    -- ** Scheduling_InstanceTerminationAction
    Scheduling_InstanceTerminationAction (..),

    -- ** Scheduling_OnHostMaintenance
    Scheduling_OnHostMaintenance (..),

    -- ** Scheduling_ProvisioningModel
    Scheduling_ProvisioningModel (..),

    -- ** SchedulingNodeAffinity
    SchedulingNodeAffinity (..),
    newSchedulingNodeAffinity,

    -- ** SchedulingNodeAffinity_Operator
    SchedulingNodeAffinity_Operator (..),

    -- ** Screenshot
    Screenshot (..),
    newScreenshot,

    -- ** SecurityPoliciesListPreconfiguredExpressionSetsResponse
    SecurityPoliciesListPreconfiguredExpressionSetsResponse (..),
    newSecurityPoliciesListPreconfiguredExpressionSetsResponse,

    -- ** SecurityPoliciesWafConfig
    SecurityPoliciesWafConfig (..),
    newSecurityPoliciesWafConfig,

    -- ** SecurityPolicy
    SecurityPolicy (..),
    newSecurityPolicy,

    -- ** SecurityPolicy_Type
    SecurityPolicy_Type (..),

    -- ** SecurityPolicyAdaptiveProtectionConfig
    SecurityPolicyAdaptiveProtectionConfig (..),
    newSecurityPolicyAdaptiveProtectionConfig,

    -- ** SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig
    SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig (..),
    newSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig,

    -- ** SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig_RuleVisibility
    SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig_RuleVisibility (..),

    -- ** SecurityPolicyAdvancedOptionsConfig
    SecurityPolicyAdvancedOptionsConfig (..),
    newSecurityPolicyAdvancedOptionsConfig,

    -- ** SecurityPolicyAdvancedOptionsConfig_JsonParsing
    SecurityPolicyAdvancedOptionsConfig_JsonParsing (..),

    -- ** SecurityPolicyAdvancedOptionsConfig_LogLevel
    SecurityPolicyAdvancedOptionsConfig_LogLevel (..),

    -- ** SecurityPolicyList
    SecurityPolicyList (..),
    newSecurityPolicyList,

    -- ** SecurityPolicyList_Warning
    SecurityPolicyList_Warning (..),
    newSecurityPolicyList_Warning,

    -- ** SecurityPolicyList_Warning_Code
    SecurityPolicyList_Warning_Code (..),

    -- ** SecurityPolicyList_Warning_DataItem
    SecurityPolicyList_Warning_DataItem (..),
    newSecurityPolicyList_Warning_DataItem,

    -- ** SecurityPolicyRecaptchaOptionsConfig
    SecurityPolicyRecaptchaOptionsConfig (..),
    newSecurityPolicyRecaptchaOptionsConfig,

    -- ** SecurityPolicyReference
    SecurityPolicyReference (..),
    newSecurityPolicyReference,

    -- ** SecurityPolicyRule
    SecurityPolicyRule (..),
    newSecurityPolicyRule,

    -- ** SecurityPolicyRuleHttpHeaderAction
    SecurityPolicyRuleHttpHeaderAction (..),
    newSecurityPolicyRuleHttpHeaderAction,

    -- ** SecurityPolicyRuleHttpHeaderActionHttpHeaderOption
    SecurityPolicyRuleHttpHeaderActionHttpHeaderOption (..),
    newSecurityPolicyRuleHttpHeaderActionHttpHeaderOption,

    -- ** SecurityPolicyRuleMatcher
    SecurityPolicyRuleMatcher (..),
    newSecurityPolicyRuleMatcher,

    -- ** SecurityPolicyRuleMatcher_VersionedExpr
    SecurityPolicyRuleMatcher_VersionedExpr (..),

    -- ** SecurityPolicyRuleMatcherConfig
    SecurityPolicyRuleMatcherConfig (..),
    newSecurityPolicyRuleMatcherConfig,

    -- ** SecurityPolicyRuleRateLimitOptions
    SecurityPolicyRuleRateLimitOptions (..),
    newSecurityPolicyRuleRateLimitOptions,

    -- ** SecurityPolicyRuleRateLimitOptions_EnforceOnKey
    SecurityPolicyRuleRateLimitOptions_EnforceOnKey (..),

    -- ** SecurityPolicyRuleRateLimitOptionsThreshold
    SecurityPolicyRuleRateLimitOptionsThreshold (..),
    newSecurityPolicyRuleRateLimitOptionsThreshold,

    -- ** SecurityPolicyRuleRedirectOptions
    SecurityPolicyRuleRedirectOptions (..),
    newSecurityPolicyRuleRedirectOptions,

    -- ** SecurityPolicyRuleRedirectOptions_Type
    SecurityPolicyRuleRedirectOptions_Type (..),

    -- ** SecuritySettings
    SecuritySettings (..),
    newSecuritySettings,

    -- ** SerialPortOutput
    SerialPortOutput (..),
    newSerialPortOutput,

    -- ** ServerBinding
    ServerBinding (..),
    newServerBinding,

    -- ** ServerBinding_Type
    ServerBinding_Type (..),

    -- ** ServiceAccount
    ServiceAccount (..),
    newServiceAccount,

    -- ** ServiceAttachment
    ServiceAttachment (..),
    newServiceAttachment,

    -- ** ServiceAttachment_ConnectionPreference
    ServiceAttachment_ConnectionPreference (..),

    -- ** ServiceAttachmentAggregatedList
    ServiceAttachmentAggregatedList (..),
    newServiceAttachmentAggregatedList,

    -- ** ServiceAttachmentAggregatedList_Items
    ServiceAttachmentAggregatedList_Items (..),
    newServiceAttachmentAggregatedList_Items,

    -- ** ServiceAttachmentAggregatedList_Warning
    ServiceAttachmentAggregatedList_Warning (..),
    newServiceAttachmentAggregatedList_Warning,

    -- ** ServiceAttachmentAggregatedList_Warning_Code
    ServiceAttachmentAggregatedList_Warning_Code (..),

    -- ** ServiceAttachmentAggregatedList_Warning_DataItem
    ServiceAttachmentAggregatedList_Warning_DataItem (..),
    newServiceAttachmentAggregatedList_Warning_DataItem,

    -- ** ServiceAttachmentConnectedEndpoint
    ServiceAttachmentConnectedEndpoint (..),
    newServiceAttachmentConnectedEndpoint,

    -- ** ServiceAttachmentConnectedEndpoint_Status
    ServiceAttachmentConnectedEndpoint_Status (..),

    -- ** ServiceAttachmentConsumerProjectLimit
    ServiceAttachmentConsumerProjectLimit (..),
    newServiceAttachmentConsumerProjectLimit,

    -- ** ServiceAttachmentList
    ServiceAttachmentList (..),
    newServiceAttachmentList,

    -- ** ServiceAttachmentList_Warning
    ServiceAttachmentList_Warning (..),
    newServiceAttachmentList_Warning,

    -- ** ServiceAttachmentList_Warning_Code
    ServiceAttachmentList_Warning_Code (..),

    -- ** ServiceAttachmentList_Warning_DataItem
    ServiceAttachmentList_Warning_DataItem (..),
    newServiceAttachmentList_Warning_DataItem,

    -- ** ServiceAttachmentsScopedList
    ServiceAttachmentsScopedList (..),
    newServiceAttachmentsScopedList,

    -- ** ServiceAttachmentsScopedList_Warning
    ServiceAttachmentsScopedList_Warning (..),
    newServiceAttachmentsScopedList_Warning,

    -- ** ServiceAttachmentsScopedList_Warning_Code
    ServiceAttachmentsScopedList_Warning_Code (..),

    -- ** ServiceAttachmentsScopedList_Warning_DataItem
    ServiceAttachmentsScopedList_Warning_DataItem (..),
    newServiceAttachmentsScopedList_Warning_DataItem,

    -- ** ShareSettings
    ShareSettings (..),
    newShareSettings,

    -- ** ShareSettings_ProjectMap
    ShareSettings_ProjectMap (..),
    newShareSettings_ProjectMap,

    -- ** ShareSettings_ShareType
    ShareSettings_ShareType (..),

    -- ** ShareSettingsProjectConfig
    ShareSettingsProjectConfig (..),
    newShareSettingsProjectConfig,

    -- ** ShieldedInstanceConfig
    ShieldedInstanceConfig (..),
    newShieldedInstanceConfig,

    -- ** ShieldedInstanceIdentity
    ShieldedInstanceIdentity (..),
    newShieldedInstanceIdentity,

    -- ** ShieldedInstanceIdentityEntry
    ShieldedInstanceIdentityEntry (..),
    newShieldedInstanceIdentityEntry,

    -- ** ShieldedInstanceIntegrityPolicy
    ShieldedInstanceIntegrityPolicy (..),
    newShieldedInstanceIntegrityPolicy,

    -- ** SignedUrlKey
    SignedUrlKey (..),
    newSignedUrlKey,

    -- ** Snapshot
    Snapshot (..),
    newSnapshot,

    -- ** Snapshot_Labels
    Snapshot_Labels (..),
    newSnapshot_Labels,

    -- ** Snapshot_Status
    Snapshot_Status (..),

    -- ** Snapshot_StorageBytesStatus
    Snapshot_StorageBytesStatus (..),

    -- ** SnapshotList
    SnapshotList (..),
    newSnapshotList,

    -- ** SnapshotList_Warning
    SnapshotList_Warning (..),
    newSnapshotList_Warning,

    -- ** SnapshotList_Warning_Code
    SnapshotList_Warning_Code (..),

    -- ** SnapshotList_Warning_DataItem
    SnapshotList_Warning_DataItem (..),
    newSnapshotList_Warning_DataItem,

    -- ** SourceDiskEncryptionKey
    SourceDiskEncryptionKey (..),
    newSourceDiskEncryptionKey,

    -- ** SourceInstanceParams
    SourceInstanceParams (..),
    newSourceInstanceParams,

    -- ** SourceInstanceProperties
    SourceInstanceProperties (..),
    newSourceInstanceProperties,

    -- ** SourceInstanceProperties_Labels
    SourceInstanceProperties_Labels (..),
    newSourceInstanceProperties_Labels,

    -- ** SslCertificate
    SslCertificate (..),
    newSslCertificate,

    -- ** SslCertificate_Type
    SslCertificate_Type (..),

    -- ** SslCertificateAggregatedList
    SslCertificateAggregatedList (..),
    newSslCertificateAggregatedList,

    -- ** SslCertificateAggregatedList_Items
    SslCertificateAggregatedList_Items (..),
    newSslCertificateAggregatedList_Items,

    -- ** SslCertificateAggregatedList_Warning
    SslCertificateAggregatedList_Warning (..),
    newSslCertificateAggregatedList_Warning,

    -- ** SslCertificateAggregatedList_Warning_Code
    SslCertificateAggregatedList_Warning_Code (..),

    -- ** SslCertificateAggregatedList_Warning_DataItem
    SslCertificateAggregatedList_Warning_DataItem (..),
    newSslCertificateAggregatedList_Warning_DataItem,

    -- ** SslCertificateList
    SslCertificateList (..),
    newSslCertificateList,

    -- ** SslCertificateList_Warning
    SslCertificateList_Warning (..),
    newSslCertificateList_Warning,

    -- ** SslCertificateList_Warning_Code
    SslCertificateList_Warning_Code (..),

    -- ** SslCertificateList_Warning_DataItem
    SslCertificateList_Warning_DataItem (..),
    newSslCertificateList_Warning_DataItem,

    -- ** SslCertificateManagedSslCertificate
    SslCertificateManagedSslCertificate (..),
    newSslCertificateManagedSslCertificate,

    -- ** SslCertificateManagedSslCertificate_DomainStatus
    SslCertificateManagedSslCertificate_DomainStatus (..),
    newSslCertificateManagedSslCertificate_DomainStatus,

    -- ** SslCertificateManagedSslCertificate_DomainStatusAdditional
    SslCertificateManagedSslCertificate_DomainStatusAdditional (..),

    -- ** SslCertificateManagedSslCertificate_Status
    SslCertificateManagedSslCertificate_Status (..),

    -- ** SslCertificateSelfManagedSslCertificate
    SslCertificateSelfManagedSslCertificate (..),
    newSslCertificateSelfManagedSslCertificate,

    -- ** SslCertificatesScopedList
    SslCertificatesScopedList (..),
    newSslCertificatesScopedList,

    -- ** SslCertificatesScopedList_Warning
    SslCertificatesScopedList_Warning (..),
    newSslCertificatesScopedList_Warning,

    -- ** SslCertificatesScopedList_Warning_Code
    SslCertificatesScopedList_Warning_Code (..),

    -- ** SslCertificatesScopedList_Warning_DataItem
    SslCertificatesScopedList_Warning_DataItem (..),
    newSslCertificatesScopedList_Warning_DataItem,

    -- ** SslPoliciesList
    SslPoliciesList (..),
    newSslPoliciesList,

    -- ** SslPoliciesList_Warning
    SslPoliciesList_Warning (..),
    newSslPoliciesList_Warning,

    -- ** SslPoliciesList_Warning_Code
    SslPoliciesList_Warning_Code (..),

    -- ** SslPoliciesList_Warning_DataItem
    SslPoliciesList_Warning_DataItem (..),
    newSslPoliciesList_Warning_DataItem,

    -- ** SslPoliciesListAvailableFeaturesResponse
    SslPoliciesListAvailableFeaturesResponse (..),
    newSslPoliciesListAvailableFeaturesResponse,

    -- ** SslPolicy
    SslPolicy (..),
    newSslPolicy,

    -- ** SslPolicy_MinTlsVersion
    SslPolicy_MinTlsVersion (..),

    -- ** SslPolicy_Profile
    SslPolicy_Profile (..),

    -- ** SslPolicy_WarningsItem
    SslPolicy_WarningsItem (..),
    newSslPolicy_WarningsItem,

    -- ** SslPolicy_WarningsItem_Code
    SslPolicy_WarningsItem_Code (..),

    -- ** SslPolicy_WarningsItem_DataItem
    SslPolicy_WarningsItem_DataItem (..),
    newSslPolicy_WarningsItem_DataItem,

    -- ** SslPolicyReference
    SslPolicyReference (..),
    newSslPolicyReference,

    -- ** StatefulPolicy
    StatefulPolicy (..),
    newStatefulPolicy,

    -- ** StatefulPolicyPreservedState
    StatefulPolicyPreservedState (..),
    newStatefulPolicyPreservedState,

    -- ** StatefulPolicyPreservedState_Disks
    StatefulPolicyPreservedState_Disks (..),
    newStatefulPolicyPreservedState_Disks,

    -- ** StatefulPolicyPreservedStateDiskDevice
    StatefulPolicyPreservedStateDiskDevice (..),
    newStatefulPolicyPreservedStateDiskDevice,

    -- ** StatefulPolicyPreservedStateDiskDevice_AutoDelete
    StatefulPolicyPreservedStateDiskDevice_AutoDelete (..),

    -- ** Subnetwork
    Subnetwork (..),
    newSubnetwork,

    -- ** Subnetwork_Ipv6AccessType
    Subnetwork_Ipv6AccessType (..),

    -- ** Subnetwork_PrivateIpv6GoogleAccess
    Subnetwork_PrivateIpv6GoogleAccess (..),

    -- ** Subnetwork_Purpose
    Subnetwork_Purpose (..),

    -- ** Subnetwork_Role
    Subnetwork_Role (..),

    -- ** Subnetwork_StackType
    Subnetwork_StackType (..),

    -- ** Subnetwork_State
    Subnetwork_State (..),

    -- ** SubnetworkAggregatedList
    SubnetworkAggregatedList (..),
    newSubnetworkAggregatedList,

    -- ** SubnetworkAggregatedList_Items
    SubnetworkAggregatedList_Items (..),
    newSubnetworkAggregatedList_Items,

    -- ** SubnetworkAggregatedList_Warning
    SubnetworkAggregatedList_Warning (..),
    newSubnetworkAggregatedList_Warning,

    -- ** SubnetworkAggregatedList_Warning_Code
    SubnetworkAggregatedList_Warning_Code (..),

    -- ** SubnetworkAggregatedList_Warning_DataItem
    SubnetworkAggregatedList_Warning_DataItem (..),
    newSubnetworkAggregatedList_Warning_DataItem,

    -- ** SubnetworkList
    SubnetworkList (..),
    newSubnetworkList,

    -- ** SubnetworkList_Warning
    SubnetworkList_Warning (..),
    newSubnetworkList_Warning,

    -- ** SubnetworkList_Warning_Code
    SubnetworkList_Warning_Code (..),

    -- ** SubnetworkList_Warning_DataItem
    SubnetworkList_Warning_DataItem (..),
    newSubnetworkList_Warning_DataItem,

    -- ** SubnetworkLogConfig
    SubnetworkLogConfig (..),
    newSubnetworkLogConfig,

    -- ** SubnetworkLogConfig_AggregationInterval
    SubnetworkLogConfig_AggregationInterval (..),

    -- ** SubnetworkLogConfig_Metadata
    SubnetworkLogConfig_Metadata (..),

    -- ** SubnetworkSecondaryRange
    SubnetworkSecondaryRange (..),
    newSubnetworkSecondaryRange,

    -- ** SubnetworksExpandIpCidrRangeRequest
    SubnetworksExpandIpCidrRangeRequest (..),
    newSubnetworksExpandIpCidrRangeRequest,

    -- ** SubnetworksScopedList
    SubnetworksScopedList (..),
    newSubnetworksScopedList,

    -- ** SubnetworksScopedList_Warning
    SubnetworksScopedList_Warning (..),
    newSubnetworksScopedList_Warning,

    -- ** SubnetworksScopedList_Warning_Code
    SubnetworksScopedList_Warning_Code (..),

    -- ** SubnetworksScopedList_Warning_DataItem
    SubnetworksScopedList_Warning_DataItem (..),
    newSubnetworksScopedList_Warning_DataItem,

    -- ** SubnetworksSetPrivateIpGoogleAccessRequest
    SubnetworksSetPrivateIpGoogleAccessRequest (..),
    newSubnetworksSetPrivateIpGoogleAccessRequest,

    -- ** Subsetting
    Subsetting (..),
    newSubsetting,

    -- ** Subsetting_Policy
    Subsetting_Policy (..),

    -- ** TCPHealthCheck
    TCPHealthCheck (..),
    newTCPHealthCheck,

    -- ** TCPHealthCheck_PortSpecification
    TCPHealthCheck_PortSpecification (..),

    -- ** TCPHealthCheck_ProxyHeader
    TCPHealthCheck_ProxyHeader (..),

    -- ** Tags
    Tags (..),
    newTags,

    -- ** TargetGrpcProxy
    TargetGrpcProxy (..),
    newTargetGrpcProxy,

    -- ** TargetGrpcProxyList
    TargetGrpcProxyList (..),
    newTargetGrpcProxyList,

    -- ** TargetGrpcProxyList_Warning
    TargetGrpcProxyList_Warning (..),
    newTargetGrpcProxyList_Warning,

    -- ** TargetGrpcProxyList_Warning_Code
    TargetGrpcProxyList_Warning_Code (..),

    -- ** TargetGrpcProxyList_Warning_DataItem
    TargetGrpcProxyList_Warning_DataItem (..),
    newTargetGrpcProxyList_Warning_DataItem,

    -- ** TargetHttpProxiesScopedList
    TargetHttpProxiesScopedList (..),
    newTargetHttpProxiesScopedList,

    -- ** TargetHttpProxiesScopedList_Warning
    TargetHttpProxiesScopedList_Warning (..),
    newTargetHttpProxiesScopedList_Warning,

    -- ** TargetHttpProxiesScopedList_Warning_Code
    TargetHttpProxiesScopedList_Warning_Code (..),

    -- ** TargetHttpProxiesScopedList_Warning_DataItem
    TargetHttpProxiesScopedList_Warning_DataItem (..),
    newTargetHttpProxiesScopedList_Warning_DataItem,

    -- ** TargetHttpProxy
    TargetHttpProxy (..),
    newTargetHttpProxy,

    -- ** TargetHttpProxyAggregatedList
    TargetHttpProxyAggregatedList (..),
    newTargetHttpProxyAggregatedList,

    -- ** TargetHttpProxyAggregatedList_Items
    TargetHttpProxyAggregatedList_Items (..),
    newTargetHttpProxyAggregatedList_Items,

    -- ** TargetHttpProxyList
    TargetHttpProxyList (..),
    newTargetHttpProxyList,

    -- ** TargetHttpProxyList_Warning
    TargetHttpProxyList_Warning (..),
    newTargetHttpProxyList_Warning,

    -- ** TargetHttpProxyList_Warning_Code
    TargetHttpProxyList_Warning_Code (..),

    -- ** TargetHttpProxyList_Warning_DataItem
    TargetHttpProxyList_Warning_DataItem (..),
    newTargetHttpProxyList_Warning_DataItem,

    -- ** TargetHttpsProxiesScopedList
    TargetHttpsProxiesScopedList (..),
    newTargetHttpsProxiesScopedList,

    -- ** TargetHttpsProxiesScopedList_Warning
    TargetHttpsProxiesScopedList_Warning (..),
    newTargetHttpsProxiesScopedList_Warning,

    -- ** TargetHttpsProxiesScopedList_Warning_Code
    TargetHttpsProxiesScopedList_Warning_Code (..),

    -- ** TargetHttpsProxiesScopedList_Warning_DataItem
    TargetHttpsProxiesScopedList_Warning_DataItem (..),
    newTargetHttpsProxiesScopedList_Warning_DataItem,

    -- ** TargetHttpsProxiesSetQuicOverrideRequest
    TargetHttpsProxiesSetQuicOverrideRequest (..),
    newTargetHttpsProxiesSetQuicOverrideRequest,

    -- ** TargetHttpsProxiesSetQuicOverrideRequest_QuicOverride
    TargetHttpsProxiesSetQuicOverrideRequest_QuicOverride (..),

    -- ** TargetHttpsProxiesSetSslCertificatesRequest
    TargetHttpsProxiesSetSslCertificatesRequest (..),
    newTargetHttpsProxiesSetSslCertificatesRequest,

    -- ** TargetHttpsProxy
    TargetHttpsProxy (..),
    newTargetHttpsProxy,

    -- ** TargetHttpsProxy_QuicOverride
    TargetHttpsProxy_QuicOverride (..),

    -- ** TargetHttpsProxyAggregatedList
    TargetHttpsProxyAggregatedList (..),
    newTargetHttpsProxyAggregatedList,

    -- ** TargetHttpsProxyAggregatedList_Items
    TargetHttpsProxyAggregatedList_Items (..),
    newTargetHttpsProxyAggregatedList_Items,

    -- ** TargetHttpsProxyAggregatedList_Warning
    TargetHttpsProxyAggregatedList_Warning (..),
    newTargetHttpsProxyAggregatedList_Warning,

    -- ** TargetHttpsProxyAggregatedList_Warning_Code
    TargetHttpsProxyAggregatedList_Warning_Code (..),

    -- ** TargetHttpsProxyAggregatedList_Warning_DataItem
    TargetHttpsProxyAggregatedList_Warning_DataItem (..),
    newTargetHttpsProxyAggregatedList_Warning_DataItem,

    -- ** TargetHttpsProxyList
    TargetHttpsProxyList (..),
    newTargetHttpsProxyList,

    -- ** TargetHttpsProxyList_Warning
    TargetHttpsProxyList_Warning (..),
    newTargetHttpsProxyList_Warning,

    -- ** TargetHttpsProxyList_Warning_Code
    TargetHttpsProxyList_Warning_Code (..),

    -- ** TargetHttpsProxyList_Warning_DataItem
    TargetHttpsProxyList_Warning_DataItem (..),
    newTargetHttpsProxyList_Warning_DataItem,

    -- ** TargetInstance
    TargetInstance (..),
    newTargetInstance,

    -- ** TargetInstance_NatPolicy
    TargetInstance_NatPolicy (..),

    -- ** TargetInstanceAggregatedList
    TargetInstanceAggregatedList (..),
    newTargetInstanceAggregatedList,

    -- ** TargetInstanceAggregatedList_Items
    TargetInstanceAggregatedList_Items (..),
    newTargetInstanceAggregatedList_Items,

    -- ** TargetInstanceAggregatedList_Warning
    TargetInstanceAggregatedList_Warning (..),
    newTargetInstanceAggregatedList_Warning,

    -- ** TargetInstanceAggregatedList_Warning_Code
    TargetInstanceAggregatedList_Warning_Code (..),

    -- ** TargetInstanceAggregatedList_Warning_DataItem
    TargetInstanceAggregatedList_Warning_DataItem (..),
    newTargetInstanceAggregatedList_Warning_DataItem,

    -- ** TargetInstanceList
    TargetInstanceList (..),
    newTargetInstanceList,

    -- ** TargetInstanceList_Warning
    TargetInstanceList_Warning (..),
    newTargetInstanceList_Warning,

    -- ** TargetInstanceList_Warning_Code
    TargetInstanceList_Warning_Code (..),

    -- ** TargetInstanceList_Warning_DataItem
    TargetInstanceList_Warning_DataItem (..),
    newTargetInstanceList_Warning_DataItem,

    -- ** TargetInstancesScopedList
    TargetInstancesScopedList (..),
    newTargetInstancesScopedList,

    -- ** TargetInstancesScopedList_Warning
    TargetInstancesScopedList_Warning (..),
    newTargetInstancesScopedList_Warning,

    -- ** TargetInstancesScopedList_Warning_Code
    TargetInstancesScopedList_Warning_Code (..),

    -- ** TargetInstancesScopedList_Warning_DataItem
    TargetInstancesScopedList_Warning_DataItem (..),
    newTargetInstancesScopedList_Warning_DataItem,

    -- ** TargetPool
    TargetPool (..),
    newTargetPool,

    -- ** TargetPool_SessionAffinity
    TargetPool_SessionAffinity (..),

    -- ** TargetPoolAggregatedList
    TargetPoolAggregatedList (..),
    newTargetPoolAggregatedList,

    -- ** TargetPoolAggregatedList_Items
    TargetPoolAggregatedList_Items (..),
    newTargetPoolAggregatedList_Items,

    -- ** TargetPoolAggregatedList_Warning
    TargetPoolAggregatedList_Warning (..),
    newTargetPoolAggregatedList_Warning,

    -- ** TargetPoolAggregatedList_Warning_Code
    TargetPoolAggregatedList_Warning_Code (..),

    -- ** TargetPoolAggregatedList_Warning_DataItem
    TargetPoolAggregatedList_Warning_DataItem (..),
    newTargetPoolAggregatedList_Warning_DataItem,

    -- ** TargetPoolInstanceHealth
    TargetPoolInstanceHealth (..),
    newTargetPoolInstanceHealth,

    -- ** TargetPoolList
    TargetPoolList (..),
    newTargetPoolList,

    -- ** TargetPoolList_Warning
    TargetPoolList_Warning (..),
    newTargetPoolList_Warning,

    -- ** TargetPoolList_Warning_Code
    TargetPoolList_Warning_Code (..),

    -- ** TargetPoolList_Warning_DataItem
    TargetPoolList_Warning_DataItem (..),
    newTargetPoolList_Warning_DataItem,

    -- ** TargetPoolsAddHealthCheckRequest
    TargetPoolsAddHealthCheckRequest (..),
    newTargetPoolsAddHealthCheckRequest,

    -- ** TargetPoolsAddInstanceRequest
    TargetPoolsAddInstanceRequest (..),
    newTargetPoolsAddInstanceRequest,

    -- ** TargetPoolsRemoveHealthCheckRequest
    TargetPoolsRemoveHealthCheckRequest (..),
    newTargetPoolsRemoveHealthCheckRequest,

    -- ** TargetPoolsRemoveInstanceRequest
    TargetPoolsRemoveInstanceRequest (..),
    newTargetPoolsRemoveInstanceRequest,

    -- ** TargetPoolsScopedList
    TargetPoolsScopedList (..),
    newTargetPoolsScopedList,

    -- ** TargetPoolsScopedList_Warning
    TargetPoolsScopedList_Warning (..),
    newTargetPoolsScopedList_Warning,

    -- ** TargetPoolsScopedList_Warning_Code
    TargetPoolsScopedList_Warning_Code (..),

    -- ** TargetPoolsScopedList_Warning_DataItem
    TargetPoolsScopedList_Warning_DataItem (..),
    newTargetPoolsScopedList_Warning_DataItem,

    -- ** TargetReference
    TargetReference (..),
    newTargetReference,

    -- ** TargetSslProxiesSetBackendServiceRequest
    TargetSslProxiesSetBackendServiceRequest (..),
    newTargetSslProxiesSetBackendServiceRequest,

    -- ** TargetSslProxiesSetProxyHeaderRequest
    TargetSslProxiesSetProxyHeaderRequest (..),
    newTargetSslProxiesSetProxyHeaderRequest,

    -- ** TargetSslProxiesSetProxyHeaderRequest_ProxyHeader
    TargetSslProxiesSetProxyHeaderRequest_ProxyHeader (..),

    -- ** TargetSslProxiesSetSslCertificatesRequest
    TargetSslProxiesSetSslCertificatesRequest (..),
    newTargetSslProxiesSetSslCertificatesRequest,

    -- ** TargetSslProxy
    TargetSslProxy (..),
    newTargetSslProxy,

    -- ** TargetSslProxy_ProxyHeader
    TargetSslProxy_ProxyHeader (..),

    -- ** TargetSslProxyList
    TargetSslProxyList (..),
    newTargetSslProxyList,

    -- ** TargetSslProxyList_Warning
    TargetSslProxyList_Warning (..),
    newTargetSslProxyList_Warning,

    -- ** TargetSslProxyList_Warning_Code
    TargetSslProxyList_Warning_Code (..),

    -- ** TargetSslProxyList_Warning_DataItem
    TargetSslProxyList_Warning_DataItem (..),
    newTargetSslProxyList_Warning_DataItem,

    -- ** TargetTcpProxiesSetBackendServiceRequest
    TargetTcpProxiesSetBackendServiceRequest (..),
    newTargetTcpProxiesSetBackendServiceRequest,

    -- ** TargetTcpProxiesSetProxyHeaderRequest
    TargetTcpProxiesSetProxyHeaderRequest (..),
    newTargetTcpProxiesSetProxyHeaderRequest,

    -- ** TargetTcpProxiesSetProxyHeaderRequest_ProxyHeader
    TargetTcpProxiesSetProxyHeaderRequest_ProxyHeader (..),

    -- ** TargetTcpProxy
    TargetTcpProxy (..),
    newTargetTcpProxy,

    -- ** TargetTcpProxy_ProxyHeader
    TargetTcpProxy_ProxyHeader (..),

    -- ** TargetTcpProxyList
    TargetTcpProxyList (..),
    newTargetTcpProxyList,

    -- ** TargetTcpProxyList_Warning
    TargetTcpProxyList_Warning (..),
    newTargetTcpProxyList_Warning,

    -- ** TargetTcpProxyList_Warning_Code
    TargetTcpProxyList_Warning_Code (..),

    -- ** TargetTcpProxyList_Warning_DataItem
    TargetTcpProxyList_Warning_DataItem (..),
    newTargetTcpProxyList_Warning_DataItem,

    -- ** TargetVpnGateway
    TargetVpnGateway (..),
    newTargetVpnGateway,

    -- ** TargetVpnGateway_Status
    TargetVpnGateway_Status (..),

    -- ** TargetVpnGatewayAggregatedList
    TargetVpnGatewayAggregatedList (..),
    newTargetVpnGatewayAggregatedList,

    -- ** TargetVpnGatewayAggregatedList_Items
    TargetVpnGatewayAggregatedList_Items (..),
    newTargetVpnGatewayAggregatedList_Items,

    -- ** TargetVpnGatewayAggregatedList_Warning
    TargetVpnGatewayAggregatedList_Warning (..),
    newTargetVpnGatewayAggregatedList_Warning,

    -- ** TargetVpnGatewayAggregatedList_Warning_Code
    TargetVpnGatewayAggregatedList_Warning_Code (..),

    -- ** TargetVpnGatewayAggregatedList_Warning_DataItem
    TargetVpnGatewayAggregatedList_Warning_DataItem (..),
    newTargetVpnGatewayAggregatedList_Warning_DataItem,

    -- ** TargetVpnGatewayList
    TargetVpnGatewayList (..),
    newTargetVpnGatewayList,

    -- ** TargetVpnGatewayList_Warning
    TargetVpnGatewayList_Warning (..),
    newTargetVpnGatewayList_Warning,

    -- ** TargetVpnGatewayList_Warning_Code
    TargetVpnGatewayList_Warning_Code (..),

    -- ** TargetVpnGatewayList_Warning_DataItem
    TargetVpnGatewayList_Warning_DataItem (..),
    newTargetVpnGatewayList_Warning_DataItem,

    -- ** TargetVpnGatewaysScopedList
    TargetVpnGatewaysScopedList (..),
    newTargetVpnGatewaysScopedList,

    -- ** TargetVpnGatewaysScopedList_Warning
    TargetVpnGatewaysScopedList_Warning (..),
    newTargetVpnGatewaysScopedList_Warning,

    -- ** TargetVpnGatewaysScopedList_Warning_Code
    TargetVpnGatewaysScopedList_Warning_Code (..),

    -- ** TargetVpnGatewaysScopedList_Warning_DataItem
    TargetVpnGatewaysScopedList_Warning_DataItem (..),
    newTargetVpnGatewaysScopedList_Warning_DataItem,

    -- ** TestFailure
    TestFailure (..),
    newTestFailure,

    -- ** TestPermissionsRequest
    TestPermissionsRequest (..),
    newTestPermissionsRequest,

    -- ** TestPermissionsResponse
    TestPermissionsResponse (..),
    newTestPermissionsResponse,

    -- ** Uint128
    Uint128 (..),
    newUint128,

    -- ** UrlMap
    UrlMap (..),
    newUrlMap,

    -- ** UrlMapList
    UrlMapList (..),
    newUrlMapList,

    -- ** UrlMapList_Warning
    UrlMapList_Warning (..),
    newUrlMapList_Warning,

    -- ** UrlMapList_Warning_Code
    UrlMapList_Warning_Code (..),

    -- ** UrlMapList_Warning_DataItem
    UrlMapList_Warning_DataItem (..),
    newUrlMapList_Warning_DataItem,

    -- ** UrlMapReference
    UrlMapReference (..),
    newUrlMapReference,

    -- ** UrlMapTest
    UrlMapTest (..),
    newUrlMapTest,

    -- ** UrlMapTestHeader
    UrlMapTestHeader (..),
    newUrlMapTestHeader,

    -- ** UrlMapValidationResult
    UrlMapValidationResult (..),
    newUrlMapValidationResult,

    -- ** UrlMapsAggregatedList
    UrlMapsAggregatedList (..),
    newUrlMapsAggregatedList,

    -- ** UrlMapsAggregatedList_Items
    UrlMapsAggregatedList_Items (..),
    newUrlMapsAggregatedList_Items,

    -- ** UrlMapsAggregatedList_Warning
    UrlMapsAggregatedList_Warning (..),
    newUrlMapsAggregatedList_Warning,

    -- ** UrlMapsAggregatedList_Warning_Code
    UrlMapsAggregatedList_Warning_Code (..),

    -- ** UrlMapsAggregatedList_Warning_DataItem
    UrlMapsAggregatedList_Warning_DataItem (..),
    newUrlMapsAggregatedList_Warning_DataItem,

    -- ** UrlMapsScopedList
    UrlMapsScopedList (..),
    newUrlMapsScopedList,

    -- ** UrlMapsScopedList_Warning
    UrlMapsScopedList_Warning (..),
    newUrlMapsScopedList_Warning,

    -- ** UrlMapsScopedList_Warning_Code
    UrlMapsScopedList_Warning_Code (..),

    -- ** UrlMapsScopedList_Warning_DataItem
    UrlMapsScopedList_Warning_DataItem (..),
    newUrlMapsScopedList_Warning_DataItem,

    -- ** UrlMapsValidateRequest
    UrlMapsValidateRequest (..),
    newUrlMapsValidateRequest,

    -- ** UrlMapsValidateRequest_LoadBalancingSchemesItem
    UrlMapsValidateRequest_LoadBalancingSchemesItem (..),

    -- ** UrlMapsValidateResponse
    UrlMapsValidateResponse (..),
    newUrlMapsValidateResponse,

    -- ** UrlRewrite
    UrlRewrite (..),
    newUrlRewrite,

    -- ** UsableSubnetwork
    UsableSubnetwork (..),
    newUsableSubnetwork,

    -- ** UsableSubnetworkSecondaryRange
    UsableSubnetworkSecondaryRange (..),
    newUsableSubnetworkSecondaryRange,

    -- ** UsableSubnetworksAggregatedList
    UsableSubnetworksAggregatedList (..),
    newUsableSubnetworksAggregatedList,

    -- ** UsableSubnetworksAggregatedList_Warning
    UsableSubnetworksAggregatedList_Warning (..),
    newUsableSubnetworksAggregatedList_Warning,

    -- ** UsableSubnetworksAggregatedList_Warning_Code
    UsableSubnetworksAggregatedList_Warning_Code (..),

    -- ** UsableSubnetworksAggregatedList_Warning_DataItem
    UsableSubnetworksAggregatedList_Warning_DataItem (..),
    newUsableSubnetworksAggregatedList_Warning_DataItem,

    -- ** UsageExportLocation
    UsageExportLocation (..),
    newUsageExportLocation,

    -- ** VmEndpointNatMappings
    VmEndpointNatMappings (..),
    newVmEndpointNatMappings,

    -- ** VmEndpointNatMappingsInterfaceNatMappings
    VmEndpointNatMappingsInterfaceNatMappings (..),
    newVmEndpointNatMappingsInterfaceNatMappings,

    -- ** VmEndpointNatMappingsList
    VmEndpointNatMappingsList (..),
    newVmEndpointNatMappingsList,

    -- ** VmEndpointNatMappingsList_Warning
    VmEndpointNatMappingsList_Warning (..),
    newVmEndpointNatMappingsList_Warning,

    -- ** VmEndpointNatMappingsList_Warning_Code
    VmEndpointNatMappingsList_Warning_Code (..),

    -- ** VmEndpointNatMappingsList_Warning_DataItem
    VmEndpointNatMappingsList_Warning_DataItem (..),
    newVmEndpointNatMappingsList_Warning_DataItem,

    -- ** VpnGateway
    VpnGateway (..),
    newVpnGateway,

    -- ** VpnGateway_Labels
    VpnGateway_Labels (..),
    newVpnGateway_Labels,

    -- ** VpnGateway_StackType
    VpnGateway_StackType (..),

    -- ** VpnGatewayAggregatedList
    VpnGatewayAggregatedList (..),
    newVpnGatewayAggregatedList,

    -- ** VpnGatewayAggregatedList_Items
    VpnGatewayAggregatedList_Items (..),
    newVpnGatewayAggregatedList_Items,

    -- ** VpnGatewayAggregatedList_Warning
    VpnGatewayAggregatedList_Warning (..),
    newVpnGatewayAggregatedList_Warning,

    -- ** VpnGatewayAggregatedList_Warning_Code
    VpnGatewayAggregatedList_Warning_Code (..),

    -- ** VpnGatewayAggregatedList_Warning_DataItem
    VpnGatewayAggregatedList_Warning_DataItem (..),
    newVpnGatewayAggregatedList_Warning_DataItem,

    -- ** VpnGatewayList
    VpnGatewayList (..),
    newVpnGatewayList,

    -- ** VpnGatewayList_Warning
    VpnGatewayList_Warning (..),
    newVpnGatewayList_Warning,

    -- ** VpnGatewayList_Warning_Code
    VpnGatewayList_Warning_Code (..),

    -- ** VpnGatewayList_Warning_DataItem
    VpnGatewayList_Warning_DataItem (..),
    newVpnGatewayList_Warning_DataItem,

    -- ** VpnGatewayStatus
    VpnGatewayStatus (..),
    newVpnGatewayStatus,

    -- ** VpnGatewayStatusHighAvailabilityRequirementState
    VpnGatewayStatusHighAvailabilityRequirementState (..),
    newVpnGatewayStatusHighAvailabilityRequirementState,

    -- ** VpnGatewayStatusHighAvailabilityRequirementState_State
    VpnGatewayStatusHighAvailabilityRequirementState_State (..),

    -- ** VpnGatewayStatusHighAvailabilityRequirementState_UnsatisfiedReason
    VpnGatewayStatusHighAvailabilityRequirementState_UnsatisfiedReason (..),

    -- ** VpnGatewayStatusTunnel
    VpnGatewayStatusTunnel (..),
    newVpnGatewayStatusTunnel,

    -- ** VpnGatewayStatusVpnConnection
    VpnGatewayStatusVpnConnection (..),
    newVpnGatewayStatusVpnConnection,

    -- ** VpnGatewayVpnGatewayInterface
    VpnGatewayVpnGatewayInterface (..),
    newVpnGatewayVpnGatewayInterface,

    -- ** VpnGatewaysGetStatusResponse
    VpnGatewaysGetStatusResponse (..),
    newVpnGatewaysGetStatusResponse,

    -- ** VpnGatewaysScopedList
    VpnGatewaysScopedList (..),
    newVpnGatewaysScopedList,

    -- ** VpnGatewaysScopedList_Warning
    VpnGatewaysScopedList_Warning (..),
    newVpnGatewaysScopedList_Warning,

    -- ** VpnGatewaysScopedList_Warning_Code
    VpnGatewaysScopedList_Warning_Code (..),

    -- ** VpnGatewaysScopedList_Warning_DataItem
    VpnGatewaysScopedList_Warning_DataItem (..),
    newVpnGatewaysScopedList_Warning_DataItem,

    -- ** VpnTunnel
    VpnTunnel (..),
    newVpnTunnel,

    -- ** VpnTunnel_Status
    VpnTunnel_Status (..),

    -- ** VpnTunnelAggregatedList
    VpnTunnelAggregatedList (..),
    newVpnTunnelAggregatedList,

    -- ** VpnTunnelAggregatedList_Items
    VpnTunnelAggregatedList_Items (..),
    newVpnTunnelAggregatedList_Items,

    -- ** VpnTunnelAggregatedList_Warning
    VpnTunnelAggregatedList_Warning (..),
    newVpnTunnelAggregatedList_Warning,

    -- ** VpnTunnelAggregatedList_Warning_Code
    VpnTunnelAggregatedList_Warning_Code (..),

    -- ** VpnTunnelAggregatedList_Warning_DataItem
    VpnTunnelAggregatedList_Warning_DataItem (..),
    newVpnTunnelAggregatedList_Warning_DataItem,

    -- ** VpnTunnelList
    VpnTunnelList (..),
    newVpnTunnelList,

    -- ** VpnTunnelList_Warning
    VpnTunnelList_Warning (..),
    newVpnTunnelList_Warning,

    -- ** VpnTunnelList_Warning_Code
    VpnTunnelList_Warning_Code (..),

    -- ** VpnTunnelList_Warning_DataItem
    VpnTunnelList_Warning_DataItem (..),
    newVpnTunnelList_Warning_DataItem,

    -- ** VpnTunnelsScopedList
    VpnTunnelsScopedList (..),
    newVpnTunnelsScopedList,

    -- ** VpnTunnelsScopedList_Warning
    VpnTunnelsScopedList_Warning (..),
    newVpnTunnelsScopedList_Warning,

    -- ** VpnTunnelsScopedList_Warning_Code
    VpnTunnelsScopedList_Warning_Code (..),

    -- ** VpnTunnelsScopedList_Warning_DataItem
    VpnTunnelsScopedList_Warning_DataItem (..),
    newVpnTunnelsScopedList_Warning_DataItem,

    -- ** WafExpressionSet
    WafExpressionSet (..),
    newWafExpressionSet,

    -- ** WafExpressionSetExpression
    WafExpressionSetExpression (..),
    newWafExpressionSetExpression,

    -- ** WeightedBackendService
    WeightedBackendService (..),
    newWeightedBackendService,

    -- ** XpnHostList
    XpnHostList (..),
    newXpnHostList,

    -- ** XpnHostList_Warning
    XpnHostList_Warning (..),
    newXpnHostList_Warning,

    -- ** XpnHostList_Warning_Code
    XpnHostList_Warning_Code (..),

    -- ** XpnHostList_Warning_DataItem
    XpnHostList_Warning_DataItem (..),
    newXpnHostList_Warning_DataItem,

    -- ** XpnResourceId
    XpnResourceId (..),
    newXpnResourceId,

    -- ** XpnResourceId_Type
    XpnResourceId_Type (..),

    -- ** Zone
    Zone (..),
    newZone,

    -- ** Zone_Status
    Zone_Status (..),

    -- ** ZoneList
    ZoneList (..),
    newZoneList,

    -- ** ZoneList_Warning
    ZoneList_Warning (..),
    newZoneList_Warning,

    -- ** ZoneList_Warning_Code
    ZoneList_Warning_Code (..),

    -- ** ZoneList_Warning_DataItem
    ZoneList_Warning_DataItem (..),
    newZoneList_Warning_DataItem,

    -- ** ZoneSetLabelsRequest
    ZoneSetLabelsRequest (..),
    newZoneSetLabelsRequest,

    -- ** ZoneSetLabelsRequest_Labels
    ZoneSetLabelsRequest_Labels (..),
    newZoneSetLabelsRequest_Labels,

    -- ** ZoneSetPolicyRequest
    ZoneSetPolicyRequest (..),
    newZoneSetPolicyRequest,

    -- ** InstancesUpdateMinimalAction
    InstancesUpdateMinimalAction (..),

    -- ** InstancesUpdateMostDisruptiveAllowedAction
    InstancesUpdateMostDisruptiveAllowedAction (..),

    -- ** NetworksListPeeringRoutesDirection
    NetworksListPeeringRoutesDirection (..),
  )
where

import Network.Google.Compute.AcceleratorTypes.AggregatedList
import Network.Google.Compute.AcceleratorTypes.Get
import Network.Google.Compute.AcceleratorTypes.List
import Network.Google.Compute.Addresses.AggregatedList
import Network.Google.Compute.Addresses.Delete
import Network.Google.Compute.Addresses.Get
import Network.Google.Compute.Addresses.Insert
import Network.Google.Compute.Addresses.List
import Network.Google.Compute.Autoscalers.AggregatedList
import Network.Google.Compute.Autoscalers.Delete
import Network.Google.Compute.Autoscalers.Get
import Network.Google.Compute.Autoscalers.Insert
import Network.Google.Compute.Autoscalers.List
import Network.Google.Compute.Autoscalers.Patch
import Network.Google.Compute.Autoscalers.Update
import Network.Google.Compute.BackendBuckets.AddSignedUrlKey
import Network.Google.Compute.BackendBuckets.Delete
import Network.Google.Compute.BackendBuckets.DeleteSignedUrlKey
import Network.Google.Compute.BackendBuckets.Get
import Network.Google.Compute.BackendBuckets.Insert
import Network.Google.Compute.BackendBuckets.List
import Network.Google.Compute.BackendBuckets.Patch
import Network.Google.Compute.BackendBuckets.SetEdgeSecurityPolicy
import Network.Google.Compute.BackendBuckets.Update
import Network.Google.Compute.BackendServices.AddSignedUrlKey
import Network.Google.Compute.BackendServices.AggregatedList
import Network.Google.Compute.BackendServices.Delete
import Network.Google.Compute.BackendServices.DeleteSignedUrlKey
import Network.Google.Compute.BackendServices.Get
import Network.Google.Compute.BackendServices.GetHealth
import Network.Google.Compute.BackendServices.Insert
import Network.Google.Compute.BackendServices.List
import Network.Google.Compute.BackendServices.Patch
import Network.Google.Compute.BackendServices.SetEdgeSecurityPolicy
import Network.Google.Compute.BackendServices.SetSecurityPolicy
import Network.Google.Compute.BackendServices.Update
import Network.Google.Compute.DiskTypes.AggregatedList
import Network.Google.Compute.DiskTypes.Get
import Network.Google.Compute.DiskTypes.List
import Network.Google.Compute.Disks.AddResourcePolicies
import Network.Google.Compute.Disks.AggregatedList
import Network.Google.Compute.Disks.CreateSnapshot
import Network.Google.Compute.Disks.Delete
import Network.Google.Compute.Disks.Get
import Network.Google.Compute.Disks.GetIamPolicy
import Network.Google.Compute.Disks.Insert
import Network.Google.Compute.Disks.List
import Network.Google.Compute.Disks.RemoveResourcePolicies
import Network.Google.Compute.Disks.Resize
import Network.Google.Compute.Disks.SetIamPolicy
import Network.Google.Compute.Disks.SetLabels
import Network.Google.Compute.Disks.TestIamPermissions
import Network.Google.Compute.ExternalVpnGateways.Delete
import Network.Google.Compute.ExternalVpnGateways.Get
import Network.Google.Compute.ExternalVpnGateways.Insert
import Network.Google.Compute.ExternalVpnGateways.List
import Network.Google.Compute.ExternalVpnGateways.SetLabels
import Network.Google.Compute.ExternalVpnGateways.TestIamPermissions
import Network.Google.Compute.FirewallPolicies.AddAssociation
import Network.Google.Compute.FirewallPolicies.AddRule
import Network.Google.Compute.FirewallPolicies.CloneRules
import Network.Google.Compute.FirewallPolicies.Delete
import Network.Google.Compute.FirewallPolicies.Get
import Network.Google.Compute.FirewallPolicies.GetAssociation
import Network.Google.Compute.FirewallPolicies.GetIamPolicy
import Network.Google.Compute.FirewallPolicies.GetRule
import Network.Google.Compute.FirewallPolicies.Insert
import Network.Google.Compute.FirewallPolicies.List
import Network.Google.Compute.FirewallPolicies.ListAssociations
import Network.Google.Compute.FirewallPolicies.Move
import Network.Google.Compute.FirewallPolicies.Patch
import Network.Google.Compute.FirewallPolicies.PatchRule
import Network.Google.Compute.FirewallPolicies.RemoveAssociation
import Network.Google.Compute.FirewallPolicies.RemoveRule
import Network.Google.Compute.FirewallPolicies.SetIamPolicy
import Network.Google.Compute.FirewallPolicies.TestIamPermissions
import Network.Google.Compute.Firewalls.Delete
import Network.Google.Compute.Firewalls.Get
import Network.Google.Compute.Firewalls.Insert
import Network.Google.Compute.Firewalls.List
import Network.Google.Compute.Firewalls.Patch
import Network.Google.Compute.Firewalls.Update
import Network.Google.Compute.ForwardingRules.AggregatedList
import Network.Google.Compute.ForwardingRules.Delete
import Network.Google.Compute.ForwardingRules.Get
import Network.Google.Compute.ForwardingRules.Insert
import Network.Google.Compute.ForwardingRules.List
import Network.Google.Compute.ForwardingRules.Patch
import Network.Google.Compute.ForwardingRules.SetLabels
import Network.Google.Compute.ForwardingRules.SetTarget
import Network.Google.Compute.GlobalAddresses.Delete
import Network.Google.Compute.GlobalAddresses.Get
import Network.Google.Compute.GlobalAddresses.Insert
import Network.Google.Compute.GlobalAddresses.List
import Network.Google.Compute.GlobalForwardingRules.Delete
import Network.Google.Compute.GlobalForwardingRules.Get
import Network.Google.Compute.GlobalForwardingRules.Insert
import Network.Google.Compute.GlobalForwardingRules.List
import Network.Google.Compute.GlobalForwardingRules.Patch
import Network.Google.Compute.GlobalForwardingRules.SetLabels
import Network.Google.Compute.GlobalForwardingRules.SetTarget
import Network.Google.Compute.GlobalNetworkEndpointGroups.AttachNetworkEndpoints
import Network.Google.Compute.GlobalNetworkEndpointGroups.Delete
import Network.Google.Compute.GlobalNetworkEndpointGroups.DetachNetworkEndpoints
import Network.Google.Compute.GlobalNetworkEndpointGroups.Get
import Network.Google.Compute.GlobalNetworkEndpointGroups.Insert
import Network.Google.Compute.GlobalNetworkEndpointGroups.List
import Network.Google.Compute.GlobalNetworkEndpointGroups.ListNetworkEndpoints
import Network.Google.Compute.GlobalOperations.AggregatedList
import Network.Google.Compute.GlobalOperations.Delete
import Network.Google.Compute.GlobalOperations.Get
import Network.Google.Compute.GlobalOperations.List
import Network.Google.Compute.GlobalOperations.Wait
import Network.Google.Compute.GlobalOrganizationOperations.Delete
import Network.Google.Compute.GlobalOrganizationOperations.Get
import Network.Google.Compute.GlobalOrganizationOperations.List
import Network.Google.Compute.GlobalPublicDelegatedPrefixes.Delete
import Network.Google.Compute.GlobalPublicDelegatedPrefixes.Get
import Network.Google.Compute.GlobalPublicDelegatedPrefixes.Insert
import Network.Google.Compute.GlobalPublicDelegatedPrefixes.List
import Network.Google.Compute.GlobalPublicDelegatedPrefixes.Patch
import Network.Google.Compute.HealthChecks.AggregatedList
import Network.Google.Compute.HealthChecks.Delete
import Network.Google.Compute.HealthChecks.Get
import Network.Google.Compute.HealthChecks.Insert
import Network.Google.Compute.HealthChecks.List
import Network.Google.Compute.HealthChecks.Patch
import Network.Google.Compute.HealthChecks.Update
import Network.Google.Compute.HttpHealthChecks.Delete
import Network.Google.Compute.HttpHealthChecks.Get
import Network.Google.Compute.HttpHealthChecks.Insert
import Network.Google.Compute.HttpHealthChecks.List
import Network.Google.Compute.HttpHealthChecks.Patch
import Network.Google.Compute.HttpHealthChecks.Update
import Network.Google.Compute.HttpsHealthChecks.Delete
import Network.Google.Compute.HttpsHealthChecks.Get
import Network.Google.Compute.HttpsHealthChecks.Insert
import Network.Google.Compute.HttpsHealthChecks.List
import Network.Google.Compute.HttpsHealthChecks.Patch
import Network.Google.Compute.HttpsHealthChecks.Update
import Network.Google.Compute.ImageFamilyViews.Get
import Network.Google.Compute.Images.Delete
import Network.Google.Compute.Images.Deprecate
import Network.Google.Compute.Images.Get
import Network.Google.Compute.Images.GetFromFamily
import Network.Google.Compute.Images.GetIamPolicy
import Network.Google.Compute.Images.Insert
import Network.Google.Compute.Images.List
import Network.Google.Compute.Images.Patch
import Network.Google.Compute.Images.SetIamPolicy
import Network.Google.Compute.Images.SetLabels
import Network.Google.Compute.Images.TestIamPermissions
import Network.Google.Compute.InstanceGroupManagers.AbandonInstances
import Network.Google.Compute.InstanceGroupManagers.AggregatedList
import Network.Google.Compute.InstanceGroupManagers.ApplyUpdatesToInstances
import Network.Google.Compute.InstanceGroupManagers.CreateInstances
import Network.Google.Compute.InstanceGroupManagers.Delete
import Network.Google.Compute.InstanceGroupManagers.DeleteInstances
import Network.Google.Compute.InstanceGroupManagers.DeletePerInstanceConfigs
import Network.Google.Compute.InstanceGroupManagers.Get
import Network.Google.Compute.InstanceGroupManagers.Insert
import Network.Google.Compute.InstanceGroupManagers.List
import Network.Google.Compute.InstanceGroupManagers.ListErrors
import Network.Google.Compute.InstanceGroupManagers.ListManagedInstances
import Network.Google.Compute.InstanceGroupManagers.ListPerInstanceConfigs
import Network.Google.Compute.InstanceGroupManagers.Patch
import Network.Google.Compute.InstanceGroupManagers.PatchPerInstanceConfigs
import Network.Google.Compute.InstanceGroupManagers.RecreateInstances
import Network.Google.Compute.InstanceGroupManagers.Resize
import Network.Google.Compute.InstanceGroupManagers.SetInstanceTemplate
import Network.Google.Compute.InstanceGroupManagers.SetTargetPools
import Network.Google.Compute.InstanceGroupManagers.UpdatePerInstanceConfigs
import Network.Google.Compute.InstanceGroups.AddInstances
import Network.Google.Compute.InstanceGroups.AggregatedList
import Network.Google.Compute.InstanceGroups.Delete
import Network.Google.Compute.InstanceGroups.Get
import Network.Google.Compute.InstanceGroups.Insert
import Network.Google.Compute.InstanceGroups.List
import Network.Google.Compute.InstanceGroups.ListInstances
import Network.Google.Compute.InstanceGroups.RemoveInstances
import Network.Google.Compute.InstanceGroups.SetNamedPorts
import Network.Google.Compute.InstanceTemplates.Delete
import Network.Google.Compute.InstanceTemplates.Get
import Network.Google.Compute.InstanceTemplates.GetIamPolicy
import Network.Google.Compute.InstanceTemplates.Insert
import Network.Google.Compute.InstanceTemplates.List
import Network.Google.Compute.InstanceTemplates.SetIamPolicy
import Network.Google.Compute.InstanceTemplates.TestIamPermissions
import Network.Google.Compute.Instances.AddAccessConfig
import Network.Google.Compute.Instances.AddResourcePolicies
import Network.Google.Compute.Instances.AggregatedList
import Network.Google.Compute.Instances.AttachDisk
import Network.Google.Compute.Instances.BulkInsert
import Network.Google.Compute.Instances.Delete
import Network.Google.Compute.Instances.DeleteAccessConfig
import Network.Google.Compute.Instances.DetachDisk
import Network.Google.Compute.Instances.Get
import Network.Google.Compute.Instances.GetEffectiveFirewalls
import Network.Google.Compute.Instances.GetGuestAttributes
import Network.Google.Compute.Instances.GetIamPolicy
import Network.Google.Compute.Instances.GetScreenshot
import Network.Google.Compute.Instances.GetSerialPortOutput
import Network.Google.Compute.Instances.GetShieldedInstanceIdentity
import Network.Google.Compute.Instances.Insert
import Network.Google.Compute.Instances.List
import Network.Google.Compute.Instances.ListReferrers
import Network.Google.Compute.Instances.RemoveResourcePolicies
import Network.Google.Compute.Instances.Reset
import Network.Google.Compute.Instances.Resume
import Network.Google.Compute.Instances.SendDiagnosticInterrupt
import Network.Google.Compute.Instances.SetDeletionProtection
import Network.Google.Compute.Instances.SetDiskAutoDelete
import Network.Google.Compute.Instances.SetIamPolicy
import Network.Google.Compute.Instances.SetLabels
import Network.Google.Compute.Instances.SetMachineResources
import Network.Google.Compute.Instances.SetMachineType
import Network.Google.Compute.Instances.SetMetadata
import Network.Google.Compute.Instances.SetMinCpuPlatform
import Network.Google.Compute.Instances.SetScheduling
import Network.Google.Compute.Instances.SetServiceAccount
import Network.Google.Compute.Instances.SetShieldedInstanceIntegrityPolicy
import Network.Google.Compute.Instances.SetTags
import Network.Google.Compute.Instances.SimulateMaintenanceEvent
import Network.Google.Compute.Instances.Start
import Network.Google.Compute.Instances.StartWithEncryptionKey
import Network.Google.Compute.Instances.Stop
import Network.Google.Compute.Instances.Suspend
import Network.Google.Compute.Instances.TestIamPermissions
import Network.Google.Compute.Instances.Update
import Network.Google.Compute.Instances.UpdateAccessConfig
import Network.Google.Compute.Instances.UpdateDisplayDevice
import Network.Google.Compute.Instances.UpdateNetworkInterface
import Network.Google.Compute.Instances.UpdateShieldedInstanceConfig
import Network.Google.Compute.InterconnectAttachments.AggregatedList
import Network.Google.Compute.InterconnectAttachments.Delete
import Network.Google.Compute.InterconnectAttachments.Get
import Network.Google.Compute.InterconnectAttachments.Insert
import Network.Google.Compute.InterconnectAttachments.List
import Network.Google.Compute.InterconnectAttachments.Patch
import Network.Google.Compute.InterconnectLocations.Get
import Network.Google.Compute.InterconnectLocations.List
import Network.Google.Compute.Interconnects.Delete
import Network.Google.Compute.Interconnects.Get
import Network.Google.Compute.Interconnects.GetDiagnostics
import Network.Google.Compute.Interconnects.Insert
import Network.Google.Compute.Interconnects.List
import Network.Google.Compute.Interconnects.Patch
import Network.Google.Compute.LicenseCodes.Get
import Network.Google.Compute.LicenseCodes.TestIamPermissions
import Network.Google.Compute.Licenses.Delete
import Network.Google.Compute.Licenses.Get
import Network.Google.Compute.Licenses.GetIamPolicy
import Network.Google.Compute.Licenses.Insert
import Network.Google.Compute.Licenses.List
import Network.Google.Compute.Licenses.SetIamPolicy
import Network.Google.Compute.Licenses.TestIamPermissions
import Network.Google.Compute.MachineImages.Delete
import Network.Google.Compute.MachineImages.Get
import Network.Google.Compute.MachineImages.GetIamPolicy
import Network.Google.Compute.MachineImages.Insert
import Network.Google.Compute.MachineImages.List
import Network.Google.Compute.MachineImages.SetIamPolicy
import Network.Google.Compute.MachineImages.TestIamPermissions
import Network.Google.Compute.MachineTypes.AggregatedList
import Network.Google.Compute.MachineTypes.Get
import Network.Google.Compute.MachineTypes.List
import Network.Google.Compute.NetworkEndpointGroups.AggregatedList
import Network.Google.Compute.NetworkEndpointGroups.AttachNetworkEndpoints
import Network.Google.Compute.NetworkEndpointGroups.Delete
import Network.Google.Compute.NetworkEndpointGroups.DetachNetworkEndpoints
import Network.Google.Compute.NetworkEndpointGroups.Get
import Network.Google.Compute.NetworkEndpointGroups.Insert
import Network.Google.Compute.NetworkEndpointGroups.List
import Network.Google.Compute.NetworkEndpointGroups.ListNetworkEndpoints
import Network.Google.Compute.NetworkEndpointGroups.TestIamPermissions
import Network.Google.Compute.NetworkFirewallPolicies.AddAssociation
import Network.Google.Compute.NetworkFirewallPolicies.AddRule
import Network.Google.Compute.NetworkFirewallPolicies.CloneRules
import Network.Google.Compute.NetworkFirewallPolicies.Delete
import Network.Google.Compute.NetworkFirewallPolicies.Get
import Network.Google.Compute.NetworkFirewallPolicies.GetAssociation
import Network.Google.Compute.NetworkFirewallPolicies.GetIamPolicy
import Network.Google.Compute.NetworkFirewallPolicies.GetRule
import Network.Google.Compute.NetworkFirewallPolicies.Insert
import Network.Google.Compute.NetworkFirewallPolicies.List
import Network.Google.Compute.NetworkFirewallPolicies.Patch
import Network.Google.Compute.NetworkFirewallPolicies.PatchRule
import Network.Google.Compute.NetworkFirewallPolicies.RemoveAssociation
import Network.Google.Compute.NetworkFirewallPolicies.RemoveRule
import Network.Google.Compute.NetworkFirewallPolicies.SetIamPolicy
import Network.Google.Compute.NetworkFirewallPolicies.TestIamPermissions
import Network.Google.Compute.Networks.AddPeering
import Network.Google.Compute.Networks.Delete
import Network.Google.Compute.Networks.Get
import Network.Google.Compute.Networks.GetEffectiveFirewalls
import Network.Google.Compute.Networks.Insert
import Network.Google.Compute.Networks.List
import Network.Google.Compute.Networks.ListPeeringRoutes
import Network.Google.Compute.Networks.Patch
import Network.Google.Compute.Networks.RemovePeering
import Network.Google.Compute.Networks.SwitchToCustomMode
import Network.Google.Compute.Networks.UpdatePeering
import Network.Google.Compute.NodeGroups.AddNodes
import Network.Google.Compute.NodeGroups.AggregatedList
import Network.Google.Compute.NodeGroups.Delete
import Network.Google.Compute.NodeGroups.DeleteNodes
import Network.Google.Compute.NodeGroups.Get
import Network.Google.Compute.NodeGroups.GetIamPolicy
import Network.Google.Compute.NodeGroups.Insert
import Network.Google.Compute.NodeGroups.List
import Network.Google.Compute.NodeGroups.ListNodes
import Network.Google.Compute.NodeGroups.Patch
import Network.Google.Compute.NodeGroups.SetIamPolicy
import Network.Google.Compute.NodeGroups.SetNodeTemplate
import Network.Google.Compute.NodeGroups.TestIamPermissions
import Network.Google.Compute.NodeTemplates.AggregatedList
import Network.Google.Compute.NodeTemplates.Delete
import Network.Google.Compute.NodeTemplates.Get
import Network.Google.Compute.NodeTemplates.GetIamPolicy
import Network.Google.Compute.NodeTemplates.Insert
import Network.Google.Compute.NodeTemplates.List
import Network.Google.Compute.NodeTemplates.SetIamPolicy
import Network.Google.Compute.NodeTemplates.TestIamPermissions
import Network.Google.Compute.NodeTypes.AggregatedList
import Network.Google.Compute.NodeTypes.Get
import Network.Google.Compute.NodeTypes.List
import Network.Google.Compute.PacketMirrorings.AggregatedList
import Network.Google.Compute.PacketMirrorings.Delete
import Network.Google.Compute.PacketMirrorings.Get
import Network.Google.Compute.PacketMirrorings.Insert
import Network.Google.Compute.PacketMirrorings.List
import Network.Google.Compute.PacketMirrorings.Patch
import Network.Google.Compute.PacketMirrorings.TestIamPermissions
import Network.Google.Compute.Projects.DisableXpnHost
import Network.Google.Compute.Projects.DisableXpnResource
import Network.Google.Compute.Projects.EnableXpnHost
import Network.Google.Compute.Projects.EnableXpnResource
import Network.Google.Compute.Projects.Get
import Network.Google.Compute.Projects.GetXpnHost
import Network.Google.Compute.Projects.GetXpnResources
import Network.Google.Compute.Projects.ListXpnHosts
import Network.Google.Compute.Projects.MoveDisk
import Network.Google.Compute.Projects.MoveInstance
import Network.Google.Compute.Projects.SetCommonInstanceMetadata
import Network.Google.Compute.Projects.SetDefaultNetworkTier
import Network.Google.Compute.Projects.SetUsageExportBucket
import Network.Google.Compute.PublicAdvertisedPrefixes.Delete
import Network.Google.Compute.PublicAdvertisedPrefixes.Get
import Network.Google.Compute.PublicAdvertisedPrefixes.Insert
import Network.Google.Compute.PublicAdvertisedPrefixes.List
import Network.Google.Compute.PublicAdvertisedPrefixes.Patch
import Network.Google.Compute.PublicDelegatedPrefixes.AggregatedList
import Network.Google.Compute.PublicDelegatedPrefixes.Delete
import Network.Google.Compute.PublicDelegatedPrefixes.Get
import Network.Google.Compute.PublicDelegatedPrefixes.Insert
import Network.Google.Compute.PublicDelegatedPrefixes.List
import Network.Google.Compute.PublicDelegatedPrefixes.Patch
import Network.Google.Compute.RegionAutoscalers.Delete
import Network.Google.Compute.RegionAutoscalers.Get
import Network.Google.Compute.RegionAutoscalers.Insert
import Network.Google.Compute.RegionAutoscalers.List
import Network.Google.Compute.RegionAutoscalers.Patch
import Network.Google.Compute.RegionAutoscalers.Update
import Network.Google.Compute.RegionBackendServices.Delete
import Network.Google.Compute.RegionBackendServices.Get
import Network.Google.Compute.RegionBackendServices.GetHealth
import Network.Google.Compute.RegionBackendServices.Insert
import Network.Google.Compute.RegionBackendServices.List
import Network.Google.Compute.RegionBackendServices.Patch
import Network.Google.Compute.RegionBackendServices.Update
import Network.Google.Compute.RegionCommitments.AggregatedList
import Network.Google.Compute.RegionCommitments.Get
import Network.Google.Compute.RegionCommitments.Insert
import Network.Google.Compute.RegionCommitments.List
import Network.Google.Compute.RegionCommitments.Update
import Network.Google.Compute.RegionDiskTypes.Get
import Network.Google.Compute.RegionDiskTypes.List
import Network.Google.Compute.RegionDisks.AddResourcePolicies
import Network.Google.Compute.RegionDisks.CreateSnapshot
import Network.Google.Compute.RegionDisks.Delete
import Network.Google.Compute.RegionDisks.Get
import Network.Google.Compute.RegionDisks.GetIamPolicy
import Network.Google.Compute.RegionDisks.Insert
import Network.Google.Compute.RegionDisks.List
import Network.Google.Compute.RegionDisks.RemoveResourcePolicies
import Network.Google.Compute.RegionDisks.Resize
import Network.Google.Compute.RegionDisks.SetIamPolicy
import Network.Google.Compute.RegionDisks.SetLabels
import Network.Google.Compute.RegionDisks.TestIamPermissions
import Network.Google.Compute.RegionHealthCheckServices.Delete
import Network.Google.Compute.RegionHealthCheckServices.Get
import Network.Google.Compute.RegionHealthCheckServices.Insert
import Network.Google.Compute.RegionHealthCheckServices.List
import Network.Google.Compute.RegionHealthCheckServices.Patch
import Network.Google.Compute.RegionHealthChecks.Delete
import Network.Google.Compute.RegionHealthChecks.Get
import Network.Google.Compute.RegionHealthChecks.Insert
import Network.Google.Compute.RegionHealthChecks.List
import Network.Google.Compute.RegionHealthChecks.Patch
import Network.Google.Compute.RegionHealthChecks.Update
import Network.Google.Compute.RegionInstanceGroupManagers.AbandonInstances
import Network.Google.Compute.RegionInstanceGroupManagers.ApplyUpdatesToInstances
import Network.Google.Compute.RegionInstanceGroupManagers.CreateInstances
import Network.Google.Compute.RegionInstanceGroupManagers.Delete
import Network.Google.Compute.RegionInstanceGroupManagers.DeleteInstances
import Network.Google.Compute.RegionInstanceGroupManagers.DeletePerInstanceConfigs
import Network.Google.Compute.RegionInstanceGroupManagers.Get
import Network.Google.Compute.RegionInstanceGroupManagers.Insert
import Network.Google.Compute.RegionInstanceGroupManagers.List
import Network.Google.Compute.RegionInstanceGroupManagers.ListErrors
import Network.Google.Compute.RegionInstanceGroupManagers.ListManagedInstances
import Network.Google.Compute.RegionInstanceGroupManagers.ListPerInstanceConfigs
import Network.Google.Compute.RegionInstanceGroupManagers.Patch
import Network.Google.Compute.RegionInstanceGroupManagers.PatchPerInstanceConfigs
import Network.Google.Compute.RegionInstanceGroupManagers.RecreateInstances
import Network.Google.Compute.RegionInstanceGroupManagers.Resize
import Network.Google.Compute.RegionInstanceGroupManagers.SetInstanceTemplate
import Network.Google.Compute.RegionInstanceGroupManagers.SetTargetPools
import Network.Google.Compute.RegionInstanceGroupManagers.UpdatePerInstanceConfigs
import Network.Google.Compute.RegionInstanceGroups.Get
import Network.Google.Compute.RegionInstanceGroups.List
import Network.Google.Compute.RegionInstanceGroups.ListInstances
import Network.Google.Compute.RegionInstanceGroups.SetNamedPorts
import Network.Google.Compute.RegionInstances.BulkInsert
import Network.Google.Compute.RegionNetworkEndpointGroups.Delete
import Network.Google.Compute.RegionNetworkEndpointGroups.Get
import Network.Google.Compute.RegionNetworkEndpointGroups.Insert
import Network.Google.Compute.RegionNetworkEndpointGroups.List
import Network.Google.Compute.RegionNetworkFirewallPolicies.AddAssociation
import Network.Google.Compute.RegionNetworkFirewallPolicies.AddRule
import Network.Google.Compute.RegionNetworkFirewallPolicies.CloneRules
import Network.Google.Compute.RegionNetworkFirewallPolicies.Delete
import Network.Google.Compute.RegionNetworkFirewallPolicies.Get
import Network.Google.Compute.RegionNetworkFirewallPolicies.GetAssociation
import Network.Google.Compute.RegionNetworkFirewallPolicies.GetEffectiveFirewalls
import Network.Google.Compute.RegionNetworkFirewallPolicies.GetIamPolicy
import Network.Google.Compute.RegionNetworkFirewallPolicies.GetRule
import Network.Google.Compute.RegionNetworkFirewallPolicies.Insert
import Network.Google.Compute.RegionNetworkFirewallPolicies.List
import Network.Google.Compute.RegionNetworkFirewallPolicies.Patch
import Network.Google.Compute.RegionNetworkFirewallPolicies.PatchRule
import Network.Google.Compute.RegionNetworkFirewallPolicies.RemoveAssociation
import Network.Google.Compute.RegionNetworkFirewallPolicies.RemoveRule
import Network.Google.Compute.RegionNetworkFirewallPolicies.SetIamPolicy
import Network.Google.Compute.RegionNetworkFirewallPolicies.TestIamPermissions
import Network.Google.Compute.RegionNotificationEndpoints.Delete
import Network.Google.Compute.RegionNotificationEndpoints.Get
import Network.Google.Compute.RegionNotificationEndpoints.Insert
import Network.Google.Compute.RegionNotificationEndpoints.List
import Network.Google.Compute.RegionOperations.Delete
import Network.Google.Compute.RegionOperations.Get
import Network.Google.Compute.RegionOperations.List
import Network.Google.Compute.RegionOperations.Wait
import Network.Google.Compute.RegionSslCertificates.Delete
import Network.Google.Compute.RegionSslCertificates.Get
import Network.Google.Compute.RegionSslCertificates.Insert
import Network.Google.Compute.RegionSslCertificates.List
import Network.Google.Compute.RegionTargetHttpProxies.Delete
import Network.Google.Compute.RegionTargetHttpProxies.Get
import Network.Google.Compute.RegionTargetHttpProxies.Insert
import Network.Google.Compute.RegionTargetHttpProxies.List
import Network.Google.Compute.RegionTargetHttpProxies.SetUrlMap
import Network.Google.Compute.RegionTargetHttpsProxies.Delete
import Network.Google.Compute.RegionTargetHttpsProxies.Get
import Network.Google.Compute.RegionTargetHttpsProxies.Insert
import Network.Google.Compute.RegionTargetHttpsProxies.List
import Network.Google.Compute.RegionTargetHttpsProxies.Patch
import Network.Google.Compute.RegionTargetHttpsProxies.SetSslCertificates
import Network.Google.Compute.RegionTargetHttpsProxies.SetUrlMap
import Network.Google.Compute.RegionUrlMaps.Delete
import Network.Google.Compute.RegionUrlMaps.Get
import Network.Google.Compute.RegionUrlMaps.Insert
import Network.Google.Compute.RegionUrlMaps.List
import Network.Google.Compute.RegionUrlMaps.Patch
import Network.Google.Compute.RegionUrlMaps.Update
import Network.Google.Compute.RegionUrlMaps.Validate
import Network.Google.Compute.Regions.Get
import Network.Google.Compute.Regions.List
import Network.Google.Compute.Reservations.AggregatedList
import Network.Google.Compute.Reservations.Delete
import Network.Google.Compute.Reservations.Get
import Network.Google.Compute.Reservations.GetIamPolicy
import Network.Google.Compute.Reservations.Insert
import Network.Google.Compute.Reservations.List
import Network.Google.Compute.Reservations.Resize
import Network.Google.Compute.Reservations.SetIamPolicy
import Network.Google.Compute.Reservations.TestIamPermissions
import Network.Google.Compute.Reservations.Update
import Network.Google.Compute.ResourcePolicies.AggregatedList
import Network.Google.Compute.ResourcePolicies.Delete
import Network.Google.Compute.ResourcePolicies.Get
import Network.Google.Compute.ResourcePolicies.GetIamPolicy
import Network.Google.Compute.ResourcePolicies.Insert
import Network.Google.Compute.ResourcePolicies.List
import Network.Google.Compute.ResourcePolicies.SetIamPolicy
import Network.Google.Compute.ResourcePolicies.TestIamPermissions
import Network.Google.Compute.Routers.AggregatedList
import Network.Google.Compute.Routers.Delete
import Network.Google.Compute.Routers.Get
import Network.Google.Compute.Routers.GetNatMappingInfo
import Network.Google.Compute.Routers.GetRouterStatus
import Network.Google.Compute.Routers.Insert
import Network.Google.Compute.Routers.List
import Network.Google.Compute.Routers.Patch
import Network.Google.Compute.Routers.Preview
import Network.Google.Compute.Routers.Update
import Network.Google.Compute.Routes.Delete
import Network.Google.Compute.Routes.Get
import Network.Google.Compute.Routes.Insert
import Network.Google.Compute.Routes.List
import Network.Google.Compute.SecurityPolicies.AddRule
import Network.Google.Compute.SecurityPolicies.Delete
import Network.Google.Compute.SecurityPolicies.Get
import Network.Google.Compute.SecurityPolicies.GetRule
import Network.Google.Compute.SecurityPolicies.Insert
import Network.Google.Compute.SecurityPolicies.List
import Network.Google.Compute.SecurityPolicies.ListPreconfiguredExpressionSets
import Network.Google.Compute.SecurityPolicies.Patch
import Network.Google.Compute.SecurityPolicies.PatchRule
import Network.Google.Compute.SecurityPolicies.RemoveRule
import Network.Google.Compute.ServiceAttachments.AggregatedList
import Network.Google.Compute.ServiceAttachments.Delete
import Network.Google.Compute.ServiceAttachments.Get
import Network.Google.Compute.ServiceAttachments.GetIamPolicy
import Network.Google.Compute.ServiceAttachments.Insert
import Network.Google.Compute.ServiceAttachments.List
import Network.Google.Compute.ServiceAttachments.Patch
import Network.Google.Compute.ServiceAttachments.SetIamPolicy
import Network.Google.Compute.ServiceAttachments.TestIamPermissions
import Network.Google.Compute.Snapshots.Delete
import Network.Google.Compute.Snapshots.Get
import Network.Google.Compute.Snapshots.GetIamPolicy
import Network.Google.Compute.Snapshots.Insert
import Network.Google.Compute.Snapshots.List
import Network.Google.Compute.Snapshots.SetIamPolicy
import Network.Google.Compute.Snapshots.SetLabels
import Network.Google.Compute.Snapshots.TestIamPermissions
import Network.Google.Compute.SslCertificates.AggregatedList
import Network.Google.Compute.SslCertificates.Delete
import Network.Google.Compute.SslCertificates.Get
import Network.Google.Compute.SslCertificates.Insert
import Network.Google.Compute.SslCertificates.List
import Network.Google.Compute.SslPolicies.Delete
import Network.Google.Compute.SslPolicies.Get
import Network.Google.Compute.SslPolicies.Insert
import Network.Google.Compute.SslPolicies.List
import Network.Google.Compute.SslPolicies.ListAvailableFeatures
import Network.Google.Compute.SslPolicies.Patch
import Network.Google.Compute.Subnetworks.AggregatedList
import Network.Google.Compute.Subnetworks.Delete
import Network.Google.Compute.Subnetworks.ExpandIpCidrRange
import Network.Google.Compute.Subnetworks.Get
import Network.Google.Compute.Subnetworks.GetIamPolicy
import Network.Google.Compute.Subnetworks.Insert
import Network.Google.Compute.Subnetworks.List
import Network.Google.Compute.Subnetworks.ListUsable
import Network.Google.Compute.Subnetworks.Patch
import Network.Google.Compute.Subnetworks.SetIamPolicy
import Network.Google.Compute.Subnetworks.SetPrivateIpGoogleAccess
import Network.Google.Compute.Subnetworks.TestIamPermissions
import Network.Google.Compute.TargetGrpcProxies.Delete
import Network.Google.Compute.TargetGrpcProxies.Get
import Network.Google.Compute.TargetGrpcProxies.Insert
import Network.Google.Compute.TargetGrpcProxies.List
import Network.Google.Compute.TargetGrpcProxies.Patch
import Network.Google.Compute.TargetHttpProxies.AggregatedList
import Network.Google.Compute.TargetHttpProxies.Delete
import Network.Google.Compute.TargetHttpProxies.Get
import Network.Google.Compute.TargetHttpProxies.Insert
import Network.Google.Compute.TargetHttpProxies.List
import Network.Google.Compute.TargetHttpProxies.Patch
import Network.Google.Compute.TargetHttpProxies.SetUrlMap
import Network.Google.Compute.TargetHttpsProxies.AggregatedList
import Network.Google.Compute.TargetHttpsProxies.Delete
import Network.Google.Compute.TargetHttpsProxies.Get
import Network.Google.Compute.TargetHttpsProxies.Insert
import Network.Google.Compute.TargetHttpsProxies.List
import Network.Google.Compute.TargetHttpsProxies.Patch
import Network.Google.Compute.TargetHttpsProxies.SetQuicOverride
import Network.Google.Compute.TargetHttpsProxies.SetSslCertificates
import Network.Google.Compute.TargetHttpsProxies.SetSslPolicy
import Network.Google.Compute.TargetHttpsProxies.SetUrlMap
import Network.Google.Compute.TargetInstances.AggregatedList
import Network.Google.Compute.TargetInstances.Delete
import Network.Google.Compute.TargetInstances.Get
import Network.Google.Compute.TargetInstances.Insert
import Network.Google.Compute.TargetInstances.List
import Network.Google.Compute.TargetPools.AddHealthCheck
import Network.Google.Compute.TargetPools.AddInstance
import Network.Google.Compute.TargetPools.AggregatedList
import Network.Google.Compute.TargetPools.Delete
import Network.Google.Compute.TargetPools.Get
import Network.Google.Compute.TargetPools.GetHealth
import Network.Google.Compute.TargetPools.Insert
import Network.Google.Compute.TargetPools.List
import Network.Google.Compute.TargetPools.RemoveHealthCheck
import Network.Google.Compute.TargetPools.RemoveInstance
import Network.Google.Compute.TargetPools.SetBackup
import Network.Google.Compute.TargetSslProxies.Delete
import Network.Google.Compute.TargetSslProxies.Get
import Network.Google.Compute.TargetSslProxies.Insert
import Network.Google.Compute.TargetSslProxies.List
import Network.Google.Compute.TargetSslProxies.SetBackendService
import Network.Google.Compute.TargetSslProxies.SetProxyHeader
import Network.Google.Compute.TargetSslProxies.SetSslCertificates
import Network.Google.Compute.TargetSslProxies.SetSslPolicy
import Network.Google.Compute.TargetTcpProxies.Delete
import Network.Google.Compute.TargetTcpProxies.Get
import Network.Google.Compute.TargetTcpProxies.Insert
import Network.Google.Compute.TargetTcpProxies.List
import Network.Google.Compute.TargetTcpProxies.SetBackendService
import Network.Google.Compute.TargetTcpProxies.SetProxyHeader
import Network.Google.Compute.TargetVpnGateways.AggregatedList
import Network.Google.Compute.TargetVpnGateways.Delete
import Network.Google.Compute.TargetVpnGateways.Get
import Network.Google.Compute.TargetVpnGateways.Insert
import Network.Google.Compute.TargetVpnGateways.List
import Network.Google.Compute.Types
import Network.Google.Compute.UrlMaps.AggregatedList
import Network.Google.Compute.UrlMaps.Delete
import Network.Google.Compute.UrlMaps.Get
import Network.Google.Compute.UrlMaps.Insert
import Network.Google.Compute.UrlMaps.InvalidateCache
import Network.Google.Compute.UrlMaps.List
import Network.Google.Compute.UrlMaps.Patch
import Network.Google.Compute.UrlMaps.Update
import Network.Google.Compute.UrlMaps.Validate
import Network.Google.Compute.VpnGateways.AggregatedList
import Network.Google.Compute.VpnGateways.Delete
import Network.Google.Compute.VpnGateways.Get
import Network.Google.Compute.VpnGateways.GetStatus
import Network.Google.Compute.VpnGateways.Insert
import Network.Google.Compute.VpnGateways.List
import Network.Google.Compute.VpnGateways.SetLabels
import Network.Google.Compute.VpnGateways.TestIamPermissions
import Network.Google.Compute.VpnTunnels.AggregatedList
import Network.Google.Compute.VpnTunnels.Delete
import Network.Google.Compute.VpnTunnels.Get
import Network.Google.Compute.VpnTunnels.Insert
import Network.Google.Compute.VpnTunnels.List
import Network.Google.Compute.ZoneOperations.Delete
import Network.Google.Compute.ZoneOperations.Get
import Network.Google.Compute.ZoneOperations.List
import Network.Google.Compute.ZoneOperations.Wait
import Network.Google.Compute.Zones.Get
import Network.Google.Compute.Zones.List
