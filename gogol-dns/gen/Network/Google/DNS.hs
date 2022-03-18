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
-- Module      : Network.Google.DNS
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
--
--
-- /See:/ <https://cloud.google.com/dns/docs Cloud DNS API Reference>
module Network.Google.DNS
  ( -- * Configuration
    dNSService,

    -- * OAuth Scopes
    cloudPlatformScope,
    cloudPlatformReadOnlyScope,
    ndevClouddnsReadOnlyScope,
    ndevClouddnsReadwriteScope,

    -- * Resources

    -- ** dns.changes.create
    DNSChangesCreateResource,
    newDNSChangesCreate,
    DNSChangesCreate,

    -- ** dns.changes.get
    DNSChangesGetResource,
    newDNSChangesGet,
    DNSChangesGet,

    -- ** dns.changes.list
    DNSChangesListResource,
    newDNSChangesList,
    DNSChangesList,

    -- ** dns.dnsKeys.get
    DNSDnsKeysGetResource,
    newDNSDnsKeysGet,
    DNSDnsKeysGet,

    -- ** dns.dnsKeys.list
    DNSDnsKeysListResource,
    newDNSDnsKeysList,
    DNSDnsKeysList,

    -- ** dns.managedZoneOperations.get
    DNSManagedZoneOperationsGetResource,
    newDNSManagedZoneOperationsGet,
    DNSManagedZoneOperationsGet,

    -- ** dns.managedZoneOperations.list
    DNSManagedZoneOperationsListResource,
    newDNSManagedZoneOperationsList,
    DNSManagedZoneOperationsList,

    -- ** dns.managedZones.create
    DNSManagedZonesCreateResource,
    newDNSManagedZonesCreate,
    DNSManagedZonesCreate,

    -- ** dns.managedZones.delete
    DNSManagedZonesDeleteResource,
    newDNSManagedZonesDelete,
    DNSManagedZonesDelete,

    -- ** dns.managedZones.get
    DNSManagedZonesGetResource,
    newDNSManagedZonesGet,
    DNSManagedZonesGet,

    -- ** dns.managedZones.list
    DNSManagedZonesListResource,
    newDNSManagedZonesList,
    DNSManagedZonesList,

    -- ** dns.managedZones.patch
    DNSManagedZonesPatchResource,
    newDNSManagedZonesPatch,
    DNSManagedZonesPatch,

    -- ** dns.managedZones.update
    DNSManagedZonesUpdateResource,
    newDNSManagedZonesUpdate,
    DNSManagedZonesUpdate,

    -- ** dns.policies.create
    DNSPoliciesCreateResource,
    newDNSPoliciesCreate,
    DNSPoliciesCreate,

    -- ** dns.policies.delete
    DNSPoliciesDeleteResource,
    newDNSPoliciesDelete,
    DNSPoliciesDelete,

    -- ** dns.policies.get
    DNSPoliciesGetResource,
    newDNSPoliciesGet,
    DNSPoliciesGet,

    -- ** dns.policies.list
    DNSPoliciesListResource,
    newDNSPoliciesList,
    DNSPoliciesList,

    -- ** dns.policies.patch
    DNSPoliciesPatchResource,
    newDNSPoliciesPatch,
    DNSPoliciesPatch,

    -- ** dns.policies.update
    DNSPoliciesUpdateResource,
    newDNSPoliciesUpdate,
    DNSPoliciesUpdate,

    -- ** dns.projects.get
    DNSProjectsGetResource,
    newDNSProjectsGet,
    DNSProjectsGet,

    -- ** dns.resourceRecordSets.create
    DNSResourceRecordSetsCreateResource,
    newDNSResourceRecordSetsCreate,
    DNSResourceRecordSetsCreate,

    -- ** dns.resourceRecordSets.delete
    DNSResourceRecordSetsDeleteResource,
    newDNSResourceRecordSetsDelete,
    DNSResourceRecordSetsDelete,

    -- ** dns.resourceRecordSets.get
    DNSResourceRecordSetsGetResource,
    newDNSResourceRecordSetsGet,
    DNSResourceRecordSetsGet,

    -- ** dns.resourceRecordSets.list
    DNSResourceRecordSetsListResource,
    newDNSResourceRecordSetsList,
    DNSResourceRecordSetsList,

    -- ** dns.resourceRecordSets.patch
    DNSResourceRecordSetsPatchResource,
    newDNSResourceRecordSetsPatch,
    DNSResourceRecordSetsPatch,

    -- ** dns.responsePolicies.create
    DNSResponsePoliciesCreateResource,
    newDNSResponsePoliciesCreate,
    DNSResponsePoliciesCreate,

    -- ** dns.responsePolicies.delete
    DNSResponsePoliciesDeleteResource,
    newDNSResponsePoliciesDelete,
    DNSResponsePoliciesDelete,

    -- ** dns.responsePolicies.get
    DNSResponsePoliciesGetResource,
    newDNSResponsePoliciesGet,
    DNSResponsePoliciesGet,

    -- ** dns.responsePolicies.list
    DNSResponsePoliciesListResource,
    newDNSResponsePoliciesList,
    DNSResponsePoliciesList,

    -- ** dns.responsePolicies.patch
    DNSResponsePoliciesPatchResource,
    newDNSResponsePoliciesPatch,
    DNSResponsePoliciesPatch,

    -- ** dns.responsePolicies.update
    DNSResponsePoliciesUpdateResource,
    newDNSResponsePoliciesUpdate,
    DNSResponsePoliciesUpdate,

    -- ** dns.responsePolicyRules.create
    DNSResponsePolicyRulesCreateResource,
    newDNSResponsePolicyRulesCreate,
    DNSResponsePolicyRulesCreate,

    -- ** dns.responsePolicyRules.delete
    DNSResponsePolicyRulesDeleteResource,
    newDNSResponsePolicyRulesDelete,
    DNSResponsePolicyRulesDelete,

    -- ** dns.responsePolicyRules.get
    DNSResponsePolicyRulesGetResource,
    newDNSResponsePolicyRulesGet,
    DNSResponsePolicyRulesGet,

    -- ** dns.responsePolicyRules.list
    DNSResponsePolicyRulesListResource,
    newDNSResponsePolicyRulesList,
    DNSResponsePolicyRulesList,

    -- ** dns.responsePolicyRules.patch
    DNSResponsePolicyRulesPatchResource,
    newDNSResponsePolicyRulesPatch,
    DNSResponsePolicyRulesPatch,

    -- ** dns.responsePolicyRules.update
    DNSResponsePolicyRulesUpdateResource,
    newDNSResponsePolicyRulesUpdate,
    DNSResponsePolicyRulesUpdate,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Change
    Change (..),
    newChange,

    -- ** Change_Status
    Change_Status (..),

    -- ** ChangesListResponse
    ChangesListResponse (..),
    newChangesListResponse,

    -- ** DnsKey
    DnsKey (..),
    newDnsKey,

    -- ** DnsKey_Algorithm
    DnsKey_Algorithm (..),

    -- ** DnsKey_Type
    DnsKey_Type (..),

    -- ** DnsKeyDigest
    DnsKeyDigest (..),
    newDnsKeyDigest,

    -- ** DnsKeyDigest_Type
    DnsKeyDigest_Type (..),

    -- ** DnsKeySpec
    DnsKeySpec (..),
    newDnsKeySpec,

    -- ** DnsKeySpec_Algorithm
    DnsKeySpec_Algorithm (..),

    -- ** DnsKeySpec_KeyType
    DnsKeySpec_KeyType (..),

    -- ** DnsKeysListResponse
    DnsKeysListResponse (..),
    newDnsKeysListResponse,

    -- ** ManagedZone
    ManagedZone (..),
    newManagedZone,

    -- ** ManagedZone_Labels
    ManagedZone_Labels (..),
    newManagedZone_Labels,

    -- ** ManagedZone_Visibility
    ManagedZone_Visibility (..),

    -- ** ManagedZoneCloudLoggingConfig
    ManagedZoneCloudLoggingConfig (..),
    newManagedZoneCloudLoggingConfig,

    -- ** ManagedZoneDnsSecConfig
    ManagedZoneDnsSecConfig (..),
    newManagedZoneDnsSecConfig,

    -- ** ManagedZoneDnsSecConfig_NonExistence
    ManagedZoneDnsSecConfig_NonExistence (..),

    -- ** ManagedZoneDnsSecConfig_State
    ManagedZoneDnsSecConfig_State (..),

    -- ** ManagedZoneForwardingConfig
    ManagedZoneForwardingConfig (..),
    newManagedZoneForwardingConfig,

    -- ** ManagedZoneForwardingConfigNameServerTarget
    ManagedZoneForwardingConfigNameServerTarget (..),
    newManagedZoneForwardingConfigNameServerTarget,

    -- ** ManagedZoneForwardingConfigNameServerTarget_ForwardingPath
    ManagedZoneForwardingConfigNameServerTarget_ForwardingPath (..),

    -- ** ManagedZoneOperationsListResponse
    ManagedZoneOperationsListResponse (..),
    newManagedZoneOperationsListResponse,

    -- ** ManagedZonePeeringConfig
    ManagedZonePeeringConfig (..),
    newManagedZonePeeringConfig,

    -- ** ManagedZonePeeringConfigTargetNetwork
    ManagedZonePeeringConfigTargetNetwork (..),
    newManagedZonePeeringConfigTargetNetwork,

    -- ** ManagedZonePrivateVisibilityConfig
    ManagedZonePrivateVisibilityConfig (..),
    newManagedZonePrivateVisibilityConfig,

    -- ** ManagedZonePrivateVisibilityConfigGKECluster
    ManagedZonePrivateVisibilityConfigGKECluster (..),
    newManagedZonePrivateVisibilityConfigGKECluster,

    -- ** ManagedZonePrivateVisibilityConfigNetwork
    ManagedZonePrivateVisibilityConfigNetwork (..),
    newManagedZonePrivateVisibilityConfigNetwork,

    -- ** ManagedZoneReverseLookupConfig
    ManagedZoneReverseLookupConfig (..),
    newManagedZoneReverseLookupConfig,

    -- ** ManagedZoneServiceDirectoryConfig
    ManagedZoneServiceDirectoryConfig (..),
    newManagedZoneServiceDirectoryConfig,

    -- ** ManagedZoneServiceDirectoryConfigNamespace
    ManagedZoneServiceDirectoryConfigNamespace (..),
    newManagedZoneServiceDirectoryConfigNamespace,

    -- ** ManagedZonesListResponse
    ManagedZonesListResponse (..),
    newManagedZonesListResponse,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Status
    Operation_Status (..),

    -- ** OperationDnsKeyContext
    OperationDnsKeyContext (..),
    newOperationDnsKeyContext,

    -- ** OperationManagedZoneContext
    OperationManagedZoneContext (..),
    newOperationManagedZoneContext,

    -- ** PoliciesListResponse
    PoliciesListResponse (..),
    newPoliciesListResponse,

    -- ** PoliciesPatchResponse
    PoliciesPatchResponse (..),
    newPoliciesPatchResponse,

    -- ** PoliciesUpdateResponse
    PoliciesUpdateResponse (..),
    newPoliciesUpdateResponse,

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** PolicyAlternativeNameServerConfig
    PolicyAlternativeNameServerConfig (..),
    newPolicyAlternativeNameServerConfig,

    -- ** PolicyAlternativeNameServerConfigTargetNameServer
    PolicyAlternativeNameServerConfigTargetNameServer (..),
    newPolicyAlternativeNameServerConfigTargetNameServer,

    -- ** PolicyAlternativeNameServerConfigTargetNameServer_ForwardingPath
    PolicyAlternativeNameServerConfigTargetNameServer_ForwardingPath (..),

    -- ** PolicyNetwork
    PolicyNetwork (..),
    newPolicyNetwork,

    -- ** Project
    Project (..),
    newProject,

    -- ** Quota
    Quota (..),
    newQuota,

    -- ** RRSetRoutingPolicy
    RRSetRoutingPolicy (..),
    newRRSetRoutingPolicy,

    -- ** RRSetRoutingPolicyGeoPolicy
    RRSetRoutingPolicyGeoPolicy (..),
    newRRSetRoutingPolicyGeoPolicy,

    -- ** RRSetRoutingPolicyGeoPolicyGeoPolicyItem
    RRSetRoutingPolicyGeoPolicyGeoPolicyItem (..),
    newRRSetRoutingPolicyGeoPolicyGeoPolicyItem,

    -- ** RRSetRoutingPolicyWrrPolicy
    RRSetRoutingPolicyWrrPolicy (..),
    newRRSetRoutingPolicyWrrPolicy,

    -- ** RRSetRoutingPolicyWrrPolicyWrrPolicyItem
    RRSetRoutingPolicyWrrPolicyWrrPolicyItem (..),
    newRRSetRoutingPolicyWrrPolicyWrrPolicyItem,

    -- ** ResourceRecordSet
    ResourceRecordSet (..),
    newResourceRecordSet,

    -- ** ResourceRecordSetsListResponse
    ResourceRecordSetsListResponse (..),
    newResourceRecordSetsListResponse,

    -- ** ResponseHeader
    ResponseHeader (..),
    newResponseHeader,

    -- ** ResponsePoliciesListResponse
    ResponsePoliciesListResponse (..),
    newResponsePoliciesListResponse,

    -- ** ResponsePoliciesPatchResponse
    ResponsePoliciesPatchResponse (..),
    newResponsePoliciesPatchResponse,

    -- ** ResponsePoliciesUpdateResponse
    ResponsePoliciesUpdateResponse (..),
    newResponsePoliciesUpdateResponse,

    -- ** ResponsePolicy
    ResponsePolicy (..),
    newResponsePolicy,

    -- ** ResponsePolicyGKECluster
    ResponsePolicyGKECluster (..),
    newResponsePolicyGKECluster,

    -- ** ResponsePolicyNetwork
    ResponsePolicyNetwork (..),
    newResponsePolicyNetwork,

    -- ** ResponsePolicyRule
    ResponsePolicyRule (..),
    newResponsePolicyRule,

    -- ** ResponsePolicyRule_Behavior
    ResponsePolicyRule_Behavior (..),

    -- ** ResponsePolicyRuleLocalData
    ResponsePolicyRuleLocalData (..),
    newResponsePolicyRuleLocalData,

    -- ** ResponsePolicyRulesListResponse
    ResponsePolicyRulesListResponse (..),
    newResponsePolicyRulesListResponse,

    -- ** ResponsePolicyRulesPatchResponse
    ResponsePolicyRulesPatchResponse (..),
    newResponsePolicyRulesPatchResponse,

    -- ** ResponsePolicyRulesUpdateResponse
    ResponsePolicyRulesUpdateResponse (..),
    newResponsePolicyRulesUpdateResponse,

    -- ** ChangesListSortBy
    ChangesListSortBy (..),

    -- ** ManagedZoneOperationsListSortBy
    ManagedZoneOperationsListSortBy (..),
  )
where

import Network.Google.DNS.Changes.Create
import Network.Google.DNS.Changes.Get
import Network.Google.DNS.Changes.List
import Network.Google.DNS.DnsKeys.Get
import Network.Google.DNS.DnsKeys.List
import Network.Google.DNS.ManagedZoneOperations.Get
import Network.Google.DNS.ManagedZoneOperations.List
import Network.Google.DNS.ManagedZones.Create
import Network.Google.DNS.ManagedZones.Delete
import Network.Google.DNS.ManagedZones.Get
import Network.Google.DNS.ManagedZones.List
import Network.Google.DNS.ManagedZones.Patch
import Network.Google.DNS.ManagedZones.Update
import Network.Google.DNS.Policies.Create
import Network.Google.DNS.Policies.Delete
import Network.Google.DNS.Policies.Get
import Network.Google.DNS.Policies.List
import Network.Google.DNS.Policies.Patch
import Network.Google.DNS.Policies.Update
import Network.Google.DNS.Projects.Get
import Network.Google.DNS.ResourceRecordSets.Create
import Network.Google.DNS.ResourceRecordSets.Delete
import Network.Google.DNS.ResourceRecordSets.Get
import Network.Google.DNS.ResourceRecordSets.List
import Network.Google.DNS.ResourceRecordSets.Patch
import Network.Google.DNS.ResponsePolicies.Create
import Network.Google.DNS.ResponsePolicies.Delete
import Network.Google.DNS.ResponsePolicies.Get
import Network.Google.DNS.ResponsePolicies.List
import Network.Google.DNS.ResponsePolicies.Patch
import Network.Google.DNS.ResponsePolicies.Update
import Network.Google.DNS.ResponsePolicyRules.Create
import Network.Google.DNS.ResponsePolicyRules.Delete
import Network.Google.DNS.ResponsePolicyRules.Get
import Network.Google.DNS.ResponsePolicyRules.List
import Network.Google.DNS.ResponsePolicyRules.Patch
import Network.Google.DNS.ResponsePolicyRules.Update
import Network.Google.DNS.Types
