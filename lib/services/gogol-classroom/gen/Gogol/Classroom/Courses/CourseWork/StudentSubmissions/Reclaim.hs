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
-- Module      : Gogol.Classroom.Courses.CourseWork.StudentSubmissions.Reclaim
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reclaims a student submission on behalf of the student that owns it. Reclaiming a student submission transfers ownership of attached Drive files to the student and updates the submission state. Only the student that owns the requested student submission may call this method, and only for a student submission that has been turned in. This request must be made by the Developer Console project of the <https://support.google.com/cloud/answer/6158849 OAuth client ID> used to create the corresponding course work item. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access the requested course or course work, unsubmit the requested student submission, or for access errors. * @FAILED_PRECONDITION@ if the student submission has not been turned in. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if the requested course, course work, or student submission does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWork.studentSubmissions.reclaim@.
module Gogol.Classroom.Courses.CourseWork.StudentSubmissions.Reclaim
  ( -- * Resource
    ClassroomCoursesCourseWorkStudentSubmissionsReclaimResource,

    -- ** Constructing a Request
    ClassroomCoursesCourseWorkStudentSubmissionsReclaim (..),
    newClassroomCoursesCourseWorkStudentSubmissionsReclaim,
  )
where

import Gogol.Classroom.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @classroom.courses.courseWork.studentSubmissions.reclaim@ method which the
-- 'ClassroomCoursesCourseWorkStudentSubmissionsReclaim' request conforms to.
type ClassroomCoursesCourseWorkStudentSubmissionsReclaimResource =
  "v1"
    Core.:> "courses"
    Core.:> Core.Capture "courseId" Core.Text
    Core.:> "courseWork"
    Core.:> Core.Capture "courseWorkId" Core.Text
    Core.:> "studentSubmissions"
    Core.:> Core.CaptureMode "id" "reclaim" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ReclaimStudentSubmissionRequest
    Core.:> Core.Post '[Core.JSON] Empty

-- | Reclaims a student submission on behalf of the student that owns it. Reclaiming a student submission transfers ownership of attached Drive files to the student and updates the submission state. Only the student that owns the requested student submission may call this method, and only for a student submission that has been turned in. This request must be made by the Developer Console project of the <https://support.google.com/cloud/answer/6158849 OAuth client ID> used to create the corresponding course work item. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access the requested course or course work, unsubmit the requested student submission, or for access errors. * @FAILED_PRECONDITION@ if the student submission has not been turned in. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if the requested course, course work, or student submission does not exist.
--
-- /See:/ 'newClassroomCoursesCourseWorkStudentSubmissionsReclaim' smart constructor.
data ClassroomCoursesCourseWorkStudentSubmissionsReclaim = ClassroomCoursesCourseWorkStudentSubmissionsReclaim
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
    -- | Multipart request metadata.
    payload :: ReclaimStudentSubmissionRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesCourseWorkStudentSubmissionsReclaim' with the minimum fields required to make a request.
newClassroomCoursesCourseWorkStudentSubmissionsReclaim ::
  -- |  Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. See 'courseId'.
  Core.Text ->
  -- |  Identifier of the course work. See 'courseWorkId'.
  Core.Text ->
  -- |  Identifier of the student submission. See 'id'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ReclaimStudentSubmissionRequest ->
  ClassroomCoursesCourseWorkStudentSubmissionsReclaim
newClassroomCoursesCourseWorkStudentSubmissionsReclaim
  courseId
  courseWorkId
  id
  payload =
    ClassroomCoursesCourseWorkStudentSubmissionsReclaim
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        courseId = courseId,
        courseWorkId = courseWorkId,
        id = id,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    ClassroomCoursesCourseWorkStudentSubmissionsReclaim
  where
  type Rs ClassroomCoursesCourseWorkStudentSubmissionsReclaim = Empty
  type
    Scopes ClassroomCoursesCourseWorkStudentSubmissionsReclaim =
      '[Classroom'Coursework'Me]
  requestClient
    ClassroomCoursesCourseWorkStudentSubmissionsReclaim {..} =
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
        payload
        classroomService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ClassroomCoursesCourseWorkStudentSubmissionsReclaimResource
            )
            Core.mempty
