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
-- Module      : Network.Google.Classroom.Courses.CourseWork.StudentSubmissions.ModifyAttachments
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies attachments of student submission. Attachments may only be added to student submissions belonging to course work objects with a @workType@ of @ASSIGNMENT@. This request must be made by the Developer Console project of the <https://support.google.com/cloud/answer/6158849 OAuth client ID> used to create the corresponding course work item. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access the requested course or course work, if the user is not permitted to modify attachments on the requested student submission, or for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if the requested course, course work, or student submission does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWork.studentSubmissions.modifyAttachments@.
module Network.Google.Classroom.Courses.CourseWork.StudentSubmissions.ModifyAttachments
  ( -- * Resource
    ClassroomCoursesCourseWorkStudentSubmissionsModifyAttachmentsResource,

    -- ** Constructing a Request
    newClassroomCoursesCourseWorkStudentSubmissionsModifyAttachments,
    ClassroomCoursesCourseWorkStudentSubmissionsModifyAttachments,
  )
where

import Network.Google.Classroom.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @classroom.courses.courseWork.studentSubmissions.modifyAttachments@ method which the
-- 'ClassroomCoursesCourseWorkStudentSubmissionsModifyAttachments' request conforms to.
type ClassroomCoursesCourseWorkStudentSubmissionsModifyAttachmentsResource =
  "v1"
    Core.:> "courses"
    Core.:> Core.Capture "courseId" Core.Text
    Core.:> "courseWork"
    Core.:> Core.Capture "courseWorkId" Core.Text
    Core.:> "studentSubmissions"
    Core.:> Core.CaptureMode "id" "modifyAttachments" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              ModifyAttachmentsRequest
    Core.:> Core.Post '[Core.JSON] StudentSubmission

-- | Modifies attachments of student submission. Attachments may only be added to student submissions belonging to course work objects with a @workType@ of @ASSIGNMENT@. This request must be made by the Developer Console project of the <https://support.google.com/cloud/answer/6158849 OAuth client ID> used to create the corresponding course work item. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access the requested course or course work, if the user is not permitted to modify attachments on the requested student submission, or for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if the requested course, course work, or student submission does not exist.
--
-- /See:/ 'newClassroomCoursesCourseWorkStudentSubmissionsModifyAttachments' smart constructor.
data ClassroomCoursesCourseWorkStudentSubmissionsModifyAttachments = ClassroomCoursesCourseWorkStudentSubmissionsModifyAttachments
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
    payload :: ModifyAttachmentsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesCourseWorkStudentSubmissionsModifyAttachments' with the minimum fields required to make a request.
newClassroomCoursesCourseWorkStudentSubmissionsModifyAttachments ::
  -- |  Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. See 'courseId'.
  Core.Text ->
  -- |  Identifier of the course work. See 'courseWorkId'.
  Core.Text ->
  -- |  Identifier of the student submission. See 'id'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ModifyAttachmentsRequest ->
  ClassroomCoursesCourseWorkStudentSubmissionsModifyAttachments
newClassroomCoursesCourseWorkStudentSubmissionsModifyAttachments courseId courseWorkId id payload =
  ClassroomCoursesCourseWorkStudentSubmissionsModifyAttachments
    { xgafv = Core.Nothing,
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
    ClassroomCoursesCourseWorkStudentSubmissionsModifyAttachments
  where
  type
    Rs
      ClassroomCoursesCourseWorkStudentSubmissionsModifyAttachments =
      StudentSubmission
  type
    Scopes
      ClassroomCoursesCourseWorkStudentSubmissionsModifyAttachments =
      '[ "https://www.googleapis.com/auth/classroom.coursework.me",
         "https://www.googleapis.com/auth/classroom.coursework.students"
       ]
  requestClient
    ClassroomCoursesCourseWorkStudentSubmissionsModifyAttachments {..} =
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
                  ClassroomCoursesCourseWorkStudentSubmissionsModifyAttachmentsResource
            )
            Core.mempty
