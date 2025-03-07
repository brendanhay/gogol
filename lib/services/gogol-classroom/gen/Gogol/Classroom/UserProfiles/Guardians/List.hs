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
-- Module      : Gogol.Classroom.UserProfiles.Guardians.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of guardians that the requesting user is permitted to view, restricted to those that match the request. To list guardians for any student that the requesting user may view guardians for, use the literal character @-@ for the student ID. This method returns the following error codes: * @PERMISSION_DENIED@ if a @student_id@ is specified, and the requesting user is not permitted to view guardian information for that student, if @\"-\"@ is specified as the @student_id@ and the user is not a domain administrator, if guardians are not enabled for the domain in question, if the @invited_email_address@ filter is set by a user who is not a domain administrator, or for other access errors. * @INVALID_ARGUMENT@ if a @student_id@ is specified, but its format cannot be recognized (it is not an email address, nor a @student_id@ from the API, nor the literal string @me@). May also be returned if an invalid @page_token@ is provided. * @NOT_FOUND@ if a @student_id@ is specified, and its format can be
-- recognized, but Classroom has no record of that student.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.userProfiles.guardians.list@.
module Gogol.Classroom.UserProfiles.Guardians.List
  ( -- * Resource
    ClassroomUserProfilesGuardiansListResource,

    -- ** Constructing a Request
    ClassroomUserProfilesGuardiansList (..),
    newClassroomUserProfilesGuardiansList,
  )
where

import Gogol.Classroom.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @classroom.userProfiles.guardians.list@ method which the
-- 'ClassroomUserProfilesGuardiansList' request conforms to.
type ClassroomUserProfilesGuardiansListResource =
  "v1"
    Core.:> "userProfiles"
    Core.:> Core.Capture "studentId" Core.Text
    Core.:> "guardians"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "invitedEmailAddress" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListGuardiansResponse

-- | Returns a list of guardians that the requesting user is permitted to view, restricted to those that match the request. To list guardians for any student that the requesting user may view guardians for, use the literal character @-@ for the student ID. This method returns the following error codes: * @PERMISSION_DENIED@ if a @student_id@ is specified, and the requesting user is not permitted to view guardian information for that student, if @\"-\"@ is specified as the @student_id@ and the user is not a domain administrator, if guardians are not enabled for the domain in question, if the @invited_email_address@ filter is set by a user who is not a domain administrator, or for other access errors. * @INVALID_ARGUMENT@ if a @student_id@ is specified, but its format cannot be recognized (it is not an email address, nor a @student_id@ from the API, nor the literal string @me@). May also be returned if an invalid @page_token@ is provided. * @NOT_FOUND@ if a @student_id@ is specified, and its format can be
-- recognized, but Classroom has no record of that student.
--
-- /See:/ 'newClassroomUserProfilesGuardiansList' smart constructor.
data ClassroomUserProfilesGuardiansList = ClassroomUserProfilesGuardiansList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Filter results by the email address that the original invitation was sent to, resulting in this guardian link. This filter can only be used by domain administrators.
    invitedEmailAddress :: (Core.Maybe Core.Text),
    -- | Maximum number of items to return. Zero or unspecified indicates that the server may assign a maximum. The server may return fewer than the specified number of results.
    pageSize :: (Core.Maybe Core.Int32),
    -- | nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be returned. The list request must be otherwise identical to the one that resulted in this token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Filter results by the student who the guardian is linked to. The identifier can be one of the following: * the numeric identifier for the user * the email address of the user * the string literal @\"me\"@, indicating the requesting user * the string literal @\"-\"@, indicating that results should be returned for all students that the requesting user has access to view.
    studentId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomUserProfilesGuardiansList' with the minimum fields required to make a request.
newClassroomUserProfilesGuardiansList ::
  -- |  Filter results by the student who the guardian is linked to. The identifier can be one of the following: * the numeric identifier for the user * the email address of the user * the string literal @\"me\"@, indicating the requesting user * the string literal @\"-\"@, indicating that results should be returned for all students that the requesting user has access to view. See 'studentId'.
  Core.Text ->
  ClassroomUserProfilesGuardiansList
newClassroomUserProfilesGuardiansList studentId =
  ClassroomUserProfilesGuardiansList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      invitedEmailAddress = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      studentId = studentId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ClassroomUserProfilesGuardiansList where
  type Rs ClassroomUserProfilesGuardiansList = ListGuardiansResponse
  type
    Scopes ClassroomUserProfilesGuardiansList =
      '[ Classroom'Guardianlinks'Me'Readonly,
         Classroom'Guardianlinks'Students,
         Classroom'Guardianlinks'Students'Readonly
       ]
  requestClient ClassroomUserProfilesGuardiansList {..} =
    go
      studentId
      xgafv
      accessToken
      callback
      invitedEmailAddress
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      classroomService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ClassroomUserProfilesGuardiansListResource
          )
          Core.mempty
