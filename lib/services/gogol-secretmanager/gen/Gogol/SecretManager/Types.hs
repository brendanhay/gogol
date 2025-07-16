{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.SecretManager.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.SecretManager.Types
    (
    -- * Configuration
      secretManagerService

    -- * OAuth Scopes
    , CloudPlatform'FullControl

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AccessSecretVersionResponse
    , AccessSecretVersionResponse (..)
    , newAccessSecretVersionResponse

    -- ** AddSecretVersionRequest
    , AddSecretVersionRequest (..)
    , newAddSecretVersionRequest

    -- ** AuditConfig
    , AuditConfig (..)
    , newAuditConfig

    -- ** AuditLogConfig
    , AuditLogConfig (..)
    , newAuditLogConfig

    -- ** AuditLogConfig_LogType
    , AuditLogConfig_LogType (..)

    -- ** Automatic
    , Automatic (..)
    , newAutomatic

    -- ** AutomaticStatus
    , AutomaticStatus (..)
    , newAutomaticStatus

    -- ** Binding
    , Binding (..)
    , newBinding

    -- ** CustomerManagedEncryption
    , CustomerManagedEncryption (..)
    , newCustomerManagedEncryption

    -- ** CustomerManagedEncryptionStatus
    , CustomerManagedEncryptionStatus (..)
    , newCustomerManagedEncryptionStatus

    -- ** DestroySecretVersionRequest
    , DestroySecretVersionRequest (..)
    , newDestroySecretVersionRequest

    -- ** DisableSecretVersionRequest
    , DisableSecretVersionRequest (..)
    , newDisableSecretVersionRequest

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** EnableSecretVersionRequest
    , EnableSecretVersionRequest (..)
    , newEnableSecretVersionRequest

    -- ** Expr
    , Expr (..)
    , newExpr

    -- ** ListLocationsResponse
    , ListLocationsResponse (..)
    , newListLocationsResponse

    -- ** ListSecretVersionsResponse
    , ListSecretVersionsResponse (..)
    , newListSecretVersionsResponse

    -- ** ListSecretsResponse
    , ListSecretsResponse (..)
    , newListSecretsResponse

    -- ** Location
    , Location (..)
    , newLocation

    -- ** Location_Labels
    , Location_Labels (..)
    , newLocation_Labels

    -- ** Location_Metadata
    , Location_Metadata (..)
    , newLocation_Metadata

    -- ** Policy
    , Policy (..)
    , newPolicy

    -- ** Replica
    , Replica (..)
    , newReplica

    -- ** ReplicaStatus
    , ReplicaStatus (..)
    , newReplicaStatus

    -- ** Replication
    , Replication (..)
    , newReplication

    -- ** ReplicationStatus
    , ReplicationStatus (..)
    , newReplicationStatus

    -- ** Rotation
    , Rotation (..)
    , newRotation

    -- ** Secret
    , Secret (..)
    , newSecret

    -- ** Secret_Annotations
    , Secret_Annotations (..)
    , newSecret_Annotations

    -- ** Secret_Labels
    , Secret_Labels (..)
    , newSecret_Labels

    -- ** Secret_VersionAliases
    , Secret_VersionAliases (..)
    , newSecret_VersionAliases

    -- ** SecretPayload
    , SecretPayload (..)
    , newSecretPayload

    -- ** SecretVersion
    , SecretVersion (..)
    , newSecretVersion

    -- ** SecretVersion_State
    , SecretVersion_State (..)

    -- ** SetIamPolicyRequest
    , SetIamPolicyRequest (..)
    , newSetIamPolicyRequest

    -- ** TestIamPermissionsRequest
    , TestIamPermissionsRequest (..)
    , newTestIamPermissionsRequest

    -- ** TestIamPermissionsResponse
    , TestIamPermissionsResponse (..)
    , newTestIamPermissionsResponse

    -- ** Topic
    , Topic (..)
    , newTopic

    -- ** UserManaged
    , UserManaged (..)
    , newUserManaged

    -- ** UserManagedStatus
    , UserManagedStatus (..)
    , newUserManagedStatus
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SecretManager.Internal.Product
import Gogol.SecretManager.Internal.Sum

-- | Default request referring to version @v1@ of the Secret Manager API. This contains the host and root path used as a starting point for constructing service requests.
secretManagerService :: Core.ServiceConfig
secretManagerService
  = Core.defaultService (Core.ServiceId "secretmanager:v1")
      "secretmanager.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl =
     "https://www.googleapis.com/auth/cloud-platform"
