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
-- Module      : Network.Google.Classroom.Courses.Aliases.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of aliases for a course. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access the course or for access errors. * @NOT_FOUND@ if the course does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.aliases.list@.
module Network.Google.Classroom.Courses.Aliases.List
  ( -- * Resource
    ClassroomCoursesAliasesListResource,

    -- ** Constructing a Request
    newClassroomCoursesAliasesList,
    ClassroomCoursesAliasesList,
  )
where

import Network.Google.Classroom.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @classroom.courses.aliases.list@ method which the
-- 'ClassroomCoursesAliasesList' request conforms to.
type ClassroomCoursesAliasesListResource =
  "v1"
    Core.:> "courses"
    Core.:> Core.Capture "courseId" Core.Text
    Core.:> "aliases"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListCourseAliasesResponse

-- | Returns a list of aliases for a course. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access the course or for access errors. * @NOT_FOUND@ if the course does not exist.
--
-- /See:/ 'newClassroomCoursesAliasesList' smart constructor.
data ClassroomCoursesAliasesList = ClassroomCoursesAliasesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.
    courseId :: Core.Text,
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

-- | Creates a value of 'ClassroomCoursesAliasesList' with the minimum fields required to make a request.
newClassroomCoursesAliasesList ::
  -- |  The identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. See 'courseId'.
  Core.Text ->
  ClassroomCoursesAliasesList
newClassroomCoursesAliasesList courseId =
  ClassroomCoursesAliasesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      courseId = courseId,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ClassroomCoursesAliasesList
  where
  type
    Rs ClassroomCoursesAliasesList =
      ListCourseAliasesResponse
  type
    Scopes ClassroomCoursesAliasesList =
      '[ "https://www.googleapis.com/auth/classroom.courses",
         "https://www.googleapis.com/auth/classroom.courses.readonly"
       ]
  requestClient ClassroomCoursesAliasesList {..} =
    go
      courseId
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
              Core.Proxy ClassroomCoursesAliasesListResource
          )
          Core.mempty
