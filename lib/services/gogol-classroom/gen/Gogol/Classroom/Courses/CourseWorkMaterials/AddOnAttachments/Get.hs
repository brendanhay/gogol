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
-- Module      : Gogol.Classroom.Courses.CourseWorkMaterials.AddOnAttachments.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an add-on attachment. Requires the add-on requesting the attachment to be the original creator of the attachment. This method returns the following error codes: * @PERMISSION_DENIED@ for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if one of the identified resources does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWorkMaterials.addOnAttachments.get@.
module Gogol.Classroom.Courses.CourseWorkMaterials.AddOnAttachments.Get
    (
    -- * Resource
      ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsGetResource

    -- ** Constructing a Request
    , ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsGet (..)
    , newClassroomCoursesCourseWorkMaterialsAddOnAttachmentsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Classroom.Types

-- | A resource alias for @classroom.courses.courseWorkMaterials.addOnAttachments.get@ method which the
-- 'ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsGet' request conforms to.
type ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsGetResource
     =
     "v1" Core.:>
       "courses" Core.:>
         Core.Capture "courseId" Core.Text Core.:>
           "courseWorkMaterials" Core.:>
             Core.Capture "itemId" Core.Text Core.:>
               "addOnAttachments" Core.:>
                 Core.Capture "attachmentId" Core.Text Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "postId" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON] AddOnAttachment

-- | Returns an add-on attachment. Requires the add-on requesting the attachment to be the original creator of the attachment. This method returns the following error codes: * @PERMISSION_DENIED@ for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if one of the identified resources does not exist.
--
-- /See:/ 'newClassroomCoursesCourseWorkMaterialsAddOnAttachmentsGet' smart constructor.
data ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsGet = ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsGet
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
    , itemId :: Core.Text
      -- | Optional. Deprecated, use @item_id@ instead.
    , postId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsGet' with the minimum fields required to make a request.
newClassroomCoursesCourseWorkMaterialsAddOnAttachmentsGet 
    ::  Core.Text
       -- ^  Required. Identifier of the attachment. See 'attachmentId'.
    -> Core.Text
       -- ^  Required. Identifier of the course. See 'courseId'.
    -> Core.Text
       -- ^  Identifier of the @Announcement@, @CourseWork@, or @CourseWorkMaterial@ under which the attachment is attached. This field is required, but is not marked as such while we are migrating from post_id. See 'itemId'.
    -> ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsGet
newClassroomCoursesCourseWorkMaterialsAddOnAttachmentsGet attachmentId courseId itemId =
  ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , attachmentId = attachmentId
    , callback = Core.Nothing
    , courseId = courseId
    , itemId = itemId
    , postId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsGet
         where
        type Rs
               ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsGet
             = AddOnAttachment
        type Scopes
               ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsGet
             = '[]
        requestClient
          ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsGet{..}
          = go courseId itemId attachmentId xgafv accessToken
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
                           ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsGetResource)
                      Core.mempty
