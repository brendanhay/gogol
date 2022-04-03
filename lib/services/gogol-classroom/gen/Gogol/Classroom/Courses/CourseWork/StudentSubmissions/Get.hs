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
-- Module      : Gogol.Classroom.Courses.CourseWork.StudentSubmissions.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a student submission. * @PERMISSION_DENIED@ if the requesting user is not permitted to access the requested course, course work, or student submission or for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if the requested course, course work, or student submission does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWork.studentSubmissions.get@.
module Gogol.Classroom.Courses.CourseWork.StudentSubmissions.Get
  ( -- * Resource
    ClassroomCoursesCourseWorkStudentSubmissionsGetResource,

    -- ** Constructing a Request
    ClassroomCoursesCourseWorkStudentSubmissionsGet (..),
    newClassroomCoursesCourseWorkStudentSubmissionsGet,
  )
where

import Gogol.Classroom.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @classroom.courses.courseWork.studentSubmissions.get@ method which the
-- 'ClassroomCoursesCourseWorkStudentSubmissionsGet' request conforms to.
type ClassroomCoursesCourseWorkStudentSubmissionsGetResource =
  "v1"
    Core.:> "courses"
    Core.:> Core.Capture "courseId" Core.Text
    Core.:> "courseWork"
    Core.:> Core.Capture "courseWorkId" Core.Text
    Core.:> "studentSubmissions"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] StudentSubmission

-- | Returns a student submission. * @PERMISSION_DENIED@ if the requesting user is not permitted to access the requested course, course work, or student submission or for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if the requested course, course work, or student submission does not exist.
--
-- /See:/ 'newClassroomCoursesCourseWorkStudentSubmissionsGet' smart constructor.
data ClassroomCoursesCourseWorkStudentSubmissionsGet = ClassroomCoursesCourseWorkStudentSubmissionsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.
    courseId :: Core.Text,
    -- | Identifier of the course work.
    courseWorkId :: Core.Text,
    -- | Identifier of the student submission.
    id :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesCourseWorkStudentSubmissionsGet' with the minimum fields required to make a request.
newClassroomCoursesCourseWorkStudentSubmissionsGet ::
  -- |  Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. See 'courseId'.
  Core.Text ->
  -- |  Identifier of the course work. See 'courseWorkId'.
  Core.Text ->
  -- |  Identifier of the student submission. See 'id'.
  Core.Text ->
  ClassroomCoursesCourseWorkStudentSubmissionsGet
newClassroomCoursesCourseWorkStudentSubmissionsGet courseId courseWorkId id =
  ClassroomCoursesCourseWorkStudentSubmissionsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      courseId = courseId,
      courseWorkId = courseWorkId,
      id = id,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ClassroomCoursesCourseWorkStudentSubmissionsGet
  where
  type
    Rs
      ClassroomCoursesCourseWorkStudentSubmissionsGet =
      StudentSubmission
  type
    Scopes
      ClassroomCoursesCourseWorkStudentSubmissionsGet =
      '[ Classroom'Coursework'Me,
         Classroom'Coursework'Me'Readonly,
         Classroom'Coursework'Students,
         Classroom'Coursework'Students'Readonly,
         Classroom'StudentSubmissions'Me'Readonly,
         Classroom'StudentSubmissions'Students'Readonly
       ]
  requestClient
    ClassroomCoursesCourseWorkStudentSubmissionsGet {..} =
      go
        courseId
        courseWorkId
        id
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
                Core.Proxy
                  ClassroomCoursesCourseWorkStudentSubmissionsGetResource
            )
            Core.mempty
