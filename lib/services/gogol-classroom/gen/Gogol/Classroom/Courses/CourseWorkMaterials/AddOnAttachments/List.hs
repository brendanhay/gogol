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
-- Module      : Gogol.Classroom.Courses.CourseWorkMaterials.AddOnAttachments.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all attachments created by an add-on under the post. Requires the add-on to have active attachments on the post or have permission to create new attachments on the post. This method returns the following error codes: * @PERMISSION_DENIED@ for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if one of the identified resources does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWorkMaterials.addOnAttachments.list@.
module Gogol.Classroom.Courses.CourseWorkMaterials.AddOnAttachments.List
  ( -- * Resource
    ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsListResource,

    -- ** Constructing a Request
    ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsList (..),
    newClassroomCoursesCourseWorkMaterialsAddOnAttachmentsList,
  )
where

import Gogol.Classroom.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @classroom.courses.courseWorkMaterials.addOnAttachments.list@ method which the
-- 'ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsList' request conforms to.
type ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsListResource =
  "v1"
    Core.:> "courses"
    Core.:> Core.Capture "courseId" Core.Text
    Core.:> "courseWorkMaterials"
    Core.:> Core.Capture "itemId" Core.Text
    Core.:> "addOnAttachments"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "postId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListAddOnAttachmentsResponse

-- | Returns all attachments created by an add-on under the post. Requires the add-on to have active attachments on the post or have permission to create new attachments on the post. This method returns the following error codes: * @PERMISSION_DENIED@ for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if one of the identified resources does not exist.
--
-- /See:/ 'newClassroomCoursesCourseWorkMaterialsAddOnAttachmentsList' smart constructor.
data ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsList = ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Identifier of the course.
    courseId :: Core.Text,
    -- | Identifier of the @Announcement@, @CourseWork@, or @CourseWorkMaterial@ whose attachments should be enumerated. This field is required, but is not marked as such while we are migrating from post_id.
    itemId :: Core.Text,
    -- | The maximum number of attachments to return. The service may return fewer than this value. If unspecified, at most 20 attachments will be returned. The maximum value is 20; values above 20 will be coerced to 20.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A page token, received from a previous @ListAddOnAttachments@ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @ListAddOnAttachments@ must match the call that provided the page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Optional. Identifier of the post under the course whose attachments to enumerate. Deprecated, use @item_id@ instead.
    postId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsList' with the minimum fields required to make a request.
newClassroomCoursesCourseWorkMaterialsAddOnAttachmentsList ::
  -- |  Required. Identifier of the course. See 'courseId'.
  Core.Text ->
  -- |  Identifier of the @Announcement@, @CourseWork@, or @CourseWorkMaterial@ whose attachments should be enumerated. This field is required, but is not marked as such while we are migrating from post_id. See 'itemId'.
  Core.Text ->
  ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsList
newClassroomCoursesCourseWorkMaterialsAddOnAttachmentsList
  courseId
  itemId =
    ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsList
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        courseId = courseId,
        itemId = itemId,
        pageSize = Core.Nothing,
        pageToken = Core.Nothing,
        postId = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsList
  where
  type
    Rs ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsList =
      ListAddOnAttachmentsResponse
  type
    Scopes ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsList =
      '[Classroom'Addons'Student, Classroom'Addons'Teacher]
  requestClient
    ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsList {..} =
      go
        courseId
        itemId
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        postId
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        classroomService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsListResource
            )
            Core.mempty
