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
-- Module      : Gogol.FirebaseHosting.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.FirebaseHosting.Types
    (
    -- * Configuration
      firebaseHostingService

    -- * OAuth Scopes
    , CloudPlatform'FullControl
    , Firebase'FullControl

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** CancelOperationRequest
    , CancelOperationRequest (..)
    , newCancelOperationRequest

    -- ** CertVerification
    , CertVerification (..)
    , newCertVerification

    -- ** CustomDomainMetadata
    , CustomDomainMetadata (..)
    , newCustomDomainMetadata

    -- ** CustomDomainMetadata_CertState
    , CustomDomainMetadata_CertState (..)

    -- ** CustomDomainMetadata_HostState
    , CustomDomainMetadata_HostState (..)

    -- ** CustomDomainMetadata_OwnershipState
    , CustomDomainMetadata_OwnershipState (..)

    -- ** DnsRecord
    , DnsRecord (..)
    , newDnsRecord

    -- ** DnsRecord_RequiredAction
    , DnsRecord_RequiredAction (..)

    -- ** DnsRecord_Type
    , DnsRecord_Type (..)

    -- ** DnsRecordSet
    , DnsRecordSet (..)
    , newDnsRecordSet

    -- ** DnsUpdates
    , DnsUpdates (..)
    , newDnsUpdates

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** HttpUpdate
    , HttpUpdate (..)
    , newHttpUpdate

    -- ** ListOperationsResponse
    , ListOperationsResponse (..)
    , newListOperationsResponse

    -- ** LiveMigrationStep
    , LiveMigrationStep (..)
    , newLiveMigrationStep

    -- ** LiveMigrationStep_State
    , LiveMigrationStep_State (..)

    -- ** Operation
    , Operation (..)
    , newOperation

    -- ** Operation_Metadata
    , Operation_Metadata (..)
    , newOperation_Metadata

    -- ** Operation_Response
    , Operation_Response (..)
    , newOperation_Response

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem
    ) where

import qualified Gogol.Prelude as Core
import Gogol.FirebaseHosting.Internal.Product
import Gogol.FirebaseHosting.Internal.Sum

-- | Default request referring to version @v1@ of the Firebase Hosting API. This contains the host and root path used as a starting point for constructing service requests.
firebaseHostingService :: Core.ServiceConfig
firebaseHostingService
  = Core.defaultService
      (Core.ServiceId "firebasehosting:v1")
      "firebasehosting.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl = "https://www.googleapis.com/auth/cloud-platform"

-- | View and administer all your Firebase data and settings
type Firebase'FullControl = "https://www.googleapis.com/auth/firebase"
