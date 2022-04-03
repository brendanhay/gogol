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
-- Module      : Gogol.Classroom.Courses.CourseWorkMaterials.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a course work material. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access the requested course, create course work material in the requested course, share a Drive attachment, or for access errors. * @INVALID_ARGUMENT@ if the request is malformed or if more than 20 * materials are provided. * @NOT_FOUND@ if the requested course does not exist. * @FAILED_PRECONDITION@ for the following request error: * AttachmentNotVisible
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWorkMaterials.create@.
module Gogol.Classroom.Courses.CourseWorkMaterials.Create
  ( -- * Resource
    ClassroomCoursesCourseWorkMaterialsCreateResource,

    -- ** Constructing a Request
    ClassroomCoursesCourseWorkMaterialsCreate (..),
    newClassroomCoursesCourseWorkMaterialsCreate,
  )
where

import Gogol.Classroom.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @classroom.courses.courseWorkMaterials.create@ method which the
-- 'ClassroomCoursesCourseWorkMaterialsCreate' request conforms to.
type ClassroomCoursesCourseWorkMaterialsCreateResource =
  "v1"
    Core.:> "courses"
    Core.:> Core.Capture "courseId" Core.Text
    Core.:> "courseWorkMaterials"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CourseWorkMaterial
    Core.:> Core.Post '[Core.JSON] CourseWorkMaterial

-- | Creates a course work material. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access the requested course, create course work material in the requested course, share a Drive attachment, or for access errors. * @INVALID_ARGUMENT@ if the request is malformed or if more than 20 * materials are provided. * @NOT_FOUND@ if the requested course does not exist. * @FAILED_PRECONDITION@ for the following request error: * AttachmentNotVisible
--
-- /See:/ 'newClassroomCoursesCourseWorkMaterialsCreate' smart constructor.
data ClassroomCoursesCourseWorkMaterialsCreate = ClassroomCoursesCourseWorkMaterialsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.
    courseId :: Core.Text,
    -- | Multipart request metadata.
    payload :: CourseWorkMaterial,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesCourseWorkMaterialsCreate' with the minimum fields required to make a request.
newClassroomCoursesCourseWorkMaterialsCreate ::
  -- |  Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. See 'courseId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CourseWorkMaterial ->
  ClassroomCoursesCourseWorkMaterialsCreate
newClassroomCoursesCourseWorkMaterialsCreate courseId payload =
  ClassroomCoursesCourseWorkMaterialsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      courseId = courseId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ClassroomCoursesCourseWorkMaterialsCreate
  where
  type
    Rs ClassroomCoursesCourseWorkMaterialsCreate =
      CourseWorkMaterial
  type
    Scopes ClassroomCoursesCourseWorkMaterialsCreate =
      '[Classroom'Courseworkmaterials]
  requestClient
    ClassroomCoursesCourseWorkMaterialsCreate {..} =
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
            ( Core.Proxy ::
                Core.Proxy
                  ClassroomCoursesCourseWorkMaterialsCreateResource
            )
            Core.mempty
