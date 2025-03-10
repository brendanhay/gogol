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
-- Module      : Gogol.Classroom.Courses.CourseWork.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates course work. The resulting course work (and corresponding student submissions) are associated with the Developer Console project of the <https://support.google.com/cloud/answer/6158849 OAuth client ID> used to make the request. Classroom API requests to modify course work and student submissions must be made with an OAuth client ID from the associated Developer Console project. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access the requested course, create course work in the requested course, share a Drive attachment, or for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if the requested course does not exist. * @FAILED_PRECONDITION@ for the following request error: * AttachmentNotVisible
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWork.create@.
module Gogol.Classroom.Courses.CourseWork.Create
  ( -- * Resource
    ClassroomCoursesCourseWorkCreateResource,

    -- ** Constructing a Request
    ClassroomCoursesCourseWorkCreate (..),
    newClassroomCoursesCourseWorkCreate,
  )
where

import Gogol.Classroom.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @classroom.courses.courseWork.create@ method which the
-- 'ClassroomCoursesCourseWorkCreate' request conforms to.
type ClassroomCoursesCourseWorkCreateResource =
  "v1"
    Core.:> "courses"
    Core.:> Core.Capture "courseId" Core.Text
    Core.:> "courseWork"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CourseWork
    Core.:> Core.Post '[Core.JSON] CourseWork

-- | Creates course work. The resulting course work (and corresponding student submissions) are associated with the Developer Console project of the <https://support.google.com/cloud/answer/6158849 OAuth client ID> used to make the request. Classroom API requests to modify course work and student submissions must be made with an OAuth client ID from the associated Developer Console project. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access the requested course, create course work in the requested course, share a Drive attachment, or for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if the requested course does not exist. * @FAILED_PRECONDITION@ for the following request error: * AttachmentNotVisible
--
-- /See:/ 'newClassroomCoursesCourseWorkCreate' smart constructor.
data ClassroomCoursesCourseWorkCreate = ClassroomCoursesCourseWorkCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.
    courseId :: Core.Text,
    -- | Multipart request metadata.
    payload :: CourseWork,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesCourseWorkCreate' with the minimum fields required to make a request.
newClassroomCoursesCourseWorkCreate ::
  -- |  Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. See 'courseId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CourseWork ->
  ClassroomCoursesCourseWorkCreate
newClassroomCoursesCourseWorkCreate courseId payload =
  ClassroomCoursesCourseWorkCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      courseId = courseId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ClassroomCoursesCourseWorkCreate where
  type Rs ClassroomCoursesCourseWorkCreate = CourseWork
  type
    Scopes ClassroomCoursesCourseWorkCreate =
      '[Classroom'Coursework'Students]
  requestClient ClassroomCoursesCourseWorkCreate {..} =
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
          (Core.Proxy :: Core.Proxy ClassroomCoursesCourseWorkCreateResource)
          Core.mempty
