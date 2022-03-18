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
-- Module      : Network.Google.Classroom.Courses.CourseWork.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates one or more fields of a course work. See google.classroom.v1.CourseWork for details of which fields may be updated and who may change them. This request must be made by the Developer Console project of the <https://support.google.com/cloud/answer/6158849 OAuth client ID> used to create the corresponding course work item. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting developer project did not create the corresponding course work, if the user is not permitted to make the requested modification to the student submission, or for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @FAILED_PRECONDITION@ if the requested course work has already been deleted. * @NOT_FOUND@ if the requested course, course work, or student submission does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWork.patch@.
module Network.Google.Classroom.Courses.CourseWork.Patch
  ( -- * Resource
    ClassroomCoursesCourseWorkPatchResource,

    -- ** Constructing a Request
    newClassroomCoursesCourseWorkPatch,
    ClassroomCoursesCourseWorkPatch,
  )
where

import Network.Google.Classroom.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @classroom.courses.courseWork.patch@ method which the
-- 'ClassroomCoursesCourseWorkPatch' request conforms to.
type ClassroomCoursesCourseWorkPatchResource =
  "v1"
    Core.:> "courses"
    Core.:> Core.Capture "courseId" Core.Text
    Core.:> "courseWork"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CourseWork
    Core.:> Core.Patch '[Core.JSON] CourseWork

-- | Updates one or more fields of a course work. See google.classroom.v1.CourseWork for details of which fields may be updated and who may change them. This request must be made by the Developer Console project of the <https://support.google.com/cloud/answer/6158849 OAuth client ID> used to create the corresponding course work item. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting developer project did not create the corresponding course work, if the user is not permitted to make the requested modification to the student submission, or for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @FAILED_PRECONDITION@ if the requested course work has already been deleted. * @NOT_FOUND@ if the requested course, course work, or student submission does not exist.
--
-- /See:/ 'newClassroomCoursesCourseWorkPatch' smart constructor.
data ClassroomCoursesCourseWorkPatch = ClassroomCoursesCourseWorkPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.
    courseId :: Core.Text,
    -- | Identifier of the course work.
    id :: Core.Text,
    -- | Multipart request metadata.
    payload :: CourseWork,
    -- | Mask that identifies which fields on the course work to update. This field is required to do an update. The update fails if invalid fields are specified. If a field supports empty values, it can be cleared by specifying it in the update mask and not in the CourseWork object. If a field that does not support empty values is included in the update mask and not set in the CourseWork object, an @INVALID_ARGUMENT@ error is returned. The following fields may be specified by teachers: * @title@ * @description@ * @state@ * @due_date@ * @due_time@ * @max_points@ * @scheduled_time@ * @submission_modification_mode@ * @topic_id@
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesCourseWorkPatch' with the minimum fields required to make a request.
newClassroomCoursesCourseWorkPatch ::
  -- |  Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. See 'courseId'.
  Core.Text ->
  -- |  Identifier of the course work. See 'id'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CourseWork ->
  ClassroomCoursesCourseWorkPatch
newClassroomCoursesCourseWorkPatch courseId id payload =
  ClassroomCoursesCourseWorkPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      courseId = courseId,
      id = id,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ClassroomCoursesCourseWorkPatch
  where
  type Rs ClassroomCoursesCourseWorkPatch = CourseWork
  type
    Scopes ClassroomCoursesCourseWorkPatch =
      '["https://www.googleapis.com/auth/classroom.coursework.students"]
  requestClient ClassroomCoursesCourseWorkPatch {..} =
    go
      courseId
      id
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
              Core.Proxy ClassroomCoursesCourseWorkPatchResource
          )
          Core.mempty
