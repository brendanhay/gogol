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
-- Module      : Gogol.Classroom.Courses.Announcements.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an announcement. This request must be made by the Developer Console project of the <https://support.google.com/cloud/answer/6158849 OAuth client ID> used to create the corresponding announcement item. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting developer project did not create the corresponding announcement, if the requesting user is not permitted to delete the requested course or for access errors. * @FAILED_PRECONDITION@ if the requested announcement has already been deleted. * @NOT_FOUND@ if no course exists with the requested ID.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.announcements.delete@.
module Gogol.Classroom.Courses.Announcements.Delete
  ( -- * Resource
    ClassroomCoursesAnnouncementsDeleteResource,

    -- ** Constructing a Request
    newClassroomCoursesAnnouncementsDelete,
    ClassroomCoursesAnnouncementsDelete,
  )
where

import Gogol.Classroom.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @classroom.courses.announcements.delete@ method which the
-- 'ClassroomCoursesAnnouncementsDelete' request conforms to.
type ClassroomCoursesAnnouncementsDeleteResource =
  "v1"
    Core.:> "courses"
    Core.:> Core.Capture "courseId" Core.Text
    Core.:> "announcements"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes an announcement. This request must be made by the Developer Console project of the <https://support.google.com/cloud/answer/6158849 OAuth client ID> used to create the corresponding announcement item. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting developer project did not create the corresponding announcement, if the requesting user is not permitted to delete the requested course or for access errors. * @FAILED_PRECONDITION@ if the requested announcement has already been deleted. * @NOT_FOUND@ if no course exists with the requested ID.
--
-- /See:/ 'newClassroomCoursesAnnouncementsDelete' smart constructor.
data ClassroomCoursesAnnouncementsDelete = ClassroomCoursesAnnouncementsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.
    courseId :: Core.Text,
    -- | Identifier of the announcement to delete. This identifier is a Classroom-assigned identifier.
    id :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesAnnouncementsDelete' with the minimum fields required to make a request.
newClassroomCoursesAnnouncementsDelete ::
  -- |  Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. See 'courseId'.
  Core.Text ->
  -- |  Identifier of the announcement to delete. This identifier is a Classroom-assigned identifier. See 'id'.
  Core.Text ->
  ClassroomCoursesAnnouncementsDelete
newClassroomCoursesAnnouncementsDelete courseId id =
  ClassroomCoursesAnnouncementsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      courseId = courseId,
      id = id,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ClassroomCoursesAnnouncementsDelete
  where
  type Rs ClassroomCoursesAnnouncementsDelete = Empty
  type
    Scopes ClassroomCoursesAnnouncementsDelete =
      '[Classroom'Announcements]
  requestClient ClassroomCoursesAnnouncementsDelete {..} =
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
          ( Core.Proxy ::
              Core.Proxy
                ClassroomCoursesAnnouncementsDeleteResource
          )
          Core.mempty
