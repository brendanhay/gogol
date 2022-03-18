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
-- Module      : Gogol.Classroom.Courses.Announcements.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an announcement. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access the requested course, create announcements in the requested course, share a Drive attachment, or for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if the requested course does not exist. * @FAILED_PRECONDITION@ for the following request error: * AttachmentNotVisible
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.announcements.create@.
module Gogol.Classroom.Courses.Announcements.Create
  ( -- * Resource
    ClassroomCoursesAnnouncementsCreateResource,

    -- ** Constructing a Request
    newClassroomCoursesAnnouncementsCreate,
    ClassroomCoursesAnnouncementsCreate,
  )
where

import Gogol.Classroom.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @classroom.courses.announcements.create@ method which the
-- 'ClassroomCoursesAnnouncementsCreate' request conforms to.
type ClassroomCoursesAnnouncementsCreateResource =
  "v1"
    Core.:> "courses"
    Core.:> Core.Capture "courseId" Core.Text
    Core.:> "announcements"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Announcement
    Core.:> Core.Post '[Core.JSON] Announcement

-- | Creates an announcement. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access the requested course, create announcements in the requested course, share a Drive attachment, or for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if the requested course does not exist. * @FAILED_PRECONDITION@ for the following request error: * AttachmentNotVisible
--
-- /See:/ 'newClassroomCoursesAnnouncementsCreate' smart constructor.
data ClassroomCoursesAnnouncementsCreate = ClassroomCoursesAnnouncementsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.
    courseId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Announcement,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesAnnouncementsCreate' with the minimum fields required to make a request.
newClassroomCoursesAnnouncementsCreate ::
  -- |  Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. See 'courseId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Announcement ->
  ClassroomCoursesAnnouncementsCreate
newClassroomCoursesAnnouncementsCreate courseId payload =
  ClassroomCoursesAnnouncementsCreate
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
    ClassroomCoursesAnnouncementsCreate
  where
  type
    Rs ClassroomCoursesAnnouncementsCreate =
      Announcement
  type
    Scopes ClassroomCoursesAnnouncementsCreate =
      '["https://www.googleapis.com/auth/classroom.announcements"]
  requestClient ClassroomCoursesAnnouncementsCreate {..} =
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
                ClassroomCoursesAnnouncementsCreateResource
          )
          Core.mempty
