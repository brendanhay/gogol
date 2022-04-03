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
-- Module      : Gogol.Classroom.Courses.Teachers.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the specified teacher from the specified course. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to delete teachers of this course or for access errors. * @NOT_FOUND@ if no teacher of this course has the requested ID or if the course does not exist. * @FAILED_PRECONDITION@ if the requested ID belongs to the primary teacher of this course. * @FAILED_PRECONDITION@ if the requested ID belongs to the owner of the course Drive folder. * @FAILED_PRECONDITION@ if the course no longer has an active owner.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.teachers.delete@.
module Gogol.Classroom.Courses.Teachers.Delete
  ( -- * Resource
    ClassroomCoursesTeachersDeleteResource,

    -- ** Constructing a Request
    ClassroomCoursesTeachersDelete (..),
    newClassroomCoursesTeachersDelete,
  )
where

import Gogol.Classroom.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @classroom.courses.teachers.delete@ method which the
-- 'ClassroomCoursesTeachersDelete' request conforms to.
type ClassroomCoursesTeachersDeleteResource =
  "v1"
    Core.:> "courses"
    Core.:> Core.Capture "courseId" Core.Text
    Core.:> "teachers"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Removes the specified teacher from the specified course. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to delete teachers of this course or for access errors. * @NOT_FOUND@ if no teacher of this course has the requested ID or if the course does not exist. * @FAILED_PRECONDITION@ if the requested ID belongs to the primary teacher of this course. * @FAILED_PRECONDITION@ if the requested ID belongs to the owner of the course Drive folder. * @FAILED_PRECONDITION@ if the course no longer has an active owner.
--
-- /See:/ 'newClassroomCoursesTeachersDelete' smart constructor.
data ClassroomCoursesTeachersDelete = ClassroomCoursesTeachersDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.
    courseId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Identifier of the teacher to delete. The identifier can be one of the following: * the numeric identifier for the user * the email address of the user * the string literal @\"me\"@, indicating the requesting user
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesTeachersDelete' with the minimum fields required to make a request.
newClassroomCoursesTeachersDelete ::
  -- |  Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. See 'courseId'.
  Core.Text ->
  -- |  Identifier of the teacher to delete. The identifier can be one of the following: * the numeric identifier for the user * the email address of the user * the string literal @\"me\"@, indicating the requesting user See 'userId'.
  Core.Text ->
  ClassroomCoursesTeachersDelete
newClassroomCoursesTeachersDelete courseId userId =
  ClassroomCoursesTeachersDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      courseId = courseId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = userId
    }

instance
  Core.GoogleRequest
    ClassroomCoursesTeachersDelete
  where
  type Rs ClassroomCoursesTeachersDelete = Empty
  type
    Scopes ClassroomCoursesTeachersDelete =
      '[Classroom'Rosters]
  requestClient ClassroomCoursesTeachersDelete {..} =
    go
      courseId
      userId
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
              Core.Proxy ClassroomCoursesTeachersDeleteResource
          )
          Core.mempty
