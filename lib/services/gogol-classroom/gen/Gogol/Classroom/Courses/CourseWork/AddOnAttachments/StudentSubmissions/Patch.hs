{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Classroom.Courses.CourseWork.AddOnAttachments.StudentSubmissions.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates data associated with an add-on attachment submission. Requires the add-on to have been the original creator of the attachment and the attachment to have a positive @max_points@ value set. This method returns the following error codes: * @PERMISSION_DENIED@ for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if one of the identified resources does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWork.addOnAttachments.studentSubmissions.patch@.
module Gogol.Classroom.Courses.CourseWork.AddOnAttachments.StudentSubmissions.Patch
  ( -- * Resource
    ClassroomCoursesCourseWorkAddOnAttachmentsStudentSubmissionsPatchResource,

    -- ** Constructing a Request
    ClassroomCoursesCourseWorkAddOnAttachmentsStudentSubmissionsPatch (..),
    newClassroomCoursesCourseWorkAddOnAttachmentsStudentSubmissionsPatch,
  )
where

import Gogol.Classroom.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @classroom.courses.courseWork.addOnAttachments.studentSubmissions.patch@ method which the
-- 'ClassroomCoursesCourseWorkAddOnAttachmentsStudentSubmissionsPatch' request conforms to.
type ClassroomCoursesCourseWorkAddOnAttachmentsStudentSubmissionsPatchResource =
  "v1"
    Core.:> "courses"
    Core.:> Core.Capture "courseId" Core.Text
    Core.:> "courseWork"
    Core.:> Core.Capture "itemId" Core.Text
    Core.:> "addOnAttachments"
    Core.:> Core.Capture "attachmentId" Core.Text
    Core.:> "studentSubmissions"
    Core.:> Core.Capture "submissionId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "postId" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AddOnAttachmentStudentSubmission
    Core.:> Core.Patch '[Core.JSON] AddOnAttachmentStudentSubmission

-- | Updates data associated with an add-on attachment submission. Requires the add-on to have been the original creator of the attachment and the attachment to have a positive @max_points@ value set. This method returns the following error codes: * @PERMISSION_DENIED@ for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if one of the identified resources does not exist.
--
-- /See:/ 'newClassroomCoursesCourseWorkAddOnAttachmentsStudentSubmissionsPatch' smart constructor.
data ClassroomCoursesCourseWorkAddOnAttachmentsStudentSubmissionsPatch = ClassroomCoursesCourseWorkAddOnAttachmentsStudentSubmissionsPatch
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
    -- | Identifier of the @Announcement@, @CourseWork@, or @CourseWorkMaterial@ under which the attachment is attached. This field is required, but is not marked as such while we are migrating from post_id.
    itemId :: Core.Text,
    -- | Multipart request metadata.
    payload :: AddOnAttachmentStudentSubmission,
    -- | Optional. Deprecated, use @item_id@ instead.
    postId :: (Core.Maybe Core.Text),
    -- | Required. Identifier of the student\'s submission.
    submissionId :: Core.Text,
    -- | Required. Mask that identifies which fields on the attachment to update. The update fails if invalid fields are specified. If a field supports empty values, it can be cleared by specifying it in the update mask and not in the @AddOnAttachmentStudentSubmission@ object. The following fields may be specified by teachers: * @points_earned@
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesCourseWorkAddOnAttachmentsStudentSubmissionsPatch' with the minimum fields required to make a request.
newClassroomCoursesCourseWorkAddOnAttachmentsStudentSubmissionsPatch ::
  -- |  Required. Identifier of the attachment. See 'attachmentId'.
  Core.Text ->
  -- |  Required. Identifier of the course. See 'courseId'.
  Core.Text ->
  -- |  Identifier of the @Announcement@, @CourseWork@, or @CourseWorkMaterial@ under which the attachment is attached. This field is required, but is not marked as such while we are migrating from post_id. See 'itemId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AddOnAttachmentStudentSubmission ->
  -- |  Required. Identifier of the student\'s submission. See 'submissionId'.
  Core.Text ->
  ClassroomCoursesCourseWorkAddOnAttachmentsStudentSubmissionsPatch
newClassroomCoursesCourseWorkAddOnAttachmentsStudentSubmissionsPatch
  attachmentId
  courseId
  itemId
  payload
  submissionId =
    ClassroomCoursesCourseWorkAddOnAttachmentsStudentSubmissionsPatch
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        attachmentId = attachmentId,
        callback = Core.Nothing,
        courseId = courseId,
        itemId = itemId,
        payload = payload,
        postId = Core.Nothing,
        submissionId = submissionId,
        updateMask = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    ClassroomCoursesCourseWorkAddOnAttachmentsStudentSubmissionsPatch
  where
  type
    Rs
      ClassroomCoursesCourseWorkAddOnAttachmentsStudentSubmissionsPatch =
      AddOnAttachmentStudentSubmission
  type
    Scopes
      ClassroomCoursesCourseWorkAddOnAttachmentsStudentSubmissionsPatch =
      '[]
  requestClient
    ClassroomCoursesCourseWorkAddOnAttachmentsStudentSubmissionsPatch {..} =
      go
        courseId
        itemId
        attachmentId
        submissionId
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
                  ClassroomCoursesCourseWorkAddOnAttachmentsStudentSubmissionsPatchResource
            )
            Core.mempty
