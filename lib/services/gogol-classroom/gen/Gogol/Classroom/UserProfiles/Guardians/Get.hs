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
-- Module      : Gogol.Classroom.UserProfiles.Guardians.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a specific guardian. This method returns the following error codes: * @PERMISSION_DENIED@ if no user that matches the provided @student_id@ is visible to the requesting user, if the requesting user is not permitted to view guardian information for the student identified by the @student_id@, if guardians are not enabled for the domain in question, or for other access errors. * @INVALID_ARGUMENT@ if a @student_id@ is specified, but its format cannot be recognized (it is not an email address, nor a @student_id@ from the API, nor the literal string @me@). * @NOT_FOUND@ if the requesting user is permitted to view guardians for the requested @student_id@, but no @Guardian@ record exists for that student that matches the provided @guardian_id@.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.userProfiles.guardians.get@.
module Gogol.Classroom.UserProfiles.Guardians.Get
  ( -- * Resource
    ClassroomUserProfilesGuardiansGetResource,

    -- ** Constructing a Request
    ClassroomUserProfilesGuardiansGet (..),
    newClassroomUserProfilesGuardiansGet,
  )
where

import Gogol.Classroom.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @classroom.userProfiles.guardians.get@ method which the
-- 'ClassroomUserProfilesGuardiansGet' request conforms to.
type ClassroomUserProfilesGuardiansGetResource =
  "v1"
    Core.:> "userProfiles"
    Core.:> Core.Capture "studentId" Core.Text
    Core.:> "guardians"
    Core.:> Core.Capture "guardianId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Guardian

-- | Returns a specific guardian. This method returns the following error codes: * @PERMISSION_DENIED@ if no user that matches the provided @student_id@ is visible to the requesting user, if the requesting user is not permitted to view guardian information for the student identified by the @student_id@, if guardians are not enabled for the domain in question, or for other access errors. * @INVALID_ARGUMENT@ if a @student_id@ is specified, but its format cannot be recognized (it is not an email address, nor a @student_id@ from the API, nor the literal string @me@). * @NOT_FOUND@ if the requesting user is permitted to view guardians for the requested @student_id@, but no @Guardian@ record exists for that student that matches the provided @guardian_id@.
--
-- /See:/ 'newClassroomUserProfilesGuardiansGet' smart constructor.
data ClassroomUserProfilesGuardiansGet = ClassroomUserProfilesGuardiansGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The @id@ field from a @Guardian@.
    guardianId :: Core.Text,
    -- | The student whose guardian is being requested. One of the following: * the numeric identifier for the user * the email address of the user * the string literal @\"me\"@, indicating the requesting user
    studentId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomUserProfilesGuardiansGet' with the minimum fields required to make a request.
newClassroomUserProfilesGuardiansGet ::
  -- |  The @id@ field from a @Guardian@. See 'guardianId'.
  Core.Text ->
  -- |  The student whose guardian is being requested. One of the following: * the numeric identifier for the user * the email address of the user * the string literal @\"me\"@, indicating the requesting user See 'studentId'.
  Core.Text ->
  ClassroomUserProfilesGuardiansGet
newClassroomUserProfilesGuardiansGet guardianId studentId =
  ClassroomUserProfilesGuardiansGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      guardianId = guardianId,
      studentId = studentId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ClassroomUserProfilesGuardiansGet where
  type Rs ClassroomUserProfilesGuardiansGet = Guardian
  type
    Scopes ClassroomUserProfilesGuardiansGet =
      '[ Classroom'Guardianlinks'Me'Readonly,
         Classroom'Guardianlinks'Students,
         Classroom'Guardianlinks'Students'Readonly
       ]
  requestClient ClassroomUserProfilesGuardiansGet {..} =
    go
      studentId
      guardianId
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
          ( Core.Proxy ::
              Core.Proxy ClassroomUserProfilesGuardiansGetResource
          )
          Core.mempty
