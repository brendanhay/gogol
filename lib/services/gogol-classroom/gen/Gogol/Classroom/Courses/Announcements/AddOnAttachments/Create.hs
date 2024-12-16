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
-- Module      : Gogol.Classroom.Courses.Announcements.AddOnAttachments.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an add-on attachment under a post. Requires the add-on to have permission to create new attachments on the post. This method returns the following error codes: * @PERMISSION_DENIED@ for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if one of the identified resources does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.announcements.addOnAttachments.create@.
module Gogol.Classroom.Courses.Announcements.AddOnAttachments.Create
    (
    -- * Resource
      ClassroomCoursesAnnouncementsAddOnAttachmentsCreateResource

    -- ** Constructing a Request
    , ClassroomCoursesAnnouncementsAddOnAttachmentsCreate (..)
    , newClassroomCoursesAnnouncementsAddOnAttachmentsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Classroom.Types

-- | A resource alias for @classroom.courses.announcements.addOnAttachments.create@ method which the
-- 'ClassroomCoursesAnnouncementsAddOnAttachmentsCreate' request conforms to.
type ClassroomCoursesAnnouncementsAddOnAttachmentsCreateResource
     =
     "v1" Core.:>
       "courses" Core.:>
         Core.Capture "courseId" Core.Text Core.:>
           "announcements" Core.:>
             Core.Capture "itemId" Core.Text Core.:>
               "addOnAttachments" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "addOnToken" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "postId" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.ReqBody '[Core.JSON] AddOnAttachment
                                   Core.:>
                                   Core.Post '[Core.JSON] AddOnAttachment

-- | Creates an add-on attachment under a post. Requires the add-on to have permission to create new attachments on the post. This method returns the following error codes: * @PERMISSION_DENIED@ for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if one of the identified resources does not exist.
--
-- /See:/ 'newClassroomCoursesAnnouncementsAddOnAttachmentsCreate' smart constructor.
data ClassroomCoursesAnnouncementsAddOnAttachmentsCreate = ClassroomCoursesAnnouncementsAddOnAttachmentsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Optional. Token that authorizes the request. The token is passed as a query parameter when the user is redirected from Classroom to the add-on\'s URL. This authorization token is required for in-Classroom attachment creation but optional for partner-first attachment creation. Returns an error if not provided for partner-first attachment creation and the developer projects that created the attachment and its parent stream item do not match.
    , addOnToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Identifier of the course.
    , courseId :: Core.Text
      -- | Identifier of the @Announcement@, @CourseWork@, or @CourseWorkMaterial@ under which to create the attachment. This field is required, but is not marked as such while we are migrating from post_id.
    , itemId :: Core.Text
      -- | Multipart request metadata.
    , payload :: AddOnAttachment
      -- | Optional. Deprecated, use @item_id@ instead.
    , postId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesAnnouncementsAddOnAttachmentsCreate' with the minimum fields required to make a request.
newClassroomCoursesAnnouncementsAddOnAttachmentsCreate 
    ::  Core.Text
       -- ^  Required. Identifier of the course. See 'courseId'.
    -> Core.Text
       -- ^  Identifier of the @Announcement@, @CourseWork@, or @CourseWorkMaterial@ under which to create the attachment. This field is required, but is not marked as such while we are migrating from post_id. See 'itemId'.
    -> AddOnAttachment
       -- ^  Multipart request metadata. See 'payload'.
    -> ClassroomCoursesAnnouncementsAddOnAttachmentsCreate
newClassroomCoursesAnnouncementsAddOnAttachmentsCreate courseId itemId payload =
  ClassroomCoursesAnnouncementsAddOnAttachmentsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , addOnToken = Core.Nothing
    , callback = Core.Nothing
    , courseId = courseId
    , itemId = itemId
    , payload = payload
    , postId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ClassroomCoursesAnnouncementsAddOnAttachmentsCreate
         where
        type Rs
               ClassroomCoursesAnnouncementsAddOnAttachmentsCreate
             = AddOnAttachment
        type Scopes
               ClassroomCoursesAnnouncementsAddOnAttachmentsCreate
             = '[]
        requestClient
          ClassroomCoursesAnnouncementsAddOnAttachmentsCreate{..}
          = go courseId itemId xgafv accessToken addOnToken
              callback
              postId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              classroomService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ClassroomCoursesAnnouncementsAddOnAttachmentsCreateResource)
                      Core.mempty

