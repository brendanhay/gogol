{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.DNS.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.DNS.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * Change_Status
    Change_Status
      ( Change_Status_Pending,
        Change_Status_Done,
        ..
      ),

    -- * DnsKey_Algorithm
    DnsKey_Algorithm
      ( DnsKey_Algorithm_RSASHA1,
        DnsKey_Algorithm_RSASHA256,
        DnsKey_Algorithm_RSASHA512,
        DnsKey_Algorithm_ECDSAP256SHA256,
        DnsKey_Algorithm_ECDSAP384SHA384,
        ..
      ),

    -- * DnsKey_Type
    DnsKey_Type
      ( DnsKey_Type_KEYSIGNING,
        DnsKey_Type_ZONESIGNING,
        ..
      ),

    -- * DnsKeyDigest_Type
    DnsKeyDigest_Type
      ( DnsKeyDigest_Type_SHA1,
        DnsKeyDigest_Type_SHA256,
        DnsKeyDigest_Type_SHA384,
        ..
      ),

    -- * DnsKeySpec_Algorithm
    DnsKeySpec_Algorithm
      ( DnsKeySpec_Algorithm_RSASHA1,
        DnsKeySpec_Algorithm_RSASHA256,
        DnsKeySpec_Algorithm_RSASHA512,
        DnsKeySpec_Algorithm_ECDSAP256SHA256,
        DnsKeySpec_Algorithm_ECDSAP384SHA384,
        ..
      ),

    -- * DnsKeySpec_KeyType
    DnsKeySpec_KeyType
      ( DnsKeySpec_KeyType_KEYSIGNING,
        DnsKeySpec_KeyType_ZONESIGNING,
        ..
      ),

    -- * ManagedZone_Visibility
    ManagedZone_Visibility
      ( ManagedZone_Visibility_Public,
        ManagedZone_Visibility_Private,
        ..
      ),

    -- * ManagedZoneDnsSecConfig_NonExistence
    ManagedZoneDnsSecConfig_NonExistence
      ( ManagedZoneDnsSecConfig_NonExistence_Nsec,
        ManagedZoneDnsSecConfig_NonExistence_NSEC3,
        ..
      ),

    -- * ManagedZoneDnsSecConfig_State
    ManagedZoneDnsSecConfig_State
      ( ManagedZoneDnsSecConfig_State_Off,
        ManagedZoneDnsSecConfig_State_ON,
        ManagedZoneDnsSecConfig_State_Transfer,
        ..
      ),

    -- * ManagedZoneForwardingConfigNameServerTarget_ForwardingPath
    ManagedZoneForwardingConfigNameServerTarget_ForwardingPath
      ( ManagedZoneForwardingConfigNameServerTarget_ForwardingPath_Default,
        ManagedZoneForwardingConfigNameServerTarget_ForwardingPath_Private,
        ..
      ),

    -- * Operation_Status
    Operation_Status
      ( Operation_Status_Pending,
        Operation_Status_Done,
        ..
      ),

    -- * PolicyAlternativeNameServerConfigTargetNameServer_ForwardingPath
    PolicyAlternativeNameServerConfigTargetNameServer_ForwardingPath
      ( PolicyAlternativeNameServerConfigTargetNameServer_ForwardingPath_Default,
        PolicyAlternativeNameServerConfigTargetNameServer_ForwardingPath_Private,
        ..
      ),

    -- * ResponsePolicyRule_Behavior
    ResponsePolicyRule_Behavior
      ( ResponsePolicyRule_Behavior_BEHAVIORUNSPECIFIED,
        ResponsePolicyRule_Behavior_BYPASSRESPONSEPOLICY,
        ..
      ),

    -- * ChangesListSortBy
    ChangesListSortBy
      ( ChangesListSortBy_CHANGESEQUENCE,
        ..
      ),

    -- * ManagedZoneOperationsListSortBy
    ManagedZoneOperationsListSortBy
      ( ManagedZoneOperationsListSortBy_STARTTIME,
        ManagedZoneOperationsListSortBy_ID,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | Status of the operation (output only). A status of \"done\" means that the request to update the authoritative servers has been sent, but the servers might not be updated yet.
newtype Change_Status = Change_Status {fromChange_Status :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern Change_Status_Pending :: Change_Status
pattern Change_Status_Pending = Change_Status "PENDING"

pattern Change_Status_Done :: Change_Status
pattern Change_Status_Done = Change_Status "DONE"

{-# COMPLETE
  Change_Status_Pending,
  Change_Status_Done,
  Change_Status
  #-}

-- | String mnemonic specifying the DNSSEC algorithm of this key. Immutable after creation time.
newtype DnsKey_Algorithm = DnsKey_Algorithm {fromDnsKey_Algorithm :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern DnsKey_Algorithm_RSASHA1 :: DnsKey_Algorithm
pattern DnsKey_Algorithm_RSASHA1 = DnsKey_Algorithm "RSASHA1"

pattern DnsKey_Algorithm_RSASHA256 :: DnsKey_Algorithm
pattern DnsKey_Algorithm_RSASHA256 = DnsKey_Algorithm "RSASHA256"

pattern DnsKey_Algorithm_RSASHA512 :: DnsKey_Algorithm
pattern DnsKey_Algorithm_RSASHA512 = DnsKey_Algorithm "RSASHA512"

pattern DnsKey_Algorithm_ECDSAP256SHA256 :: DnsKey_Algorithm
pattern DnsKey_Algorithm_ECDSAP256SHA256 = DnsKey_Algorithm "ECDSAP256SHA256"

pattern DnsKey_Algorithm_ECDSAP384SHA384 :: DnsKey_Algorithm
pattern DnsKey_Algorithm_ECDSAP384SHA384 = DnsKey_Algorithm "ECDSAP384SHA384"

{-# COMPLETE
  DnsKey_Algorithm_RSASHA1,
  DnsKey_Algorithm_RSASHA256,
  DnsKey_Algorithm_RSASHA512,
  DnsKey_Algorithm_ECDSAP256SHA256,
  DnsKey_Algorithm_ECDSAP384SHA384,
  DnsKey_Algorithm
  #-}

-- | One of \"KEY/SIGNING\" or \"ZONE/SIGNING\". Keys of type KEY_SIGNING have the Secure Entry Point flag set and, when active, are used to sign only resource record sets of type DNSKEY. Otherwise, the Secure Entry Point flag is cleared, and this key is used to sign only resource record sets of other types. Immutable after creation time.
newtype DnsKey_Type = DnsKey_Type {fromDnsKey_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern DnsKey_Type_KEYSIGNING :: DnsKey_Type
pattern DnsKey_Type_KEYSIGNING = DnsKey_Type "KEY_SIGNING"

pattern DnsKey_Type_ZONESIGNING :: DnsKey_Type
pattern DnsKey_Type_ZONESIGNING = DnsKey_Type "ZONE_SIGNING"

{-# COMPLETE
  DnsKey_Type_KEYSIGNING,
  DnsKey_Type_ZONESIGNING,
  DnsKey_Type
  #-}

-- | Specifies the algorithm used to calculate this digest.
newtype DnsKeyDigest_Type = DnsKeyDigest_Type {fromDnsKeyDigest_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern DnsKeyDigest_Type_SHA1 :: DnsKeyDigest_Type
pattern DnsKeyDigest_Type_SHA1 = DnsKeyDigest_Type "SHA1"

pattern DnsKeyDigest_Type_SHA256 :: DnsKeyDigest_Type
pattern DnsKeyDigest_Type_SHA256 = DnsKeyDigest_Type "SHA256"

pattern DnsKeyDigest_Type_SHA384 :: DnsKeyDigest_Type
pattern DnsKeyDigest_Type_SHA384 = DnsKeyDigest_Type "SHA384"

{-# COMPLETE
  DnsKeyDigest_Type_SHA1,
  DnsKeyDigest_Type_SHA256,
  DnsKeyDigest_Type_SHA384,
  DnsKeyDigest_Type
  #-}

-- | String mnemonic specifying the DNSSEC algorithm of this key.
newtype DnsKeySpec_Algorithm = DnsKeySpec_Algorithm {fromDnsKeySpec_Algorithm :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern DnsKeySpec_Algorithm_RSASHA1 :: DnsKeySpec_Algorithm
pattern DnsKeySpec_Algorithm_RSASHA1 = DnsKeySpec_Algorithm "RSASHA1"

pattern DnsKeySpec_Algorithm_RSASHA256 :: DnsKeySpec_Algorithm
pattern DnsKeySpec_Algorithm_RSASHA256 = DnsKeySpec_Algorithm "RSASHA256"

pattern DnsKeySpec_Algorithm_RSASHA512 :: DnsKeySpec_Algorithm
pattern DnsKeySpec_Algorithm_RSASHA512 = DnsKeySpec_Algorithm "RSASHA512"

pattern DnsKeySpec_Algorithm_ECDSAP256SHA256 :: DnsKeySpec_Algorithm
pattern DnsKeySpec_Algorithm_ECDSAP256SHA256 = DnsKeySpec_Algorithm "ECDSAP256SHA256"

pattern DnsKeySpec_Algorithm_ECDSAP384SHA384 :: DnsKeySpec_Algorithm
pattern DnsKeySpec_Algorithm_ECDSAP384SHA384 = DnsKeySpec_Algorithm "ECDSAP384SHA384"

{-# COMPLETE
  DnsKeySpec_Algorithm_RSASHA1,
  DnsKeySpec_Algorithm_RSASHA256,
  DnsKeySpec_Algorithm_RSASHA512,
  DnsKeySpec_Algorithm_ECDSAP256SHA256,
  DnsKeySpec_Algorithm_ECDSAP384SHA384,
  DnsKeySpec_Algorithm
  #-}

-- | Specifies whether this is a key signing key (KSK) or a zone signing key (ZSK). Key signing keys have the Secure Entry Point flag set and, when active, are only used to sign resource record sets of type DNSKEY. Zone signing keys do not have the Secure Entry Point flag set and are used to sign all other types of resource record sets.
newtype DnsKeySpec_KeyType = DnsKeySpec_KeyType {fromDnsKeySpec_KeyType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern DnsKeySpec_KeyType_KEYSIGNING :: DnsKeySpec_KeyType
pattern DnsKeySpec_KeyType_KEYSIGNING = DnsKeySpec_KeyType "KEY_SIGNING"

pattern DnsKeySpec_KeyType_ZONESIGNING :: DnsKeySpec_KeyType
pattern DnsKeySpec_KeyType_ZONESIGNING = DnsKeySpec_KeyType "ZONE_SIGNING"

{-# COMPLETE
  DnsKeySpec_KeyType_KEYSIGNING,
  DnsKeySpec_KeyType_ZONESIGNING,
  DnsKeySpec_KeyType
  #-}

-- | The zone\'s visibility: public zones are exposed to the Internet, while private zones are visible only to Virtual Private Cloud resources.
newtype ManagedZone_Visibility = ManagedZone_Visibility {fromManagedZone_Visibility :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ManagedZone_Visibility_Public :: ManagedZone_Visibility
pattern ManagedZone_Visibility_Public = ManagedZone_Visibility "PUBLIC"

pattern ManagedZone_Visibility_Private :: ManagedZone_Visibility
pattern ManagedZone_Visibility_Private = ManagedZone_Visibility "PRIVATE"

{-# COMPLETE
  ManagedZone_Visibility_Public,
  ManagedZone_Visibility_Private,
  ManagedZone_Visibility
  #-}

-- | Specifies the mechanism for authenticated denial-of-existence responses. Can only be changed while the state is OFF.
newtype ManagedZoneDnsSecConfig_NonExistence = ManagedZoneDnsSecConfig_NonExistence {fromManagedZoneDnsSecConfig_NonExistence :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ManagedZoneDnsSecConfig_NonExistence_Nsec :: ManagedZoneDnsSecConfig_NonExistence
pattern ManagedZoneDnsSecConfig_NonExistence_Nsec = ManagedZoneDnsSecConfig_NonExistence "NSEC"

pattern ManagedZoneDnsSecConfig_NonExistence_NSEC3 :: ManagedZoneDnsSecConfig_NonExistence
pattern ManagedZoneDnsSecConfig_NonExistence_NSEC3 = ManagedZoneDnsSecConfig_NonExistence "NSEC3"

{-# COMPLETE
  ManagedZoneDnsSecConfig_NonExistence_Nsec,
  ManagedZoneDnsSecConfig_NonExistence_NSEC3,
  ManagedZoneDnsSecConfig_NonExistence
  #-}

-- | Specifies whether DNSSEC is enabled, and what mode it is in.
newtype ManagedZoneDnsSecConfig_State = ManagedZoneDnsSecConfig_State {fromManagedZoneDnsSecConfig_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | DNSSEC is disabled; the zone is not signed.
pattern ManagedZoneDnsSecConfig_State_Off :: ManagedZoneDnsSecConfig_State
pattern ManagedZoneDnsSecConfig_State_Off = ManagedZoneDnsSecConfig_State "OFF"

-- | DNSSEC is enabled; the zone is signed and fully managed.
pattern ManagedZoneDnsSecConfig_State_ON :: ManagedZoneDnsSecConfig_State
pattern ManagedZoneDnsSecConfig_State_ON = ManagedZoneDnsSecConfig_State "ON"

-- | DNSSEC is enabled, but in a \"transfer\" mode.
pattern ManagedZoneDnsSecConfig_State_Transfer :: ManagedZoneDnsSecConfig_State
pattern ManagedZoneDnsSecConfig_State_Transfer = ManagedZoneDnsSecConfig_State "TRANSFER"

{-# COMPLETE
  ManagedZoneDnsSecConfig_State_Off,
  ManagedZoneDnsSecConfig_State_ON,
  ManagedZoneDnsSecConfig_State_Transfer,
  ManagedZoneDnsSecConfig_State
  #-}

-- | Forwarding path for this NameServerTarget. If unset or set to DEFAULT, Cloud DNS makes forwarding decisions based on IP address ranges; that is, RFC1918 addresses go to the VPC network, non-RFC1918 addresses go to the internet. When set to PRIVATE, Cloud DNS always sends queries through the VPC network for this target.
newtype ManagedZoneForwardingConfigNameServerTarget_ForwardingPath = ManagedZoneForwardingConfigNameServerTarget_ForwardingPath {fromManagedZoneForwardingConfigNameServerTarget_ForwardingPath :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Cloud DNS makes forwarding decisions based on address ranges; that is, RFC1918 addresses forward to the target through the VPC and non-RFC1918 addresses forward to the target through the internet
pattern ManagedZoneForwardingConfigNameServerTarget_ForwardingPath_Default :: ManagedZoneForwardingConfigNameServerTarget_ForwardingPath
pattern ManagedZoneForwardingConfigNameServerTarget_ForwardingPath_Default = ManagedZoneForwardingConfigNameServerTarget_ForwardingPath "DEFAULT"

-- | Cloud DNS always forwards to this target through the VPC.
pattern ManagedZoneForwardingConfigNameServerTarget_ForwardingPath_Private :: ManagedZoneForwardingConfigNameServerTarget_ForwardingPath
pattern ManagedZoneForwardingConfigNameServerTarget_ForwardingPath_Private = ManagedZoneForwardingConfigNameServerTarget_ForwardingPath "PRIVATE"

{-# COMPLETE
  ManagedZoneForwardingConfigNameServerTarget_ForwardingPath_Default,
  ManagedZoneForwardingConfigNameServerTarget_ForwardingPath_Private,
  ManagedZoneForwardingConfigNameServerTarget_ForwardingPath
  #-}

-- | Status of the operation. Can be one of the following: \"PENDING\" or \"DONE\" (output only). A status of \"DONE\" means that the request to update the authoritative servers has been sent, but the servers might not be updated yet.
newtype Operation_Status = Operation_Status {fromOperation_Status :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern Operation_Status_Pending :: Operation_Status
pattern Operation_Status_Pending = Operation_Status "PENDING"

pattern Operation_Status_Done :: Operation_Status
pattern Operation_Status_Done = Operation_Status "DONE"

{-# COMPLETE
  Operation_Status_Pending,
  Operation_Status_Done,
  Operation_Status
  #-}

-- | Forwarding path for this TargetNameServer. If unset or set to DEFAULT, Cloud DNS makes forwarding decisions based on address ranges; that is, RFC1918 addresses go to the VPC network, non-RFC1918 addresses go to the internet. When set to PRIVATE, Cloud DNS always sends queries through the VPC network for this target.
newtype PolicyAlternativeNameServerConfigTargetNameServer_ForwardingPath = PolicyAlternativeNameServerConfigTargetNameServer_ForwardingPath {fromPolicyAlternativeNameServerConfigTargetNameServer_ForwardingPath :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Cloud DNS makes forwarding decision based on IP address ranges; that is, RFC1918 addresses forward to the target through the VPC and non-RFC1918 addresses forward to the target through the internet
pattern PolicyAlternativeNameServerConfigTargetNameServer_ForwardingPath_Default :: PolicyAlternativeNameServerConfigTargetNameServer_ForwardingPath
pattern PolicyAlternativeNameServerConfigTargetNameServer_ForwardingPath_Default = PolicyAlternativeNameServerConfigTargetNameServer_ForwardingPath "DEFAULT"

-- | Cloud DNS always forwards to this target through the VPC.
pattern PolicyAlternativeNameServerConfigTargetNameServer_ForwardingPath_Private :: PolicyAlternativeNameServerConfigTargetNameServer_ForwardingPath
pattern PolicyAlternativeNameServerConfigTargetNameServer_ForwardingPath_Private = PolicyAlternativeNameServerConfigTargetNameServer_ForwardingPath "PRIVATE"

{-# COMPLETE
  PolicyAlternativeNameServerConfigTargetNameServer_ForwardingPath_Default,
  PolicyAlternativeNameServerConfigTargetNameServer_ForwardingPath_Private,
  PolicyAlternativeNameServerConfigTargetNameServer_ForwardingPath
  #-}

-- | Answer this query with a behavior rather than DNS data.
newtype ResponsePolicyRule_Behavior = ResponsePolicyRule_Behavior {fromResponsePolicyRule_Behavior :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ResponsePolicyRule_Behavior_BEHAVIORUNSPECIFIED :: ResponsePolicyRule_Behavior
pattern ResponsePolicyRule_Behavior_BEHAVIORUNSPECIFIED = ResponsePolicyRule_Behavior "BEHAVIOR_UNSPECIFIED"

-- | Skip a less-specific ResponsePolicyRule and continue normal query logic. This can be used in conjunction with a wildcard to exempt a subset of the wildcard ResponsePolicyRule from the ResponsePolicy behavior and e.g., query the public internet instead. For instance, if these rules exist: *.example.com -> 1.2.3.4 foo.example.com -> PASSTHRU Then a query for \'foo.example.com\' skips the wildcard.
pattern ResponsePolicyRule_Behavior_BYPASSRESPONSEPOLICY :: ResponsePolicyRule_Behavior
pattern ResponsePolicyRule_Behavior_BYPASSRESPONSEPOLICY = ResponsePolicyRule_Behavior "BYPASS_RESPONSE_POLICY"

{-# COMPLETE
  ResponsePolicyRule_Behavior_BEHAVIORUNSPECIFIED,
  ResponsePolicyRule_Behavior_BYPASSRESPONSEPOLICY,
  ResponsePolicyRule_Behavior
  #-}

-- | Sorting criterion. The only supported value is change sequence.
newtype ChangesListSortBy = ChangesListSortBy {fromChangesListSortBy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ChangesListSortBy_CHANGESEQUENCE :: ChangesListSortBy
pattern ChangesListSortBy_CHANGESEQUENCE = ChangesListSortBy "CHANGE_SEQUENCE"

{-# COMPLETE
  ChangesListSortBy_CHANGESEQUENCE,
  ChangesListSortBy
  #-}

-- | Sorting criterion. The only supported values are START_TIME and ID.
newtype ManagedZoneOperationsListSortBy = ManagedZoneOperationsListSortBy {fromManagedZoneOperationsListSortBy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ManagedZoneOperationsListSortBy_STARTTIME :: ManagedZoneOperationsListSortBy
pattern ManagedZoneOperationsListSortBy_STARTTIME = ManagedZoneOperationsListSortBy "START_TIME"

pattern ManagedZoneOperationsListSortBy_ID :: ManagedZoneOperationsListSortBy
pattern ManagedZoneOperationsListSortBy_ID = ManagedZoneOperationsListSortBy "ID"

{-# COMPLETE
  ManagedZoneOperationsListSortBy_STARTTIME,
  ManagedZoneOperationsListSortBy_ID,
  ManagedZoneOperationsListSortBy
  #-}
