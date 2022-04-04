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
-- Module      : Gogol.Classroom.UserProfiles.GuardianInvitations.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies a guardian invitation. Currently, the only valid modification is to change the @state@ from @PENDING@ to @COMPLETE@. This has the effect of withdrawing the invitation. This method returns the following error codes: * @PERMISSION_DENIED@ if the current user does not have permission to manage guardians, if guardians are not enabled for the domain in question or for other access errors. * @FAILED_PRECONDITION@ if the guardian link is not in the @PENDING@ state. * @INVALID_ARGUMENT@ if the format of the student ID provided cannot be recognized (it is not an email address, nor a @user_id@ from this API), or if the passed @GuardianInvitation@ has a @state@ other than @COMPLETE@, or if it modifies fields other than @state@. * @NOT_FOUND@ if the student ID provided is a valid student ID, but Classroom has no record of that student, or if the @id@ field does not refer to a guardian invitation known to Classroom.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.userProfiles.guardianInvitations.patch@.
module Gogol.Classroom.UserProfiles.GuardianInvitations.Patch
  ( -- * Resource
    ClassroomUserProfilesGuardianInvitationsPatchResource,

    -- ** Constructing a Request
    ClassroomUserProfilesGuardianInvitationsPatch (..),
    newClassroomUserProfilesGuardianInvitationsPatch,
  )
where

import Gogol.Classroom.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @classroom.userProfiles.guardianInvitations.patch@ method which the
-- 'ClassroomUserProfilesGuardianInvitationsPatch' request conforms to.
type ClassroomUserProfilesGuardianInvitationsPatchResource =
  "v1"
    Core.:> "userProfiles"
    Core.:> Core.Capture "studentId" Core.Text
    Core.:> "guardianInvitations"
    Core.:> Core.Capture "invitationId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GuardianInvitation
    Core.:> Core.Patch '[Core.JSON] GuardianInvitation

-- | Modifies a guardian invitation. Currently, the only valid modification is to change the @state@ from @PENDING@ to @COMPLETE@. This has the effect of withdrawing the invitation. This method returns the following error codes: * @PERMISSION_DENIED@ if the current user does not have permission to manage guardians, if guardians are not enabled for the domain in question or for other access errors. * @FAILED_PRECONDITION@ if the guardian link is not in the @PENDING@ state. * @INVALID_ARGUMENT@ if the format of the student ID provided cannot be recognized (it is not an email address, nor a @user_id@ from this API), or if the passed @GuardianInvitation@ has a @state@ other than @COMPLETE@, or if it modifies fields other than @state@. * @NOT_FOUND@ if the student ID provided is a valid student ID, but Classroom has no record of that student, or if the @id@ field does not refer to a guardian invitation known to Classroom.
--
-- /See:/ 'newClassroomUserProfilesGuardianInvitationsPatch' smart constructor.
data ClassroomUserProfilesGuardianInvitationsPatch = ClassroomUserProfilesGuardianInvitationsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The @id@ field of the @GuardianInvitation@ to be modified.
    invitationId :: Core.Text,
    -- | Multipart request metadata.
    payload :: GuardianInvitation,
    -- | The ID of the student whose guardian invitation is to be modified.
    studentId :: Core.Text,
    -- | Mask that identifies which fields on the course to update. This field is required to do an update. The update fails if invalid fields are specified. The following fields are valid: * @state@ When set in a query parameter, this field should be specified as @updateMask=,,...@
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomUserProfilesGuardianInvitationsPatch' with the minimum fields required to make a request.
newClassroomUserProfilesGuardianInvitationsPatch ::
  -- |  The @id@ field of the @GuardianInvitation@ to be modified. See 'invitationId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GuardianInvitation ->
  -- |  The ID of the student whose guardian invitation is to be modified. See 'studentId'.
  Core.Text ->
  ClassroomUserProfilesGuardianInvitationsPatch
newClassroomUserProfilesGuardianInvitationsPatch invitationId payload studentId =
  ClassroomUserProfilesGuardianInvitationsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      invitationId = invitationId,
      payload = payload,
      studentId = studentId,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ClassroomUserProfilesGuardianInvitationsPatch
  where
  type
    Rs ClassroomUserProfilesGuardianInvitationsPatch =
      GuardianInvitation
  type
    Scopes
      ClassroomUserProfilesGuardianInvitationsPatch =
      '[Classroom'Guardianlinks'Students]
  requestClient
    ClassroomUserProfilesGuardianInvitationsPatch {..} =
      go
        studentId
        invitationId
        xgafv
        accessToken
        callback
        updateMask
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        classroomService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ClassroomUserProfilesGuardianInvitationsPatchResource
            )
            Core.mempty
