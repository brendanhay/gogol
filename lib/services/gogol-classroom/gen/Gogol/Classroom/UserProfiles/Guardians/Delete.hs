{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Classroom.UserProfiles.Guardians.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a guardian. The guardian will no longer receive guardian notifications and the guardian will no longer be accessible via the API. This method returns the following error codes: * @PERMISSION_DENIED@ if no user that matches the provided @student_id@ is visible to the requesting user, if the requesting user is not permitted to manage guardians for the student identified by the @student_id@, if guardians are not enabled for the domain in question, or for other access errors. * @INVALID_ARGUMENT@ if a @student_id@ is specified, but its format cannot be recognized (it is not an email address, nor a @student_id@ from the API). * @NOT_FOUND@ if the requesting user is permitted to modify guardians for the requested @student_id@, but no @Guardian@ record exists for that student with the provided @guardian_id@.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.userProfiles.guardians.delete@.
module Gogol.Classroom.UserProfiles.Guardians.Delete
  ( -- * Resource
    ClassroomUserProfilesGuardiansDeleteResource,

    -- ** Constructing a Request
    ClassroomUserProfilesGuardiansDelete (..),
    newClassroomUserProfilesGuardiansDelete,
  )
where

import Gogol.Classroom.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @classroom.userProfiles.guardians.delete@ method which the
-- 'ClassroomUserProfilesGuardiansDelete' request conforms to.
type ClassroomUserProfilesGuardiansDeleteResource =
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
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes a guardian. The guardian will no longer receive guardian notifications and the guardian will no longer be accessible via the API. This method returns the following error codes: * @PERMISSION_DENIED@ if no user that matches the provided @student_id@ is visible to the requesting user, if the requesting user is not permitted to manage guardians for the student identified by the @student_id@, if guardians are not enabled for the domain in question, or for other access errors. * @INVALID_ARGUMENT@ if a @student_id@ is specified, but its format cannot be recognized (it is not an email address, nor a @student_id@ from the API). * @NOT_FOUND@ if the requesting user is permitted to modify guardians for the requested @student_id@, but no @Guardian@ record exists for that student with the provided @guardian_id@.
--
-- /See:/ 'newClassroomUserProfilesGuardiansDelete' smart constructor.
data ClassroomUserProfilesGuardiansDelete = ClassroomUserProfilesGuardiansDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The @id@ field from a @Guardian@.
    guardianId :: Core.Text,
    -- | The student whose guardian is to be deleted. One of the following: * the numeric identifier for the user * the email address of the user * the string literal @\"me\"@, indicating the requesting user
    studentId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomUserProfilesGuardiansDelete' with the minimum fields required to make a request.
newClassroomUserProfilesGuardiansDelete ::
  -- |  The @id@ field from a @Guardian@. See 'guardianId'.
  Core.Text ->
  -- |  The student whose guardian is to be deleted. One of the following: * the numeric identifier for the user * the email address of the user * the string literal @\"me\"@, indicating the requesting user See 'studentId'.
  Core.Text ->
  ClassroomUserProfilesGuardiansDelete
newClassroomUserProfilesGuardiansDelete guardianId studentId =
  ClassroomUserProfilesGuardiansDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      guardianId = guardianId,
      studentId = studentId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ClassroomUserProfilesGuardiansDelete where
  type Rs ClassroomUserProfilesGuardiansDelete = Empty
  type
    Scopes ClassroomUserProfilesGuardiansDelete =
      '[Classroom'Guardianlinks'Students]
  requestClient ClassroomUserProfilesGuardiansDelete {..} =
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
              Core.Proxy ClassroomUserProfilesGuardiansDeleteResource
          )
          Core.mempty
