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
-- Module      : Network.Google.Classroom.Registrations.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a @Registration@, causing Classroom to start sending notifications from the provided @feed@ to the destination provided in @cloudPubSubTopic@. Returns the created @Registration@. Currently, this will be the same as the argument, but with server-assigned fields such as @expiry_time@ and @id@ filled in. Note that any value specified for the @expiry_time@ or @id@ fields will be ignored. While Classroom may validate the @cloudPubSubTopic@ and return errors on a best effort basis, it is the caller\'s responsibility to ensure that it exists and that Classroom has permission to publish to it. This method may return the following error codes: * @PERMISSION_DENIED@ if: * the authenticated user does not have permission to receive notifications from the requested field; or * the current user has not granted access to the current Cloud project with the appropriate scope for the requested feed. Note that domain-wide delegation of authority is not currently supported for this purpose. If the request has the
-- appropriate scope, but no grant exists, a Request Errors is returned. * another access error is encountered. * @INVALID_ARGUMENT@ if: * no @cloudPubsubTopic@ is specified, or the specified @cloudPubsubTopic@ is not valid; or * no @feed@ is specified, or the specified @feed@ is not valid. * @NOT_FOUND@ if: * the specified @feed@ cannot be located, or the requesting user does not have permission to determine whether or not it exists; or * the specified @cloudPubsubTopic@ cannot be located, or Classroom has not been granted permission to publish to it.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.registrations.create@.
module Network.Google.Classroom.Registrations.Create
  ( -- * Resource
    ClassroomRegistrationsCreateResource,

    -- ** Constructing a Request
    newClassroomRegistrationsCreate,
    ClassroomRegistrationsCreate,
  )
where

import Network.Google.Classroom.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @classroom.registrations.create@ method which the
-- 'ClassroomRegistrationsCreate' request conforms to.
type ClassroomRegistrationsCreateResource =
  "v1"
    Core.:> "registrations"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Registration
    Core.:> Core.Post '[Core.JSON] Registration

-- | Creates a @Registration@, causing Classroom to start sending notifications from the provided @feed@ to the destination provided in @cloudPubSubTopic@. Returns the created @Registration@. Currently, this will be the same as the argument, but with server-assigned fields such as @expiry_time@ and @id@ filled in. Note that any value specified for the @expiry_time@ or @id@ fields will be ignored. While Classroom may validate the @cloudPubSubTopic@ and return errors on a best effort basis, it is the caller\'s responsibility to ensure that it exists and that Classroom has permission to publish to it. This method may return the following error codes: * @PERMISSION_DENIED@ if: * the authenticated user does not have permission to receive notifications from the requested field; or * the current user has not granted access to the current Cloud project with the appropriate scope for the requested feed. Note that domain-wide delegation of authority is not currently supported for this purpose. If the request has the
-- appropriate scope, but no grant exists, a Request Errors is returned. * another access error is encountered. * @INVALID_ARGUMENT@ if: * no @cloudPubsubTopic@ is specified, or the specified @cloudPubsubTopic@ is not valid; or * no @feed@ is specified, or the specified @feed@ is not valid. * @NOT_FOUND@ if: * the specified @feed@ cannot be located, or the requesting user does not have permission to determine whether or not it exists; or * the specified @cloudPubsubTopic@ cannot be located, or Classroom has not been granted permission to publish to it.
--
-- /See:/ 'newClassroomRegistrationsCreate' smart constructor.
data ClassroomRegistrationsCreate = ClassroomRegistrationsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Registration,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomRegistrationsCreate' with the minimum fields required to make a request.
newClassroomRegistrationsCreate ::
  -- |  Multipart request metadata. See 'payload'.
  Registration ->
  ClassroomRegistrationsCreate
newClassroomRegistrationsCreate payload =
  ClassroomRegistrationsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ClassroomRegistrationsCreate
  where
  type Rs ClassroomRegistrationsCreate = Registration
  type
    Scopes ClassroomRegistrationsCreate =
      '["https://www.googleapis.com/auth/classroom.push-notifications"]
  requestClient ClassroomRegistrationsCreate {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      classroomService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ClassroomRegistrationsCreateResource
          )
          Core.mempty
