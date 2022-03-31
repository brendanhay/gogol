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
-- Module      : Gogol.Classroom.Courses.Announcements.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates one or more fields of an announcement. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting developer project did not create the corresponding announcement or for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @FAILED_PRECONDITION@ if the requested announcement has already been deleted. * @NOT_FOUND@ if the requested course or announcement does not exist
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.announcements.patch@.
module Gogol.Classroom.Courses.Announcements.Patch
  ( -- * Resource
    ClassroomCoursesAnnouncementsPatchResource,

    -- ** Constructing a Request
    newClassroomCoursesAnnouncementsPatch,
    ClassroomCoursesAnnouncementsPatch,
  )
where

import Gogol.Classroom.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @classroom.courses.announcements.patch@ method which the
-- 'ClassroomCoursesAnnouncementsPatch' request conforms to.
type ClassroomCoursesAnnouncementsPatchResource =
  "v1"
    Core.:> "courses"
    Core.:> Core.Capture "courseId" Core.Text
    Core.:> "announcements"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Announcement
    Core.:> Core.Patch '[Core.JSON] Announcement

-- | Updates one or more fields of an announcement. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting developer project did not create the corresponding announcement or for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @FAILED_PRECONDITION@ if the requested announcement has already been deleted. * @NOT_FOUND@ if the requested course or announcement does not exist
--
-- /See:/ 'newClassroomCoursesAnnouncementsPatch' smart constructor.
data ClassroomCoursesAnnouncementsPatch = ClassroomCoursesAnnouncementsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.
    courseId :: Core.Text,
    -- | Identifier of the announcement.
    id :: Core.Text,
    -- | Multipart request metadata.
    payload :: Announcement,
    -- | Mask that identifies which fields on the announcement to update. This field is required to do an update. The update fails if invalid fields are specified. If a field supports empty values, it can be cleared by specifying it in the update mask and not in the Announcement object. If a field that does not support empty values is included in the update mask and not set in the Announcement object, an @INVALID_ARGUMENT@ error is returned. The following fields may be specified by teachers: * @text@ * @state@ * @scheduled_time@
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesAnnouncementsPatch' with the minimum fields required to make a request.
newClassroomCoursesAnnouncementsPatch ::
  -- |  Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. See 'courseId'.
  Core.Text ->
  -- |  Identifier of the announcement. See 'id'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Announcement ->
  ClassroomCoursesAnnouncementsPatch
newClassroomCoursesAnnouncementsPatch courseId id payload =
  ClassroomCoursesAnnouncementsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      courseId = courseId,
      id = id,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ClassroomCoursesAnnouncementsPatch
  where
  type
    Rs ClassroomCoursesAnnouncementsPatch =
      Announcement
  type
    Scopes ClassroomCoursesAnnouncementsPatch =
      '[Classroom'Announcements]
  requestClient ClassroomCoursesAnnouncementsPatch {..} =
    go
      courseId
      id
      xgafv
      accessToken
      callback
      updateMask
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
                ClassroomCoursesAnnouncementsPatchResource
          )
          Core.mempty
