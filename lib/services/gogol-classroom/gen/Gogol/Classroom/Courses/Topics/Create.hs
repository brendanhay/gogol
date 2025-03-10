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
-- Module      : Gogol.Classroom.Courses.Topics.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a topic. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access the requested course, create a topic in the requested course, or for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @ALREADY_EXISTS@ if there exists a topic in the course with the same name. * @FAILED_PRECONDITION@ for the following request error: * CourseTopicLimitReached * @NOT_FOUND@ if the requested course does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.topics.create@.
module Gogol.Classroom.Courses.Topics.Create
  ( -- * Resource
    ClassroomCoursesTopicsCreateResource,

    -- ** Constructing a Request
    ClassroomCoursesTopicsCreate (..),
    newClassroomCoursesTopicsCreate,
  )
where

import Gogol.Classroom.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @classroom.courses.topics.create@ method which the
-- 'ClassroomCoursesTopicsCreate' request conforms to.
type ClassroomCoursesTopicsCreateResource =
  "v1"
    Core.:> "courses"
    Core.:> Core.Capture "courseId" Core.Text
    Core.:> "topics"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Topic
    Core.:> Core.Post '[Core.JSON] Topic

-- | Creates a topic. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access the requested course, create a topic in the requested course, or for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @ALREADY_EXISTS@ if there exists a topic in the course with the same name. * @FAILED_PRECONDITION@ for the following request error: * CourseTopicLimitReached * @NOT_FOUND@ if the requested course does not exist.
--
-- /See:/ 'newClassroomCoursesTopicsCreate' smart constructor.
data ClassroomCoursesTopicsCreate = ClassroomCoursesTopicsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.
    courseId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Topic,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesTopicsCreate' with the minimum fields required to make a request.
newClassroomCoursesTopicsCreate ::
  -- |  Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. See 'courseId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Topic ->
  ClassroomCoursesTopicsCreate
newClassroomCoursesTopicsCreate courseId payload =
  ClassroomCoursesTopicsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      courseId = courseId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ClassroomCoursesTopicsCreate where
  type Rs ClassroomCoursesTopicsCreate = Topic
  type Scopes ClassroomCoursesTopicsCreate = '[Classroom'Topics]
  requestClient ClassroomCoursesTopicsCreate {..} =
    go
      courseId
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
          (Core.Proxy :: Core.Proxy ClassroomCoursesTopicsCreateResource)
          Core.mempty
