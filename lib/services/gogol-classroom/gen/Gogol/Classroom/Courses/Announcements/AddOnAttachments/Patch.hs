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
-- Module      : Gogol.Classroom.Courses.Announcements.AddOnAttachments.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an add-on attachment. Requires the add-on to have been the original creator of the attachment. This method returns the following error codes: * @PERMISSION_DENIED@ for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if one of the identified resources does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.announcements.addOnAttachments.patch@.
module Gogol.Classroom.Courses.Announcements.AddOnAttachments.Patch
  ( -- * Resource
    ClassroomCoursesAnnouncementsAddOnAttachmentsPatchResource,

    -- ** Constructing a Request
    ClassroomCoursesAnnouncementsAddOnAttachmentsPatch (..),
    newClassroomCoursesAnnouncementsAddOnAttachmentsPatch,
  )
where

import Gogol.Classroom.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @classroom.courses.announcements.addOnAttachments.patch@ method which the
-- 'ClassroomCoursesAnnouncementsAddOnAttachmentsPatch' request conforms to.
type ClassroomCoursesAnnouncementsAddOnAttachmentsPatchResource =
  "v1"
    Core.:> "courses"
    Core.:> Core.Capture "courseId" Core.Text
    Core.:> "announcements"
    Core.:> Core.Capture "itemId" Core.Text
    Core.:> "addOnAttachments"
    Core.:> Core.Capture "attachmentId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "postId" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AddOnAttachment
    Core.:> Core.Patch '[Core.JSON] AddOnAttachment

-- | Updates an add-on attachment. Requires the add-on to have been the original creator of the attachment. This method returns the following error codes: * @PERMISSION_DENIED@ for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if one of the identified resources does not exist.
--
-- /See:/ 'newClassroomCoursesAnnouncementsAddOnAttachmentsPatch' smart constructor.
data ClassroomCoursesAnnouncementsAddOnAttachmentsPatch = ClassroomCoursesAnnouncementsAddOnAttachmentsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. Identifier of the attachment.
    attachmentId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Identifier of the course.
    courseId :: Core.Text,
    -- | Identifier of the post under which the attachment is attached.
    itemId :: Core.Text,
    -- | Multipart request metadata.
    payload :: AddOnAttachment,
    -- | Required. Identifier of the post under which the attachment is attached.
    postId :: (Core.Maybe Core.Text),
    -- | Required. Mask that identifies which fields on the attachment to update. The update fails if invalid fields are specified. If a field supports empty values, it can be cleared by specifying it in the update mask and not in the @AddOnAttachment@ object. If a field that does not support empty values is included in the update mask and not set in the @AddOnAttachment@ object, an @INVALID_ARGUMENT@ error is returned. The following fields may be specified by teachers: * @title@ * @teacher_view_uri@ * @student_view_uri@ * @student_work_review_uri@ * @due_date@ * @due_time@ * @max_points@
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesAnnouncementsAddOnAttachmentsPatch' with the minimum fields required to make a request.
newClassroomCoursesAnnouncementsAddOnAttachmentsPatch ::
  -- |  Required. Identifier of the attachment. See 'attachmentId'.
  Core.Text ->
  -- |  Required. Identifier of the course. See 'courseId'.
  Core.Text ->
  -- |  Identifier of the post under which the attachment is attached. See 'itemId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AddOnAttachment ->
  ClassroomCoursesAnnouncementsAddOnAttachmentsPatch
newClassroomCoursesAnnouncementsAddOnAttachmentsPatch
  attachmentId
  courseId
  itemId
  payload =
    ClassroomCoursesAnnouncementsAddOnAttachmentsPatch
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        attachmentId = attachmentId,
        callback = Core.Nothing,
        courseId = courseId,
        itemId = itemId,
        payload = payload,
        postId = Core.Nothing,
        updateMask = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    ClassroomCoursesAnnouncementsAddOnAttachmentsPatch
  where
  type
    Rs ClassroomCoursesAnnouncementsAddOnAttachmentsPatch =
      AddOnAttachment
  type
    Scopes ClassroomCoursesAnnouncementsAddOnAttachmentsPatch =
      '[Classroom'Addons'Teacher]
  requestClient
    ClassroomCoursesAnnouncementsAddOnAttachmentsPatch {..} =
      go
        courseId
        itemId
        attachmentId
        xgafv
        accessToken
        callback
        postId
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
                  ClassroomCoursesAnnouncementsAddOnAttachmentsPatchResource
            )
            Core.mempty
