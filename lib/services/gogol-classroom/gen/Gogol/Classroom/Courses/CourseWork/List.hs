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
-- Module      : Gogol.Classroom.Courses.CourseWork.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of course work that the requester is permitted to view. Course students may only view @PUBLISHED@ course work. Course teachers and domain administrators may view all course work. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access the requested course or for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if the requested course does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWork.list@.
module Gogol.Classroom.Courses.CourseWork.List
  ( -- * Resource
    ClassroomCoursesCourseWorkListResource,

    -- ** Constructing a Request
    newClassroomCoursesCourseWorkList,
    ClassroomCoursesCourseWorkList,
  )
where

import Gogol.Classroom.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @classroom.courses.courseWork.list@ method which the
-- 'ClassroomCoursesCourseWorkList' request conforms to.
type ClassroomCoursesCourseWorkListResource =
  "v1"
    Core.:> "courses"
    Core.:> Core.Capture "courseId" Core.Text
    Core.:> "courseWork"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams
              "courseWorkStates"
              CoursesCourseWorkListCourseWorkStates
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListCourseWorkResponse

-- | Returns a list of course work that the requester is permitted to view. Course students may only view @PUBLISHED@ course work. Course teachers and domain administrators may view all course work. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access the requested course or for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if the requested course does not exist.
--
-- /See:/ 'newClassroomCoursesCourseWorkList' smart constructor.
data ClassroomCoursesCourseWorkList = ClassroomCoursesCourseWorkList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.
    courseId :: Core.Text,
    -- | Restriction on the work status to return. Only courseWork that matches is returned. If unspecified, items with a work status of @PUBLISHED@ is returned.
    courseWorkStates :: (Core.Maybe [CoursesCourseWorkListCourseWorkStates]),
    -- | Optional sort ordering for results. A comma-separated list of fields with an optional sort direction keyword. Supported fields are @updateTime@ and @dueDate@. Supported direction keywords are @asc@ and @desc@. If not specified, @updateTime desc@ is the default behavior. Examples: @dueDate asc,updateTime desc@, @updateTime,dueDate desc@
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

-- | Creates a value of 'ClassroomCoursesCourseWorkList' with the minimum fields required to make a request.
newClassroomCoursesCourseWorkList ::
  -- |  Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. See 'courseId'.
  Core.Text ->
  ClassroomCoursesCourseWorkList
newClassroomCoursesCourseWorkList courseId =
  ClassroomCoursesCourseWorkList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      courseId = courseId,
      courseWorkStates = Core.Nothing,
      orderBy = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ClassroomCoursesCourseWorkList
  where
  type
    Rs ClassroomCoursesCourseWorkList =
      ListCourseWorkResponse
  type
    Scopes ClassroomCoursesCourseWorkList =
      '[ Classroom'Coursework'Me,
         Classroom'Coursework'Me'Readonly,
         Classroom'Coursework'Students,
         Classroom'Coursework'Students'Readonly
       ]
  requestClient ClassroomCoursesCourseWorkList {..} =
    go
      courseId
      xgafv
      accessToken
      callback
      (courseWorkStates Core.^. Core._Default)
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
              Core.Proxy ClassroomCoursesCourseWorkListResource
          )
          Core.mempty
