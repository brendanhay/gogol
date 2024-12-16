{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Classroom.Courses.Posts.AddOnAttachments.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an add-on attachment. Requires the add-on requesting the attachment to be the original creator of the attachment. This method returns the following error codes: * @PERMISSION_DENIED@ for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if one of the identified resources does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.posts.addOnAttachments.get@.
module Gogol.Classroom.Courses.Posts.AddOnAttachments.Get
    (
    -- * Resource
      ClassroomCoursesPostsAddOnAttachmentsGetResource

    -- ** Constructing a Request
    , ClassroomCoursesPostsAddOnAttachmentsGet (..)
    , newClassroomCoursesPostsAddOnAttachmentsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Classroom.Types

-- | A resource alias for @classroom.courses.posts.addOnAttachments.get@ method which the
-- 'ClassroomCoursesPostsAddOnAttachmentsGet' request conforms to.
type ClassroomCoursesPostsAddOnAttachmentsGetResource
     =
     "v1" Core.:>
       "courses" Core.:>
         Core.Capture "courseId" Core.Text Core.:>
           "posts" Core.:>
             Core.Capture "postId" Core.Text Core.:>
               "addOnAttachments" Core.:>
                 Core.Capture "attachmentId" Core.Text Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "itemId" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON] AddOnAttachment

-- | Returns an add-on attachment. Requires the add-on requesting the attachment to be the original creator of the attachment. This method returns the following error codes: * @PERMISSION_DENIED@ for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if one of the identified resources does not exist.
--
-- /See:/ 'newClassroomCoursesPostsAddOnAttachmentsGet' smart constructor.
data ClassroomCoursesPostsAddOnAttachmentsGet = ClassroomCoursesPostsAddOnAttachmentsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Required. Identifier of the attachment.
    , attachmentId :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Identifier of the course.
    , courseId :: Core.Text
      -- | Identifier of the @Announcement@, @CourseWork@, or @CourseWorkMaterial@ under which the attachment is attached. This field is required, but is not marked as such while we are migrating from post_id.
    , itemId :: (Core.Maybe Core.Text)
      -- | Optional. Deprecated, use @item_id@ instead.
    , postId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesPostsAddOnAttachmentsGet' with the minimum fields required to make a request.
newClassroomCoursesPostsAddOnAttachmentsGet 
    ::  Core.Text
       -- ^  Required. Identifier of the attachment. See 'attachmentId'.
    -> Core.Text
       -- ^  Required. Identifier of the course. See 'courseId'.
    -> Core.Text
       -- ^  Optional. Deprecated, use @item_id@ instead. See 'postId'.
    -> ClassroomCoursesPostsAddOnAttachmentsGet
newClassroomCoursesPostsAddOnAttachmentsGet attachmentId courseId postId =
  ClassroomCoursesPostsAddOnAttachmentsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , attachmentId = attachmentId
    , callback = Core.Nothing
    , courseId = courseId
    , itemId = Core.Nothing
    , postId = postId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ClassroomCoursesPostsAddOnAttachmentsGet
         where
        type Rs ClassroomCoursesPostsAddOnAttachmentsGet =
             AddOnAttachment
        type Scopes ClassroomCoursesPostsAddOnAttachmentsGet
             = '[]
        requestClient
          ClassroomCoursesPostsAddOnAttachmentsGet{..}
          = go courseId postId attachmentId xgafv accessToken
              callback
              itemId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              classroomService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ClassroomCoursesPostsAddOnAttachmentsGetResource)
                      Core.mempty

