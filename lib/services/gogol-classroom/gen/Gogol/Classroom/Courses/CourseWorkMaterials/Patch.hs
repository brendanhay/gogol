{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Classroom.Courses.CourseWorkMaterials.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates one or more fields of a course work material. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting developer project for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @FAILED_PRECONDITION@ if the requested course work material has already been deleted. * @NOT_FOUND@ if the requested course or course work material does not exist
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWorkMaterials.patch@.
module Gogol.Classroom.Courses.CourseWorkMaterials.Patch
    (
    -- * Resource
      ClassroomCoursesCourseWorkMaterialsPatchResource

    -- ** Constructing a Request
    , newClassroomCoursesCourseWorkMaterialsPatch
    , ClassroomCoursesCourseWorkMaterialsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Classroom.Types

-- | A resource alias for @classroom.courses.courseWorkMaterials.patch@ method which the
-- 'ClassroomCoursesCourseWorkMaterialsPatch' request conforms to.
type ClassroomCoursesCourseWorkMaterialsPatchResource
     =
     "v1" Core.:>
       "courses" Core.:>
         Core.Capture "courseId" Core.Text Core.:>
           "courseWorkMaterials" Core.:>
             Core.Capture "id" Core.Text Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "updateMask" Core.GFieldMask Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON] CourseWorkMaterial
                               Core.:>
                               Core.Patch '[Core.JSON] CourseWorkMaterial

-- | Updates one or more fields of a course work material. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting developer project for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @FAILED_PRECONDITION@ if the requested course work material has already been deleted. * @NOT_FOUND@ if the requested course or course work material does not exist
--
-- /See:/ 'newClassroomCoursesCourseWorkMaterialsPatch' smart constructor.
data ClassroomCoursesCourseWorkMaterialsPatch = ClassroomCoursesCourseWorkMaterialsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.
    , courseId :: Core.Text
      -- | Identifier of the course work material.
    , id :: Core.Text
      -- | Multipart request metadata.
    , payload :: CourseWorkMaterial
      -- | Mask that identifies which fields on the course work material to update. This field is required to do an update. The update fails if invalid fields are specified. If a field supports empty values, it can be cleared by specifying it in the update mask and not in the course work material object. If a field that does not support empty values is included in the update mask and not set in the course work material object, an @INVALID_ARGUMENT@ error is returned. The following fields may be specified by teachers: * @title@ * @description@ * @state@ * @scheduled_time@ * @topic_id@
    , updateMask :: (Core.Maybe Core.GFieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesCourseWorkMaterialsPatch' with the minimum fields required to make a request.
newClassroomCoursesCourseWorkMaterialsPatch 
    ::  Core.Text
       -- ^  Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. See 'courseId'.
    -> Core.Text
       -- ^  Identifier of the course work material. See 'id'.
    -> CourseWorkMaterial
       -- ^  Multipart request metadata. See 'payload'.
    -> ClassroomCoursesCourseWorkMaterialsPatch
newClassroomCoursesCourseWorkMaterialsPatch courseId id payload =
  ClassroomCoursesCourseWorkMaterialsPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , courseId = courseId
    , id = id
    , payload = payload
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ClassroomCoursesCourseWorkMaterialsPatch
         where
        type Rs ClassroomCoursesCourseWorkMaterialsPatch =
             CourseWorkMaterial
        type Scopes ClassroomCoursesCourseWorkMaterialsPatch
             =
             '["https://www.googleapis.com/auth/classroom.courseworkmaterials"]
        requestClient
          ClassroomCoursesCourseWorkMaterialsPatch{..}
          = go courseId id xgafv accessToken callback
              updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              classroomService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ClassroomCoursesCourseWorkMaterialsPatchResource)
                      Core.mempty

