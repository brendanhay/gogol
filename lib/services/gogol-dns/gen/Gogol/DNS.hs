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
-- Module      : Gogol.DNS
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
--
--
-- /See:/ <https://cloud.google.com/dns/docs Cloud DNS API Reference>
module Gogol.DNS
  ( -- * Configuration
    dNSService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    CloudPlatform'ReadOnly,
    Ndev'Clouddns'Readonly,
    Ndev'Clouddns'Readwrite,

    -- * Resources

    -- ** dns.changes.create
    DNSChangesCreateResource,
    DNSChangesCreate (..),
    newDNSChangesCreate,

    -- ** dns.changes.get
    DNSChangesGetResource,
    DNSChangesGet (..),
    newDNSChangesGet,

    -- ** dns.changes.list
    DNSChangesListResource,
    DNSChangesList (..),
    newDNSChangesList,

    -- ** dns.dnsKeys.get
    DNSDnsKeysGetResource,
    DNSDnsKeysGet (..),
    newDNSDnsKeysGet,

    -- ** dns.dnsKeys.list
    DNSDnsKeysListResource,
    DNSDnsKeysList (..),
    newDNSDnsKeysList,

    -- ** dns.managedZoneOperations.get
    DNSManagedZoneOperationsGetResource,
    DNSManagedZoneOperationsGet (..),
    newDNSManagedZoneOperationsGet,

    -- ** dns.managedZoneOperations.list
    DNSManagedZoneOperationsListResource,
    DNSManagedZoneOperationsList (..),
    newDNSManagedZoneOperationsList,

    -- ** dns.managedZones.create
    DNSManagedZonesCreateResource,
    DNSManagedZonesCreate (..),
    newDNSManagedZonesCreate,

    -- ** dns.managedZones.delete
    DNSManagedZonesDeleteResource,
    DNSManagedZonesDelete (..),
    newDNSManagedZonesDelete,

    -- ** dns.managedZones.get
    DNSManagedZonesGetResource,
    DNSManagedZonesGet (..),
    newDNSManagedZonesGet,

    -- ** dns.managedZones.list
    DNSManagedZonesListResource,
    DNSManagedZonesList (..),
    newDNSManagedZonesList,

    -- ** dns.managedZones.patch
    DNSManagedZonesPatchResource,
    DNSManagedZonesPatch (..),
    newDNSManagedZonesPatch,

    -- ** dns.managedZones.update
    DNSManagedZonesUpdateResource,
    DNSManagedZonesUpdate (..),
    newDNSManagedZonesUpdate,

    -- ** dns.policies.create
    DNSPoliciesCreateResource,
    DNSPoliciesCreate (..),
    newDNSPoliciesCreate,

    -- ** dns.policies.delete
    DNSPoliciesDeleteResource,
    DNSPoliciesDelete (..),
    newDNSPoliciesDelete,

    -- ** dns.policies.get
    DNSPoliciesGetResource,
    DNSPoliciesGet (..),
    newDNSPoliciesGet,

    -- ** dns.policies.list
    DNSPoliciesListResource,
    DNSPoliciesList (..),
    newDNSPoliciesList,

    -- ** dns.policies.patch
    DNSPoliciesPatchResource,
    DNSPoliciesPatch (..),
    newDNSPoliciesPatch,

    -- ** dns.policies.update
    DNSPoliciesUpdateResource,
    DNSPoliciesUpdate (..),
    newDNSPoliciesUpdate,

    -- ** dns.projects.get
    DNSProjectsGetResource,
    DNSProjectsGet (..),
    newDNSProjectsGet,

    -- ** dns.resourceRecordSets.create
    DNSResourceRecordSetsCreateResource,
    DNSResourceRecordSetsCreate (..),
    newDNSResourceRecordSetsCreate,

    -- ** dns.resourceRecordSets.delete
    DNSResourceRecordSetsDeleteResource,
    DNSResourceRecordSetsDelete (..),
    newDNSResourceRecordSetsDelete,

    -- ** dns.resourceRecordSets.get
    DNSResourceRecordSetsGetResource,
    DNSResourceRecordSetsGet (..),
    newDNSResourceRecordSetsGet,

    -- ** dns.resourceRecordSets.list
    DNSResourceRecordSetsListResource,
    DNSResourceRecordSetsList (..),
    newDNSResourceRecordSetsList,

    -- ** dns.resourceRecordSets.patch
    DNSResourceRecordSetsPatchResource,
    DNSResourceRecordSetsPatch (..),
    newDNSResourceRecordSetsPatch,

    -- ** dns.responsePolicies.create
    DNSResponsePoliciesCreateResource,
    DNSResponsePoliciesCreate (..),
    newDNSResponsePoliciesCreate,

    -- ** dns.responsePolicies.delete
    DNSResponsePoliciesDeleteResource,
    DNSResponsePoliciesDelete (..),
    newDNSResponsePoliciesDelete,

    -- ** dns.responsePolicies.get
    DNSResponsePoliciesGetResource,
    DNSResponsePoliciesGet (..),
    newDNSResponsePoliciesGet,

    -- ** dns.responsePolicies.list
    DNSResponsePoliciesListResource,
    DNSResponsePoliciesList (..),
    newDNSResponsePoliciesList,

    -- ** dns.responsePolicies.patch
    DNSResponsePoliciesPatchResource,
    DNSResponsePoliciesPatch (..),
    newDNSResponsePoliciesPatch,

    -- ** dns.responsePolicies.update
    DNSResponsePoliciesUpdateResource,
    DNSResponsePoliciesUpdate (..),
    newDNSResponsePoliciesUpdate,

    -- ** dns.responsePolicyRules.create
    DNSResponsePolicyRulesCreateResource,
    DNSResponsePolicyRulesCreate (..),
    newDNSResponsePolicyRulesCreate,

    -- ** dns.responsePolicyRules.delete
    DNSResponsePolicyRulesDeleteResource,
    DNSResponsePolicyRulesDelete (..),
    newDNSResponsePolicyRulesDelete,

    -- ** dns.responsePolicyRules.get
    DNSResponsePolicyRulesGetResource,
    DNSResponsePolicyRulesGet (..),
    newDNSResponsePolicyRulesGet,

    -- ** dns.responsePolicyRules.list
    DNSResponsePolicyRulesListResource,
    DNSResponsePolicyRulesList (..),
    newDNSResponsePolicyRulesList,

    -- ** dns.responsePolicyRules.patch
    DNSResponsePolicyRulesPatchResource,
    DNSResponsePolicyRulesPatch (..),
    newDNSResponsePolicyRulesPatch,

    -- ** dns.responsePolicyRules.update
    DNSResponsePolicyRulesUpdateResource,
    DNSResponsePolicyRulesUpdate (..),
    newDNSResponsePolicyRulesUpdate,

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

import Gogol.DNS.Changes.Create
import Gogol.DNS.Changes.Get
import Gogol.DNS.Changes.List
import Gogol.DNS.DnsKeys.Get
import Gogol.DNS.DnsKeys.List
import Gogol.DNS.ManagedZoneOperations.Get
import Gogol.DNS.ManagedZoneOperations.List
import Gogol.DNS.ManagedZones.Create
import Gogol.DNS.ManagedZones.Delete
import Gogol.DNS.ManagedZones.Get
import Gogol.DNS.ManagedZones.List
import Gogol.DNS.ManagedZones.Patch
import Gogol.DNS.ManagedZones.Update
import Gogol.DNS.Policies.Create
import Gogol.DNS.Policies.Delete
import Gogol.DNS.Policies.Get
import Gogol.DNS.Policies.List
import Gogol.DNS.Policies.Patch
import Gogol.DNS.Policies.Update
import Gogol.DNS.Projects.Get
import Gogol.DNS.ResourceRecordSets.Create
import Gogol.DNS.ResourceRecordSets.Delete
import Gogol.DNS.ResourceRecordSets.Get
import Gogol.DNS.ResourceRecordSets.List
import Gogol.DNS.ResourceRecordSets.Patch
import Gogol.DNS.ResponsePolicies.Create
import Gogol.DNS.ResponsePolicies.Delete
import Gogol.DNS.ResponsePolicies.Get
import Gogol.DNS.ResponsePolicies.List
import Gogol.DNS.ResponsePolicies.Patch
import Gogol.DNS.ResponsePolicies.Update
import Gogol.DNS.ResponsePolicyRules.Create
import Gogol.DNS.ResponsePolicyRules.Delete
import Gogol.DNS.ResponsePolicyRules.Get
import Gogol.DNS.ResponsePolicyRules.List
import Gogol.DNS.ResponsePolicyRules.Patch
import Gogol.DNS.ResponsePolicyRules.Update
import Gogol.DNS.Types
