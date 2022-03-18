{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Classroom.Courses.Announcements.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of announcements that the requester is permitted to view. Course students may only view @PUBLISHED@ announcements. Course teachers and domain administrators may view all announcements. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access the requested course or for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if the requested course does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.announcements.list@.
module Gogol.Classroom.Courses.Announcements.List
    (
    -- * Resource
      ClassroomCoursesAnnouncementsListResource

    -- ** Constructing a Request
    , newClassroomCoursesAnnouncementsList
    , ClassroomCoursesAnnouncementsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Classroom.Types

-- | A resource alias for @classroom.courses.announcements.list@ method which the
-- 'ClassroomCoursesAnnouncementsList' request conforms to.
type ClassroomCoursesAnnouncementsListResource =
     "v1" Core.:>
       "courses" Core.:>
         Core.Capture "courseId" Core.Text Core.:>
           "announcements" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParams "announcementStates"
                   CoursesAnnouncementsListAnnouncementStates
                   Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "orderBy" Core.Text Core.:>
                       Core.QueryParam "pageSize" Core.Int32 Core.:>
                         Core.QueryParam "pageToken" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON] ListAnnouncementsResponse

-- | Returns a list of announcements that the requester is permitted to view. Course students may only view @PUBLISHED@ announcements. Course teachers and domain administrators may view all announcements. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access the requested course or for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if the requested course does not exist.
--
-- /See:/ 'newClassroomCoursesAnnouncementsList' smart constructor.
data ClassroomCoursesAnnouncementsList = ClassroomCoursesAnnouncementsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Restriction on the @state@ of announcements returned. If this argument is left unspecified, the default value is @PUBLISHED@.
    , announcementStates :: (Core.Maybe [CoursesAnnouncementsListAnnouncementStates])
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.
    , courseId :: Core.Text
      -- | Optional sort ordering for results. A comma-separated list of fields with an optional sort direction keyword. Supported field is @updateTime@. Supported direction keywords are @asc@ and @desc@. If not specified, @updateTime desc@ is the default behavior. Examples: @updateTime asc@, @updateTime@
    , orderBy :: (Core.Maybe Core.Text)
      -- | Maximum number of items to return. Zero or unspecified indicates that the server may assign a maximum. The server may return fewer than the specified number of results.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be returned. The list request must be otherwise identical to the one that resulted in this token.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesAnnouncementsList' with the minimum fields required to make a request.
newClassroomCoursesAnnouncementsList 
    ::  Core.Text
       -- ^  Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. See 'courseId'.
    -> ClassroomCoursesAnnouncementsList
newClassroomCoursesAnnouncementsList courseId =
  ClassroomCoursesAnnouncementsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , announcementStates = Core.Nothing
    , callback = Core.Nothing
    , courseId = courseId
    , orderBy = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ClassroomCoursesAnnouncementsList
         where
        type Rs ClassroomCoursesAnnouncementsList =
             ListAnnouncementsResponse
        type Scopes ClassroomCoursesAnnouncementsList =
             '["https://www.googleapis.com/auth/classroom.announcements",
               "https://www.googleapis.com/auth/classroom.announcements.readonly"]
        requestClient ClassroomCoursesAnnouncementsList{..}
          = go courseId xgafv accessToken
              (announcementStates Core.^. Core._Default)
              callback
              orderBy
              pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              classroomService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ClassroomCoursesAnnouncementsListResource)
                      Core.mempty

