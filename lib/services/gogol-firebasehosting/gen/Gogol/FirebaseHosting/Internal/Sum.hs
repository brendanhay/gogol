{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.FirebaseHosting.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.FirebaseHosting.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * CustomDomainMetadata_CertState
    CustomDomainMetadata_CertState
      (
        CustomDomainMetadata_CertState_CERTSTATEUNSPECIFIED,
        CustomDomainMetadata_CertState_CERTPREPARING,
        CustomDomainMetadata_CertState_CERTVALIDATING,
        CustomDomainMetadata_CertState_CERTPROPAGATING,
        CustomDomainMetadata_CertState_CERTACTIVE,
        CustomDomainMetadata_CertState_CERTEXPIRINGSOON,
        CustomDomainMetadata_CertState_CERTEXPIRED,
        ..
      ),

    -- * CustomDomainMetadata_HostState
    CustomDomainMetadata_HostState
      (
        CustomDomainMetadata_HostState_HOSTSTATEUNSPECIFIED,
        CustomDomainMetadata_HostState_HOSTUNHOSTED,
        CustomDomainMetadata_HostState_HOSTUNREACHABLE,
        CustomDomainMetadata_HostState_HOSTMISMATCH,
        CustomDomainMetadata_HostState_HOSTCONFLICT,
        CustomDomainMetadata_HostState_HOSTACTIVE,
        ..
      ),

    -- * CustomDomainMetadata_OwnershipState
    CustomDomainMetadata_OwnershipState
      (
        CustomDomainMetadata_OwnershipState_OWNERSHIPSTATEUNSPECIFIED,
        CustomDomainMetadata_OwnershipState_OWNERSHIPMISSING,
        CustomDomainMetadata_OwnershipState_OWNERSHIPUNREACHABLE,
        CustomDomainMetadata_OwnershipState_OWNERSHIPMISMATCH,
        CustomDomainMetadata_OwnershipState_OWNERSHIPCONFLICT,
        CustomDomainMetadata_OwnershipState_OWNERSHIPPENDING,
        CustomDomainMetadata_OwnershipState_OWNERSHIPACTIVE,
        ..
      ),

    -- * DnsRecord_RequiredAction
    DnsRecord_RequiredAction
      (
        DnsRecord_RequiredAction_None,
        DnsRecord_RequiredAction_Add,
        DnsRecord_RequiredAction_Remove,
        ..
      ),

    -- * DnsRecord_Type
    DnsRecord_Type
      (
        DnsRecord_Type_TYPEUNSPECIFIED,
        DnsRecord_Type_A,
        DnsRecord_Type_Cname,
        DnsRecord_Type_Txt,
        DnsRecord_Type_Aaaa,
        DnsRecord_Type_Caa,
        ..
      ),

    -- * LiveMigrationStep_State
    LiveMigrationStep_State
      (
        LiveMigrationStep_State_STATEUNSPECIFIED,
        LiveMigrationStep_State_Preparing,
        LiveMigrationStep_State_Pending,
        LiveMigrationStep_State_Incomplete,
        LiveMigrationStep_State_Processing,
        LiveMigrationStep_State_Complete,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Xgafv #-}

-- | The @CertState@ of the domain name\'s SSL certificate.
newtype CustomDomainMetadata_CertState = CustomDomainMetadata_CertState { fromCustomDomainMetadata_CertState :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The certificate\'s state is unspecified. The message is invalid if this is unspecified.
pattern CustomDomainMetadata_CertState_CERTSTATEUNSPECIFIED :: CustomDomainMetadata_CertState
pattern CustomDomainMetadata_CertState_CERTSTATEUNSPECIFIED = CustomDomainMetadata_CertState "CERT_STATE_UNSPECIFIED"

-- | The initial state of every certificate, represents Hosting\'s intent to create a certificate, before requests to a Certificate Authority are made.
pattern CustomDomainMetadata_CertState_CERTPREPARING :: CustomDomainMetadata_CertState
pattern CustomDomainMetadata_CertState_CERTPREPARING = CustomDomainMetadata_CertState "CERT_PREPARING"

-- | Hosting is validating whether a domain name\'s DNS records are in a state that allow certificate creation on its behalf.
pattern CustomDomainMetadata_CertState_CERTVALIDATING :: CustomDomainMetadata_CertState
pattern CustomDomainMetadata_CertState_CERTVALIDATING = CustomDomainMetadata_CertState "CERT_VALIDATING"

-- | The certificate was recently created, and needs time to propagate in Hosting\'s CDN.
pattern CustomDomainMetadata_CertState_CERTPROPAGATING :: CustomDomainMetadata_CertState
pattern CustomDomainMetadata_CertState_CERTPROPAGATING = CustomDomainMetadata_CertState "CERT_PROPAGATING"

-- | The certificate is active, providing secure connections for the domain names it represents.
pattern CustomDomainMetadata_CertState_CERTACTIVE :: CustomDomainMetadata_CertState
pattern CustomDomainMetadata_CertState_CERTACTIVE = CustomDomainMetadata_CertState "CERT_ACTIVE"

-- | The certificate is expiring, all domain names on it will be given new certificates.
pattern CustomDomainMetadata_CertState_CERTEXPIRINGSOON :: CustomDomainMetadata_CertState
pattern CustomDomainMetadata_CertState_CERTEXPIRINGSOON = CustomDomainMetadata_CertState "CERT_EXPIRING_SOON"

-- | The certificate has expired. Hosting can no longer serve secure content on your domain name.
pattern CustomDomainMetadata_CertState_CERTEXPIRED :: CustomDomainMetadata_CertState
pattern CustomDomainMetadata_CertState_CERTEXPIRED = CustomDomainMetadata_CertState "CERT_EXPIRED"

{-# COMPLETE
  CustomDomainMetadata_CertState_CERTSTATEUNSPECIFIED,
  CustomDomainMetadata_CertState_CERTPREPARING,
  CustomDomainMetadata_CertState_CERTVALIDATING,
  CustomDomainMetadata_CertState_CERTPROPAGATING,
  CustomDomainMetadata_CertState_CERTACTIVE,
  CustomDomainMetadata_CertState_CERTEXPIRINGSOON,
  CustomDomainMetadata_CertState_CERTEXPIRED,
  CustomDomainMetadata_CertState #-}

-- | The @HostState@ of the domain name this @CustomDomain@ refers to.
newtype CustomDomainMetadata_HostState = CustomDomainMetadata_HostState { fromCustomDomainMetadata_HostState :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Your custom domain\'s host state is unspecified. The message is invalid if this is unspecified.
pattern CustomDomainMetadata_HostState_HOSTSTATEUNSPECIFIED :: CustomDomainMetadata_HostState
pattern CustomDomainMetadata_HostState_HOSTSTATEUNSPECIFIED = CustomDomainMetadata_HostState "HOST_STATE_UNSPECIFIED"

-- | Your custom domain\'s domain name isn\'t associated with any IP addresses.
pattern CustomDomainMetadata_HostState_HOSTUNHOSTED :: CustomDomainMetadata_HostState
pattern CustomDomainMetadata_HostState_HOSTUNHOSTED = CustomDomainMetadata_HostState "HOST_UNHOSTED"

-- | Your custom domain\'s domain name can\'t be reached. Hosting services\' DNS queries to find your domain name\'s IP addresses resulted in errors. See your @CustomDomain@ object\'s @issues@ field for more details.
pattern CustomDomainMetadata_HostState_HOSTUNREACHABLE :: CustomDomainMetadata_HostState
pattern CustomDomainMetadata_HostState_HOSTUNREACHABLE = CustomDomainMetadata_HostState "HOST_UNREACHABLE"

-- | Your custom domain\'s domain name has IP addresses that don\'t ultimately resolve to Hosting.
pattern CustomDomainMetadata_HostState_HOSTMISMATCH :: CustomDomainMetadata_HostState
pattern CustomDomainMetadata_HostState_HOSTMISMATCH = CustomDomainMetadata_HostState "HOST_MISMATCH"

-- | Your custom domain\'s domain name has IP addresses that resolve to both Hosting and other services. To ensure consistent results, remove @A@ and @AAAA@ records related to non-Hosting services.
pattern CustomDomainMetadata_HostState_HOSTCONFLICT :: CustomDomainMetadata_HostState
pattern CustomDomainMetadata_HostState_HOSTCONFLICT = CustomDomainMetadata_HostState "HOST_CONFLICT"

-- | All requests against your custom domain\'s domain name are served by Hosting. If the custom domain\'s @OwnershipState@ is also @ACTIVE@, Hosting serves your Hosting site\'s content on the domain name.
pattern CustomDomainMetadata_HostState_HOSTACTIVE :: CustomDomainMetadata_HostState
pattern CustomDomainMetadata_HostState_HOSTACTIVE = CustomDomainMetadata_HostState "HOST_ACTIVE"

{-# COMPLETE
  CustomDomainMetadata_HostState_HOSTSTATEUNSPECIFIED,
  CustomDomainMetadata_HostState_HOSTUNHOSTED,
  CustomDomainMetadata_HostState_HOSTUNREACHABLE,
  CustomDomainMetadata_HostState_HOSTMISMATCH,
  CustomDomainMetadata_HostState_HOSTCONFLICT,
  CustomDomainMetadata_HostState_HOSTACTIVE,
  CustomDomainMetadata_HostState #-}

-- | The @OwnershipState@ of the domain name this @CustomDomain@ refers to.
newtype CustomDomainMetadata_OwnershipState = CustomDomainMetadata_OwnershipState { fromCustomDomainMetadata_OwnershipState :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Your custom domain\'s ownership state is unspecified. This should never happen.
pattern CustomDomainMetadata_OwnershipState_OWNERSHIPSTATEUNSPECIFIED :: CustomDomainMetadata_OwnershipState
pattern CustomDomainMetadata_OwnershipState_OWNERSHIPSTATEUNSPECIFIED = CustomDomainMetadata_OwnershipState "OWNERSHIP_STATE_UNSPECIFIED"

-- | Your custom domain\'s domain name has no Hosting-related ownership records; no Firebase project has permission to act on the domain name\'s behalf.
pattern CustomDomainMetadata_OwnershipState_OWNERSHIPMISSING :: CustomDomainMetadata_OwnershipState
pattern CustomDomainMetadata_OwnershipState_OWNERSHIPMISSING = CustomDomainMetadata_OwnershipState "OWNERSHIP_MISSING"

-- | Your custom domain\'s domain name can\'t be reached. Hosting services\' DNS queries to find your domain name\'s ownership records resulted in errors. See your @CustomDomain@ object\'s @issues@ field for more details.
pattern CustomDomainMetadata_OwnershipState_OWNERSHIPUNREACHABLE :: CustomDomainMetadata_OwnershipState
pattern CustomDomainMetadata_OwnershipState_OWNERSHIPUNREACHABLE = CustomDomainMetadata_OwnershipState "OWNERSHIP_UNREACHABLE"

-- | Your custom domain\'s domain name is owned by another Firebase project. Remove the conflicting @TXT@ records and replace them with project-specific records for your current Firebase project.
pattern CustomDomainMetadata_OwnershipState_OWNERSHIPMISMATCH :: CustomDomainMetadata_OwnershipState
pattern CustomDomainMetadata_OwnershipState_OWNERSHIPMISMATCH = CustomDomainMetadata_OwnershipState "OWNERSHIP_MISMATCH"

-- | Your custom domain\'s domain name has conflicting @TXT@ records that indicate ownership by both your current Firebase project and another project. Remove the other project\'s ownership records to grant the current project ownership.
pattern CustomDomainMetadata_OwnershipState_OWNERSHIPCONFLICT :: CustomDomainMetadata_OwnershipState
pattern CustomDomainMetadata_OwnershipState_OWNERSHIPCONFLICT = CustomDomainMetadata_OwnershipState "OWNERSHIP_CONFLICT"

-- | Your custom domain\'s DNS records are configured correctly. Hosting will transfer ownership of your domain to this @CustomDomain@ within 24 hours.
pattern CustomDomainMetadata_OwnershipState_OWNERSHIPPENDING :: CustomDomainMetadata_OwnershipState
pattern CustomDomainMetadata_OwnershipState_OWNERSHIPPENDING = CustomDomainMetadata_OwnershipState "OWNERSHIP_PENDING"

-- | Your custom domain\'s domain name has @TXT@ records that grant its project permission to act on its behalf.
pattern CustomDomainMetadata_OwnershipState_OWNERSHIPACTIVE :: CustomDomainMetadata_OwnershipState
pattern CustomDomainMetadata_OwnershipState_OWNERSHIPACTIVE = CustomDomainMetadata_OwnershipState "OWNERSHIP_ACTIVE"

{-# COMPLETE
  CustomDomainMetadata_OwnershipState_OWNERSHIPSTATEUNSPECIFIED,
  CustomDomainMetadata_OwnershipState_OWNERSHIPMISSING,
  CustomDomainMetadata_OwnershipState_OWNERSHIPUNREACHABLE,
  CustomDomainMetadata_OwnershipState_OWNERSHIPMISMATCH,
  CustomDomainMetadata_OwnershipState_OWNERSHIPCONFLICT,
  CustomDomainMetadata_OwnershipState_OWNERSHIPPENDING,
  CustomDomainMetadata_OwnershipState_OWNERSHIPACTIVE,
  CustomDomainMetadata_OwnershipState #-}

-- | Output only. An enum that indicates the a required action for this record.
newtype DnsRecord_RequiredAction = DnsRecord_RequiredAction { fromDnsRecord_RequiredAction :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No action necessary.
pattern DnsRecord_RequiredAction_None :: DnsRecord_RequiredAction
pattern DnsRecord_RequiredAction_None = DnsRecord_RequiredAction "NONE"

-- | Add this record to your DNS records.
pattern DnsRecord_RequiredAction_Add :: DnsRecord_RequiredAction
pattern DnsRecord_RequiredAction_Add = DnsRecord_RequiredAction "ADD"

-- | Remove this record from your DNS records.
pattern DnsRecord_RequiredAction_Remove :: DnsRecord_RequiredAction
pattern DnsRecord_RequiredAction_Remove = DnsRecord_RequiredAction "REMOVE"

{-# COMPLETE
  DnsRecord_RequiredAction_None,
  DnsRecord_RequiredAction_Add,
  DnsRecord_RequiredAction_Remove,
  DnsRecord_RequiredAction #-}

-- | Output only. The record\'s type, which determines what data the record contains.
newtype DnsRecord_Type = DnsRecord_Type { fromDnsRecord_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The record\'s type is unspecified. The message is invalid if this is unspecified.
pattern DnsRecord_Type_TYPEUNSPECIFIED :: DnsRecord_Type
pattern DnsRecord_Type_TYPEUNSPECIFIED = DnsRecord_Type "TYPE_UNSPECIFIED"

-- | An @A@ record, as defined in <https://tools.ietf.org/html/rfc1035 RFC 1035>. A records determine which IPv4 addresses a domain name directs traffic towards.
pattern DnsRecord_Type_A :: DnsRecord_Type
pattern DnsRecord_Type_A = DnsRecord_Type "A"

-- | A @CNAME@ record, as defined in <https://tools.ietf.org/html/rfc1035 RFC 1035>. @CNAME@ or Canonical Name records map a domain name to a different, canonical domain name. If a @CNAME@ record is present, it should be the only record on the domain name.
pattern DnsRecord_Type_Cname :: DnsRecord_Type
pattern DnsRecord_Type_Cname = DnsRecord_Type "CNAME"

-- | A @TXT@ record, as defined in <https://tools.ietf.org/html/rfc1035 RFC 1035>. @TXT@ records hold arbitrary text data on a domain name. Hosting uses @TXT@ records to establish which Firebase Project has permission to act on a domain name.
pattern DnsRecord_Type_Txt :: DnsRecord_Type
pattern DnsRecord_Type_Txt = DnsRecord_Type "TXT"

-- | An AAAA record, as defined in <https://tools.ietf.org/html/rfc3596 RFC 3596> AAAA records determine which IPv6 addresses a domain name directs traffic towards.
pattern DnsRecord_Type_Aaaa :: DnsRecord_Type
pattern DnsRecord_Type_Aaaa = DnsRecord_Type "AAAA"

-- | A CAA record, as defined in <https://tools.ietf.org/html/rfc6844 RFC 6844>. CAA, or Certificate Authority Authorization, records determine which Certificate Authorities (SSL certificate minting organizations) are authorized to mint a certificate for the domain name. Firebase Hosting uses @pki.goog@ as its primary CA. CAA records cascade. A CAA record on @foo.com@ also applies to @bar.foo.com@ unless @bar.foo.com@ has its own set of CAA records. CAA records are optional. If a domain name and its parents have no CAA records, all CAs are authorized to mint certificates on its behalf. In general, Hosting only asks you to modify CAA records when doing so is required to unblock SSL cert creation.
pattern DnsRecord_Type_Caa :: DnsRecord_Type
pattern DnsRecord_Type_Caa = DnsRecord_Type "CAA"

{-# COMPLETE
  DnsRecord_Type_TYPEUNSPECIFIED,
  DnsRecord_Type_A,
  DnsRecord_Type_Cname,
  DnsRecord_Type_Txt,
  DnsRecord_Type_Aaaa,
  DnsRecord_Type_Caa,
  DnsRecord_Type #-}

-- | Output only. The state of the live migration step, indicates whether you should work to complete the step now, in the future, or have already completed it.
newtype LiveMigrationStep_State = LiveMigrationStep_State { fromLiveMigrationStep_State :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The step\'s state is unspecified. The message is invalid if this is unspecified.
pattern LiveMigrationStep_State_STATEUNSPECIFIED :: LiveMigrationStep_State
pattern LiveMigrationStep_State_STATEUNSPECIFIED = LiveMigrationStep_State "STATE_UNSPECIFIED"

-- | Hosting doesn\'t have enough information to construct the step yet. Complete any prior steps and\/or resolve this step\'s issue to proceed.
pattern LiveMigrationStep_State_Preparing :: LiveMigrationStep_State
pattern LiveMigrationStep_State_Preparing = LiveMigrationStep_State "PREPARING"

-- | The step\'s state is pending. Complete prior steps before working on a @PENDING@ step.
pattern LiveMigrationStep_State_Pending :: LiveMigrationStep_State
pattern LiveMigrationStep_State_Pending = LiveMigrationStep_State "PENDING"

-- | The step is incomplete. You should complete any @certVerification@ or @dnsUpdates@ changes to complete it.
pattern LiveMigrationStep_State_Incomplete :: LiveMigrationStep_State
pattern LiveMigrationStep_State_Incomplete = LiveMigrationStep_State "INCOMPLETE"

-- | You\'ve done your part to update records and present challenges as necessary. Hosting is now completing background processes to complete the step, e.g. minting an SSL cert for your domain name.
pattern LiveMigrationStep_State_Processing :: LiveMigrationStep_State
pattern LiveMigrationStep_State_Processing = LiveMigrationStep_State "PROCESSING"

-- | The step is complete. You\'ve already made the necessary changes to your domain and\/or prior hosting service to advance to the next step. Once all steps are complete, Hosting is ready to serve secure content on your domain.
pattern LiveMigrationStep_State_Complete :: LiveMigrationStep_State
pattern LiveMigrationStep_State_Complete = LiveMigrationStep_State "COMPLETE"

{-# COMPLETE
  LiveMigrationStep_State_STATEUNSPECIFIED,
  LiveMigrationStep_State_Preparing,
  LiveMigrationStep_State_Pending,
  LiveMigrationStep_State_Incomplete,
  LiveMigrationStep_State_Processing,
  LiveMigrationStep_State_Complete,
  LiveMigrationStep_State #-}
