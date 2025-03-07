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
-- Module      : Gogol.Classroom.Invitations.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of invitations that the requesting user is permitted to view, restricted to those that match the list request. /Note:/ At least one of @user_id@ or @course_id@ must be supplied. Both fields can be supplied. This method returns the following error codes: * @PERMISSION_DENIED@ for access errors.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.invitations.list@.
module Gogol.Classroom.Invitations.List
  ( -- * Resource
    ClassroomInvitationsListResource,

    -- ** Constructing a Request
    ClassroomInvitationsList (..),
    newClassroomInvitationsList,
  )
where

import Gogol.Classroom.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @classroom.invitations.list@ method which the
-- 'ClassroomInvitationsList' request conforms to.
type ClassroomInvitationsListResource =
  "v1"
    Core.:> "invitations"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "courseId" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "userId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListInvitationsResponse

-- | Returns a list of invitations that the requesting user is permitted to view, restricted to those that match the list request. /Note:/ At least one of @user_id@ or @course_id@ must be supplied. Both fields can be supplied. This method returns the following error codes: * @PERMISSION_DENIED@ for access errors.
--
-- /See:/ 'newClassroomInvitationsList' smart constructor.
data ClassroomInvitationsList = ClassroomInvitationsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Restricts returned invitations to those for a course with the specified identifier.
    courseId :: (Core.Maybe Core.Text),
    -- | Maximum number of items to return. The default is 500 if unspecified or @0@. The server may return fewer than the specified number of results.
    pageSize :: (Core.Maybe Core.Int32),
    -- | nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be returned. The list request must be otherwise identical to the one that resulted in this token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Restricts returned invitations to those for a specific user. The identifier can be one of the following: * the numeric identifier for the user * the email address of the user * the string literal @\"me\"@, indicating the requesting user
    userId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomInvitationsList' with the minimum fields required to make a request.
newClassroomInvitationsList ::
  ClassroomInvitationsList
newClassroomInvitationsList =
  ClassroomInvitationsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      courseId = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = Core.Nothing
    }

instance Core.GoogleRequest ClassroomInvitationsList where
  type Rs ClassroomInvitationsList = ListInvitationsResponse
  type
    Scopes ClassroomInvitationsList =
      '[Classroom'Rosters, Classroom'Rosters'Readonly]
  requestClient ClassroomInvitationsList {..} =
    go
      xgafv
      accessToken
      callback
      courseId
      pageSize
      pageToken
      uploadType
      uploadProtocol
      userId
      (Core.Just Core.AltJSON)
      classroomService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ClassroomInvitationsListResource)
          Core.mempty
