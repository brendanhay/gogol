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
-- Module      : Gogol.Classroom.Courses.CourseWork.Rubrics.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a rubric. This method returns the following error codes: * @PERMISSION_DENIED@ for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if the requested course, course work, or rubric doesn\'t exist or if the user doesn\'t have access to the corresponding course work.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWork.rubrics.get@.
module Gogol.Classroom.Courses.CourseWork.Rubrics.Get
  ( -- * Resource
    ClassroomCoursesCourseWorkRubricsGetResource,

    -- ** Constructing a Request
    ClassroomCoursesCourseWorkRubricsGet (..),
    newClassroomCoursesCourseWorkRubricsGet,
  )
where

import Gogol.Classroom.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @classroom.courses.courseWork.rubrics.get@ method which the
-- 'ClassroomCoursesCourseWorkRubricsGet' request conforms to.
type ClassroomCoursesCourseWorkRubricsGetResource =
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
    Core.:> Core.Get '[Core.JSON] Rubric

-- | Returns a rubric. This method returns the following error codes: * @PERMISSION_DENIED@ for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if the requested course, course work, or rubric doesn\'t exist or if the user doesn\'t have access to the corresponding course work.
--
-- /See:/ 'newClassroomCoursesCourseWorkRubricsGet' smart constructor.
data ClassroomCoursesCourseWorkRubricsGet = ClassroomCoursesCourseWorkRubricsGet
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

-- | Creates a value of 'ClassroomCoursesCourseWorkRubricsGet' with the minimum fields required to make a request.
newClassroomCoursesCourseWorkRubricsGet ::
  -- |  Required. Identifier of the course. See 'courseId'.
  Core.Text ->
  -- |  Required. Identifier of the course work. See 'courseWorkId'.
  Core.Text ->
  -- |  Required. Identifier of the rubric. See 'id'.
  Core.Text ->
  ClassroomCoursesCourseWorkRubricsGet
newClassroomCoursesCourseWorkRubricsGet courseId courseWorkId id =
  ClassroomCoursesCourseWorkRubricsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      courseId = courseId,
      courseWorkId = courseWorkId,
      id = id,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ClassroomCoursesCourseWorkRubricsGet where
  type Rs ClassroomCoursesCourseWorkRubricsGet = Rubric
  type
    Scopes ClassroomCoursesCourseWorkRubricsGet =
      '[ Classroom'Coursework'Me,
         Classroom'Coursework'Me'Readonly,
         Classroom'Coursework'Students,
         Classroom'Coursework'Students'Readonly
       ]
  requestClient ClassroomCoursesCourseWorkRubricsGet {..} =
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
              Core.Proxy ClassroomCoursesCourseWorkRubricsGetResource
          )
          Core.mempty
