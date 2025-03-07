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
-- Module      : Gogol.Classroom.Courses.CourseWork.UpdateRubric
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a rubric. See google.classroom.v1.Rubric for details of which fields can be updated. Rubric update capabilities are </classroom/rubrics/limitations limited> once grading has started. The requesting user and course owner must have rubrics creation capabilities. For details, see <https://developers.google.com/classroom/rubrics/limitations#license-requirements licensing requirements>. This request must be made by the Google Cloud console of the <https://support.google.com/cloud/answer/6158849 OAuth client ID> used to create the parent course work item. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting developer project didn\'t create the corresponding course work, if the user isn\'t permitted to make the requested modification to the rubric, or for access errors. This error code is also returned if grading has already started on the rubric. * @INVALID_ARGUMENT@ if the request is malformed and for the following request error: * @RubricCriteriaInvalidFormat@ *
-- @NOT_FOUND@ if the requested course, course work, or rubric doesn\'t exist or if the user doesn\'t have access to the corresponding course work. * @INTERNAL@ if grading has already started on the rubric.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWork.updateRubric@.
module Gogol.Classroom.Courses.CourseWork.UpdateRubric
  ( -- * Resource
    ClassroomCoursesCourseWorkUpdateRubricResource,

    -- ** Constructing a Request
    ClassroomCoursesCourseWorkUpdateRubric (..),
    newClassroomCoursesCourseWorkUpdateRubric,
  )
where

import Gogol.Classroom.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @classroom.courses.courseWork.updateRubric@ method which the
-- 'ClassroomCoursesCourseWorkUpdateRubric' request conforms to.
type ClassroomCoursesCourseWorkUpdateRubricResource =
  "v1"
    Core.:> "courses"
    Core.:> Core.Capture "courseId" Core.Text
    Core.:> "courseWork"
    Core.:> Core.Capture "courseWorkId" Core.Text
    Core.:> "rubric"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "id" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Rubric
    Core.:> Core.Patch '[Core.JSON] Rubric

-- | Updates a rubric. See google.classroom.v1.Rubric for details of which fields can be updated. Rubric update capabilities are </classroom/rubrics/limitations limited> once grading has started. The requesting user and course owner must have rubrics creation capabilities. For details, see <https://developers.google.com/classroom/rubrics/limitations#license-requirements licensing requirements>. This request must be made by the Google Cloud console of the <https://support.google.com/cloud/answer/6158849 OAuth client ID> used to create the parent course work item. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting developer project didn\'t create the corresponding course work, if the user isn\'t permitted to make the requested modification to the rubric, or for access errors. This error code is also returned if grading has already started on the rubric. * @INVALID_ARGUMENT@ if the request is malformed and for the following request error: * @RubricCriteriaInvalidFormat@ *
-- @NOT_FOUND@ if the requested course, course work, or rubric doesn\'t exist or if the user doesn\'t have access to the corresponding course work. * @INTERNAL@ if grading has already started on the rubric.
--
-- /See:/ 'newClassroomCoursesCourseWorkUpdateRubric' smart constructor.
data ClassroomCoursesCourseWorkUpdateRubric = ClassroomCoursesCourseWorkUpdateRubric
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
    -- | Optional. Identifier of the rubric.
    id :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Rubric,
    -- | Optional. Mask that identifies which fields on the rubric to update. This field is required to do an update. The update fails if invalid fields are specified. There are multiple options to define the criteria of a rubric: the @source_spreadsheet_id@ and the @criteria@ list. Only one of these can be used at a time to define a rubric. The rubric @criteria@ list is fully replaced by the rubric criteria specified in the update request. For example, if a criterion or level is missing from the request, it is deleted. New criteria and levels are added and an ID is assigned. Existing criteria and levels retain the previously assigned ID if the ID is specified in the request. The following fields can be specified by teachers: * @criteria@ * @source_spreadsheet_id@
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesCourseWorkUpdateRubric' with the minimum fields required to make a request.
newClassroomCoursesCourseWorkUpdateRubric ::
  -- |  Required. Identifier of the course. See 'courseId'.
  Core.Text ->
  -- |  Required. Identifier of the course work. See 'courseWorkId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Rubric ->
  ClassroomCoursesCourseWorkUpdateRubric
newClassroomCoursesCourseWorkUpdateRubric
  courseId
  courseWorkId
  payload =
    ClassroomCoursesCourseWorkUpdateRubric
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        courseId = courseId,
        courseWorkId = courseWorkId,
        id = Core.Nothing,
        payload = payload,
        updateMask = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance Core.GoogleRequest ClassroomCoursesCourseWorkUpdateRubric where
  type Rs ClassroomCoursesCourseWorkUpdateRubric = Rubric
  type
    Scopes ClassroomCoursesCourseWorkUpdateRubric =
      '[Classroom'Coursework'Students]
  requestClient ClassroomCoursesCourseWorkUpdateRubric {..} =
    go
      courseId
      courseWorkId
      xgafv
      accessToken
      callback
      id
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
              Core.Proxy ClassroomCoursesCourseWorkUpdateRubricResource
          )
          Core.mempty
