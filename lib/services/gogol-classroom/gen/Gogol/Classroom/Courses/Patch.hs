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
-- Module      : Gogol.Classroom.Courses.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates one or more fields in a course. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to modify the requested course or for access errors. * @NOT_FOUND@ if no course exists with the requested ID. * @INVALID_ARGUMENT@ if invalid fields are specified in the update mask or if no update mask is supplied. * @FAILED_PRECONDITION@ for the following request errors: * CourseNotModifiable * InactiveCourseOwner * IneligibleOwner
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.patch@.
module Gogol.Classroom.Courses.Patch
    (
    -- * Resource
      ClassroomCoursesPatchResource

    -- ** Constructing a Request
    , ClassroomCoursesPatch (..)
    , newClassroomCoursesPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Classroom.Types

-- | A resource alias for @classroom.courses.patch@ method which the
-- 'ClassroomCoursesPatch' request conforms to.
type ClassroomCoursesPatchResource =
     "v1" Core.:>
       "courses" Core.:>
         Core.Capture "id" Core.Text Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "updateMask" Core.FieldMask Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] Course Core.:>
                           Core.Patch '[Core.JSON] Course

-- | Updates one or more fields in a course. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to modify the requested course or for access errors. * @NOT_FOUND@ if no course exists with the requested ID. * @INVALID_ARGUMENT@ if invalid fields are specified in the update mask or if no update mask is supplied. * @FAILED_PRECONDITION@ for the following request errors: * CourseNotModifiable * InactiveCourseOwner * IneligibleOwner
--
-- /See:/ 'newClassroomCoursesPatch' smart constructor.
data ClassroomCoursesPatch = ClassroomCoursesPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Identifier of the course to update. This identifier can be either the Classroom-assigned identifier or an alias.
    , id :: Core.Text
      -- | Multipart request metadata.
    , payload :: Course
      -- | Mask that identifies which fields on the course to update. This field is required to do an update. The update will fail if invalid fields are specified. The following fields are valid: * @name@ * @section@ * @descriptionHeading@ * @description@ * @room@ * @courseState@ * @ownerId@ Note: patches to ownerId are treated as being effective immediately, but in practice it may take some time for the ownership transfer of all affected resources to complete. When set in a query parameter, this field should be specified as @updateMask=,,...@
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesPatch' with the minimum fields required to make a request.
newClassroomCoursesPatch 
    ::  Core.Text
       -- ^  Identifier of the course to update. This identifier can be either the Classroom-assigned identifier or an alias. See 'id'.
    -> Course
       -- ^  Multipart request metadata. See 'payload'.
    -> ClassroomCoursesPatch
newClassroomCoursesPatch id payload =
  ClassroomCoursesPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , id = id
    , payload = payload
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ClassroomCoursesPatch
         where
        type Rs ClassroomCoursesPatch = Course
        type Scopes ClassroomCoursesPatch =
             '[Classroom'Courses]
        requestClient ClassroomCoursesPatch{..}
          = go id xgafv accessToken callback updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              classroomService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ClassroomCoursesPatchResource)
                      Core.mempty

