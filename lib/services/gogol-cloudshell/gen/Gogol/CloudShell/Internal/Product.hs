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
-- Module      : Gogol.CloudShell.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CloudShell.Internal.Product
  ( -- * AddPublicKeyMetadata
    AddPublicKeyMetadata (..),
    newAddPublicKeyMetadata,

    -- * AddPublicKeyRequest
    AddPublicKeyRequest (..),
    newAddPublicKeyRequest,

    -- * AddPublicKeyResponse
    AddPublicKeyResponse (..),
    newAddPublicKeyResponse,

    -- * AuthorizeEnvironmentMetadata
    AuthorizeEnvironmentMetadata (..),
    newAuthorizeEnvironmentMetadata,

    -- * AuthorizeEnvironmentRequest
    AuthorizeEnvironmentRequest (..),
    newAuthorizeEnvironmentRequest,

    -- * AuthorizeEnvironmentResponse
    AuthorizeEnvironmentResponse (..),
    newAuthorizeEnvironmentResponse,

    -- * CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- * CreateEnvironmentMetadata
    CreateEnvironmentMetadata (..),
    newCreateEnvironmentMetadata,

    -- * DeleteEnvironmentMetadata
    DeleteEnvironmentMetadata (..),
    newDeleteEnvironmentMetadata,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * Environment
    Environment (..),
    newEnvironment,

    -- * ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * RemovePublicKeyMetadata
    RemovePublicKeyMetadata (..),
    newRemovePublicKeyMetadata,

    -- * RemovePublicKeyRequest
    RemovePublicKeyRequest (..),
    newRemovePublicKeyRequest,

    -- * RemovePublicKeyResponse
    RemovePublicKeyResponse (..),
    newRemovePublicKeyResponse,

    -- * StartEnvironmentMetadata
    StartEnvironmentMetadata (..),
    newStartEnvironmentMetadata,

    -- * StartEnvironmentRequest
    StartEnvironmentRequest (..),
    newStartEnvironmentRequest,

    -- * StartEnvironmentResponse
    StartEnvironmentResponse (..),
    newStartEnvironmentResponse,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,
  )
where

import Gogol.CloudShell.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Message included in the metadata field of operations returned from AddPublicKey.
--
-- /See:/ 'newAddPublicKeyMetadata' smart constructor.
data AddPublicKeyMetadata = AddPublicKeyMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddPublicKeyMetadata' with the minimum fields required to make a request.
newAddPublicKeyMetadata ::
  AddPublicKeyMetadata
newAddPublicKeyMetadata = AddPublicKeyMetadata

instance Core.FromJSON AddPublicKeyMetadata where
  parseJSON =
    Core.withObject
      "AddPublicKeyMetadata"
      (\o -> Core.pure AddPublicKeyMetadata)

instance Core.ToJSON AddPublicKeyMetadata where
  toJSON = Core.const Core.emptyObject

-- | Request message for AddPublicKey.
--
-- /See:/ 'newAddPublicKeyRequest' smart constructor.
newtype AddPublicKeyRequest = AddPublicKeyRequest
  { -- | Key that should be added to the environment. Supported formats are @ssh-dss@ (see RFC4253), @ssh-rsa@ (see RFC4253), @ecdsa-sha2-nistp256@ (see RFC5656), @ecdsa-sha2-nistp384@ (see RFC5656) and @ecdsa-sha2-nistp521@ (see RFC5656). It should be structured as \<format> \<content>, where \<content> part is encoded with Base64.
    key :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddPublicKeyRequest' with the minimum fields required to make a request.
newAddPublicKeyRequest ::
  AddPublicKeyRequest
newAddPublicKeyRequest = AddPublicKeyRequest {key = Core.Nothing}

instance Core.FromJSON AddPublicKeyRequest where
  parseJSON =
    Core.withObject
      "AddPublicKeyRequest"
      ( \o ->
          AddPublicKeyRequest Core.<$> (o Core..:? "key")
      )

instance Core.ToJSON AddPublicKeyRequest where
  toJSON AddPublicKeyRequest {..} =
    Core.object
      (Core.catMaybes [("key" Core..=) Core.<$> key])

-- | Response message for AddPublicKey.
--
-- /See:/ 'newAddPublicKeyResponse' smart constructor.
newtype AddPublicKeyResponse = AddPublicKeyResponse
  { -- | Key that was added to the environment.
    key :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddPublicKeyResponse' with the minimum fields required to make a request.
newAddPublicKeyResponse ::
  AddPublicKeyResponse
newAddPublicKeyResponse = AddPublicKeyResponse {key = Core.Nothing}

instance Core.FromJSON AddPublicKeyResponse where
  parseJSON =
    Core.withObject
      "AddPublicKeyResponse"
      ( \o ->
          AddPublicKeyResponse Core.<$> (o Core..:? "key")
      )

instance Core.ToJSON AddPublicKeyResponse where
  toJSON AddPublicKeyResponse {..} =
    Core.object
      (Core.catMaybes [("key" Core..=) Core.<$> key])

-- | Message included in the metadata field of operations returned from AuthorizeEnvironment.
--
-- /See:/ 'newAuthorizeEnvironmentMetadata' smart constructor.
data AuthorizeEnvironmentMetadata = AuthorizeEnvironmentMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuthorizeEnvironmentMetadata' with the minimum fields required to make a request.
newAuthorizeEnvironmentMetadata ::
  AuthorizeEnvironmentMetadata
newAuthorizeEnvironmentMetadata = AuthorizeEnvironmentMetadata

instance Core.FromJSON AuthorizeEnvironmentMetadata where
  parseJSON =
    Core.withObject
      "AuthorizeEnvironmentMetadata"
      (\o -> Core.pure AuthorizeEnvironmentMetadata)

instance Core.ToJSON AuthorizeEnvironmentMetadata where
  toJSON = Core.const Core.emptyObject

-- | Request message for AuthorizeEnvironment.
--
-- /See:/ 'newAuthorizeEnvironmentRequest' smart constructor.
data AuthorizeEnvironmentRequest = AuthorizeEnvironmentRequest
  { -- | The OAuth access token that should be sent to the environment.
    accessToken :: (Core.Maybe Core.Text),
    -- | The time when the credentials expire. If not set, defaults to one hour from when the server received the request.
    expireTime :: (Core.Maybe Core.DateTime'),
    -- | The OAuth ID token that should be sent to the environment.
    idToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuthorizeEnvironmentRequest' with the minimum fields required to make a request.
newAuthorizeEnvironmentRequest ::
  AuthorizeEnvironmentRequest
newAuthorizeEnvironmentRequest =
  AuthorizeEnvironmentRequest
    { accessToken = Core.Nothing,
      expireTime = Core.Nothing,
      idToken = Core.Nothing
    }

instance Core.FromJSON AuthorizeEnvironmentRequest where
  parseJSON =
    Core.withObject
      "AuthorizeEnvironmentRequest"
      ( \o ->
          AuthorizeEnvironmentRequest
            Core.<$> (o Core..:? "accessToken")
            Core.<*> (o Core..:? "expireTime")
            Core.<*> (o Core..:? "idToken")
      )

instance Core.ToJSON AuthorizeEnvironmentRequest where
  toJSON AuthorizeEnvironmentRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessToken" Core..=) Core.<$> accessToken,
            ("expireTime" Core..=) Core.<$> expireTime,
            ("idToken" Core..=) Core.<$> idToken
          ]
      )

-- | Response message for AuthorizeEnvironment.
--
-- /See:/ 'newAuthorizeEnvironmentResponse' smart constructor.
data AuthorizeEnvironmentResponse = AuthorizeEnvironmentResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuthorizeEnvironmentResponse' with the minimum fields required to make a request.
newAuthorizeEnvironmentResponse ::
  AuthorizeEnvironmentResponse
newAuthorizeEnvironmentResponse = AuthorizeEnvironmentResponse

instance Core.FromJSON AuthorizeEnvironmentResponse where
  parseJSON =
    Core.withObject
      "AuthorizeEnvironmentResponse"
      (\o -> Core.pure AuthorizeEnvironmentResponse)

instance Core.ToJSON AuthorizeEnvironmentResponse where
  toJSON = Core.const Core.emptyObject

-- | The request message for Operations.CancelOperation.
--
-- /See:/ 'newCancelOperationRequest' smart constructor.
data CancelOperationRequest = CancelOperationRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CancelOperationRequest' with the minimum fields required to make a request.
newCancelOperationRequest ::
  CancelOperationRequest
newCancelOperationRequest = CancelOperationRequest

instance Core.FromJSON CancelOperationRequest where
  parseJSON =
    Core.withObject
      "CancelOperationRequest"
      (\o -> Core.pure CancelOperationRequest)

instance Core.ToJSON CancelOperationRequest where
  toJSON = Core.const Core.emptyObject

-- | Message included in the metadata field of operations returned from CreateEnvironment.
--
-- /See:/ 'newCreateEnvironmentMetadata' smart constructor.
data CreateEnvironmentMetadata = CreateEnvironmentMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateEnvironmentMetadata' with the minimum fields required to make a request.
newCreateEnvironmentMetadata ::
  CreateEnvironmentMetadata
newCreateEnvironmentMetadata = CreateEnvironmentMetadata

instance Core.FromJSON CreateEnvironmentMetadata where
  parseJSON =
    Core.withObject
      "CreateEnvironmentMetadata"
      (\o -> Core.pure CreateEnvironmentMetadata)

instance Core.ToJSON CreateEnvironmentMetadata where
  toJSON = Core.const Core.emptyObject

-- | Message included in the metadata field of operations returned from DeleteEnvironment.
--
-- /See:/ 'newDeleteEnvironmentMetadata' smart constructor.
data DeleteEnvironmentMetadata = DeleteEnvironmentMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteEnvironmentMetadata' with the minimum fields required to make a request.
newDeleteEnvironmentMetadata ::
  DeleteEnvironmentMetadata
newDeleteEnvironmentMetadata = DeleteEnvironmentMetadata

instance Core.FromJSON DeleteEnvironmentMetadata where
  parseJSON =
    Core.withObject
      "DeleteEnvironmentMetadata"
      (\o -> Core.pure DeleteEnvironmentMetadata)

instance Core.ToJSON DeleteEnvironmentMetadata where
  toJSON = Core.const Core.emptyObject

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | A Cloud Shell environment, which is defined as the combination of a Docker image specifying what is installed on the environment and a home directory containing the user\'s data that will remain across sessions. Each user has at least an environment with the ID \"default\".
--
-- /See:/ 'newEnvironment' smart constructor.
data Environment = Environment
  { -- | Required. Immutable. Full path to the Docker image used to run this environment, e.g. \"gcr.io\/dev-con\/cloud-devshell:latest\".
    dockerImage :: (Core.Maybe Core.Text),
    -- | Output only. The environment\'s identifier, unique among the user\'s environments.
    id :: (Core.Maybe Core.Text),
    -- | Immutable. Full name of this resource, in the format @users\/{owner_email}\/environments\/{environment_id}@. @{owner_email}@ is the email address of the user to whom this environment belongs, and @{environment_id}@ is the identifier of this environment. For example, @users\/someone\@example.com\/environments\/default@.
    name :: (Core.Maybe Core.Text),
    -- | Output only. Public keys associated with the environment. Clients can connect to this environment via SSH only if they possess a private key corresponding to at least one of these public keys. Keys can be added to or removed from the environment using the AddPublicKey and RemovePublicKey methods.
    publicKeys :: (Core.Maybe [Core.Text]),
    -- | Output only. Host to which clients can connect to initiate SSH sessions with the environment.
    sshHost :: (Core.Maybe Core.Text),
    -- | Output only. Port to which clients can connect to initiate SSH sessions with the environment.
    sshPort :: (Core.Maybe Core.Int32),
    -- | Output only. Username that clients should use when initiating SSH sessions with the environment.
    sshUsername :: (Core.Maybe Core.Text),
    -- | Output only. Current execution state of this environment.
    state :: (Core.Maybe Environment_State),
    -- | Output only. Host to which clients can connect to initiate HTTPS or WSS connections with the environment.
    webHost :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Environment' with the minimum fields required to make a request.
newEnvironment ::
  Environment
newEnvironment =
  Environment
    { dockerImage = Core.Nothing,
      id = Core.Nothing,
      name = Core.Nothing,
      publicKeys = Core.Nothing,
      sshHost = Core.Nothing,
      sshPort = Core.Nothing,
      sshUsername = Core.Nothing,
      state = Core.Nothing,
      webHost = Core.Nothing
    }

instance Core.FromJSON Environment where
  parseJSON =
    Core.withObject
      "Environment"
      ( \o ->
          Environment
            Core.<$> (o Core..:? "dockerImage")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "publicKeys" Core..!= Core.mempty)
            Core.<*> (o Core..:? "sshHost")
            Core.<*> (o Core..:? "sshPort")
            Core.<*> (o Core..:? "sshUsername")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "webHost")
      )

instance Core.ToJSON Environment where
  toJSON Environment {..} =
    Core.object
      ( Core.catMaybes
          [ ("dockerImage" Core..=) Core.<$> dockerImage,
            ("id" Core..=) Core.<$> id,
            ("name" Core..=) Core.<$> name,
            ("publicKeys" Core..=) Core.<$> publicKeys,
            ("sshHost" Core..=) Core.<$> sshHost,
            ("sshPort" Core..=) Core.<$> sshPort,
            ("sshUsername" Core..=) Core.<$> sshUsername,
            ("state" Core..=) Core.<$> state,
            ("webHost" Core..=) Core.<$> webHost
          ]
      )

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'newListOperationsResponse' smart constructor.
data ListOperationsResponse = ListOperationsResponse
  { -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A list of operations that matches the specified filter in the request.
    operations :: (Core.Maybe [Operation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
newListOperationsResponse ::
  ListOperationsResponse
newListOperationsResponse =
  ListOperationsResponse
    { nextPageToken = Core.Nothing,
      operations = Core.Nothing
    }

instance Core.FromJSON ListOperationsResponse where
  parseJSON =
    Core.withObject
      "ListOperationsResponse"
      ( \o ->
          ListOperationsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "operations" Core..!= Core.mempty)
      )

instance Core.ToJSON ListOperationsResponse where
  toJSON ListOperationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("operations" Core..=) Core.<$> operations
          ]
      )

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
    done :: (Core.Maybe Core.Bool),
    -- | The error result of the operation in case of failure or cancellation.
    error :: (Core.Maybe Status),
    -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    metadata :: (Core.Maybe Operation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    name :: (Core.Maybe Core.Text),
    -- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    response :: (Core.Maybe Operation_Response)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation ::
  Operation
newOperation =
  Operation
    { done = Core.Nothing,
      error = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      response = Core.Nothing
    }

instance Core.FromJSON Operation where
  parseJSON =
    Core.withObject
      "Operation"
      ( \o ->
          Operation
            Core.<$> (o Core..:? "done")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "response")
      )

instance Core.ToJSON Operation where
  toJSON Operation {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            ("error" Core..=) Core.<$> error,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("response" Core..=) Core.<$> response
          ]
      )

-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newOperation_Metadata' smart constructor.
newtype Operation_Metadata = Operation_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Metadata
newOperation_Metadata additional = Operation_Metadata {additional = additional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      ( \o ->
          Operation_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} =
    Core.toJSON additional

-- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Response
newOperation_Response additional = Operation_Response {additional = additional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      ( \o ->
          Operation_Response Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} =
    Core.toJSON additional

-- | Message included in the metadata field of operations returned from RemovePublicKey.
--
-- /See:/ 'newRemovePublicKeyMetadata' smart constructor.
data RemovePublicKeyMetadata = RemovePublicKeyMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemovePublicKeyMetadata' with the minimum fields required to make a request.
newRemovePublicKeyMetadata ::
  RemovePublicKeyMetadata
newRemovePublicKeyMetadata = RemovePublicKeyMetadata

instance Core.FromJSON RemovePublicKeyMetadata where
  parseJSON =
    Core.withObject
      "RemovePublicKeyMetadata"
      (\o -> Core.pure RemovePublicKeyMetadata)

instance Core.ToJSON RemovePublicKeyMetadata where
  toJSON = Core.const Core.emptyObject

-- | Request message for RemovePublicKey.
--
-- /See:/ 'newRemovePublicKeyRequest' smart constructor.
newtype RemovePublicKeyRequest = RemovePublicKeyRequest
  { -- | Key that should be removed from the environment.
    key :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemovePublicKeyRequest' with the minimum fields required to make a request.
newRemovePublicKeyRequest ::
  RemovePublicKeyRequest
newRemovePublicKeyRequest = RemovePublicKeyRequest {key = Core.Nothing}

instance Core.FromJSON RemovePublicKeyRequest where
  parseJSON =
    Core.withObject
      "RemovePublicKeyRequest"
      ( \o ->
          RemovePublicKeyRequest Core.<$> (o Core..:? "key")
      )

instance Core.ToJSON RemovePublicKeyRequest where
  toJSON RemovePublicKeyRequest {..} =
    Core.object
      (Core.catMaybes [("key" Core..=) Core.<$> key])

-- | Response message for RemovePublicKey.
--
-- /See:/ 'newRemovePublicKeyResponse' smart constructor.
data RemovePublicKeyResponse = RemovePublicKeyResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemovePublicKeyResponse' with the minimum fields required to make a request.
newRemovePublicKeyResponse ::
  RemovePublicKeyResponse
newRemovePublicKeyResponse = RemovePublicKeyResponse

instance Core.FromJSON RemovePublicKeyResponse where
  parseJSON =
    Core.withObject
      "RemovePublicKeyResponse"
      (\o -> Core.pure RemovePublicKeyResponse)

instance Core.ToJSON RemovePublicKeyResponse where
  toJSON = Core.const Core.emptyObject

-- | Message included in the metadata field of operations returned from StartEnvironment.
--
-- /See:/ 'newStartEnvironmentMetadata' smart constructor.
newtype StartEnvironmentMetadata = StartEnvironmentMetadata
  { -- | Current state of the environment being started.
    state :: (Core.Maybe StartEnvironmentMetadata_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StartEnvironmentMetadata' with the minimum fields required to make a request.
newStartEnvironmentMetadata ::
  StartEnvironmentMetadata
newStartEnvironmentMetadata = StartEnvironmentMetadata {state = Core.Nothing}

instance Core.FromJSON StartEnvironmentMetadata where
  parseJSON =
    Core.withObject
      "StartEnvironmentMetadata"
      ( \o ->
          StartEnvironmentMetadata
            Core.<$> (o Core..:? "state")
      )

instance Core.ToJSON StartEnvironmentMetadata where
  toJSON StartEnvironmentMetadata {..} =
    Core.object
      (Core.catMaybes [("state" Core..=) Core.<$> state])

-- | Request message for StartEnvironment.
--
-- /See:/ 'newStartEnvironmentRequest' smart constructor.
data StartEnvironmentRequest = StartEnvironmentRequest
  { -- | The initial access token passed to the environment. If this is present and valid, the environment will be pre-authenticated with gcloud so that the user can run gcloud commands in Cloud Shell without having to log in. This code can be updated later by calling AuthorizeEnvironment.
    accessToken :: (Core.Maybe Core.Text),
    -- | Public keys that should be added to the environment before it is started.
    publicKeys :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StartEnvironmentRequest' with the minimum fields required to make a request.
newStartEnvironmentRequest ::
  StartEnvironmentRequest
newStartEnvironmentRequest =
  StartEnvironmentRequest
    { accessToken = Core.Nothing,
      publicKeys = Core.Nothing
    }

instance Core.FromJSON StartEnvironmentRequest where
  parseJSON =
    Core.withObject
      "StartEnvironmentRequest"
      ( \o ->
          StartEnvironmentRequest
            Core.<$> (o Core..:? "accessToken")
            Core.<*> (o Core..:? "publicKeys" Core..!= Core.mempty)
      )

instance Core.ToJSON StartEnvironmentRequest where
  toJSON StartEnvironmentRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessToken" Core..=) Core.<$> accessToken,
            ("publicKeys" Core..=) Core.<$> publicKeys
          ]
      )

-- | Message included in the response field of operations returned from StartEnvironment once the operation is complete.
--
-- /See:/ 'newStartEnvironmentResponse' smart constructor.
newtype StartEnvironmentResponse = StartEnvironmentResponse
  { -- | Environment that was started.
    environment :: (Core.Maybe Environment)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StartEnvironmentResponse' with the minimum fields required to make a request.
newStartEnvironmentResponse ::
  StartEnvironmentResponse
newStartEnvironmentResponse =
  StartEnvironmentResponse {environment = Core.Nothing}

instance Core.FromJSON StartEnvironmentResponse where
  parseJSON =
    Core.withObject
      "StartEnvironmentResponse"
      ( \o ->
          StartEnvironmentResponse
            Core.<$> (o Core..:? "environment")
      )

instance Core.ToJSON StartEnvironmentResponse where
  toJSON StartEnvironmentResponse {..} =
    Core.object
      ( Core.catMaybes
          [("environment" Core..=) Core.<$> environment]
      )

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus ::
  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details" Core..!= Core.mempty)
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Status where
  toJSON Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      ( \o ->
          Status_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} =
    Core.toJSON additional
