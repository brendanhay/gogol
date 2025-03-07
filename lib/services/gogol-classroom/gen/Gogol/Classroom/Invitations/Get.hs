{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Classroom.Invitations.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an invitation. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to view the requested invitation or for access errors. * @NOT_FOUND@ if no invitation exists with the requested ID.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.invitations.get@.
module Gogol.Classroom.Invitations.Get
  ( -- * Resource
    ClassroomInvitationsGetResource,

    -- ** Constructing a Request
    ClassroomInvitationsGet (..),
    newClassroomInvitationsGet,
  )
where

import Gogol.Classroom.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @classroom.invitations.get@ method which the
-- 'ClassroomInvitationsGet' request conforms to.
type ClassroomInvitationsGetResource =
  "v1"
    Core.:> "invitations"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Invitation

-- | Returns an invitation. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to view the requested invitation or for access errors. * @NOT_FOUND@ if no invitation exists with the requested ID.
--
-- /See:/ 'newClassroomInvitationsGet' smart constructor.
data ClassroomInvitationsGet = ClassroomInvitationsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier of the invitation to return.
    id :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomInvitationsGet' with the minimum fields required to make a request.
newClassroomInvitationsGet ::
  -- |  Identifier of the invitation to return. See 'id'.
  Core.Text ->
  ClassroomInvitationsGet
newClassroomInvitationsGet id =
  ClassroomInvitationsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      id = id,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ClassroomInvitationsGet where
  type Rs ClassroomInvitationsGet = Invitation
  type
    Scopes ClassroomInvitationsGet =
      '[Classroom'Rosters, Classroom'Rosters'Readonly]
  requestClient ClassroomInvitationsGet {..} =
    go
      id
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      classroomService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ClassroomInvitationsGetResource)
          Core.mempty
