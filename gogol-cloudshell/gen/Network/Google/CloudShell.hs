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
-- Module      : Network.Google.CloudShell
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows users to start, configure, and connect to interactive shell sessions running in the cloud.
--
-- /See:/ <https://cloud.google.com/shell/docs/ Cloud Shell API Reference>
module Network.Google.CloudShell
  ( -- * Configuration
    cloudShellService,

    -- * OAuth Scopes
    cloudPlatformScope,

    -- * Resources

    -- ** cloudshell.operations.cancel
    CloudShellOperationsCancelResource,
    newCloudShellOperationsCancel,
    CloudShellOperationsCancel,

    -- ** cloudshell.operations.delete
    CloudShellOperationsDeleteResource,
    newCloudShellOperationsDelete,
    CloudShellOperationsDelete,

    -- ** cloudshell.operations.get
    CloudShellOperationsGetResource,
    newCloudShellOperationsGet,
    CloudShellOperationsGet,

    -- ** cloudshell.operations.list
    CloudShellOperationsListResource,
    newCloudShellOperationsList,
    CloudShellOperationsList,

    -- ** cloudshell.users.environments.addPublicKey
    CloudShellUsersEnvironmentsAddPublicKeyResource,
    newCloudShellUsersEnvironmentsAddPublicKey,
    CloudShellUsersEnvironmentsAddPublicKey,

    -- ** cloudshell.users.environments.authorize
    CloudShellUsersEnvironmentsAuthorizeResource,
    newCloudShellUsersEnvironmentsAuthorize,
    CloudShellUsersEnvironmentsAuthorize,

    -- ** cloudshell.users.environments.get
    CloudShellUsersEnvironmentsGetResource,
    newCloudShellUsersEnvironmentsGet,
    CloudShellUsersEnvironmentsGet,

    -- ** cloudshell.users.environments.removePublicKey
    CloudShellUsersEnvironmentsRemovePublicKeyResource,
    newCloudShellUsersEnvironmentsRemovePublicKey,
    CloudShellUsersEnvironmentsRemovePublicKey,

    -- ** cloudshell.users.environments.start
    CloudShellUsersEnvironmentsStartResource,
    newCloudShellUsersEnvironmentsStart,
    CloudShellUsersEnvironmentsStart,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AddPublicKeyMetadata
    AddPublicKeyMetadata (..),
    newAddPublicKeyMetadata,

    -- ** AddPublicKeyRequest
    AddPublicKeyRequest (..),
    newAddPublicKeyRequest,

    -- ** AddPublicKeyResponse
    AddPublicKeyResponse (..),
    newAddPublicKeyResponse,

    -- ** AuthorizeEnvironmentMetadata
    AuthorizeEnvironmentMetadata (..),
    newAuthorizeEnvironmentMetadata,

    -- ** AuthorizeEnvironmentRequest
    AuthorizeEnvironmentRequest (..),
    newAuthorizeEnvironmentRequest,

    -- ** AuthorizeEnvironmentResponse
    AuthorizeEnvironmentResponse (..),
    newAuthorizeEnvironmentResponse,

    -- ** CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- ** CreateEnvironmentMetadata
    CreateEnvironmentMetadata (..),
    newCreateEnvironmentMetadata,

    -- ** DeleteEnvironmentMetadata
    DeleteEnvironmentMetadata (..),
    newDeleteEnvironmentMetadata,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** Environment
    Environment (..),
    newEnvironment,

    -- ** Environment_State
    Environment_State (..),

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** RemovePublicKeyMetadata
    RemovePublicKeyMetadata (..),
    newRemovePublicKeyMetadata,

    -- ** RemovePublicKeyRequest
    RemovePublicKeyRequest (..),
    newRemovePublicKeyRequest,

    -- ** RemovePublicKeyResponse
    RemovePublicKeyResponse (..),
    newRemovePublicKeyResponse,

    -- ** StartEnvironmentMetadata
    StartEnvironmentMetadata (..),
    newStartEnvironmentMetadata,

    -- ** StartEnvironmentMetadata_State
    StartEnvironmentMetadata_State (..),

    -- ** StartEnvironmentRequest
    StartEnvironmentRequest (..),
    newStartEnvironmentRequest,

    -- ** StartEnvironmentResponse
    StartEnvironmentResponse (..),
    newStartEnvironmentResponse,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,
  )
where

import Network.Google.CloudShell.Operations.Cancel
import Network.Google.CloudShell.Operations.Delete
import Network.Google.CloudShell.Operations.Get
import Network.Google.CloudShell.Operations.List
import Network.Google.CloudShell.Types
import Network.Google.CloudShell.Users.Environments.AddPublicKey
import Network.Google.CloudShell.Users.Environments.Authorize
import Network.Google.CloudShell.Users.Environments.Get
import Network.Google.CloudShell.Users.Environments.RemovePublicKey
import Network.Google.CloudShell.Users.Environments.Start
