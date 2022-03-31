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
-- Module      : Gogol.Classroom.Courses.CourseWork.StudentSubmissions.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of student submissions that the requester is permitted to view, factoring in the OAuth scopes of the request. @-@ may be specified as the @course_work_id@ to include student submissions for multiple course work items. Course students may only view their own work. Course teachers and domain administrators may view all student submissions. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access the requested course or course work, or for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if the requested course does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWork.studentSubmissions.list@.
module Gogol.Classroom.Courses.CourseWork.StudentSubmissions.List
  ( -- * Resource
    ClassroomCoursesCourseWorkStudentSubmissionsListResource,

    -- ** Constructing a Request
    newClassroomCoursesCourseWorkStudentSubmissionsList,
    ClassroomCoursesCourseWorkStudentSubmissionsList,
  )
where

import Gogol.Classroom.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @classroom.courses.courseWork.studentSubmissions.list@ method which the
-- 'ClassroomCoursesCourseWorkStudentSubmissionsList' request conforms to.
type ClassroomCoursesCourseWorkStudentSubmissionsListResource =
  "v1"
    Core.:> "courses"
    Core.:> Core.Capture "courseId" Core.Text
    Core.:> "courseWork"
    Core.:> Core.Capture "courseWorkId" Core.Text
    Core.:> "studentSubmissions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam
              "late"
              CoursesCourseWorkStudentSubmissionsListLate
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParams
              "states"
              CoursesCourseWorkStudentSubmissionsListStates
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "userId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ListStudentSubmissionsResponse

-- | Returns a list of student submissions that the requester is permitted to view, factoring in the OAuth scopes of the request. @-@ may be specified as the @course_work_id@ to include student submissions for multiple course work items. Course students may only view their own work. Course teachers and domain administrators may view all student submissions. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access the requested course or course work, or for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if the requested course does not exist.
--
-- /See:/ 'newClassroomCoursesCourseWorkStudentSubmissionsList' smart constructor.
data ClassroomCoursesCourseWorkStudentSubmissionsList = ClassroomCoursesCourseWorkStudentSubmissionsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.
    courseId :: Core.Text,
    -- | Identifier of the student work to request. This may be set to the string literal @\"-\"@ to request student work for all course work in the specified course.
    courseWorkId :: Core.Text,
    -- | Requested lateness value. If specified, returned student submissions are restricted by the requested value. If unspecified, submissions are returned regardless of @late@ value.
    late :: (Core.Maybe CoursesCourseWorkStudentSubmissionsListLate),
    -- | Maximum number of items to return. Zero or unspecified indicates that the server may assign a maximum. The server may return fewer than the specified number of results.
    pageSize :: (Core.Maybe Core.Int32),
    -- | nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be returned. The list request must be otherwise identical to the one that resulted in this token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Requested submission states. If specified, returned student submissions match one of the specified submission states.
    states :: (Core.Maybe [CoursesCourseWorkStudentSubmissionsListStates]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Optional argument to restrict returned student work to those owned by the student with the specified identifier. The identifier can be one of the following: * the numeric identifier for the user * the email address of the user * the string literal @\"me\"@, indicating the requesting user
    userId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesCourseWorkStudentSubmissionsList' with the minimum fields required to make a request.
newClassroomCoursesCourseWorkStudentSubmissionsList ::
  -- |  Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. See 'courseId'.
  Core.Text ->
  -- |  Identifier of the student work to request. This may be set to the string literal @\"-\"@ to request student work for all course work in the specified course. See 'courseWorkId'.
  Core.Text ->
  ClassroomCoursesCourseWorkStudentSubmissionsList
newClassroomCoursesCourseWorkStudentSubmissionsList courseId courseWorkId =
  ClassroomCoursesCourseWorkStudentSubmissionsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      courseId = courseId,
      courseWorkId = courseWorkId,
      late = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      states = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = Core.Nothing
    }

instance
  Core.GoogleRequest
    ClassroomCoursesCourseWorkStudentSubmissionsList
  where
  type
    Rs
      ClassroomCoursesCourseWorkStudentSubmissionsList =
      ListStudentSubmissionsResponse
  type
    Scopes
      ClassroomCoursesCourseWorkStudentSubmissionsList =
      '[ Classroom'Coursework'Me,
         Classroom'Coursework'Me'Readonly,
         Classroom'Coursework'Students,
         Classroom'Coursework'Students'Readonly,
         Classroom'StudentSubmissions'Me'Readonly,
         Classroom'StudentSubmissions'Students'Readonly
       ]
  requestClient
    ClassroomCoursesCourseWorkStudentSubmissionsList {..} =
      go
        courseId
        courseWorkId
        xgafv
        accessToken
        callback
        late
        pageSize
        pageToken
        (states Core.^. Core._Default)
        uploadType
        uploadProtocol
        userId
        (Core.Just Core.AltJSON)
        classroomService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ClassroomCoursesCourseWorkStudentSubmissionsListResource
            )
            Core.mempty
