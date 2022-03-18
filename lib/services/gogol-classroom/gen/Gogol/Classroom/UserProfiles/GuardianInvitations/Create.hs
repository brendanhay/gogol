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
-- Module      : Gogol.Classroom.UserProfiles.GuardianInvitations.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a guardian invitation, and sends an email to the guardian asking them to confirm that they are the student\'s guardian. Once the guardian accepts the invitation, their @state@ will change to @COMPLETED@ and they will start receiving guardian notifications. A @Guardian@ resource will also be created to represent the active guardian. The request object must have the @student_id@ and @invited_email_address@ fields set. Failing to set these fields, or setting any other fields in the request, will result in an error. This method returns the following error codes: * @PERMISSION_DENIED@ if the current user does not have permission to manage guardians, if the guardian in question has already rejected too many requests for that student, if guardians are not enabled for the domain in question, or for other access errors. * @RESOURCE_EXHAUSTED@ if the student or guardian has exceeded the guardian link limit. * @INVALID_ARGUMENT@ if the guardian email address is not valid (for example, if it is too long), or if
-- the format of the student ID provided cannot be recognized (it is not an email address, nor a @user_id@ from this API). This error will also be returned if read-only fields are set, or if the @state@ field is set to to a value other than @PENDING@. * @NOT_FOUND@ if the student ID provided is a valid student ID, but Classroom has no record of that student. * @ALREADY_EXISTS@ if there is already a pending guardian invitation for the student and @invited_email_address@ provided, or if the provided @invited_email_address@ matches the Google account of an existing @Guardian@ for this user.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.userProfiles.guardianInvitations.create@.
module Gogol.Classroom.UserProfiles.GuardianInvitations.Create
    (
    -- * Resource
      ClassroomUserProfilesGuardianInvitationsCreateResource

    -- ** Constructing a Request
    , newClassroomUserProfilesGuardianInvitationsCreate
    , ClassroomUserProfilesGuardianInvitationsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Classroom.Types

-- | A resource alias for @classroom.userProfiles.guardianInvitations.create@ method which the
-- 'ClassroomUserProfilesGuardianInvitationsCreate' request conforms to.
type ClassroomUserProfilesGuardianInvitationsCreateResource
     =
     "v1" Core.:>
       "userProfiles" Core.:>
         Core.Capture "studentId" Core.Text Core.:>
           "guardianInvitations" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] GuardianInvitation Core.:>
                           Core.Post '[Core.JSON] GuardianInvitation

-- | Creates a guardian invitation, and sends an email to the guardian asking them to confirm that they are the student\'s guardian. Once the guardian accepts the invitation, their @state@ will change to @COMPLETED@ and they will start receiving guardian notifications. A @Guardian@ resource will also be created to represent the active guardian. The request object must have the @student_id@ and @invited_email_address@ fields set. Failing to set these fields, or setting any other fields in the request, will result in an error. This method returns the following error codes: * @PERMISSION_DENIED@ if the current user does not have permission to manage guardians, if the guardian in question has already rejected too many requests for that student, if guardians are not enabled for the domain in question, or for other access errors. * @RESOURCE_EXHAUSTED@ if the student or guardian has exceeded the guardian link limit. * @INVALID_ARGUMENT@ if the guardian email address is not valid (for example, if it is too long), or if
-- the format of the student ID provided cannot be recognized (it is not an email address, nor a @user_id@ from this API). This error will also be returned if read-only fields are set, or if the @state@ field is set to to a value other than @PENDING@. * @NOT_FOUND@ if the student ID provided is a valid student ID, but Classroom has no record of that student. * @ALREADY_EXISTS@ if there is already a pending guardian invitation for the student and @invited_email_address@ provided, or if the provided @invited_email_address@ matches the Google account of an existing @Guardian@ for this user.
--
-- /See:/ 'newClassroomUserProfilesGuardianInvitationsCreate' smart constructor.
data ClassroomUserProfilesGuardianInvitationsCreate = ClassroomUserProfilesGuardianInvitationsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: GuardianInvitation
      -- | ID of the student (in standard format)
    , studentId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomUserProfilesGuardianInvitationsCreate' with the minimum fields required to make a request.
newClassroomUserProfilesGuardianInvitationsCreate 
    ::  GuardianInvitation
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  ID of the student (in standard format) See 'studentId'.
    -> ClassroomUserProfilesGuardianInvitationsCreate
newClassroomUserProfilesGuardianInvitationsCreate payload studentId =
  ClassroomUserProfilesGuardianInvitationsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , studentId = studentId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ClassroomUserProfilesGuardianInvitationsCreate
         where
        type Rs
               ClassroomUserProfilesGuardianInvitationsCreate
             = GuardianInvitation
        type Scopes
               ClassroomUserProfilesGuardianInvitationsCreate
             =
             '["https://www.googleapis.com/auth/classroom.guardianlinks.students"]
        requestClient
          ClassroomUserProfilesGuardianInvitationsCreate{..}
          = go studentId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              classroomService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ClassroomUserProfilesGuardianInvitationsCreateResource)
                      Core.mempty

