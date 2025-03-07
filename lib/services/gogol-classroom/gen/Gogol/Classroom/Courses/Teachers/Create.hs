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
-- Module      : Gogol.Classroom.Courses.Teachers.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a teacher of a course. Domain administrators are permitted to <https://developers.google.com/classroom/guides/manage-users directly add> users within their domain as teachers to courses within their domain. Non-admin users should send an Invitation instead. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to create teachers in this course or for access errors. * @NOT_FOUND@ if the requested course ID does not exist. * @FAILED_PRECONDITION@ if the requested user\'s account is disabled, for the following request errors: * CourseMemberLimitReached * CourseNotModifiable * CourseTeacherLimitReached * UserGroupsMembershipLimitReached * InactiveCourseOwner * @ALREADY_EXISTS@ if the user is already a teacher or student in the course.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.teachers.create@.
module Gogol.Classroom.Courses.Teachers.Create
  ( -- * Resource
    ClassroomCoursesTeachersCreateResource,

    -- ** Constructing a Request
    ClassroomCoursesTeachersCreate (..),
    newClassroomCoursesTeachersCreate,
  )
where

import Gogol.Classroom.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @classroom.courses.teachers.create@ method which the
-- 'ClassroomCoursesTeachersCreate' request conforms to.
type ClassroomCoursesTeachersCreateResource =
  "v1"
    Core.:> "courses"
    Core.:> Core.Capture "courseId" Core.Text
    Core.:> "teachers"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Teacher
    Core.:> Core.Post '[Core.JSON] Teacher

-- | Creates a teacher of a course. Domain administrators are permitted to <https://developers.google.com/classroom/guides/manage-users directly add> users within their domain as teachers to courses within their domain. Non-admin users should send an Invitation instead. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to create teachers in this course or for access errors. * @NOT_FOUND@ if the requested course ID does not exist. * @FAILED_PRECONDITION@ if the requested user\'s account is disabled, for the following request errors: * CourseMemberLimitReached * CourseNotModifiable * CourseTeacherLimitReached * UserGroupsMembershipLimitReached * InactiveCourseOwner * @ALREADY_EXISTS@ if the user is already a teacher or student in the course.
--
-- /See:/ 'newClassroomCoursesTeachersCreate' smart constructor.
data ClassroomCoursesTeachersCreate = ClassroomCoursesTeachersCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.
    courseId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Teacher,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesTeachersCreate' with the minimum fields required to make a request.
newClassroomCoursesTeachersCreate ::
  -- |  Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. See 'courseId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Teacher ->
  ClassroomCoursesTeachersCreate
newClassroomCoursesTeachersCreate courseId payload =
  ClassroomCoursesTeachersCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      courseId = courseId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ClassroomCoursesTeachersCreate where
  type Rs ClassroomCoursesTeachersCreate = Teacher
  type
    Scopes ClassroomCoursesTeachersCreate =
      '[ Classroom'Profile'Emails,
         Classroom'Profile'Photos,
         Classroom'Rosters
       ]
  requestClient ClassroomCoursesTeachersCreate {..} =
    go
      courseId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      classroomService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ClassroomCoursesTeachersCreateResource)
          Core.mempty
