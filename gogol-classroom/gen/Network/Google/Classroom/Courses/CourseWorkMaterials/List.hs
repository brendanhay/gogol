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
-- Module      : Network.Google.Classroom.Courses.CourseWorkMaterials.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of course work material that the requester is permitted to view. Course students may only view @PUBLISHED@ course work material. Course teachers and domain administrators may view all course work material. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access the requested course or for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if the requested course does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWorkMaterials.list@.
module Network.Google.Classroom.Courses.CourseWorkMaterials.List
  ( -- * Resource
    ClassroomCoursesCourseWorkMaterialsListResource,

    -- ** Constructing a Request
    newClassroomCoursesCourseWorkMaterialsList,
    ClassroomCoursesCourseWorkMaterialsList,
  )
where

import Network.Google.Classroom.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @classroom.courses.courseWorkMaterials.list@ method which the
-- 'ClassroomCoursesCourseWorkMaterialsList' request conforms to.
type ClassroomCoursesCourseWorkMaterialsListResource =
  "v1"
    Core.:> "courses"
    Core.:> Core.Capture "courseId" Core.Text
    Core.:> "courseWorkMaterials"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams
              "courseWorkMaterialStates"
              CoursesCourseWorkMaterialsListCourseWorkMaterialStates
    Core.:> Core.QueryParam "materialDriveId" Core.Text
    Core.:> Core.QueryParam "materialLink" Core.Text
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ListCourseWorkMaterialResponse

-- | Returns a list of course work material that the requester is permitted to view. Course students may only view @PUBLISHED@ course work material. Course teachers and domain administrators may view all course work material. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access the requested course or for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if the requested course does not exist.
--
-- /See:/ 'newClassroomCoursesCourseWorkMaterialsList' smart constructor.
data ClassroomCoursesCourseWorkMaterialsList = ClassroomCoursesCourseWorkMaterialsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.
    courseId :: Core.Text,
    -- | Restriction on the work status to return. Only course work material that matches is returned. If unspecified, items with a work status of @PUBLISHED@ is returned.
    courseWorkMaterialStates ::
      ( Core.Maybe
          [CoursesCourseWorkMaterialsListCourseWorkMaterialStates]
      ),
    -- | Optional filtering for course work material with at least one Drive material whose ID matches the provided string. If @material_link@ is also specified, course work material must have materials matching both filters.
    materialDriveId :: (Core.Maybe Core.Text),
    -- | Optional filtering for course work material with at least one link material whose URL partially matches the provided string.
    materialLink :: (Core.Maybe Core.Text),
    -- | Optional sort ordering for results. A comma-separated list of fields with an optional sort direction keyword. Supported field is @updateTime@. Supported direction keywords are @asc@ and @desc@. If not specified, @updateTime desc@ is the default behavior. Examples: @updateTime asc@, @updateTime@
    orderBy :: (Core.Maybe Core.Text),
    -- | Maximum number of items to return. Zero or unspecified indicates that the server may assign a maximum. The server may return fewer than the specified number of results.
    pageSize :: (Core.Maybe Core.Int32),
    -- | nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be returned. The list request must be otherwise identical to the one that resulted in this token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesCourseWorkMaterialsList' with the minimum fields required to make a request.
newClassroomCoursesCourseWorkMaterialsList ::
  -- |  Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. See 'courseId'.
  Core.Text ->
  ClassroomCoursesCourseWorkMaterialsList
newClassroomCoursesCourseWorkMaterialsList courseId =
  ClassroomCoursesCourseWorkMaterialsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      courseId = courseId,
      courseWorkMaterialStates = Core.Nothing,
      materialDriveId = Core.Nothing,
      materialLink = Core.Nothing,
      orderBy = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ClassroomCoursesCourseWorkMaterialsList
  where
  type
    Rs ClassroomCoursesCourseWorkMaterialsList =
      ListCourseWorkMaterialResponse
  type
    Scopes ClassroomCoursesCourseWorkMaterialsList =
      '[ "https://www.googleapis.com/auth/classroom.courseworkmaterials",
         "https://www.googleapis.com/auth/classroom.courseworkmaterials.readonly"
       ]
  requestClient
    ClassroomCoursesCourseWorkMaterialsList {..} =
      go
        courseId
        xgafv
        accessToken
        callback
        (courseWorkMaterialStates Core.^. Core._Default)
        materialDriveId
        materialLink
        orderBy
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
                Core.Proxy
                  ClassroomCoursesCourseWorkMaterialsListResource
            )
            Core.mempty
