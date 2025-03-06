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
-- Module      : Gogol.Classroom.Courses.CourseWork.Rubrics.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of rubrics that the requester is permitted to view. This method returns the following error codes: * @PERMISSION_DENIED@ for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if the requested course or course work doesn\'t exist or if the user doesn\'t have access to the corresponding course work.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWork.rubrics.list@.
module Gogol.Classroom.Courses.CourseWork.Rubrics.List
  ( -- * Resource
    ClassroomCoursesCourseWorkRubricsListResource,

    -- ** Constructing a Request
    ClassroomCoursesCourseWorkRubricsList (..),
    newClassroomCoursesCourseWorkRubricsList,
  )
where

import Gogol.Classroom.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @classroom.courses.courseWork.rubrics.list@ method which the
-- 'ClassroomCoursesCourseWorkRubricsList' request conforms to.
type ClassroomCoursesCourseWorkRubricsListResource =
  "v1"
    Core.:> "courses"
    Core.:> Core.Capture "courseId" Core.Text
    Core.:> "courseWork"
    Core.:> Core.Capture "courseWorkId" Core.Text
    Core.:> "rubrics"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListRubricsResponse

-- | Returns a list of rubrics that the requester is permitted to view. This method returns the following error codes: * @PERMISSION_DENIED@ for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if the requested course or course work doesn\'t exist or if the user doesn\'t have access to the corresponding course work.
--
-- /See:/ 'newClassroomCoursesCourseWorkRubricsList' smart constructor.
data ClassroomCoursesCourseWorkRubricsList = ClassroomCoursesCourseWorkRubricsList
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
    -- | The maximum number of rubrics to return. If unspecified, at most 1 rubric is returned. The maximum value is 1; values above 1 are coerced to 1.
    pageSize :: (Core.Maybe Core.Int32),
    -- | nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be returned. The list request must be otherwise identical to the one that resulted in this token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesCourseWorkRubricsList' with the minimum fields required to make a request.
newClassroomCoursesCourseWorkRubricsList ::
  -- |  Required. Identifier of the course. See 'courseId'.
  Core.Text ->
  -- |  Required. Identifier of the course work. See 'courseWorkId'.
  Core.Text ->
  ClassroomCoursesCourseWorkRubricsList
newClassroomCoursesCourseWorkRubricsList courseId courseWorkId =
  ClassroomCoursesCourseWorkRubricsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      courseId = courseId,
      courseWorkId = courseWorkId,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ClassroomCoursesCourseWorkRubricsList where
  type Rs ClassroomCoursesCourseWorkRubricsList = ListRubricsResponse
  type
    Scopes ClassroomCoursesCourseWorkRubricsList =
      '[ Classroom'Coursework'Me,
         Classroom'Coursework'Me'Readonly,
         Classroom'Coursework'Students,
         Classroom'Coursework'Students'Readonly
       ]
  requestClient ClassroomCoursesCourseWorkRubricsList {..} =
    go
      courseId
      courseWorkId
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      classroomService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ClassroomCoursesCourseWorkRubricsListResource
          )
          Core.mempty
