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
-- Module      : Gogol.Classroom.Invitations.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an invitation. Only one invitation for a user and course may exist at a time. Delete and re-create an invitation to make changes. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to create invitations for this course or for access errors. * @NOT_FOUND@ if the course or the user does not exist. * @FAILED_PRECONDITION@ if the requested user\'s account is disabled or if the user already has this role or a role with greater permissions. * @ALREADY_EXISTS@ if an invitation for the specified user and course already exists.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.invitations.create@.
module Gogol.Classroom.Invitations.Create
  ( -- * Resource
    ClassroomInvitationsCreateResource,

    -- ** Constructing a Request
    newClassroomInvitationsCreate,
    ClassroomInvitationsCreate,
  )
where

import Gogol.Classroom.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @classroom.invitations.create@ method which the
-- 'ClassroomInvitationsCreate' request conforms to.
type ClassroomInvitationsCreateResource =
  "v1"
    Core.:> "invitations"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Invitation
    Core.:> Core.Post '[Core.JSON] Invitation

-- | Creates an invitation. Only one invitation for a user and course may exist at a time. Delete and re-create an invitation to make changes. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to create invitations for this course or for access errors. * @NOT_FOUND@ if the course or the user does not exist. * @FAILED_PRECONDITION@ if the requested user\'s account is disabled or if the user already has this role or a role with greater permissions. * @ALREADY_EXISTS@ if an invitation for the specified user and course already exists.
--
-- /See:/ 'newClassroomInvitationsCreate' smart constructor.
data ClassroomInvitationsCreate = ClassroomInvitationsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Invitation,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomInvitationsCreate' with the minimum fields required to make a request.
newClassroomInvitationsCreate ::
  -- |  Multipart request metadata. See 'payload'.
  Invitation ->
  ClassroomInvitationsCreate
newClassroomInvitationsCreate payload =
  ClassroomInvitationsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ClassroomInvitationsCreate
  where
  type Rs ClassroomInvitationsCreate = Invitation
  type
    Scopes ClassroomInvitationsCreate =
      '[Classroom'Rosters]
  requestClient ClassroomInvitationsCreate {..} =
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
              Core.Proxy ClassroomInvitationsCreateResource
          )
          Core.mempty
