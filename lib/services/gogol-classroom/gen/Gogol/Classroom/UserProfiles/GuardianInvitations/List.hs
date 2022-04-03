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
-- Module      : Gogol.Classroom.UserProfiles.GuardianInvitations.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of guardian invitations that the requesting user is permitted to view, filtered by the parameters provided. This method returns the following error codes: * @PERMISSION_DENIED@ if a @student_id@ is specified, and the requesting user is not permitted to view guardian invitations for that student, if @\"-\"@ is specified as the @student_id@ and the user is not a domain administrator, if guardians are not enabled for the domain in question, or for other access errors. * @INVALID_ARGUMENT@ if a @student_id@ is specified, but its format cannot be recognized (it is not an email address, nor a @student_id@ from the API, nor the literal string @me@). May also be returned if an invalid @page_token@ or @state@ is provided. * @NOT_FOUND@ if a @student_id@ is specified, and its format can be recognized, but Classroom has no record of that student.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.userProfiles.guardianInvitations.list@.
module Gogol.Classroom.UserProfiles.GuardianInvitations.List
  ( -- * Resource
    ClassroomUserProfilesGuardianInvitationsListResource,

    -- ** Constructing a Request
    ClassroomUserProfilesGuardianInvitationsList (..),
    newClassroomUserProfilesGuardianInvitationsList,
  )
where

import Gogol.Classroom.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @classroom.userProfiles.guardianInvitations.list@ method which the
-- 'ClassroomUserProfilesGuardianInvitationsList' request conforms to.
type ClassroomUserProfilesGuardianInvitationsListResource =
  "v1"
    Core.:> "userProfiles"
    Core.:> Core.Capture "studentId" Core.Text
    Core.:> "guardianInvitations"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "invitedEmailAddress" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParams
              "states"
              UserProfilesGuardianInvitationsListStates
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ListGuardianInvitationsResponse

-- | Returns a list of guardian invitations that the requesting user is permitted to view, filtered by the parameters provided. This method returns the following error codes: * @PERMISSION_DENIED@ if a @student_id@ is specified, and the requesting user is not permitted to view guardian invitations for that student, if @\"-\"@ is specified as the @student_id@ and the user is not a domain administrator, if guardians are not enabled for the domain in question, or for other access errors. * @INVALID_ARGUMENT@ if a @student_id@ is specified, but its format cannot be recognized (it is not an email address, nor a @student_id@ from the API, nor the literal string @me@). May also be returned if an invalid @page_token@ or @state@ is provided. * @NOT_FOUND@ if a @student_id@ is specified, and its format can be recognized, but Classroom has no record of that student.
--
-- /See:/ 'newClassroomUserProfilesGuardianInvitationsList' smart constructor.
data ClassroomUserProfilesGuardianInvitationsList = ClassroomUserProfilesGuardianInvitationsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | If specified, only results with the specified @invited_email_address@ are returned.
    invitedEmailAddress :: (Core.Maybe Core.Text),
    -- | Maximum number of items to return. Zero or unspecified indicates that the server may assign a maximum. The server may return fewer than the specified number of results.
    pageSize :: (Core.Maybe Core.Int32),
    -- | nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be returned. The list request must be otherwise identical to the one that resulted in this token.
    pageToken :: (Core.Maybe Core.Text),
    -- | If specified, only results with the specified @state@ values are returned. Otherwise, results with a @state@ of @PENDING@ are returned.
    states :: (Core.Maybe [UserProfilesGuardianInvitationsListStates]),
    -- | The ID of the student whose guardian invitations are to be returned. The identifier can be one of the following: * the numeric identifier for the user * the email address of the user * the string literal @\"me\"@, indicating the requesting user * the string literal @\"-\"@, indicating that results should be returned for all students that the requesting user is permitted to view guardian invitations.
    studentId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomUserProfilesGuardianInvitationsList' with the minimum fields required to make a request.
newClassroomUserProfilesGuardianInvitationsList ::
  -- |  The ID of the student whose guardian invitations are to be returned. The identifier can be one of the following: * the numeric identifier for the user * the email address of the user * the string literal @\"me\"@, indicating the requesting user * the string literal @\"-\"@, indicating that results should be returned for all students that the requesting user is permitted to view guardian invitations. See 'studentId'.
  Core.Text ->
  ClassroomUserProfilesGuardianInvitationsList
newClassroomUserProfilesGuardianInvitationsList studentId =
  ClassroomUserProfilesGuardianInvitationsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      invitedEmailAddress = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      states = Core.Nothing,
      studentId = studentId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ClassroomUserProfilesGuardianInvitationsList
  where
  type
    Rs ClassroomUserProfilesGuardianInvitationsList =
      ListGuardianInvitationsResponse
  type
    Scopes
      ClassroomUserProfilesGuardianInvitationsList =
      '[ Classroom'Guardianlinks'Students,
         Classroom'Guardianlinks'Students'Readonly
       ]
  requestClient
    ClassroomUserProfilesGuardianInvitationsList {..} =
      go
        studentId
        xgafv
        accessToken
        callback
        invitedEmailAddress
        pageSize
        pageToken
        (states Core.^. Core._Default)
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        classroomService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ClassroomUserProfilesGuardianInvitationsListResource
            )
            Core.mempty
