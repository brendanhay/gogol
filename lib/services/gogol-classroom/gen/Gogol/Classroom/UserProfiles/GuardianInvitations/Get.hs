{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Classroom.UserProfiles.GuardianInvitations.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a specific guardian invitation. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to view guardian invitations for the student identified by the @student_id@, if guardians are not enabled for the domain in question, or for other access errors. * @INVALID_ARGUMENT@ if a @student_id@ is specified, but its format cannot be recognized (it is not an email address, nor a @student_id@ from the API, nor the literal string @me@). * @NOT_FOUND@ if Classroom cannot find any record of the given student or @invitation_id@. May also be returned if the student exists, but the requesting user does not have access to see that student.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.userProfiles.guardianInvitations.get@.
module Gogol.Classroom.UserProfiles.GuardianInvitations.Get
    (
    -- * Resource
      ClassroomUserProfilesGuardianInvitationsGetResource

    -- ** Constructing a Request
    , newClassroomUserProfilesGuardianInvitationsGet
    , ClassroomUserProfilesGuardianInvitationsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Classroom.Types

-- | A resource alias for @classroom.userProfiles.guardianInvitations.get@ method which the
-- 'ClassroomUserProfilesGuardianInvitationsGet' request conforms to.
type ClassroomUserProfilesGuardianInvitationsGetResource
     =
     "v1" Core.:>
       "userProfiles" Core.:>
         Core.Capture "studentId" Core.Text Core.:>
           "guardianInvitations" Core.:>
             Core.Capture "invitationId" Core.Text Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] GuardianInvitation

-- | Returns a specific guardian invitation. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to view guardian invitations for the student identified by the @student_id@, if guardians are not enabled for the domain in question, or for other access errors. * @INVALID_ARGUMENT@ if a @student_id@ is specified, but its format cannot be recognized (it is not an email address, nor a @student_id@ from the API, nor the literal string @me@). * @NOT_FOUND@ if Classroom cannot find any record of the given student or @invitation_id@. May also be returned if the student exists, but the requesting user does not have access to see that student.
--
-- /See:/ 'newClassroomUserProfilesGuardianInvitationsGet' smart constructor.
data ClassroomUserProfilesGuardianInvitationsGet = ClassroomUserProfilesGuardianInvitationsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The @id@ field of the @GuardianInvitation@ being requested.
    , invitationId :: Core.Text
      -- | The ID of the student whose guardian invitation is being requested.
    , studentId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomUserProfilesGuardianInvitationsGet' with the minimum fields required to make a request.
newClassroomUserProfilesGuardianInvitationsGet 
    ::  Core.Text
       -- ^  The @id@ field of the @GuardianInvitation@ being requested. See 'invitationId'.
    -> Core.Text
       -- ^  The ID of the student whose guardian invitation is being requested. See 'studentId'.
    -> ClassroomUserProfilesGuardianInvitationsGet
newClassroomUserProfilesGuardianInvitationsGet invitationId studentId =
  ClassroomUserProfilesGuardianInvitationsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , invitationId = invitationId
    , studentId = studentId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ClassroomUserProfilesGuardianInvitationsGet
         where
        type Rs ClassroomUserProfilesGuardianInvitationsGet =
             GuardianInvitation
        type Scopes
               ClassroomUserProfilesGuardianInvitationsGet
             =
             '["https://www.googleapis.com/auth/classroom.guardianlinks.students",
               "https://www.googleapis.com/auth/classroom.guardianlinks.students.readonly"]
        requestClient
          ClassroomUserProfilesGuardianInvitationsGet{..}
          = go studentId invitationId xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              classroomService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ClassroomUserProfilesGuardianInvitationsGetResource)
                      Core.mempty

