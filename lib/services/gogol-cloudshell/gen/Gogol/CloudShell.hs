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
-- Module      : Gogol.CloudShell
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows users to start, configure, and connect to interactive shell sessions running in the cloud.
--
-- /See:/ <https://cloud.google.com/shell/docs/ Cloud Shell API Reference>
module Gogol.CloudShell
    (
    -- * Configuration
      cloudShellService

    -- * OAuth Scopes
    , CloudPlatform'FullControl

    -- * Resources

    -- ** cloudshell.operations.cancel
    , CloudShellOperationsCancelResource
    , CloudShellOperationsCancel (..)
    , newCloudShellOperationsCancel

    -- ** cloudshell.operations.delete
    , CloudShellOperationsDeleteResource
    , CloudShellOperationsDelete (..)
    , newCloudShellOperationsDelete

    -- ** cloudshell.operations.get
    , CloudShellOperationsGetResource
    , CloudShellOperationsGet (..)
    , newCloudShellOperationsGet

    -- ** cloudshell.operations.list
    , CloudShellOperationsListResource
    , CloudShellOperationsList (..)
    , newCloudShellOperationsList

    -- ** cloudshell.users.environments.addPublicKey
    , CloudShellUsersEnvironmentsAddPublicKeyResource
    , CloudShellUsersEnvironmentsAddPublicKey (..)
    , newCloudShellUsersEnvironmentsAddPublicKey

    -- ** cloudshell.users.environments.authorize
    , CloudShellUsersEnvironmentsAuthorizeResource
    , CloudShellUsersEnvironmentsAuthorize (..)
    , newCloudShellUsersEnvironmentsAuthorize

    -- ** cloudshell.users.environments.get
    , CloudShellUsersEnvironmentsGetResource
    , CloudShellUsersEnvironmentsGet (..)
    , newCloudShellUsersEnvironmentsGet

    -- ** cloudshell.users.environments.removePublicKey
    , CloudShellUsersEnvironmentsRemovePublicKeyResource
    , CloudShellUsersEnvironmentsRemovePublicKey (..)
    , newCloudShellUsersEnvironmentsRemovePublicKey

    -- ** cloudshell.users.environments.start
    , CloudShellUsersEnvironmentsStartResource
    , CloudShellUsersEnvironmentsStart (..)
    , newCloudShellUsersEnvironmentsStart

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

import Gogol.CloudShell.Operations.Cancel
import Gogol.CloudShell.Operations.Delete
import Gogol.CloudShell.Operations.Get
import Gogol.CloudShell.Operations.List
import Gogol.CloudShell.Types
import Gogol.CloudShell.Users.Environments.AddPublicKey
import Gogol.CloudShell.Users.Environments.Authorize
import Gogol.CloudShell.Users.Environments.Get
import Gogol.CloudShell.Users.Environments.RemovePublicKey
import Gogol.CloudShell.Users.Environments.Start
