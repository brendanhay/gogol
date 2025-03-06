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
-- Module      : Gogol.Classroom.Courses.CourseWork.Rubrics.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a rubric. The requesting user and course owner must have rubrics creation capabilities. For details, see <https://developers.google.com/classroom/rubrics/limitations#license-requirements licensing requirements>. For further details, see </classroom/rubrics/limitations Rubrics structure and known limitations>. This request must be made by the Google Cloud console of the <https://support.google.com/cloud/answer/6158849 OAuth client ID> used to create the parent course work item. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user isn\'t permitted to create rubrics for course work in the requested course. * @INTERNAL@ if the request has insufficient OAuth scopes. * @INVALID_ARGUMENT@ if the request is malformed and for the following request error: * @RubricCriteriaInvalidFormat@ * @NOT_FOUND@ if the requested course or course work don\'t exist or the user doesn\'t have access to the course or course work. * @FAILED_PRECONDITION@ for the following request error: *
-- @AttachmentNotVisible@
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWork.rubrics.create@.
module Gogol.Classroom.Courses.CourseWork.Rubrics.Create
  ( -- * Resource
    ClassroomCoursesCourseWorkRubricsCreateResource,

    -- ** Constructing a Request
    ClassroomCoursesCourseWorkRubricsCreate (..),
    newClassroomCoursesCourseWorkRubricsCreate,
  )
where

import Gogol.Classroom.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @classroom.courses.courseWork.rubrics.create@ method which the
-- 'ClassroomCoursesCourseWorkRubricsCreate' request conforms to.
type ClassroomCoursesCourseWorkRubricsCreateResource =
  "v1"
    Core.:> "courses"
    Core.:> Core.Capture "courseId" Core.Text
    Core.:> "courseWork"
    Core.:> Core.Capture "courseWorkId" Core.Text
    Core.:> "rubrics"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Rubric
    Core.:> Core.Post '[Core.JSON] Rubric

-- | Creates a rubric. The requesting user and course owner must have rubrics creation capabilities. For details, see <https://developers.google.com/classroom/rubrics/limitations#license-requirements licensing requirements>. For further details, see </classroom/rubrics/limitations Rubrics structure and known limitations>. This request must be made by the Google Cloud console of the <https://support.google.com/cloud/answer/6158849 OAuth client ID> used to create the parent course work item. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user isn\'t permitted to create rubrics for course work in the requested course. * @INTERNAL@ if the request has insufficient OAuth scopes. * @INVALID_ARGUMENT@ if the request is malformed and for the following request error: * @RubricCriteriaInvalidFormat@ * @NOT_FOUND@ if the requested course or course work don\'t exist or the user doesn\'t have access to the course or course work. * @FAILED_PRECONDITION@ for the following request error: *
-- @AttachmentNotVisible@
--
-- /See:/ 'newClassroomCoursesCourseWorkRubricsCreate' smart constructor.
data ClassroomCoursesCourseWorkRubricsCreate = ClassroomCoursesCourseWorkRubricsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Identifier of the course.
    courseId :: Core.Text,
    -- | Required. Identifier of the course work.
    courseWorkId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Rubric,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesCourseWorkRubricsCreate' with the minimum fields required to make a request.
newClassroomCoursesCourseWorkRubricsCreate ::
  -- |  Required. Identifier of the course. See 'courseId'.
  Core.Text ->
  -- |  Required. Identifier of the course work. See 'courseWorkId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Rubric ->
  ClassroomCoursesCourseWorkRubricsCreate
newClassroomCoursesCourseWorkRubricsCreate
  courseId
  courseWorkId
  payload =
    ClassroomCoursesCourseWorkRubricsCreate
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        courseId = courseId,
        courseWorkId = courseWorkId,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance Core.GoogleRequest ClassroomCoursesCourseWorkRubricsCreate where
  type Rs ClassroomCoursesCourseWorkRubricsCreate = Rubric
  type
    Scopes ClassroomCoursesCourseWorkRubricsCreate =
      '[Classroom'Coursework'Students]
  requestClient ClassroomCoursesCourseWorkRubricsCreate {..} =
    go
      courseId
      courseWorkId
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
              Core.Proxy ClassroomCoursesCourseWorkRubricsCreateResource
          )
          Core.mempty
