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
-- Module      : Gogol.Classroom.Courses.Posts.AddOnAttachments.StudentSubmissions.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a student submission for an add-on attachment. This method returns the following error codes: * @PERMISSION_DENIED@ for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if one of the identified resources does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.posts.addOnAttachments.studentSubmissions.get@.
module Gogol.Classroom.Courses.Posts.AddOnAttachments.StudentSubmissions.Get
  ( -- * Resource
    ClassroomCoursesPostsAddOnAttachmentsStudentSubmissionsGetResource,

    -- ** Constructing a Request
    ClassroomCoursesPostsAddOnAttachmentsStudentSubmissionsGet (..),
    newClassroomCoursesPostsAddOnAttachmentsStudentSubmissionsGet,
  )
where

import Gogol.Classroom.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @classroom.courses.posts.addOnAttachments.studentSubmissions.get@ method which the
-- 'ClassroomCoursesPostsAddOnAttachmentsStudentSubmissionsGet' request conforms to.
type ClassroomCoursesPostsAddOnAttachmentsStudentSubmissionsGetResource =
  "v1"
    Core.:> "courses"
    Core.:> Core.Capture "courseId" Core.Text
    Core.:> "posts"
    Core.:> Core.Capture "postId" Core.Text
    Core.:> "addOnAttachments"
    Core.:> Core.Capture "attachmentId" Core.Text
    Core.:> "studentSubmissions"
    Core.:> Core.Capture "submissionId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "itemId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AddOnAttachmentStudentSubmission

-- | Returns a student submission for an add-on attachment. This method returns the following error codes: * @PERMISSION_DENIED@ for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if one of the identified resources does not exist.
--
-- /See:/ 'newClassroomCoursesPostsAddOnAttachmentsStudentSubmissionsGet' smart constructor.
data ClassroomCoursesPostsAddOnAttachmentsStudentSubmissionsGet = ClassroomCoursesPostsAddOnAttachmentsStudentSubmissionsGet
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
    itemId :: (Core.Maybe Core.Text),
    -- | Optional. Deprecated, use @item_id@ instead.
    postId :: Core.Text,
    -- | Required. Identifier of the student’s submission.
    submissionId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesPostsAddOnAttachmentsStudentSubmissionsGet' with the minimum fields required to make a request.
newClassroomCoursesPostsAddOnAttachmentsStudentSubmissionsGet ::
  -- |  Required. Identifier of the attachment. See 'attachmentId'.
  Core.Text ->
  -- |  Required. Identifier of the course. See 'courseId'.
  Core.Text ->
  -- |  Optional. Deprecated, use @item_id@ instead. See 'postId'.
  Core.Text ->
  -- |  Required. Identifier of the student’s submission. See 'submissionId'.
  Core.Text ->
  ClassroomCoursesPostsAddOnAttachmentsStudentSubmissionsGet
newClassroomCoursesPostsAddOnAttachmentsStudentSubmissionsGet
  attachmentId
  courseId
  postId
  submissionId =
    ClassroomCoursesPostsAddOnAttachmentsStudentSubmissionsGet
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        attachmentId = attachmentId,
        callback = Core.Nothing,
        courseId = courseId,
        itemId = Core.Nothing,
        postId = postId,
        submissionId = submissionId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    ClassroomCoursesPostsAddOnAttachmentsStudentSubmissionsGet
  where
  type
    Rs ClassroomCoursesPostsAddOnAttachmentsStudentSubmissionsGet =
      AddOnAttachmentStudentSubmission
  type
    Scopes
      ClassroomCoursesPostsAddOnAttachmentsStudentSubmissionsGet =
      '[ Classroom'Addons'Student,
         Classroom'Addons'Teacher,
         Classroom'StudentSubmissions'Students'Readonly
       ]
  requestClient
    ClassroomCoursesPostsAddOnAttachmentsStudentSubmissionsGet {..} =
      go
        courseId
        postId
        attachmentId
        submissionId
        xgafv
        accessToken
        callback
        itemId
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        classroomService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ClassroomCoursesPostsAddOnAttachmentsStudentSubmissionsGetResource
            )
            Core.mempty
