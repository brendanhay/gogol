{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudShell.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.CloudShell.Types
    (
    -- * Configuration
      cloudShellService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AddPublicKeyMetadata
    , AddPublicKeyMetadata (..)
    , newAddPublicKeyMetadata

    -- ** AddPublicKeyRequest
    , AddPublicKeyRequest (..)
    , newAddPublicKeyRequest

    -- ** AddPublicKeyResponse
    , AddPublicKeyResponse (..)
    , newAddPublicKeyResponse

    -- ** AuthorizeEnvironmentMetadata
    , AuthorizeEnvironmentMetadata (..)
    , newAuthorizeEnvironmentMetadata

    -- ** AuthorizeEnvironmentRequest
    , AuthorizeEnvironmentRequest (..)
    , newAuthorizeEnvironmentRequest

    -- ** AuthorizeEnvironmentResponse
    , AuthorizeEnvironmentResponse (..)
    , newAuthorizeEnvironmentResponse

    -- ** CancelOperationRequest
    , CancelOperationRequest (..)
    , newCancelOperationRequest

    -- ** CreateEnvironmentMetadata
    , CreateEnvironmentMetadata (..)
    , newCreateEnvironmentMetadata

    -- ** DeleteEnvironmentMetadata
    , DeleteEnvironmentMetadata (..)
    , newDeleteEnvironmentMetadata

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** Environment
    , Environment (..)
    , newEnvironment

    -- ** Environment_State
    , Environment_State (..)

    -- ** ListOperationsResponse
    , ListOperationsResponse (..)
    , newListOperationsResponse

    -- ** Operation
    , Operation (..)
    , newOperation

    -- ** Operation_Metadata
    , Operation_Metadata (..)
    , newOperation_Metadata

    -- ** Operation_Response
    , Operation_Response (..)
    , newOperation_Response

    -- ** RemovePublicKeyMetadata
    , RemovePublicKeyMetadata (..)
    , newRemovePublicKeyMetadata

    -- ** RemovePublicKeyRequest
    , RemovePublicKeyRequest (..)
    , newRemovePublicKeyRequest

    -- ** RemovePublicKeyResponse
    , RemovePublicKeyResponse (..)
    , newRemovePublicKeyResponse

    -- ** StartEnvironmentMetadata
    , StartEnvironmentMetadata (..)
    , newStartEnvironmentMetadata

    -- ** StartEnvironmentMetadata_State
    , StartEnvironmentMetadata_State (..)

    -- ** StartEnvironmentRequest
    , StartEnvironmentRequest (..)
    , newStartEnvironmentRequest

    -- ** StartEnvironmentResponse
    , StartEnvironmentResponse (..)
    , newStartEnvironmentResponse

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudShell.Internal.Product
import Gogol.CloudShell.Internal.Sum

-- | Default request referring to version @v1@ of the Cloud Shell API. This contains the host and root path used as a starting point for constructing service requests.
cloudShellService :: Core.ServiceConfig
cloudShellService
  = Core.defaultService
      (Core.ServiceId "cloudshell:v1")
      "cloudshell.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy
