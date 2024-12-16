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
-- Module      : Gogol.Classroom.Courses.Announcements.GetAddOnContext
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets metadata for Classroom add-ons in the context of a specific post. To maintain the integrity of its own data and permissions model, an add-on should call this to validate query parameters and the requesting user\'s role whenever the add-on is opened in an <https://developers.google.com/classroom/add-ons/get-started/iframes/iframes-overview iframe>. This method returns the following error codes: * @PERMISSION_DENIED@ for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if one of the identified resources does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.announcements.getAddOnContext@.
module Gogol.Classroom.Courses.Announcements.GetAddOnContext
    (
    -- * Resource
      ClassroomCoursesAnnouncementsGetAddOnContextResource

    -- ** Constructing a Request
    , ClassroomCoursesAnnouncementsGetAddOnContext (..)
    , newClassroomCoursesAnnouncementsGetAddOnContext
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Classroom.Types

-- | A resource alias for @classroom.courses.announcements.getAddOnContext@ method which the
-- 'ClassroomCoursesAnnouncementsGetAddOnContext' request conforms to.
type ClassroomCoursesAnnouncementsGetAddOnContextResource
     =
     "v1" Core.:>
       "courses" Core.:>
         Core.Capture "courseId" Core.Text Core.:>
           "announcements" Core.:>
             Core.Capture "itemId" Core.Text Core.:>
               "addOnContext" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "addOnToken" Core.Text Core.:>
                       Core.QueryParam "attachmentId" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "postId" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.Get '[Core.JSON] AddOnContext

-- | Gets metadata for Classroom add-ons in the context of a specific post. To maintain the integrity of its own data and permissions model, an add-on should call this to validate query parameters and the requesting user\'s role whenever the add-on is opened in an <https://developers.google.com/classroom/add-ons/get-started/iframes/iframes-overview iframe>. This method returns the following error codes: * @PERMISSION_DENIED@ for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if one of the identified resources does not exist.
--
-- /See:/ 'newClassroomCoursesAnnouncementsGetAddOnContext' smart constructor.
data ClassroomCoursesAnnouncementsGetAddOnContext = ClassroomCoursesAnnouncementsGetAddOnContext
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Optional. Token that authorizes the request. The token is passed as a query parameter when the user is redirected from Classroom to the add-on\'s URL. The authorization token is required when neither of the following is true: * The add-on has attachments on the post. * The developer project issuing the request is the same project that created the post.
    , addOnToken :: (Core.Maybe Core.Text)
      -- | Optional. The identifier of the attachment. This field is required for all requests except when the user is in the <https://developers.google.com/classroom/add-ons/get-started/iframes/attachment-discovery-iframe Attachment Discovery iframe>.
    , attachmentId :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Identifier of the course.
    , courseId :: Core.Text
      -- | Identifier of the @Announcement@, @CourseWork@, or @CourseWorkMaterial@ under which the attachment is attached. This field is required, but is not marked as such while we are migrating from post_id.
    , itemId :: Core.Text
      -- | Optional. Deprecated, use @item_id@ instead.
    , postId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesAnnouncementsGetAddOnContext' with the minimum fields required to make a request.
newClassroomCoursesAnnouncementsGetAddOnContext 
    ::  Core.Text
       -- ^  Required. Identifier of the course. See 'courseId'.
    -> Core.Text
       -- ^  Identifier of the @Announcement@, @CourseWork@, or @CourseWorkMaterial@ under which the attachment is attached. This field is required, but is not marked as such while we are migrating from post_id. See 'itemId'.
    -> ClassroomCoursesAnnouncementsGetAddOnContext
newClassroomCoursesAnnouncementsGetAddOnContext courseId itemId =
  ClassroomCoursesAnnouncementsGetAddOnContext
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , addOnToken = Core.Nothing
    , attachmentId = Core.Nothing
    , callback = Core.Nothing
    , courseId = courseId
    , itemId = itemId
    , postId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ClassroomCoursesAnnouncementsGetAddOnContext
         where
        type Rs ClassroomCoursesAnnouncementsGetAddOnContext
             = AddOnContext
        type Scopes
               ClassroomCoursesAnnouncementsGetAddOnContext
             = '[]
        requestClient
          ClassroomCoursesAnnouncementsGetAddOnContext{..}
          = go courseId itemId xgafv accessToken addOnToken
              attachmentId
              callback
              postId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              classroomService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ClassroomCoursesAnnouncementsGetAddOnContextResource)
                      Core.mempty

