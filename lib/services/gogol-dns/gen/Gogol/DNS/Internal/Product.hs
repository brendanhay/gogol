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
-- Module      : Gogol.DNS.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.DNS.Internal.Product
  ( -- * Change
    Change (..),
    newChange,

    -- * ChangesListResponse
    ChangesListResponse (..),
    newChangesListResponse,

    -- * DnsKey
    DnsKey (..),
    newDnsKey,

    -- * DnsKeyDigest
    DnsKeyDigest (..),
    newDnsKeyDigest,

    -- * DnsKeySpec
    DnsKeySpec (..),
    newDnsKeySpec,

    -- * DnsKeysListResponse
    DnsKeysListResponse (..),
    newDnsKeysListResponse,

    -- * ManagedZone
    ManagedZone (..),
    newManagedZone,

    -- * ManagedZone_Labels
    ManagedZone_Labels (..),
    newManagedZone_Labels,

    -- * ManagedZoneCloudLoggingConfig
    ManagedZoneCloudLoggingConfig (..),
    newManagedZoneCloudLoggingConfig,

    -- * ManagedZoneDnsSecConfig
    ManagedZoneDnsSecConfig (..),
    newManagedZoneDnsSecConfig,

    -- * ManagedZoneForwardingConfig
    ManagedZoneForwardingConfig (..),
    newManagedZoneForwardingConfig,

    -- * ManagedZoneForwardingConfigNameServerTarget
    ManagedZoneForwardingConfigNameServerTarget (..),
    newManagedZoneForwardingConfigNameServerTarget,

    -- * ManagedZoneOperationsListResponse
    ManagedZoneOperationsListResponse (..),
    newManagedZoneOperationsListResponse,

    -- * ManagedZonePeeringConfig
    ManagedZonePeeringConfig (..),
    newManagedZonePeeringConfig,

    -- * ManagedZonePeeringConfigTargetNetwork
    ManagedZonePeeringConfigTargetNetwork (..),
    newManagedZonePeeringConfigTargetNetwork,

    -- * ManagedZonePrivateVisibilityConfig
    ManagedZonePrivateVisibilityConfig (..),
    newManagedZonePrivateVisibilityConfig,

    -- * ManagedZonePrivateVisibilityConfigGKECluster
    ManagedZonePrivateVisibilityConfigGKECluster (..),
    newManagedZonePrivateVisibilityConfigGKECluster,

    -- * ManagedZonePrivateVisibilityConfigNetwork
    ManagedZonePrivateVisibilityConfigNetwork (..),
    newManagedZonePrivateVisibilityConfigNetwork,

    -- * ManagedZoneReverseLookupConfig
    ManagedZoneReverseLookupConfig (..),
    newManagedZoneReverseLookupConfig,

    -- * ManagedZoneServiceDirectoryConfig
    ManagedZoneServiceDirectoryConfig (..),
    newManagedZoneServiceDirectoryConfig,

    -- * ManagedZoneServiceDirectoryConfigNamespace
    ManagedZoneServiceDirectoryConfigNamespace (..),
    newManagedZoneServiceDirectoryConfigNamespace,

    -- * ManagedZonesListResponse
    ManagedZonesListResponse (..),
    newManagedZonesListResponse,

    -- * Operation
    Operation (..),
    newOperation,

    -- * OperationDnsKeyContext
    OperationDnsKeyContext (..),
    newOperationDnsKeyContext,

    -- * OperationManagedZoneContext
    OperationManagedZoneContext (..),
    newOperationManagedZoneContext,

    -- * PoliciesListResponse
    PoliciesListResponse (..),
    newPoliciesListResponse,

    -- * PoliciesPatchResponse
    PoliciesPatchResponse (..),
    newPoliciesPatchResponse,

    -- * PoliciesUpdateResponse
    PoliciesUpdateResponse (..),
    newPoliciesUpdateResponse,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * PolicyAlternativeNameServerConfig
    PolicyAlternativeNameServerConfig (..),
    newPolicyAlternativeNameServerConfig,

    -- * PolicyAlternativeNameServerConfigTargetNameServer
    PolicyAlternativeNameServerConfigTargetNameServer (..),
    newPolicyAlternativeNameServerConfigTargetNameServer,

    -- * PolicyNetwork
    PolicyNetwork (..),
    newPolicyNetwork,

    -- * Project
    Project (..),
    newProject,

    -- * Quota
    Quota (..),
    newQuota,

    -- * RRSetRoutingPolicy
    RRSetRoutingPolicy (..),
    newRRSetRoutingPolicy,

    -- * RRSetRoutingPolicyGeoPolicy
    RRSetRoutingPolicyGeoPolicy (..),
    newRRSetRoutingPolicyGeoPolicy,

    -- * RRSetRoutingPolicyGeoPolicyGeoPolicyItem
    RRSetRoutingPolicyGeoPolicyGeoPolicyItem (..),
    newRRSetRoutingPolicyGeoPolicyGeoPolicyItem,

    -- * RRSetRoutingPolicyWrrPolicy
    RRSetRoutingPolicyWrrPolicy (..),
    newRRSetRoutingPolicyWrrPolicy,

    -- * RRSetRoutingPolicyWrrPolicyWrrPolicyItem
    RRSetRoutingPolicyWrrPolicyWrrPolicyItem (..),
    newRRSetRoutingPolicyWrrPolicyWrrPolicyItem,

    -- * ResourceRecordSet
    ResourceRecordSet (..),
    newResourceRecordSet,

    -- * ResourceRecordSetsListResponse
    ResourceRecordSetsListResponse (..),
    newResourceRecordSetsListResponse,

    -- * ResponseHeader
    ResponseHeader (..),
    newResponseHeader,

    -- * ResponsePoliciesListResponse
    ResponsePoliciesListResponse (..),
    newResponsePoliciesListResponse,

    -- * ResponsePoliciesPatchResponse
    ResponsePoliciesPatchResponse (..),
    newResponsePoliciesPatchResponse,

    -- * ResponsePoliciesUpdateResponse
    ResponsePoliciesUpdateResponse (..),
    newResponsePoliciesUpdateResponse,

    -- * ResponsePolicy
    ResponsePolicy (..),
    newResponsePolicy,

    -- * ResponsePolicyGKECluster
    ResponsePolicyGKECluster (..),
    newResponsePolicyGKECluster,

    -- * ResponsePolicyNetwork
    ResponsePolicyNetwork (..),
    newResponsePolicyNetwork,

    -- * ResponsePolicyRule
    ResponsePolicyRule (..),
    newResponsePolicyRule,

    -- * ResponsePolicyRuleLocalData
    ResponsePolicyRuleLocalData (..),
    newResponsePolicyRuleLocalData,

    -- * ResponsePolicyRulesListResponse
    ResponsePolicyRulesListResponse (..),
    newResponsePolicyRulesListResponse,

    -- * ResponsePolicyRulesPatchResponse
    ResponsePolicyRulesPatchResponse (..),
    newResponsePolicyRulesPatchResponse,

    -- * ResponsePolicyRulesUpdateResponse
    ResponsePolicyRulesUpdateResponse (..),
    newResponsePolicyRulesUpdateResponse,
  )
where

import Gogol.DNS.Internal.Sum
import qualified Gogol.Prelude as Core

-- | A Change represents a set of ResourceRecordSet additions and deletions applied atomically to a ManagedZone. ResourceRecordSets within a ManagedZone are modified by creating a new Change element in the Changes collection. In turn the Changes collection also records the past modifications to the ResourceRecordSets in a ManagedZone. The current state of the ManagedZone is the sum effect of applying all Change elements in the Changes collection in sequence.
--
-- /See:/ 'newChange' smart constructor.
data Change = Change
  { -- | Which ResourceRecordSets to add?
    additions :: (Core.Maybe [ResourceRecordSet]),
    -- | Which ResourceRecordSets to remove? Must match existing data exactly.
    deletions :: (Core.Maybe [ResourceRecordSet]),
    -- | Unique identifier for the resource; defined by the server (output only).
    id :: (Core.Maybe Core.Text),
    -- | If the DNS queries for the zone will be served.
    isServing :: (Core.Maybe Core.Bool),
    -- |
    kind :: Core.Text,
    -- | The time that this operation was started by the server (output only). This is in RFC3339 text format.
    startTime :: (Core.Maybe Core.Text),
    -- | Status of the operation (output only). A status of \"done\" means that the request to update the authoritative servers has been sent, but the servers might not be updated yet.
    status :: (Core.Maybe Change_Status)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Change' with the minimum fields required to make a request.
newChange ::
  Change
newChange =
  Change
    { additions = Core.Nothing,
      deletions = Core.Nothing,
      id = Core.Nothing,
      isServing = Core.Nothing,
      kind = "dns#change",
      startTime = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON Change where
  parseJSON =
    Core.withObject
      "Change"
      ( \o ->
          Change
            Core.<$> (o Core..:? "additions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "deletions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "isServing")
            Core.<*> (o Core..:? "kind" Core..!= "dns#change")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON Change where
  toJSON Change {..} =
    Core.object
      ( Core.catMaybes
          [ ("additions" Core..=) Core.<$> additions,
            ("deletions" Core..=) Core.<$> deletions,
            ("id" Core..=) Core.<$> id,
            ("isServing" Core..=) Core.<$> isServing,
            Core.Just ("kind" Core..= kind),
            ("startTime" Core..=) Core.<$> startTime,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | The response to a request to enumerate Changes to a ResourceRecordSets collection.
--
-- /See:/ 'newChangesListResponse' smart constructor.
data ChangesListResponse = ChangesListResponse
  { -- | The requested changes.
    changes :: (Core.Maybe [Change]),
    -- |
    header :: (Core.Maybe ResponseHeader),
    -- | Type of resource.
    kind :: Core.Text,
    -- | The presence of this field indicates that there exist more results following your last page of results in pagination order. To fetch them, make another list request using this value as your pagination token. This lets you retrieve the complete contents of even very large collections one page at a time. However, if the contents of the collection change between the first and last paginated list request, the set of all elements returned are an inconsistent view of the collection. You cannot retrieve a \"snapshot\" of collections larger than the maximum page size.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChangesListResponse' with the minimum fields required to make a request.
newChangesListResponse ::
  ChangesListResponse
newChangesListResponse =
  ChangesListResponse
    { changes = Core.Nothing,
      header = Core.Nothing,
      kind = "dns#changesListResponse",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ChangesListResponse where
  parseJSON =
    Core.withObject
      "ChangesListResponse"
      ( \o ->
          ChangesListResponse
            Core.<$> (o Core..:? "changes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "header")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "dns#changesListResponse"
                     )
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ChangesListResponse where
  toJSON ChangesListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("changes" Core..=) Core.<$> changes,
            ("header" Core..=) Core.<$> header,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | A DNSSEC key pair.
--
-- /See:/ 'newDnsKey' smart constructor.
data DnsKey = DnsKey
  { -- | String mnemonic specifying the DNSSEC algorithm of this key. Immutable after creation time.
    algorithm :: (Core.Maybe DnsKey_Algorithm),
    -- | The time that this resource was created in the control plane. This is in RFC3339 text format. Output only.
    creationTime :: (Core.Maybe Core.Text),
    -- | A mutable string of at most 1024 characters associated with this resource for the user\'s convenience. Has no effect on the resource\'s function.
    description :: (Core.Maybe Core.Text),
    -- | Cryptographic hashes of the DNSKEY resource record associated with this DnsKey. These digests are needed to construct a DS record that points at this DNS key. Output only.
    digests :: (Core.Maybe [DnsKeyDigest]),
    -- | Unique identifier for the resource; defined by the server (output only).
    id :: (Core.Maybe Core.Text),
    -- | Active keys are used to sign subsequent changes to the ManagedZone. Inactive keys are still present as DNSKEY Resource Records for the use of resolvers validating existing signatures.
    isActive :: (Core.Maybe Core.Bool),
    -- | Length of the key in bits. Specified at creation time, and then immutable.
    keyLength :: (Core.Maybe Core.Word32),
    -- | The key tag is a non-cryptographic hash of the a DNSKEY resource record associated with this DnsKey. The key tag can be used to identify a DNSKEY more quickly (but it is not a unique identifier). In particular, the key tag is used in a parent zone\'s DS record to point at the DNSKEY in this child ManagedZone. The key tag is a number in the range [0, 65535] and the algorithm to calculate it is specified in RFC4034 Appendix B. Output only.
    keyTag :: (Core.Maybe Core.Int32),
    -- |
    kind :: Core.Text,
    -- | Base64 encoded public half of this key. Output only.
    publicKey :: (Core.Maybe Core.Text),
    -- | One of \"KEY/SIGNING\" or \"ZONE/SIGNING\". Keys of type KEY_SIGNING have the Secure Entry Point flag set and, when active, are used to sign only resource record sets of type DNSKEY. Otherwise, the Secure Entry Point flag is cleared, and this key is used to sign only resource record sets of other types. Immutable after creation time.
    type' :: (Core.Maybe DnsKey_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DnsKey' with the minimum fields required to make a request.
newDnsKey ::
  DnsKey
newDnsKey =
  DnsKey
    { algorithm = Core.Nothing,
      creationTime = Core.Nothing,
      description = Core.Nothing,
      digests = Core.Nothing,
      id = Core.Nothing,
      isActive = Core.Nothing,
      keyLength = Core.Nothing,
      keyTag = Core.Nothing,
      kind = "dns#dnsKey",
      publicKey = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON DnsKey where
  parseJSON =
    Core.withObject
      "DnsKey"
      ( \o ->
          DnsKey
            Core.<$> (o Core..:? "algorithm")
            Core.<*> (o Core..:? "creationTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "digests" Core..!= Core.mempty)
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "isActive")
            Core.<*> (o Core..:? "keyLength")
            Core.<*> (o Core..:? "keyTag")
            Core.<*> (o Core..:? "kind" Core..!= "dns#dnsKey")
            Core.<*> (o Core..:? "publicKey")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON DnsKey where
  toJSON DnsKey {..} =
    Core.object
      ( Core.catMaybes
          [ ("algorithm" Core..=) Core.<$> algorithm,
            ("creationTime" Core..=) Core.<$> creationTime,
            ("description" Core..=) Core.<$> description,
            ("digests" Core..=) Core.<$> digests,
            ("id" Core..=) Core.<$> id,
            ("isActive" Core..=) Core.<$> isActive,
            ("keyLength" Core..=) Core.<$> keyLength,
            ("keyTag" Core..=) Core.<$> keyTag,
            Core.Just ("kind" Core..= kind),
            ("publicKey" Core..=) Core.<$> publicKey,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newDnsKeyDigest' smart constructor.
data DnsKeyDigest = DnsKeyDigest
  { -- | The base-16 encoded bytes of this digest. Suitable for use in a DS resource record.
    digest :: (Core.Maybe Core.Text),
    -- | Specifies the algorithm used to calculate this digest.
    type' :: (Core.Maybe DnsKeyDigest_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DnsKeyDigest' with the minimum fields required to make a request.
newDnsKeyDigest ::
  DnsKeyDigest
newDnsKeyDigest = DnsKeyDigest {digest = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON DnsKeyDigest where
  parseJSON =
    Core.withObject
      "DnsKeyDigest"
      ( \o ->
          DnsKeyDigest
            Core.<$> (o Core..:? "digest") Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON DnsKeyDigest where
  toJSON DnsKeyDigest {..} =
    Core.object
      ( Core.catMaybes
          [ ("digest" Core..=) Core.<$> digest,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Parameters for DnsKey key generation. Used for generating initial keys for a new ManagedZone and as default when adding a new DnsKey.
--
-- /See:/ 'newDnsKeySpec' smart constructor.
data DnsKeySpec = DnsKeySpec
  { -- | String mnemonic specifying the DNSSEC algorithm of this key.
    algorithm :: (Core.Maybe DnsKeySpec_Algorithm),
    -- | Length of the keys in bits.
    keyLength :: (Core.Maybe Core.Word32),
    -- | Specifies whether this is a key signing key (KSK) or a zone signing key (ZSK). Key signing keys have the Secure Entry Point flag set and, when active, are only used to sign resource record sets of type DNSKEY. Zone signing keys do not have the Secure Entry Point flag set and are used to sign all other types of resource record sets.
    keyType :: (Core.Maybe DnsKeySpec_KeyType),
    -- |
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DnsKeySpec' with the minimum fields required to make a request.
newDnsKeySpec ::
  DnsKeySpec
newDnsKeySpec =
  DnsKeySpec
    { algorithm = Core.Nothing,
      keyLength = Core.Nothing,
      keyType = Core.Nothing,
      kind = "dns#dnsKeySpec"
    }

instance Core.FromJSON DnsKeySpec where
  parseJSON =
    Core.withObject
      "DnsKeySpec"
      ( \o ->
          DnsKeySpec
            Core.<$> (o Core..:? "algorithm")
            Core.<*> (o Core..:? "keyLength")
            Core.<*> (o Core..:? "keyType")
            Core.<*> (o Core..:? "kind" Core..!= "dns#dnsKeySpec")
      )

instance Core.ToJSON DnsKeySpec where
  toJSON DnsKeySpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("algorithm" Core..=) Core.<$> algorithm,
            ("keyLength" Core..=) Core.<$> keyLength,
            ("keyType" Core..=) Core.<$> keyType,
            Core.Just ("kind" Core..= kind)
          ]
      )

-- | The response to a request to enumerate DnsKeys in a ManagedZone.
--
-- /See:/ 'newDnsKeysListResponse' smart constructor.
data DnsKeysListResponse = DnsKeysListResponse
  { -- | The requested resources.
    dnsKeys :: (Core.Maybe [DnsKey]),
    -- |
    header :: (Core.Maybe ResponseHeader),
    -- | Type of resource.
    kind :: Core.Text,
    -- | The presence of this field indicates that there exist more results following your last page of results in pagination order. To fetch them, make another list request using this value as your pagination token. In this way you can retrieve the complete contents of even very large collections one page at a time. However, if the contents of the collection change between the first and last paginated list request, the set of all elements returned are an inconsistent view of the collection. There is no way to retrieve a \"snapshot\" of collections larger than the maximum page size.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DnsKeysListResponse' with the minimum fields required to make a request.
newDnsKeysListResponse ::
  DnsKeysListResponse
newDnsKeysListResponse =
  DnsKeysListResponse
    { dnsKeys = Core.Nothing,
      header = Core.Nothing,
      kind = "dns#dnsKeysListResponse",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON DnsKeysListResponse where
  parseJSON =
    Core.withObject
      "DnsKeysListResponse"
      ( \o ->
          DnsKeysListResponse
            Core.<$> (o Core..:? "dnsKeys" Core..!= Core.mempty)
            Core.<*> (o Core..:? "header")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "dns#dnsKeysListResponse"
                     )
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON DnsKeysListResponse where
  toJSON DnsKeysListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("dnsKeys" Core..=) Core.<$> dnsKeys,
            ("header" Core..=) Core.<$> header,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | A zone is a subtree of the DNS namespace under one administrative responsibility. A ManagedZone is a resource that represents a DNS zone hosted by the Cloud DNS service.
--
-- /See:/ 'newManagedZone' smart constructor.
data ManagedZone = ManagedZone
  { -- |
    cloudLoggingConfig :: (Core.Maybe ManagedZoneCloudLoggingConfig),
    -- | The time that this resource was created on the server. This is in RFC3339 text format. Output only.
    creationTime :: (Core.Maybe Core.Text),
    -- | A mutable string of at most 1024 characters associated with this resource for the user\'s convenience. Has no effect on the managed zone\'s function.
    description :: (Core.Maybe Core.Text),
    -- | The DNS name of this managed zone, for instance \"example.com.\".
    dnsName :: (Core.Maybe Core.Text),
    -- | DNSSEC configuration.
    dnssecConfig :: (Core.Maybe ManagedZoneDnsSecConfig),
    -- | The presence for this field indicates that outbound forwarding is enabled for this zone. The value of this field contains the set of destinations to forward to.
    forwardingConfig :: (Core.Maybe ManagedZoneForwardingConfig),
    -- | Unique identifier for the resource; defined by the server (output only)
    id :: (Core.Maybe Core.Word64),
    -- |
    kind :: Core.Text,
    -- | User labels.
    labels :: (Core.Maybe ManagedZone_Labels),
    -- | User assigned name for this resource. Must be unique within the project. The name must be 1-63 characters long, must begin with a letter, end with a letter or digit, and only contain lowercase letters, digits or dashes.
    name :: (Core.Maybe Core.Text),
    -- | Optionally specifies the NameServerSet for this ManagedZone. A NameServerSet is a set of DNS name servers that all host the same ManagedZones. Most users leave this field unset. If you need to use this field, contact your account team.
    nameServerSet :: (Core.Maybe Core.Text),
    -- | Delegate your managed_zone to these virtual name servers; defined by the server (output only)
    nameServers :: (Core.Maybe [Core.Text]),
    -- | The presence of this field indicates that DNS Peering is enabled for this zone. The value of this field contains the network to peer with.
    peeringConfig :: (Core.Maybe ManagedZonePeeringConfig),
    -- | For privately visible zones, the set of Virtual Private Cloud resources that the zone is visible from.
    privateVisibilityConfig :: (Core.Maybe ManagedZonePrivateVisibilityConfig),
    -- | The presence of this field indicates that this is a managed reverse lookup zone and Cloud DNS resolves reverse lookup queries using automatically configured records for VPC resources. This only applies to networks listed under private/visibility/config.
    reverseLookupConfig :: (Core.Maybe ManagedZoneReverseLookupConfig),
    -- | This field links to the associated service directory namespace. Do not set this field for public zones or forwarding zones.
    serviceDirectoryConfig :: (Core.Maybe ManagedZoneServiceDirectoryConfig),
    -- | The zone\'s visibility: public zones are exposed to the Internet, while private zones are visible only to Virtual Private Cloud resources.
    visibility :: (Core.Maybe ManagedZone_Visibility)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedZone' with the minimum fields required to make a request.
newManagedZone ::
  ManagedZone
newManagedZone =
  ManagedZone
    { cloudLoggingConfig = Core.Nothing,
      creationTime = Core.Nothing,
      description = Core.Nothing,
      dnsName = Core.Nothing,
      dnssecConfig = Core.Nothing,
      forwardingConfig = Core.Nothing,
      id = Core.Nothing,
      kind = "dns#managedZone",
      labels = Core.Nothing,
      name = Core.Nothing,
      nameServerSet = Core.Nothing,
      nameServers = Core.Nothing,
      peeringConfig = Core.Nothing,
      privateVisibilityConfig = Core.Nothing,
      reverseLookupConfig = Core.Nothing,
      serviceDirectoryConfig = Core.Nothing,
      visibility = Core.Nothing
    }

instance Core.FromJSON ManagedZone where
  parseJSON =
    Core.withObject
      "ManagedZone"
      ( \o ->
          ManagedZone
            Core.<$> (o Core..:? "cloudLoggingConfig")
            Core.<*> (o Core..:? "creationTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "dnsName")
            Core.<*> (o Core..:? "dnssecConfig")
            Core.<*> (o Core..:? "forwardingConfig")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "dns#managedZone")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "nameServerSet")
            Core.<*> (o Core..:? "nameServers" Core..!= Core.mempty)
            Core.<*> (o Core..:? "peeringConfig")
            Core.<*> (o Core..:? "privateVisibilityConfig")
            Core.<*> (o Core..:? "reverseLookupConfig")
            Core.<*> (o Core..:? "serviceDirectoryConfig")
            Core.<*> (o Core..:? "visibility")
      )

instance Core.ToJSON ManagedZone where
  toJSON ManagedZone {..} =
    Core.object
      ( Core.catMaybes
          [ ("cloudLoggingConfig" Core..=)
              Core.<$> cloudLoggingConfig,
            ("creationTime" Core..=) Core.<$> creationTime,
            ("description" Core..=) Core.<$> description,
            ("dnsName" Core..=) Core.<$> dnsName,
            ("dnssecConfig" Core..=) Core.<$> dnssecConfig,
            ("forwardingConfig" Core..=)
              Core.<$> forwardingConfig,
            ("id" Core..=) Core.. Core.AsText Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name,
            ("nameServerSet" Core..=) Core.<$> nameServerSet,
            ("nameServers" Core..=) Core.<$> nameServers,
            ("peeringConfig" Core..=) Core.<$> peeringConfig,
            ("privateVisibilityConfig" Core..=)
              Core.<$> privateVisibilityConfig,
            ("reverseLookupConfig" Core..=)
              Core.<$> reverseLookupConfig,
            ("serviceDirectoryConfig" Core..=)
              Core.<$> serviceDirectoryConfig,
            ("visibility" Core..=) Core.<$> visibility
          ]
      )

-- | User labels.
--
-- /See:/ 'newManagedZone_Labels' smart constructor.
newtype ManagedZone_Labels = ManagedZone_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedZone_Labels' with the minimum fields required to make a request.
newManagedZone_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  ManagedZone_Labels
newManagedZone_Labels additional = ManagedZone_Labels {additional = additional}

instance Core.FromJSON ManagedZone_Labels where
  parseJSON =
    Core.withObject
      "ManagedZone_Labels"
      ( \o ->
          ManagedZone_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ManagedZone_Labels where
  toJSON ManagedZone_Labels {..} =
    Core.toJSON additional

-- | Cloud Logging configurations for publicly visible zones.
--
-- /See:/ 'newManagedZoneCloudLoggingConfig' smart constructor.
data ManagedZoneCloudLoggingConfig = ManagedZoneCloudLoggingConfig
  { -- | If set, enable query logging for this ManagedZone. False by default, making logging opt-in.
    enableLogging :: (Core.Maybe Core.Bool),
    -- |
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedZoneCloudLoggingConfig' with the minimum fields required to make a request.
newManagedZoneCloudLoggingConfig ::
  ManagedZoneCloudLoggingConfig
newManagedZoneCloudLoggingConfig =
  ManagedZoneCloudLoggingConfig
    { enableLogging = Core.Nothing,
      kind = "dns#managedZoneCloudLoggingConfig"
    }

instance Core.FromJSON ManagedZoneCloudLoggingConfig where
  parseJSON =
    Core.withObject
      "ManagedZoneCloudLoggingConfig"
      ( \o ->
          ManagedZoneCloudLoggingConfig
            Core.<$> (o Core..:? "enableLogging")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "dns#managedZoneCloudLoggingConfig"
                     )
      )

instance Core.ToJSON ManagedZoneCloudLoggingConfig where
  toJSON ManagedZoneCloudLoggingConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("enableLogging" Core..=) Core.<$> enableLogging,
            Core.Just ("kind" Core..= kind)
          ]
      )

--
-- /See:/ 'newManagedZoneDnsSecConfig' smart constructor.
data ManagedZoneDnsSecConfig = ManagedZoneDnsSecConfig
  { -- | Specifies parameters for generating initial DnsKeys for this ManagedZone. Can only be changed while the state is OFF.
    defaultKeySpecs :: (Core.Maybe [DnsKeySpec]),
    -- |
    kind :: Core.Text,
    -- | Specifies the mechanism for authenticated denial-of-existence responses. Can only be changed while the state is OFF.
    nonExistence :: (Core.Maybe ManagedZoneDnsSecConfig_NonExistence),
    -- | Specifies whether DNSSEC is enabled, and what mode it is in.
    state :: (Core.Maybe ManagedZoneDnsSecConfig_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedZoneDnsSecConfig' with the minimum fields required to make a request.
newManagedZoneDnsSecConfig ::
  ManagedZoneDnsSecConfig
newManagedZoneDnsSecConfig =
  ManagedZoneDnsSecConfig
    { defaultKeySpecs = Core.Nothing,
      kind = "dns#managedZoneDnsSecConfig",
      nonExistence = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON ManagedZoneDnsSecConfig where
  parseJSON =
    Core.withObject
      "ManagedZoneDnsSecConfig"
      ( \o ->
          ManagedZoneDnsSecConfig
            Core.<$> (o Core..:? "defaultKeySpecs" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "dns#managedZoneDnsSecConfig"
                     )
            Core.<*> (o Core..:? "nonExistence")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON ManagedZoneDnsSecConfig where
  toJSON ManagedZoneDnsSecConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("defaultKeySpecs" Core..=)
              Core.<$> defaultKeySpecs,
            Core.Just ("kind" Core..= kind),
            ("nonExistence" Core..=) Core.<$> nonExistence,
            ("state" Core..=) Core.<$> state
          ]
      )

--
-- /See:/ 'newManagedZoneForwardingConfig' smart constructor.
data ManagedZoneForwardingConfig = ManagedZoneForwardingConfig
  { -- |
    kind :: Core.Text,
    -- | List of target name servers to forward to. Cloud DNS selects the best available name server if more than one target is given.
    targetNameServers :: (Core.Maybe [ManagedZoneForwardingConfigNameServerTarget])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedZoneForwardingConfig' with the minimum fields required to make a request.
newManagedZoneForwardingConfig ::
  ManagedZoneForwardingConfig
newManagedZoneForwardingConfig =
  ManagedZoneForwardingConfig
    { kind = "dns#managedZoneForwardingConfig",
      targetNameServers = Core.Nothing
    }

instance Core.FromJSON ManagedZoneForwardingConfig where
  parseJSON =
    Core.withObject
      "ManagedZoneForwardingConfig"
      ( \o ->
          ManagedZoneForwardingConfig
            Core.<$> ( o Core..:? "kind"
                         Core..!= "dns#managedZoneForwardingConfig"
                     )
            Core.<*> ( o Core..:? "targetNameServers"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON ManagedZoneForwardingConfig where
  toJSON ManagedZoneForwardingConfig {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("kind" Core..= kind),
            ("targetNameServers" Core..=)
              Core.<$> targetNameServers
          ]
      )

--
-- /See:/ 'newManagedZoneForwardingConfigNameServerTarget' smart constructor.
data ManagedZoneForwardingConfigNameServerTarget = ManagedZoneForwardingConfigNameServerTarget
  { -- | Forwarding path for this NameServerTarget. If unset or set to DEFAULT, Cloud DNS makes forwarding decisions based on IP address ranges; that is, RFC1918 addresses go to the VPC network, non-RFC1918 addresses go to the internet. When set to PRIVATE, Cloud DNS always sends queries through the VPC network for this target.
    forwardingPath ::
      ( Core.Maybe
          ManagedZoneForwardingConfigNameServerTarget_ForwardingPath
      ),
    -- | IPv4 address of a target name server.
    ipv4Address :: (Core.Maybe Core.Text),
    -- |
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedZoneForwardingConfigNameServerTarget' with the minimum fields required to make a request.
newManagedZoneForwardingConfigNameServerTarget ::
  ManagedZoneForwardingConfigNameServerTarget
newManagedZoneForwardingConfigNameServerTarget =
  ManagedZoneForwardingConfigNameServerTarget
    { forwardingPath = Core.Nothing,
      ipv4Address = Core.Nothing,
      kind = "dns#managedZoneForwardingConfigNameServerTarget"
    }

instance
  Core.FromJSON
    ManagedZoneForwardingConfigNameServerTarget
  where
  parseJSON =
    Core.withObject
      "ManagedZoneForwardingConfigNameServerTarget"
      ( \o ->
          ManagedZoneForwardingConfigNameServerTarget
            Core.<$> (o Core..:? "forwardingPath")
            Core.<*> (o Core..:? "ipv4Address")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "dns#managedZoneForwardingConfigNameServerTarget"
                     )
      )

instance
  Core.ToJSON
    ManagedZoneForwardingConfigNameServerTarget
  where
  toJSON
    ManagedZoneForwardingConfigNameServerTarget {..} =
      Core.object
        ( Core.catMaybes
            [ ("forwardingPath" Core..=) Core.<$> forwardingPath,
              ("ipv4Address" Core..=) Core.<$> ipv4Address,
              Core.Just ("kind" Core..= kind)
            ]
        )

--
-- /See:/ 'newManagedZoneOperationsListResponse' smart constructor.
data ManagedZoneOperationsListResponse = ManagedZoneOperationsListResponse
  { -- |
    header :: (Core.Maybe ResponseHeader),
    -- |
    kind :: Core.Text,
    -- | The presence of this field indicates that there exist more results following your last page of results in pagination order. To fetch them, make another list request using this value as your page token. This lets you retrieve the complete contents of even very large collections one page at a time. However, if the contents of the collection change between the first and last paginated list request, the set of all elements returned are an inconsistent view of the collection. You cannot retrieve a consistent snapshot of a collection larger than the maximum page size.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The operation resources.
    operations :: (Core.Maybe [Operation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedZoneOperationsListResponse' with the minimum fields required to make a request.
newManagedZoneOperationsListResponse ::
  ManagedZoneOperationsListResponse
newManagedZoneOperationsListResponse =
  ManagedZoneOperationsListResponse
    { header = Core.Nothing,
      kind = "dns#managedZoneOperationsListResponse",
      nextPageToken = Core.Nothing,
      operations = Core.Nothing
    }

instance
  Core.FromJSON
    ManagedZoneOperationsListResponse
  where
  parseJSON =
    Core.withObject
      "ManagedZoneOperationsListResponse"
      ( \o ->
          ManagedZoneOperationsListResponse
            Core.<$> (o Core..:? "header")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "dns#managedZoneOperationsListResponse"
                     )
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "operations" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    ManagedZoneOperationsListResponse
  where
  toJSON ManagedZoneOperationsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("header" Core..=) Core.<$> header,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("operations" Core..=) Core.<$> operations
          ]
      )

--
-- /See:/ 'newManagedZonePeeringConfig' smart constructor.
data ManagedZonePeeringConfig = ManagedZonePeeringConfig
  { -- |
    kind :: Core.Text,
    -- | The network with which to peer.
    targetNetwork :: (Core.Maybe ManagedZonePeeringConfigTargetNetwork)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedZonePeeringConfig' with the minimum fields required to make a request.
newManagedZonePeeringConfig ::
  ManagedZonePeeringConfig
newManagedZonePeeringConfig =
  ManagedZonePeeringConfig
    { kind = "dns#managedZonePeeringConfig",
      targetNetwork = Core.Nothing
    }

instance Core.FromJSON ManagedZonePeeringConfig where
  parseJSON =
    Core.withObject
      "ManagedZonePeeringConfig"
      ( \o ->
          ManagedZonePeeringConfig
            Core.<$> ( o Core..:? "kind"
                         Core..!= "dns#managedZonePeeringConfig"
                     )
            Core.<*> (o Core..:? "targetNetwork")
      )

instance Core.ToJSON ManagedZonePeeringConfig where
  toJSON ManagedZonePeeringConfig {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("kind" Core..= kind),
            ("targetNetwork" Core..=) Core.<$> targetNetwork
          ]
      )

--
-- /See:/ 'newManagedZonePeeringConfigTargetNetwork' smart constructor.
data ManagedZonePeeringConfigTargetNetwork = ManagedZonePeeringConfigTargetNetwork
  { -- | The time at which the zone was deactivated, in RFC 3339 date-time format. An empty string indicates that the peering connection is active. The producer network can deactivate a zone. The zone is automatically deactivated if the producer network that the zone targeted is deleted. Output only.
    deactivateTime :: (Core.Maybe Core.Text),
    -- |
    kind :: Core.Text,
    -- | The fully qualified URL of the VPC network to forward queries to. This should be formatted like https:\/\/www.googleapis.com\/compute\/v1\/projects\/{project}\/global\/networks\/{network}
    networkUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedZonePeeringConfigTargetNetwork' with the minimum fields required to make a request.
newManagedZonePeeringConfigTargetNetwork ::
  ManagedZonePeeringConfigTargetNetwork
newManagedZonePeeringConfigTargetNetwork =
  ManagedZonePeeringConfigTargetNetwork
    { deactivateTime = Core.Nothing,
      kind = "dns#managedZonePeeringConfigTargetNetwork",
      networkUrl = Core.Nothing
    }

instance
  Core.FromJSON
    ManagedZonePeeringConfigTargetNetwork
  where
  parseJSON =
    Core.withObject
      "ManagedZonePeeringConfigTargetNetwork"
      ( \o ->
          ManagedZonePeeringConfigTargetNetwork
            Core.<$> (o Core..:? "deactivateTime")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "dns#managedZonePeeringConfigTargetNetwork"
                     )
            Core.<*> (o Core..:? "networkUrl")
      )

instance
  Core.ToJSON
    ManagedZonePeeringConfigTargetNetwork
  where
  toJSON ManagedZonePeeringConfigTargetNetwork {..} =
    Core.object
      ( Core.catMaybes
          [ ("deactivateTime" Core..=) Core.<$> deactivateTime,
            Core.Just ("kind" Core..= kind),
            ("networkUrl" Core..=) Core.<$> networkUrl
          ]
      )

--
-- /See:/ 'newManagedZonePrivateVisibilityConfig' smart constructor.
data ManagedZonePrivateVisibilityConfig = ManagedZonePrivateVisibilityConfig
  { -- | The list of Google Kubernetes Engine clusters that can see this zone.
    gkeClusters :: (Core.Maybe [ManagedZonePrivateVisibilityConfigGKECluster]),
    -- |
    kind :: Core.Text,
    -- | The list of VPC networks that can see this zone.
    networks :: (Core.Maybe [ManagedZonePrivateVisibilityConfigNetwork])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedZonePrivateVisibilityConfig' with the minimum fields required to make a request.
newManagedZonePrivateVisibilityConfig ::
  ManagedZonePrivateVisibilityConfig
newManagedZonePrivateVisibilityConfig =
  ManagedZonePrivateVisibilityConfig
    { gkeClusters = Core.Nothing,
      kind = "dns#managedZonePrivateVisibilityConfig",
      networks = Core.Nothing
    }

instance
  Core.FromJSON
    ManagedZonePrivateVisibilityConfig
  where
  parseJSON =
    Core.withObject
      "ManagedZonePrivateVisibilityConfig"
      ( \o ->
          ManagedZonePrivateVisibilityConfig
            Core.<$> (o Core..:? "gkeClusters" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "dns#managedZonePrivateVisibilityConfig"
                     )
            Core.<*> (o Core..:? "networks" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    ManagedZonePrivateVisibilityConfig
  where
  toJSON ManagedZonePrivateVisibilityConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("gkeClusters" Core..=) Core.<$> gkeClusters,
            Core.Just ("kind" Core..= kind),
            ("networks" Core..=) Core.<$> networks
          ]
      )

--
-- /See:/ 'newManagedZonePrivateVisibilityConfigGKECluster' smart constructor.
data ManagedZonePrivateVisibilityConfigGKECluster = ManagedZonePrivateVisibilityConfigGKECluster
  { -- | The resource name of the cluster to bind this ManagedZone to. This should be specified in the format like: projects\//\/locations\//\/clusters\/*. This is referenced from GKE projects.locations.clusters.get API: https:\/\/cloud.google.com\/kubernetes-engine\/docs\/reference\/rest\/v1\/projects.locations.clusters\/get
    gkeClusterName :: (Core.Maybe Core.Text),
    -- |
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedZonePrivateVisibilityConfigGKECluster' with the minimum fields required to make a request.
newManagedZonePrivateVisibilityConfigGKECluster ::
  ManagedZonePrivateVisibilityConfigGKECluster
newManagedZonePrivateVisibilityConfigGKECluster =
  ManagedZonePrivateVisibilityConfigGKECluster
    { gkeClusterName = Core.Nothing,
      kind = "dns#managedZonePrivateVisibilityConfigGKECluster"
    }

instance
  Core.FromJSON
    ManagedZonePrivateVisibilityConfigGKECluster
  where
  parseJSON =
    Core.withObject
      "ManagedZonePrivateVisibilityConfigGKECluster"
      ( \o ->
          ManagedZonePrivateVisibilityConfigGKECluster
            Core.<$> (o Core..:? "gkeClusterName")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "dns#managedZonePrivateVisibilityConfigGKECluster"
                     )
      )

instance
  Core.ToJSON
    ManagedZonePrivateVisibilityConfigGKECluster
  where
  toJSON
    ManagedZonePrivateVisibilityConfigGKECluster {..} =
      Core.object
        ( Core.catMaybes
            [ ("gkeClusterName" Core..=) Core.<$> gkeClusterName,
              Core.Just ("kind" Core..= kind)
            ]
        )

--
-- /See:/ 'newManagedZonePrivateVisibilityConfigNetwork' smart constructor.
data ManagedZonePrivateVisibilityConfigNetwork = ManagedZonePrivateVisibilityConfigNetwork
  { -- |
    kind :: Core.Text,
    -- | The fully qualified URL of the VPC network to bind to. Format this URL like https:\/\/www.googleapis.com\/compute\/v1\/projects\/{project}\/global\/networks\/{network}
    networkUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedZonePrivateVisibilityConfigNetwork' with the minimum fields required to make a request.
newManagedZonePrivateVisibilityConfigNetwork ::
  ManagedZonePrivateVisibilityConfigNetwork
newManagedZonePrivateVisibilityConfigNetwork =
  ManagedZonePrivateVisibilityConfigNetwork
    { kind = "dns#managedZonePrivateVisibilityConfigNetwork",
      networkUrl = Core.Nothing
    }

instance
  Core.FromJSON
    ManagedZonePrivateVisibilityConfigNetwork
  where
  parseJSON =
    Core.withObject
      "ManagedZonePrivateVisibilityConfigNetwork"
      ( \o ->
          ManagedZonePrivateVisibilityConfigNetwork
            Core.<$> ( o Core..:? "kind"
                         Core..!= "dns#managedZonePrivateVisibilityConfigNetwork"
                     )
            Core.<*> (o Core..:? "networkUrl")
      )

instance
  Core.ToJSON
    ManagedZonePrivateVisibilityConfigNetwork
  where
  toJSON ManagedZonePrivateVisibilityConfigNetwork {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("kind" Core..= kind),
            ("networkUrl" Core..=) Core.<$> networkUrl
          ]
      )

--
-- /See:/ 'newManagedZoneReverseLookupConfig' smart constructor.
newtype ManagedZoneReverseLookupConfig = ManagedZoneReverseLookupConfig
  { -- |
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedZoneReverseLookupConfig' with the minimum fields required to make a request.
newManagedZoneReverseLookupConfig ::
  ManagedZoneReverseLookupConfig
newManagedZoneReverseLookupConfig =
  ManagedZoneReverseLookupConfig {kind = "dns#managedZoneReverseLookupConfig"}

instance Core.FromJSON ManagedZoneReverseLookupConfig where
  parseJSON =
    Core.withObject
      "ManagedZoneReverseLookupConfig"
      ( \o ->
          ManagedZoneReverseLookupConfig
            Core.<$> ( o Core..:? "kind"
                         Core..!= "dns#managedZoneReverseLookupConfig"
                     )
      )

instance Core.ToJSON ManagedZoneReverseLookupConfig where
  toJSON ManagedZoneReverseLookupConfig {..} =
    Core.object
      (Core.catMaybes [Core.Just ("kind" Core..= kind)])

-- | Contains information about Service Directory-backed zones.
--
-- /See:/ 'newManagedZoneServiceDirectoryConfig' smart constructor.
data ManagedZoneServiceDirectoryConfig = ManagedZoneServiceDirectoryConfig
  { -- |
    kind :: Core.Text,
    -- | Contains information about the namespace associated with the zone.
    namespace :: (Core.Maybe ManagedZoneServiceDirectoryConfigNamespace)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedZoneServiceDirectoryConfig' with the minimum fields required to make a request.
newManagedZoneServiceDirectoryConfig ::
  ManagedZoneServiceDirectoryConfig
newManagedZoneServiceDirectoryConfig =
  ManagedZoneServiceDirectoryConfig
    { kind = "dns#managedZoneServiceDirectoryConfig",
      namespace = Core.Nothing
    }

instance
  Core.FromJSON
    ManagedZoneServiceDirectoryConfig
  where
  parseJSON =
    Core.withObject
      "ManagedZoneServiceDirectoryConfig"
      ( \o ->
          ManagedZoneServiceDirectoryConfig
            Core.<$> ( o Core..:? "kind"
                         Core..!= "dns#managedZoneServiceDirectoryConfig"
                     )
            Core.<*> (o Core..:? "namespace")
      )

instance
  Core.ToJSON
    ManagedZoneServiceDirectoryConfig
  where
  toJSON ManagedZoneServiceDirectoryConfig {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("kind" Core..= kind),
            ("namespace" Core..=) Core.<$> namespace
          ]
      )

--
-- /See:/ 'newManagedZoneServiceDirectoryConfigNamespace' smart constructor.
data ManagedZoneServiceDirectoryConfigNamespace = ManagedZoneServiceDirectoryConfigNamespace
  { -- | The time that the namespace backing this zone was deleted; an empty string if it still exists. This is in RFC3339 text format. Output only.
    deletionTime :: (Core.Maybe Core.Text),
    -- |
    kind :: Core.Text,
    -- | The fully qualified URL of the namespace associated with the zone. Format must be https:\/\/servicedirectory.googleapis.com\/v1\/projects\/{project}\/locations\/{location}\/namespaces\/{namespace}
    namespaceUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedZoneServiceDirectoryConfigNamespace' with the minimum fields required to make a request.
newManagedZoneServiceDirectoryConfigNamespace ::
  ManagedZoneServiceDirectoryConfigNamespace
newManagedZoneServiceDirectoryConfigNamespace =
  ManagedZoneServiceDirectoryConfigNamespace
    { deletionTime = Core.Nothing,
      kind = "dns#managedZoneServiceDirectoryConfigNamespace",
      namespaceUrl = Core.Nothing
    }

instance
  Core.FromJSON
    ManagedZoneServiceDirectoryConfigNamespace
  where
  parseJSON =
    Core.withObject
      "ManagedZoneServiceDirectoryConfigNamespace"
      ( \o ->
          ManagedZoneServiceDirectoryConfigNamespace
            Core.<$> (o Core..:? "deletionTime")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "dns#managedZoneServiceDirectoryConfigNamespace"
                     )
            Core.<*> (o Core..:? "namespaceUrl")
      )

instance
  Core.ToJSON
    ManagedZoneServiceDirectoryConfigNamespace
  where
  toJSON ManagedZoneServiceDirectoryConfigNamespace {..} =
    Core.object
      ( Core.catMaybes
          [ ("deletionTime" Core..=) Core.<$> deletionTime,
            Core.Just ("kind" Core..= kind),
            ("namespaceUrl" Core..=) Core.<$> namespaceUrl
          ]
      )

--
-- /See:/ 'newManagedZonesListResponse' smart constructor.
data ManagedZonesListResponse = ManagedZonesListResponse
  { -- |
    header :: (Core.Maybe ResponseHeader),
    -- | Type of resource.
    kind :: Core.Text,
    -- | The managed zone resources.
    managedZones :: (Core.Maybe [ManagedZone]),
    -- | The presence of this field indicates that there exist more results following your last page of results in pagination order. To fetch them, make another list request using this value as your page token. This lets you the complete contents of even very large collections one page at a time. However, if the contents of the collection change between the first and last paginated list request, the set of all elements returned are an inconsistent view of the collection. You cannot retrieve a consistent snapshot of a collection larger than the maximum page size.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedZonesListResponse' with the minimum fields required to make a request.
newManagedZonesListResponse ::
  ManagedZonesListResponse
newManagedZonesListResponse =
  ManagedZonesListResponse
    { header = Core.Nothing,
      kind = "dns#managedZonesListResponse",
      managedZones = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ManagedZonesListResponse where
  parseJSON =
    Core.withObject
      "ManagedZonesListResponse"
      ( \o ->
          ManagedZonesListResponse
            Core.<$> (o Core..:? "header")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "dns#managedZonesListResponse"
                     )
            Core.<*> (o Core..:? "managedZones" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ManagedZonesListResponse where
  toJSON ManagedZonesListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("header" Core..=) Core.<$> header,
            Core.Just ("kind" Core..= kind),
            ("managedZones" Core..=) Core.<$> managedZones,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | An operation represents a successful mutation performed on a Cloud DNS resource. Operations provide: - An audit log of server resource mutations. - A way to recover\/retry API calls in the case where the response is never received by the caller. Use the caller specified client/operation/id.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | Only populated if the operation targeted a DnsKey (output only).
    dnsKeyContext :: (Core.Maybe OperationDnsKeyContext),
    -- | Unique identifier for the resource. This is the client/operation/id if the client specified it when the mutation was initiated, otherwise, it is generated by the server. The name must be 1-63 characters long and match the regular expression [-a-z0-9]? (output only)
    id :: (Core.Maybe Core.Text),
    -- |
    kind :: Core.Text,
    -- | The time that this operation was started by the server. This is in RFC3339 text format (output only).
    startTime :: (Core.Maybe Core.Text),
    -- | Status of the operation. Can be one of the following: \"PENDING\" or \"DONE\" (output only). A status of \"DONE\" means that the request to update the authoritative servers has been sent, but the servers might not be updated yet.
    status :: (Core.Maybe Operation_Status),
    -- | Type of the operation. Operations include insert, update, and delete (output only).
    type' :: (Core.Maybe Core.Text),
    -- | User who requested the operation, for example: user\@example.com. cloud-dns-system for operations automatically done by the system. (output only)
    user :: (Core.Maybe Core.Text),
    -- | Only populated if the operation targeted a ManagedZone (output only).
    zoneContext :: (Core.Maybe OperationManagedZoneContext)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation ::
  Operation
newOperation =
  Operation
    { dnsKeyContext = Core.Nothing,
      id = Core.Nothing,
      kind = "dns#operation",
      startTime = Core.Nothing,
      status = Core.Nothing,
      type' = Core.Nothing,
      user = Core.Nothing,
      zoneContext = Core.Nothing
    }

instance Core.FromJSON Operation where
  parseJSON =
    Core.withObject
      "Operation"
      ( \o ->
          Operation
            Core.<$> (o Core..:? "dnsKeyContext")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "dns#operation")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "user")
            Core.<*> (o Core..:? "zoneContext")
      )

instance Core.ToJSON Operation where
  toJSON Operation {..} =
    Core.object
      ( Core.catMaybes
          [ ("dnsKeyContext" Core..=) Core.<$> dnsKeyContext,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("startTime" Core..=) Core.<$> startTime,
            ("status" Core..=) Core.<$> status,
            ("type" Core..=) Core.<$> type',
            ("user" Core..=) Core.<$> user,
            ("zoneContext" Core..=) Core.<$> zoneContext
          ]
      )

--
-- /See:/ 'newOperationDnsKeyContext' smart constructor.
data OperationDnsKeyContext = OperationDnsKeyContext
  { -- | The post-operation DnsKey resource.
    newValue' :: (Core.Maybe DnsKey),
    -- | The pre-operation DnsKey resource.
    oldValue :: (Core.Maybe DnsKey)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationDnsKeyContext' with the minimum fields required to make a request.
newOperationDnsKeyContext ::
  OperationDnsKeyContext
newOperationDnsKeyContext =
  OperationDnsKeyContext {newValue' = Core.Nothing, oldValue = Core.Nothing}

instance Core.FromJSON OperationDnsKeyContext where
  parseJSON =
    Core.withObject
      "OperationDnsKeyContext"
      ( \o ->
          OperationDnsKeyContext
            Core.<$> (o Core..:? "newValue")
            Core.<*> (o Core..:? "oldValue")
      )

instance Core.ToJSON OperationDnsKeyContext where
  toJSON OperationDnsKeyContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("newValue" Core..=) Core.<$> newValue',
            ("oldValue" Core..=) Core.<$> oldValue
          ]
      )

--
-- /See:/ 'newOperationManagedZoneContext' smart constructor.
data OperationManagedZoneContext = OperationManagedZoneContext
  { -- | The post-operation ManagedZone resource.
    newValue' :: (Core.Maybe ManagedZone),
    -- | The pre-operation ManagedZone resource.
    oldValue :: (Core.Maybe ManagedZone)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationManagedZoneContext' with the minimum fields required to make a request.
newOperationManagedZoneContext ::
  OperationManagedZoneContext
newOperationManagedZoneContext =
  OperationManagedZoneContext
    { newValue' = Core.Nothing,
      oldValue = Core.Nothing
    }

instance Core.FromJSON OperationManagedZoneContext where
  parseJSON =
    Core.withObject
      "OperationManagedZoneContext"
      ( \o ->
          OperationManagedZoneContext
            Core.<$> (o Core..:? "newValue")
            Core.<*> (o Core..:? "oldValue")
      )

instance Core.ToJSON OperationManagedZoneContext where
  toJSON OperationManagedZoneContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("newValue" Core..=) Core.<$> newValue',
            ("oldValue" Core..=) Core.<$> oldValue
          ]
      )

--
-- /See:/ 'newPoliciesListResponse' smart constructor.
data PoliciesListResponse = PoliciesListResponse
  { -- |
    header :: (Core.Maybe ResponseHeader),
    -- | Type of resource.
    kind :: Core.Text,
    -- | The presence of this field indicates that there exist more results following your last page of results in pagination order. To fetch them, make another list request using this value as your page token. This lets you the complete contents of even very large collections one page at a time. However, if the contents of the collection change between the first and last paginated list request, the set of all elements returned are an inconsistent view of the collection. You cannot retrieve a consistent snapshot of a collection larger than the maximum page size.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The policy resources.
    policies :: (Core.Maybe [Policy])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PoliciesListResponse' with the minimum fields required to make a request.
newPoliciesListResponse ::
  PoliciesListResponse
newPoliciesListResponse =
  PoliciesListResponse
    { header = Core.Nothing,
      kind = "dns#policiesListResponse",
      nextPageToken = Core.Nothing,
      policies = Core.Nothing
    }

instance Core.FromJSON PoliciesListResponse where
  parseJSON =
    Core.withObject
      "PoliciesListResponse"
      ( \o ->
          PoliciesListResponse
            Core.<$> (o Core..:? "header")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "dns#policiesListResponse"
                     )
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "policies" Core..!= Core.mempty)
      )

instance Core.ToJSON PoliciesListResponse where
  toJSON PoliciesListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("header" Core..=) Core.<$> header,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("policies" Core..=) Core.<$> policies
          ]
      )

--
-- /See:/ 'newPoliciesPatchResponse' smart constructor.
data PoliciesPatchResponse = PoliciesPatchResponse
  { -- |
    header :: (Core.Maybe ResponseHeader),
    -- |
    policy :: (Core.Maybe Policy)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PoliciesPatchResponse' with the minimum fields required to make a request.
newPoliciesPatchResponse ::
  PoliciesPatchResponse
newPoliciesPatchResponse =
  PoliciesPatchResponse {header = Core.Nothing, policy = Core.Nothing}

instance Core.FromJSON PoliciesPatchResponse where
  parseJSON =
    Core.withObject
      "PoliciesPatchResponse"
      ( \o ->
          PoliciesPatchResponse
            Core.<$> (o Core..:? "header") Core.<*> (o Core..:? "policy")
      )

instance Core.ToJSON PoliciesPatchResponse where
  toJSON PoliciesPatchResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("header" Core..=) Core.<$> header,
            ("policy" Core..=) Core.<$> policy
          ]
      )

--
-- /See:/ 'newPoliciesUpdateResponse' smart constructor.
data PoliciesUpdateResponse = PoliciesUpdateResponse
  { -- |
    header :: (Core.Maybe ResponseHeader),
    -- |
    policy :: (Core.Maybe Policy)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PoliciesUpdateResponse' with the minimum fields required to make a request.
newPoliciesUpdateResponse ::
  PoliciesUpdateResponse
newPoliciesUpdateResponse =
  PoliciesUpdateResponse {header = Core.Nothing, policy = Core.Nothing}

instance Core.FromJSON PoliciesUpdateResponse where
  parseJSON =
    Core.withObject
      "PoliciesUpdateResponse"
      ( \o ->
          PoliciesUpdateResponse
            Core.<$> (o Core..:? "header") Core.<*> (o Core..:? "policy")
      )

instance Core.ToJSON PoliciesUpdateResponse where
  toJSON PoliciesUpdateResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("header" Core..=) Core.<$> header,
            ("policy" Core..=) Core.<$> policy
          ]
      )

-- | A policy is a collection of DNS rules applied to one or more Virtual Private Cloud resources.
--
-- /See:/ 'newPolicy' smart constructor.
data Policy = Policy
  { -- | Sets an alternative name server for the associated networks. When specified, all DNS queries are forwarded to a name server that you choose. Names such as .internal are not available when an alternative name server is specified.
    alternativeNameServerConfig :: (Core.Maybe PolicyAlternativeNameServerConfig),
    -- | A mutable string of at most 1024 characters associated with this resource for the user\'s convenience. Has no effect on the policy\'s function.
    description :: (Core.Maybe Core.Text),
    -- | Allows networks bound to this policy to receive DNS queries sent by VMs or applications over VPN connections. When enabled, a virtual IP address is allocated from each of the subnetworks that are bound to this policy.
    enableInboundForwarding :: (Core.Maybe Core.Bool),
    -- | Controls whether logging is enabled for the networks bound to this policy. Defaults to no logging if not set.
    enableLogging :: (Core.Maybe Core.Bool),
    -- | Unique identifier for the resource; defined by the server (output only).
    id :: (Core.Maybe Core.Word64),
    -- |
    kind :: Core.Text,
    -- | User-assigned name for this policy.
    name :: (Core.Maybe Core.Text),
    -- | List of network names specifying networks to which this policy is applied.
    networks :: (Core.Maybe [PolicyNetwork])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
newPolicy ::
  Policy
newPolicy =
  Policy
    { alternativeNameServerConfig = Core.Nothing,
      description = Core.Nothing,
      enableInboundForwarding = Core.Nothing,
      enableLogging = Core.Nothing,
      id = Core.Nothing,
      kind = "dns#policy",
      name = Core.Nothing,
      networks = Core.Nothing
    }

instance Core.FromJSON Policy where
  parseJSON =
    Core.withObject
      "Policy"
      ( \o ->
          Policy
            Core.<$> (o Core..:? "alternativeNameServerConfig")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "enableInboundForwarding")
            Core.<*> (o Core..:? "enableLogging")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "dns#policy")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "networks" Core..!= Core.mempty)
      )

instance Core.ToJSON Policy where
  toJSON Policy {..} =
    Core.object
      ( Core.catMaybes
          [ ("alternativeNameServerConfig" Core..=)
              Core.<$> alternativeNameServerConfig,
            ("description" Core..=) Core.<$> description,
            ("enableInboundForwarding" Core..=)
              Core.<$> enableInboundForwarding,
            ("enableLogging" Core..=) Core.<$> enableLogging,
            ("id" Core..=) Core.. Core.AsText Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name,
            ("networks" Core..=) Core.<$> networks
          ]
      )

--
-- /See:/ 'newPolicyAlternativeNameServerConfig' smart constructor.
data PolicyAlternativeNameServerConfig = PolicyAlternativeNameServerConfig
  { -- |
    kind :: Core.Text,
    -- | Sets an alternative name server for the associated networks. When specified, all DNS queries are forwarded to a name server that you choose. Names such as .internal are not available when an alternative name server is specified.
    targetNameServers :: (Core.Maybe [PolicyAlternativeNameServerConfigTargetNameServer])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PolicyAlternativeNameServerConfig' with the minimum fields required to make a request.
newPolicyAlternativeNameServerConfig ::
  PolicyAlternativeNameServerConfig
newPolicyAlternativeNameServerConfig =
  PolicyAlternativeNameServerConfig
    { kind = "dns#policyAlternativeNameServerConfig",
      targetNameServers = Core.Nothing
    }

instance
  Core.FromJSON
    PolicyAlternativeNameServerConfig
  where
  parseJSON =
    Core.withObject
      "PolicyAlternativeNameServerConfig"
      ( \o ->
          PolicyAlternativeNameServerConfig
            Core.<$> ( o Core..:? "kind"
                         Core..!= "dns#policyAlternativeNameServerConfig"
                     )
            Core.<*> ( o Core..:? "targetNameServers"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    PolicyAlternativeNameServerConfig
  where
  toJSON PolicyAlternativeNameServerConfig {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("kind" Core..= kind),
            ("targetNameServers" Core..=)
              Core.<$> targetNameServers
          ]
      )

--
-- /See:/ 'newPolicyAlternativeNameServerConfigTargetNameServer' smart constructor.
data PolicyAlternativeNameServerConfigTargetNameServer = PolicyAlternativeNameServerConfigTargetNameServer
  { -- | Forwarding path for this TargetNameServer. If unset or set to DEFAULT, Cloud DNS makes forwarding decisions based on address ranges; that is, RFC1918 addresses go to the VPC network, non-RFC1918 addresses go to the internet. When set to PRIVATE, Cloud DNS always sends queries through the VPC network for this target.
    forwardingPath ::
      ( Core.Maybe
          PolicyAlternativeNameServerConfigTargetNameServer_ForwardingPath
      ),
    -- | IPv4 address to forward to.
    ipv4Address :: (Core.Maybe Core.Text),
    -- |
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PolicyAlternativeNameServerConfigTargetNameServer' with the minimum fields required to make a request.
newPolicyAlternativeNameServerConfigTargetNameServer ::
  PolicyAlternativeNameServerConfigTargetNameServer
newPolicyAlternativeNameServerConfigTargetNameServer =
  PolicyAlternativeNameServerConfigTargetNameServer
    { forwardingPath = Core.Nothing,
      ipv4Address = Core.Nothing,
      kind = "dns#policyAlternativeNameServerConfigTargetNameServer"
    }

instance
  Core.FromJSON
    PolicyAlternativeNameServerConfigTargetNameServer
  where
  parseJSON =
    Core.withObject
      "PolicyAlternativeNameServerConfigTargetNameServer"
      ( \o ->
          PolicyAlternativeNameServerConfigTargetNameServer
            Core.<$> (o Core..:? "forwardingPath")
              Core.<*> (o Core..:? "ipv4Address")
              Core.<*> ( o Core..:? "kind"
                           Core..!= "dns#policyAlternativeNameServerConfigTargetNameServer"
                       )
      )

instance
  Core.ToJSON
    PolicyAlternativeNameServerConfigTargetNameServer
  where
  toJSON
    PolicyAlternativeNameServerConfigTargetNameServer {..} =
      Core.object
        ( Core.catMaybes
            [ ("forwardingPath" Core..=) Core.<$> forwardingPath,
              ("ipv4Address" Core..=) Core.<$> ipv4Address,
              Core.Just ("kind" Core..= kind)
            ]
        )

--
-- /See:/ 'newPolicyNetwork' smart constructor.
data PolicyNetwork = PolicyNetwork
  { -- |
    kind :: Core.Text,
    -- | The fully qualified URL of the VPC network to bind to. This should be formatted like https:\/\/www.googleapis.com\/compute\/v1\/projects\/{project}\/global\/networks\/{network}
    networkUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PolicyNetwork' with the minimum fields required to make a request.
newPolicyNetwork ::
  PolicyNetwork
newPolicyNetwork =
  PolicyNetwork {kind = "dns#policyNetwork", networkUrl = Core.Nothing}

instance Core.FromJSON PolicyNetwork where
  parseJSON =
    Core.withObject
      "PolicyNetwork"
      ( \o ->
          PolicyNetwork
            Core.<$> (o Core..:? "kind" Core..!= "dns#policyNetwork")
            Core.<*> (o Core..:? "networkUrl")
      )

instance Core.ToJSON PolicyNetwork where
  toJSON PolicyNetwork {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("kind" Core..= kind),
            ("networkUrl" Core..=) Core.<$> networkUrl
          ]
      )

-- | A project resource. The project is a top level container for resources including Cloud DNS ManagedZones. Projects can be created only in the APIs console. Next tag: 7.
--
-- /See:/ 'newProject' smart constructor.
data Project = Project
  { -- | User assigned unique identifier for the resource (output only).
    id :: (Core.Maybe Core.Text),
    -- |
    kind :: Core.Text,
    -- | Unique numeric identifier for the resource; defined by the server (output only).
    number :: (Core.Maybe Core.Word64),
    -- | Quotas assigned to this project (output only).
    quota :: (Core.Maybe Quota)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Project' with the minimum fields required to make a request.
newProject ::
  Project
newProject =
  Project
    { id = Core.Nothing,
      kind = "dns#project",
      number = Core.Nothing,
      quota = Core.Nothing
    }

instance Core.FromJSON Project where
  parseJSON =
    Core.withObject
      "Project"
      ( \o ->
          Project
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "dns#project")
            Core.<*> (o Core..:? "number")
            Core.<*> (o Core..:? "quota")
      )

instance Core.ToJSON Project where
  toJSON Project {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("number" Core..=) Core.. Core.AsText
              Core.<$> number,
            ("quota" Core..=) Core.<$> quota
          ]
      )

-- | Limits associated with a Project.
--
-- /See:/ 'newQuota' smart constructor.
data Quota = Quota
  { -- | Maximum allowed number of DnsKeys per ManagedZone.
    dnsKeysPerManagedZone :: (Core.Maybe Core.Int32),
    -- | Maximum allowed number of items per routing policy.
    itemsPerRoutingPolicy :: (Core.Maybe Core.Int32),
    -- |
    kind :: Core.Text,
    -- | Maximum allowed number of managed zones in the project.
    managedZones :: (Core.Maybe Core.Int32),
    -- | Maximum allowed number of managed zones which can be attached to a network.
    managedZonesPerNetwork :: (Core.Maybe Core.Int32),
    -- | Maximum allowed number of networks to which a privately scoped zone can be attached.
    networksPerManagedZone :: (Core.Maybe Core.Int32),
    -- | Maximum allowed number of networks per policy.
    networksPerPolicy :: (Core.Maybe Core.Int32),
    -- | Maximum allowed number of consumer peering zones per target network owned by this producer project
    peeringZonesPerTargetNetwork :: (Core.Maybe Core.Int32),
    -- | Maximum allowed number of policies per project.
    policies :: (Core.Maybe Core.Int32),
    -- | Maximum allowed number of ResourceRecords per ResourceRecordSet.
    resourceRecordsPerRrset :: (Core.Maybe Core.Int32),
    -- | Maximum allowed number of ResourceRecordSets to add per ChangesCreateRequest.
    rrsetAdditionsPerChange :: (Core.Maybe Core.Int32),
    -- | Maximum allowed number of ResourceRecordSets to delete per ChangesCreateRequest.
    rrsetDeletionsPerChange :: (Core.Maybe Core.Int32),
    -- | Maximum allowed number of ResourceRecordSets per zone in the project.
    rrsetsPerManagedZone :: (Core.Maybe Core.Int32),
    -- | Maximum allowed number of target name servers per managed forwarding zone.
    targetNameServersPerManagedZone :: (Core.Maybe Core.Int32),
    -- | Maximum allowed number of alternative target name servers per policy.
    targetNameServersPerPolicy :: (Core.Maybe Core.Int32),
    -- | Maximum allowed size for total rrdata in one ChangesCreateRequest in bytes.
    totalRrdataSizePerChange :: (Core.Maybe Core.Int32),
    -- | DNSSEC algorithm and key length types that can be used for DnsKeys.
    whitelistedKeySpecs :: (Core.Maybe [DnsKeySpec])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Quota' with the minimum fields required to make a request.
newQuota ::
  Quota
newQuota =
  Quota
    { dnsKeysPerManagedZone = Core.Nothing,
      itemsPerRoutingPolicy = Core.Nothing,
      kind = "dns#quota",
      managedZones = Core.Nothing,
      managedZonesPerNetwork = Core.Nothing,
      networksPerManagedZone = Core.Nothing,
      networksPerPolicy = Core.Nothing,
      peeringZonesPerTargetNetwork = Core.Nothing,
      policies = Core.Nothing,
      resourceRecordsPerRrset = Core.Nothing,
      rrsetAdditionsPerChange = Core.Nothing,
      rrsetDeletionsPerChange = Core.Nothing,
      rrsetsPerManagedZone = Core.Nothing,
      targetNameServersPerManagedZone = Core.Nothing,
      targetNameServersPerPolicy = Core.Nothing,
      totalRrdataSizePerChange = Core.Nothing,
      whitelistedKeySpecs = Core.Nothing
    }

instance Core.FromJSON Quota where
  parseJSON =
    Core.withObject
      "Quota"
      ( \o ->
          Quota
            Core.<$> (o Core..:? "dnsKeysPerManagedZone")
            Core.<*> (o Core..:? "itemsPerRoutingPolicy")
            Core.<*> (o Core..:? "kind" Core..!= "dns#quota")
            Core.<*> (o Core..:? "managedZones")
            Core.<*> (o Core..:? "managedZonesPerNetwork")
            Core.<*> (o Core..:? "networksPerManagedZone")
            Core.<*> (o Core..:? "networksPerPolicy")
            Core.<*> (o Core..:? "peeringZonesPerTargetNetwork")
            Core.<*> (o Core..:? "policies")
            Core.<*> (o Core..:? "resourceRecordsPerRrset")
            Core.<*> (o Core..:? "rrsetAdditionsPerChange")
            Core.<*> (o Core..:? "rrsetDeletionsPerChange")
            Core.<*> (o Core..:? "rrsetsPerManagedZone")
            Core.<*> (o Core..:? "targetNameServersPerManagedZone")
            Core.<*> (o Core..:? "targetNameServersPerPolicy")
            Core.<*> (o Core..:? "totalRrdataSizePerChange")
            Core.<*> ( o Core..:? "whitelistedKeySpecs"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON Quota where
  toJSON Quota {..} =
    Core.object
      ( Core.catMaybes
          [ ("dnsKeysPerManagedZone" Core..=)
              Core.<$> dnsKeysPerManagedZone,
            ("itemsPerRoutingPolicy" Core..=)
              Core.<$> itemsPerRoutingPolicy,
            Core.Just ("kind" Core..= kind),
            ("managedZones" Core..=) Core.<$> managedZones,
            ("managedZonesPerNetwork" Core..=)
              Core.<$> managedZonesPerNetwork,
            ("networksPerManagedZone" Core..=)
              Core.<$> networksPerManagedZone,
            ("networksPerPolicy" Core..=)
              Core.<$> networksPerPolicy,
            ("peeringZonesPerTargetNetwork" Core..=)
              Core.<$> peeringZonesPerTargetNetwork,
            ("policies" Core..=) Core.<$> policies,
            ("resourceRecordsPerRrset" Core..=)
              Core.<$> resourceRecordsPerRrset,
            ("rrsetAdditionsPerChange" Core..=)
              Core.<$> rrsetAdditionsPerChange,
            ("rrsetDeletionsPerChange" Core..=)
              Core.<$> rrsetDeletionsPerChange,
            ("rrsetsPerManagedZone" Core..=)
              Core.<$> rrsetsPerManagedZone,
            ("targetNameServersPerManagedZone" Core..=)
              Core.<$> targetNameServersPerManagedZone,
            ("targetNameServersPerPolicy" Core..=)
              Core.<$> targetNameServersPerPolicy,
            ("totalRrdataSizePerChange" Core..=)
              Core.<$> totalRrdataSizePerChange,
            ("whitelistedKeySpecs" Core..=)
              Core.<$> whitelistedKeySpecs
          ]
      )

-- | A RRSetRoutingPolicy represents ResourceRecordSet data that is returned dynamically with the response varying based on configured properties such as geolocation or by weighted random selection.
--
-- /See:/ 'newRRSetRoutingPolicy' smart constructor.
data RRSetRoutingPolicy = RRSetRoutingPolicy
  { -- |
    geo :: (Core.Maybe RRSetRoutingPolicyGeoPolicy),
    -- |
    kind :: Core.Text,
    -- |
    wrr :: (Core.Maybe RRSetRoutingPolicyWrrPolicy)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RRSetRoutingPolicy' with the minimum fields required to make a request.
newRRSetRoutingPolicy ::
  RRSetRoutingPolicy
newRRSetRoutingPolicy =
  RRSetRoutingPolicy
    { geo = Core.Nothing,
      kind = "dns#rRSetRoutingPolicy",
      wrr = Core.Nothing
    }

instance Core.FromJSON RRSetRoutingPolicy where
  parseJSON =
    Core.withObject
      "RRSetRoutingPolicy"
      ( \o ->
          RRSetRoutingPolicy
            Core.<$> (o Core..:? "geo")
            Core.<*> (o Core..:? "kind" Core..!= "dns#rRSetRoutingPolicy")
            Core.<*> (o Core..:? "wrr")
      )

instance Core.ToJSON RRSetRoutingPolicy where
  toJSON RRSetRoutingPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("geo" Core..=) Core.<$> geo,
            Core.Just ("kind" Core..= kind),
            ("wrr" Core..=) Core.<$> wrr
          ]
      )

-- | Configures a RRSetRoutingPolicy that routes based on the geo location of the querying user.
--
-- /See:/ 'newRRSetRoutingPolicyGeoPolicy' smart constructor.
data RRSetRoutingPolicyGeoPolicy = RRSetRoutingPolicyGeoPolicy
  { -- | The primary geo routing configuration. If there are multiple items with the same location, an error is returned instead.
    items :: (Core.Maybe [RRSetRoutingPolicyGeoPolicyGeoPolicyItem]),
    -- |
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RRSetRoutingPolicyGeoPolicy' with the minimum fields required to make a request.
newRRSetRoutingPolicyGeoPolicy ::
  RRSetRoutingPolicyGeoPolicy
newRRSetRoutingPolicyGeoPolicy =
  RRSetRoutingPolicyGeoPolicy
    { items = Core.Nothing,
      kind = "dns#rRSetRoutingPolicyGeoPolicy"
    }

instance Core.FromJSON RRSetRoutingPolicyGeoPolicy where
  parseJSON =
    Core.withObject
      "RRSetRoutingPolicyGeoPolicy"
      ( \o ->
          RRSetRoutingPolicyGeoPolicy
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "dns#rRSetRoutingPolicyGeoPolicy"
                     )
      )

instance Core.ToJSON RRSetRoutingPolicyGeoPolicy where
  toJSON RRSetRoutingPolicyGeoPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind)
          ]
      )

-- | ResourceRecordSet data for one geo location.
--
-- /See:/ 'newRRSetRoutingPolicyGeoPolicyGeoPolicyItem' smart constructor.
data RRSetRoutingPolicyGeoPolicyGeoPolicyItem = RRSetRoutingPolicyGeoPolicyGeoPolicyItem
  { -- |
    kind :: Core.Text,
    -- | The geo-location granularity is a GCP region. This location string should correspond to a GCP region. e.g. \"us-east1\", \"southamerica-east1\", \"asia-east1\", etc.
    location :: (Core.Maybe Core.Text),
    -- |
    rrdatas :: (Core.Maybe [Core.Text]),
    -- | DNSSEC generated signatures for all the rrdata within this item. Note that if health checked targets are provided for DNSSEC enabled zones, there\'s a restriction of 1 ip per item. .
    signatureRrdatas :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RRSetRoutingPolicyGeoPolicyGeoPolicyItem' with the minimum fields required to make a request.
newRRSetRoutingPolicyGeoPolicyGeoPolicyItem ::
  RRSetRoutingPolicyGeoPolicyGeoPolicyItem
newRRSetRoutingPolicyGeoPolicyGeoPolicyItem =
  RRSetRoutingPolicyGeoPolicyGeoPolicyItem
    { kind = "dns#rRSetRoutingPolicyGeoPolicyGeoPolicyItem",
      location = Core.Nothing,
      rrdatas = Core.Nothing,
      signatureRrdatas = Core.Nothing
    }

instance
  Core.FromJSON
    RRSetRoutingPolicyGeoPolicyGeoPolicyItem
  where
  parseJSON =
    Core.withObject
      "RRSetRoutingPolicyGeoPolicyGeoPolicyItem"
      ( \o ->
          RRSetRoutingPolicyGeoPolicyGeoPolicyItem
            Core.<$> ( o Core..:? "kind"
                         Core..!= "dns#rRSetRoutingPolicyGeoPolicyGeoPolicyItem"
                     )
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "rrdatas" Core..!= Core.mempty)
            Core.<*> (o Core..:? "signatureRrdatas" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    RRSetRoutingPolicyGeoPolicyGeoPolicyItem
  where
  toJSON RRSetRoutingPolicyGeoPolicyGeoPolicyItem {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("kind" Core..= kind),
            ("location" Core..=) Core.<$> location,
            ("rrdatas" Core..=) Core.<$> rrdatas,
            ("signatureRrdatas" Core..=)
              Core.<$> signatureRrdatas
          ]
      )

-- | Configures a RRSetRoutingPolicy that routes in a weighted round robin fashion.
--
-- /See:/ 'newRRSetRoutingPolicyWrrPolicy' smart constructor.
data RRSetRoutingPolicyWrrPolicy = RRSetRoutingPolicyWrrPolicy
  { -- |
    items :: (Core.Maybe [RRSetRoutingPolicyWrrPolicyWrrPolicyItem]),
    -- |
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RRSetRoutingPolicyWrrPolicy' with the minimum fields required to make a request.
newRRSetRoutingPolicyWrrPolicy ::
  RRSetRoutingPolicyWrrPolicy
newRRSetRoutingPolicyWrrPolicy =
  RRSetRoutingPolicyWrrPolicy
    { items = Core.Nothing,
      kind = "dns#rRSetRoutingPolicyWrrPolicy"
    }

instance Core.FromJSON RRSetRoutingPolicyWrrPolicy where
  parseJSON =
    Core.withObject
      "RRSetRoutingPolicyWrrPolicy"
      ( \o ->
          RRSetRoutingPolicyWrrPolicy
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "dns#rRSetRoutingPolicyWrrPolicy"
                     )
      )

instance Core.ToJSON RRSetRoutingPolicyWrrPolicy where
  toJSON RRSetRoutingPolicyWrrPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind)
          ]
      )

-- | A routing block which contains the routing information for one WRR item.
--
-- /See:/ 'newRRSetRoutingPolicyWrrPolicyWrrPolicyItem' smart constructor.
data RRSetRoutingPolicyWrrPolicyWrrPolicyItem = RRSetRoutingPolicyWrrPolicyWrrPolicyItem
  { -- |
    kind :: Core.Text,
    -- |
    rrdatas :: (Core.Maybe [Core.Text]),
    -- | DNSSEC generated signatures for all the rrdata within this item. Note that if health checked targets are provided for DNSSEC enabled zones, there\'s a restriction of 1 ip per item. .
    signatureRrdatas :: (Core.Maybe [Core.Text]),
    -- | The weight corresponding to this subset of rrdata. When multiple WeightedRoundRobinPolicyItems are configured, the probability of returning an rrset is proportional to its weight relative to the sum of weights configured for all items. This weight should be non-negative.
    weight :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RRSetRoutingPolicyWrrPolicyWrrPolicyItem' with the minimum fields required to make a request.
newRRSetRoutingPolicyWrrPolicyWrrPolicyItem ::
  RRSetRoutingPolicyWrrPolicyWrrPolicyItem
newRRSetRoutingPolicyWrrPolicyWrrPolicyItem =
  RRSetRoutingPolicyWrrPolicyWrrPolicyItem
    { kind = "dns#rRSetRoutingPolicyWrrPolicyWrrPolicyItem",
      rrdatas = Core.Nothing,
      signatureRrdatas = Core.Nothing,
      weight = Core.Nothing
    }

instance
  Core.FromJSON
    RRSetRoutingPolicyWrrPolicyWrrPolicyItem
  where
  parseJSON =
    Core.withObject
      "RRSetRoutingPolicyWrrPolicyWrrPolicyItem"
      ( \o ->
          RRSetRoutingPolicyWrrPolicyWrrPolicyItem
            Core.<$> ( o Core..:? "kind"
                         Core..!= "dns#rRSetRoutingPolicyWrrPolicyWrrPolicyItem"
                     )
            Core.<*> (o Core..:? "rrdatas" Core..!= Core.mempty)
            Core.<*> (o Core..:? "signatureRrdatas" Core..!= Core.mempty)
            Core.<*> (o Core..:? "weight")
      )

instance
  Core.ToJSON
    RRSetRoutingPolicyWrrPolicyWrrPolicyItem
  where
  toJSON RRSetRoutingPolicyWrrPolicyWrrPolicyItem {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("kind" Core..= kind),
            ("rrdatas" Core..=) Core.<$> rrdatas,
            ("signatureRrdatas" Core..=)
              Core.<$> signatureRrdatas,
            ("weight" Core..=) Core.<$> weight
          ]
      )

-- | A unit of data that is returned by the DNS servers.
--
-- /See:/ 'newResourceRecordSet' smart constructor.
data ResourceRecordSet = ResourceRecordSet
  { -- |
    kind :: Core.Text,
    -- | For example, www.example.com.
    name :: (Core.Maybe Core.Text),
    -- | Configures dynamic query responses based on geo location of querying user or a weighted round robin based routing policy. A ResourceRecordSet should only have either rrdata (static) or routing_policy (dynamic). An error is returned otherwise.
    routingPolicy :: (Core.Maybe RRSetRoutingPolicy),
    -- | As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) -- see examples.
    rrdatas :: (Core.Maybe [Core.Text]),
    -- | As defined in RFC 4034 (section 3.2).
    signatureRrdatas :: (Core.Maybe [Core.Text]),
    -- | Number of seconds that this ResourceRecordSet can be cached by resolvers.
    ttl :: (Core.Maybe Core.Int32),
    -- | The identifier of a supported record type. See the list of Supported DNS record types.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceRecordSet' with the minimum fields required to make a request.
newResourceRecordSet ::
  ResourceRecordSet
newResourceRecordSet =
  ResourceRecordSet
    { kind = "dns#resourceRecordSet",
      name = Core.Nothing,
      routingPolicy = Core.Nothing,
      rrdatas = Core.Nothing,
      signatureRrdatas = Core.Nothing,
      ttl = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON ResourceRecordSet where
  parseJSON =
    Core.withObject
      "ResourceRecordSet"
      ( \o ->
          ResourceRecordSet
            Core.<$> (o Core..:? "kind" Core..!= "dns#resourceRecordSet")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "routingPolicy")
            Core.<*> (o Core..:? "rrdatas" Core..!= Core.mempty)
            Core.<*> (o Core..:? "signatureRrdatas" Core..!= Core.mempty)
            Core.<*> (o Core..:? "ttl")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON ResourceRecordSet where
  toJSON ResourceRecordSet {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name,
            ("routingPolicy" Core..=) Core.<$> routingPolicy,
            ("rrdatas" Core..=) Core.<$> rrdatas,
            ("signatureRrdatas" Core..=)
              Core.<$> signatureRrdatas,
            ("ttl" Core..=) Core.<$> ttl,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newResourceRecordSetsListResponse' smart constructor.
data ResourceRecordSetsListResponse = ResourceRecordSetsListResponse
  { -- |
    header :: (Core.Maybe ResponseHeader),
    -- | Type of resource.
    kind :: Core.Text,
    -- | The presence of this field indicates that there exist more results following your last page of results in pagination order. To fetch them, make another list request using this value as your pagination token. This lets you retrieve complete contents of even larger collections, one page at a time. However, if the contents of the collection change between the first and last paginated list request, the set of elements returned are an inconsistent view of the collection. You cannot retrieve a consistent snapshot of a collection larger than the maximum page size.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The resource record set resources.
    rrsets :: (Core.Maybe [ResourceRecordSet])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceRecordSetsListResponse' with the minimum fields required to make a request.
newResourceRecordSetsListResponse ::
  ResourceRecordSetsListResponse
newResourceRecordSetsListResponse =
  ResourceRecordSetsListResponse
    { header = Core.Nothing,
      kind = "dns#resourceRecordSetsListResponse",
      nextPageToken = Core.Nothing,
      rrsets = Core.Nothing
    }

instance Core.FromJSON ResourceRecordSetsListResponse where
  parseJSON =
    Core.withObject
      "ResourceRecordSetsListResponse"
      ( \o ->
          ResourceRecordSetsListResponse
            Core.<$> (o Core..:? "header")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "dns#resourceRecordSetsListResponse"
                     )
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "rrsets" Core..!= Core.mempty)
      )

instance Core.ToJSON ResourceRecordSetsListResponse where
  toJSON ResourceRecordSetsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("header" Core..=) Core.<$> header,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("rrsets" Core..=) Core.<$> rrsets
          ]
      )

-- | Elements common to every response.
--
-- /See:/ 'newResponseHeader' smart constructor.
newtype ResponseHeader = ResponseHeader
  { -- | For mutating operation requests that completed successfully. This is the client/operation/id if the client specified it, otherwise it is generated by the server (output only).
    operationId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResponseHeader' with the minimum fields required to make a request.
newResponseHeader ::
  ResponseHeader
newResponseHeader = ResponseHeader {operationId = Core.Nothing}

instance Core.FromJSON ResponseHeader where
  parseJSON =
    Core.withObject
      "ResponseHeader"
      ( \o ->
          ResponseHeader Core.<$> (o Core..:? "operationId")
      )

instance Core.ToJSON ResponseHeader where
  toJSON ResponseHeader {..} =
    Core.object
      ( Core.catMaybes
          [("operationId" Core..=) Core.<$> operationId]
      )

--
-- /See:/ 'newResponsePoliciesListResponse' smart constructor.
data ResponsePoliciesListResponse = ResponsePoliciesListResponse
  { -- |
    header :: (Core.Maybe ResponseHeader),
    -- | The presence of this field indicates that there exist more results following your last page of results in pagination order. To fetch them, make another list request using this value as your page token. This lets you the complete contents of even very large collections one page at a time. However, if the contents of the collection change between the first and last paginated list request, the set of all elements returned are an inconsistent view of the collection. You cannot retrieve a consistent snapshot of a collection larger than the maximum page size.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The Response Policy resources.
    responsePolicies :: (Core.Maybe [ResponsePolicy])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResponsePoliciesListResponse' with the minimum fields required to make a request.
newResponsePoliciesListResponse ::
  ResponsePoliciesListResponse
newResponsePoliciesListResponse =
  ResponsePoliciesListResponse
    { header = Core.Nothing,
      nextPageToken = Core.Nothing,
      responsePolicies = Core.Nothing
    }

instance Core.FromJSON ResponsePoliciesListResponse where
  parseJSON =
    Core.withObject
      "ResponsePoliciesListResponse"
      ( \o ->
          ResponsePoliciesListResponse
            Core.<$> (o Core..:? "header")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "responsePolicies" Core..!= Core.mempty)
      )

instance Core.ToJSON ResponsePoliciesListResponse where
  toJSON ResponsePoliciesListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("header" Core..=) Core.<$> header,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("responsePolicies" Core..=)
              Core.<$> responsePolicies
          ]
      )

--
-- /See:/ 'newResponsePoliciesPatchResponse' smart constructor.
data ResponsePoliciesPatchResponse = ResponsePoliciesPatchResponse
  { -- |
    header :: (Core.Maybe ResponseHeader),
    -- |
    responsePolicy :: (Core.Maybe ResponsePolicy)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResponsePoliciesPatchResponse' with the minimum fields required to make a request.
newResponsePoliciesPatchResponse ::
  ResponsePoliciesPatchResponse
newResponsePoliciesPatchResponse =
  ResponsePoliciesPatchResponse
    { header = Core.Nothing,
      responsePolicy = Core.Nothing
    }

instance Core.FromJSON ResponsePoliciesPatchResponse where
  parseJSON =
    Core.withObject
      "ResponsePoliciesPatchResponse"
      ( \o ->
          ResponsePoliciesPatchResponse
            Core.<$> (o Core..:? "header")
            Core.<*> (o Core..:? "responsePolicy")
      )

instance Core.ToJSON ResponsePoliciesPatchResponse where
  toJSON ResponsePoliciesPatchResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("header" Core..=) Core.<$> header,
            ("responsePolicy" Core..=) Core.<$> responsePolicy
          ]
      )

--
-- /See:/ 'newResponsePoliciesUpdateResponse' smart constructor.
data ResponsePoliciesUpdateResponse = ResponsePoliciesUpdateResponse
  { -- |
    header :: (Core.Maybe ResponseHeader),
    -- |
    responsePolicy :: (Core.Maybe ResponsePolicy)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResponsePoliciesUpdateResponse' with the minimum fields required to make a request.
newResponsePoliciesUpdateResponse ::
  ResponsePoliciesUpdateResponse
newResponsePoliciesUpdateResponse =
  ResponsePoliciesUpdateResponse
    { header = Core.Nothing,
      responsePolicy = Core.Nothing
    }

instance Core.FromJSON ResponsePoliciesUpdateResponse where
  parseJSON =
    Core.withObject
      "ResponsePoliciesUpdateResponse"
      ( \o ->
          ResponsePoliciesUpdateResponse
            Core.<$> (o Core..:? "header")
            Core.<*> (o Core..:? "responsePolicy")
      )

instance Core.ToJSON ResponsePoliciesUpdateResponse where
  toJSON ResponsePoliciesUpdateResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("header" Core..=) Core.<$> header,
            ("responsePolicy" Core..=) Core.<$> responsePolicy
          ]
      )

-- | A Response Policy is a collection of selectors that apply to queries made against one or more Virtual Private Cloud networks.
--
-- /See:/ 'newResponsePolicy' smart constructor.
data ResponsePolicy = ResponsePolicy
  { -- | User-provided description for this Response Policy.
    description :: (Core.Maybe Core.Text),
    -- | The list of Google Kubernetes Engine clusters to which this response policy is applied.
    gkeClusters :: (Core.Maybe [ResponsePolicyGKECluster]),
    -- | Unique identifier for the resource; defined by the server (output only).
    id :: (Core.Maybe Core.Int64),
    -- |
    kind :: Core.Text,
    -- | List of network names specifying networks to which this policy is applied.
    networks :: (Core.Maybe [ResponsePolicyNetwork]),
    -- | User assigned name for this Response Policy.
    responsePolicyName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResponsePolicy' with the minimum fields required to make a request.
newResponsePolicy ::
  ResponsePolicy
newResponsePolicy =
  ResponsePolicy
    { description = Core.Nothing,
      gkeClusters = Core.Nothing,
      id = Core.Nothing,
      kind = "dns#responsePolicy",
      networks = Core.Nothing,
      responsePolicyName = Core.Nothing
    }

instance Core.FromJSON ResponsePolicy where
  parseJSON =
    Core.withObject
      "ResponsePolicy"
      ( \o ->
          ResponsePolicy
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "gkeClusters" Core..!= Core.mempty)
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "dns#responsePolicy")
            Core.<*> (o Core..:? "networks" Core..!= Core.mempty)
            Core.<*> (o Core..:? "responsePolicyName")
      )

instance Core.ToJSON ResponsePolicy where
  toJSON ResponsePolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("gkeClusters" Core..=) Core.<$> gkeClusters,
            ("id" Core..=) Core.. Core.AsText Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("networks" Core..=) Core.<$> networks,
            ("responsePolicyName" Core..=)
              Core.<$> responsePolicyName
          ]
      )

--
-- /See:/ 'newResponsePolicyGKECluster' smart constructor.
data ResponsePolicyGKECluster = ResponsePolicyGKECluster
  { -- | The resource name of the cluster to bind this response policy to. This should be specified in the format like: projects\//\/locations\//\/clusters\/*. This is referenced from GKE projects.locations.clusters.get API: https:\/\/cloud.google.com\/kubernetes-engine\/docs\/reference\/rest\/v1\/projects.locations.clusters\/get
    gkeClusterName :: (Core.Maybe Core.Text),
    -- |
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResponsePolicyGKECluster' with the minimum fields required to make a request.
newResponsePolicyGKECluster ::
  ResponsePolicyGKECluster
newResponsePolicyGKECluster =
  ResponsePolicyGKECluster
    { gkeClusterName = Core.Nothing,
      kind = "dns#responsePolicyGKECluster"
    }

instance Core.FromJSON ResponsePolicyGKECluster where
  parseJSON =
    Core.withObject
      "ResponsePolicyGKECluster"
      ( \o ->
          ResponsePolicyGKECluster
            Core.<$> (o Core..:? "gkeClusterName")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "dns#responsePolicyGKECluster"
                     )
      )

instance Core.ToJSON ResponsePolicyGKECluster where
  toJSON ResponsePolicyGKECluster {..} =
    Core.object
      ( Core.catMaybes
          [ ("gkeClusterName" Core..=) Core.<$> gkeClusterName,
            Core.Just ("kind" Core..= kind)
          ]
      )

--
-- /See:/ 'newResponsePolicyNetwork' smart constructor.
data ResponsePolicyNetwork = ResponsePolicyNetwork
  { -- |
    kind :: Core.Text,
    -- | The fully qualified URL of the VPC network to bind to. This should be formatted like https:\/\/www.googleapis.com\/compute\/v1\/projects\/{project}\/global\/networks\/{network}
    networkUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResponsePolicyNetwork' with the minimum fields required to make a request.
newResponsePolicyNetwork ::
  ResponsePolicyNetwork
newResponsePolicyNetwork =
  ResponsePolicyNetwork
    { kind = "dns#responsePolicyNetwork",
      networkUrl = Core.Nothing
    }

instance Core.FromJSON ResponsePolicyNetwork where
  parseJSON =
    Core.withObject
      "ResponsePolicyNetwork"
      ( \o ->
          ResponsePolicyNetwork
            Core.<$> ( o Core..:? "kind"
                         Core..!= "dns#responsePolicyNetwork"
                     )
            Core.<*> (o Core..:? "networkUrl")
      )

instance Core.ToJSON ResponsePolicyNetwork where
  toJSON ResponsePolicyNetwork {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("kind" Core..= kind),
            ("networkUrl" Core..=) Core.<$> networkUrl
          ]
      )

-- | A Response Policy Rule is a selector that applies its behavior to queries that match the selector. Selectors are DNS names, which may be wildcards or exact matches. Each DNS query subject to a Response Policy matches at most one ResponsePolicyRule, as identified by the dns_name field with the longest matching suffix.
--
-- /See:/ 'newResponsePolicyRule' smart constructor.
data ResponsePolicyRule = ResponsePolicyRule
  { -- | Answer this query with a behavior rather than DNS data.
    behavior :: (Core.Maybe ResponsePolicyRule_Behavior),
    -- | The DNS name (wildcard or exact) to apply this rule to. Must be unique within the Response Policy Rule.
    dnsName :: (Core.Maybe Core.Text),
    -- |
    kind :: Core.Text,
    -- | Answer this query directly with DNS data. These ResourceRecordSets override any other DNS behavior for the matched name; in particular they override private zones, the public internet, and GCP internal DNS. No SOA nor NS types are allowed.
    localData :: (Core.Maybe ResponsePolicyRuleLocalData),
    -- | An identifier for this rule. Must be unique with the ResponsePolicy.
    ruleName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResponsePolicyRule' with the minimum fields required to make a request.
newResponsePolicyRule ::
  ResponsePolicyRule
newResponsePolicyRule =
  ResponsePolicyRule
    { behavior = Core.Nothing,
      dnsName = Core.Nothing,
      kind = "dns#responsePolicyRule",
      localData = Core.Nothing,
      ruleName = Core.Nothing
    }

instance Core.FromJSON ResponsePolicyRule where
  parseJSON =
    Core.withObject
      "ResponsePolicyRule"
      ( \o ->
          ResponsePolicyRule
            Core.<$> (o Core..:? "behavior")
            Core.<*> (o Core..:? "dnsName")
            Core.<*> (o Core..:? "kind" Core..!= "dns#responsePolicyRule")
            Core.<*> (o Core..:? "localData")
            Core.<*> (o Core..:? "ruleName")
      )

instance Core.ToJSON ResponsePolicyRule where
  toJSON ResponsePolicyRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("behavior" Core..=) Core.<$> behavior,
            ("dnsName" Core..=) Core.<$> dnsName,
            Core.Just ("kind" Core..= kind),
            ("localData" Core..=) Core.<$> localData,
            ("ruleName" Core..=) Core.<$> ruleName
          ]
      )

--
-- /See:/ 'newResponsePolicyRuleLocalData' smart constructor.
newtype ResponsePolicyRuleLocalData = ResponsePolicyRuleLocalData
  { -- | All resource record sets for this selector, one per resource record type. The name must match the dns_name.
    localDatas :: (Core.Maybe [ResourceRecordSet])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResponsePolicyRuleLocalData' with the minimum fields required to make a request.
newResponsePolicyRuleLocalData ::
  ResponsePolicyRuleLocalData
newResponsePolicyRuleLocalData =
  ResponsePolicyRuleLocalData {localDatas = Core.Nothing}

instance Core.FromJSON ResponsePolicyRuleLocalData where
  parseJSON =
    Core.withObject
      "ResponsePolicyRuleLocalData"
      ( \o ->
          ResponsePolicyRuleLocalData
            Core.<$> (o Core..:? "localDatas" Core..!= Core.mempty)
      )

instance Core.ToJSON ResponsePolicyRuleLocalData where
  toJSON ResponsePolicyRuleLocalData {..} =
    Core.object
      ( Core.catMaybes
          [("localDatas" Core..=) Core.<$> localDatas]
      )

--
-- /See:/ 'newResponsePolicyRulesListResponse' smart constructor.
data ResponsePolicyRulesListResponse = ResponsePolicyRulesListResponse
  { -- |
    header :: (Core.Maybe ResponseHeader),
    -- | The presence of this field indicates that there exist more results following your last page of results in pagination order. To fetch them, make another list request using this value as your page token. This lets you the complete contents of even very large collections one page at a time. However, if the contents of the collection change between the first and last paginated list request, the set of all elements returned are an inconsistent view of the collection. You cannot retrieve a consistent snapshot of a collection larger than the maximum page size.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The Response Policy Rule resources.
    responsePolicyRules :: (Core.Maybe [ResponsePolicyRule])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResponsePolicyRulesListResponse' with the minimum fields required to make a request.
newResponsePolicyRulesListResponse ::
  ResponsePolicyRulesListResponse
newResponsePolicyRulesListResponse =
  ResponsePolicyRulesListResponse
    { header = Core.Nothing,
      nextPageToken = Core.Nothing,
      responsePolicyRules = Core.Nothing
    }

instance
  Core.FromJSON
    ResponsePolicyRulesListResponse
  where
  parseJSON =
    Core.withObject
      "ResponsePolicyRulesListResponse"
      ( \o ->
          ResponsePolicyRulesListResponse
            Core.<$> (o Core..:? "header")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> ( o Core..:? "responsePolicyRules"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON ResponsePolicyRulesListResponse where
  toJSON ResponsePolicyRulesListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("header" Core..=) Core.<$> header,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("responsePolicyRules" Core..=)
              Core.<$> responsePolicyRules
          ]
      )

--
-- /See:/ 'newResponsePolicyRulesPatchResponse' smart constructor.
data ResponsePolicyRulesPatchResponse = ResponsePolicyRulesPatchResponse
  { -- |
    header :: (Core.Maybe ResponseHeader),
    -- |
    responsePolicyRule :: (Core.Maybe ResponsePolicyRule)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResponsePolicyRulesPatchResponse' with the minimum fields required to make a request.
newResponsePolicyRulesPatchResponse ::
  ResponsePolicyRulesPatchResponse
newResponsePolicyRulesPatchResponse =
  ResponsePolicyRulesPatchResponse
    { header = Core.Nothing,
      responsePolicyRule = Core.Nothing
    }

instance
  Core.FromJSON
    ResponsePolicyRulesPatchResponse
  where
  parseJSON =
    Core.withObject
      "ResponsePolicyRulesPatchResponse"
      ( \o ->
          ResponsePolicyRulesPatchResponse
            Core.<$> (o Core..:? "header")
            Core.<*> (o Core..:? "responsePolicyRule")
      )

instance Core.ToJSON ResponsePolicyRulesPatchResponse where
  toJSON ResponsePolicyRulesPatchResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("header" Core..=) Core.<$> header,
            ("responsePolicyRule" Core..=)
              Core.<$> responsePolicyRule
          ]
      )

--
-- /See:/ 'newResponsePolicyRulesUpdateResponse' smart constructor.
data ResponsePolicyRulesUpdateResponse = ResponsePolicyRulesUpdateResponse
  { -- |
    header :: (Core.Maybe ResponseHeader),
    -- |
    responsePolicyRule :: (Core.Maybe ResponsePolicyRule)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResponsePolicyRulesUpdateResponse' with the minimum fields required to make a request.
newResponsePolicyRulesUpdateResponse ::
  ResponsePolicyRulesUpdateResponse
newResponsePolicyRulesUpdateResponse =
  ResponsePolicyRulesUpdateResponse
    { header = Core.Nothing,
      responsePolicyRule = Core.Nothing
    }

instance
  Core.FromJSON
    ResponsePolicyRulesUpdateResponse
  where
  parseJSON =
    Core.withObject
      "ResponsePolicyRulesUpdateResponse"
      ( \o ->
          ResponsePolicyRulesUpdateResponse
            Core.<$> (o Core..:? "header")
            Core.<*> (o Core..:? "responsePolicyRule")
      )

instance
  Core.ToJSON
    ResponsePolicyRulesUpdateResponse
  where
  toJSON ResponsePolicyRulesUpdateResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("header" Core..=) Core.<$> header,
            ("responsePolicyRule" Core..=)
              Core.<$> responsePolicyRule
          ]
      )
