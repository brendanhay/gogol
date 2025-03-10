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
-- Module      : Gogol.Classroom.Courses.CourseWork.Rubrics.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a rubric. The requesting user and course owner must have rubrics creation capabilities. For details, see <https://developers.google.com/classroom/rubrics/limitations#license-requirements licensing requirements>. This request must be made by the Google Cloud console of the <https://support.google.com/cloud/answer/6158849 OAuth client ID> used to create the corresponding rubric. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting developer project didn\'t create the corresponding rubric, or if the requesting user isn\'t permitted to delete the requested rubric. * @NOT_FOUND@ if no rubric exists with the requested ID or the user does not have access to the course, course work, or rubric. * @INVALID_ARGUMENT@ if grading has already started on the rubric.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWork.rubrics.delete@.
module Gogol.Classroom.Courses.CourseWork.Rubrics.Delete
  ( -- * Resource
    ClassroomCoursesCourseWorkRubricsDeleteResource,

    -- ** Constructing a Request
    ClassroomCoursesCourseWorkRubricsDelete (..),
    newClassroomCoursesCourseWorkRubricsDelete,
  )
where

import Gogol.Classroom.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @classroom.courses.courseWork.rubrics.delete@ method which the
-- 'ClassroomCoursesCourseWorkRubricsDelete' request conforms to.
type ClassroomCoursesCourseWorkRubricsDeleteResource =
  "v1"
    Core.:> "courses"
    Core.:> Core.Capture "courseId" Core.Text
    Core.:> "courseWork"
    Core.:> Core.Capture "courseWorkId" Core.Text
    Core.:> "rubrics"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes a rubric. The requesting user and course owner must have rubrics creation capabilities. For details, see <https://developers.google.com/classroom/rubrics/limitations#license-requirements licensing requirements>. This request must be made by the Google Cloud console of the <https://support.google.com/cloud/answer/6158849 OAuth client ID> used to create the corresponding rubric. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting developer project didn\'t create the corresponding rubric, or if the requesting user isn\'t permitted to delete the requested rubric. * @NOT_FOUND@ if no rubric exists with the requested ID or the user does not have access to the course, course work, or rubric. * @INVALID_ARGUMENT@ if grading has already started on the rubric.
--
-- /See:/ 'newClassroomCoursesCourseWorkRubricsDelete' smart constructor.
data ClassroomCoursesCourseWorkRubricsDelete = ClassroomCoursesCourseWorkRubricsDelete
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
    -- | Required. Identifier of the rubric.
    id :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesCourseWorkRubricsDelete' with the minimum fields required to make a request.
newClassroomCoursesCourseWorkRubricsDelete ::
  -- |  Required. Identifier of the course. See 'courseId'.
  Core.Text ->
  -- |  Required. Identifier of the course work. See 'courseWorkId'.
  Core.Text ->
  -- |  Required. Identifier of the rubric. See 'id'.
  Core.Text ->
  ClassroomCoursesCourseWorkRubricsDelete
newClassroomCoursesCourseWorkRubricsDelete courseId courseWorkId id =
  ClassroomCoursesCourseWorkRubricsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      courseId = courseId,
      courseWorkId = courseWorkId,
      id = id,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ClassroomCoursesCourseWorkRubricsDelete where
  type Rs ClassroomCoursesCourseWorkRubricsDelete = Empty
  type
    Scopes ClassroomCoursesCourseWorkRubricsDelete =
      '[Classroom'Coursework'Students]
  requestClient ClassroomCoursesCourseWorkRubricsDelete {..} =
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
              Core.Proxy ClassroomCoursesCourseWorkRubricsDeleteResource
          )
          Core.mempty
