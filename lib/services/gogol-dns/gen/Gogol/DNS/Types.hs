{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.DNS.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.DNS.Types
  ( -- * Configuration
    dNSService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    CloudPlatform'ReadOnly,
    Ndev'Clouddns'Readonly,
    Ndev'Clouddns'Readwrite,

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

import Gogol.DNS.Internal.Product
import Gogol.DNS.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v2@ of the Cloud DNS API. This contains the host and root path used as a starting point for constructing service requests.
dNSService :: Core.ServiceConfig
dNSService =
  Core.defaultService
    (Core.ServiceId "dns:v2")
    "dns.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"

-- | View your data across Google Cloud services and see the email address of your Google Account
type CloudPlatform'ReadOnly =
  "https://www.googleapis.com/auth/cloud-platform.read-only"

-- | View your DNS records hosted by Google Cloud DNS
type Ndev'Clouddns'Readonly =
  "https://www.googleapis.com/auth/ndev.clouddns.readonly"

-- | View and manage your DNS records hosted by Google Cloud DNS
type Ndev'Clouddns'Readwrite =
  "https://www.googleapis.com/auth/ndev.clouddns.readwrite"
