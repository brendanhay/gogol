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
-- Module      : Gogol.Classroom.Courses.CourseWork.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns course work. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access the requested course or course work, or for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if the requested course or course work does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWork.get@.
module Gogol.Classroom.Courses.CourseWork.Get
  ( -- * Resource
    ClassroomCoursesCourseWorkGetResource,

    -- ** Constructing a Request
    ClassroomCoursesCourseWorkGet (..),
    newClassroomCoursesCourseWorkGet,
  )
where

import Gogol.Classroom.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @classroom.courses.courseWork.get@ method which the
-- 'ClassroomCoursesCourseWorkGet' request conforms to.
type ClassroomCoursesCourseWorkGetResource =
  "v1"
    Core.:> "courses"
    Core.:> Core.Capture "courseId" Core.Text
    Core.:> "courseWork"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] CourseWork

-- | Returns course work. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access the requested course or course work, or for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if the requested course or course work does not exist.
--
-- /See:/ 'newClassroomCoursesCourseWorkGet' smart constructor.
data ClassroomCoursesCourseWorkGet = ClassroomCoursesCourseWorkGet
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
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesCourseWorkGet' with the minimum fields required to make a request.
newClassroomCoursesCourseWorkGet ::
  -- |  Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. See 'courseId'.
  Core.Text ->
  -- |  Identifier of the course work. See 'id'.
  Core.Text ->
  ClassroomCoursesCourseWorkGet
newClassroomCoursesCourseWorkGet courseId id =
  ClassroomCoursesCourseWorkGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      courseId = courseId,
      id = id,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ClassroomCoursesCourseWorkGet where
  type Rs ClassroomCoursesCourseWorkGet = CourseWork
  type
    Scopes ClassroomCoursesCourseWorkGet =
      '[ Classroom'Coursework'Me,
         Classroom'Coursework'Me'Readonly,
         Classroom'Coursework'Students,
         Classroom'Coursework'Students'Readonly
       ]
  requestClient ClassroomCoursesCourseWorkGet {..} =
    go
      courseId
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
          (Core.Proxy :: Core.Proxy ClassroomCoursesCourseWorkGetResource)
          Core.mempty
