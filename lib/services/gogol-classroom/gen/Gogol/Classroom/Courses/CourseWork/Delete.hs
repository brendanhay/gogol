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
-- Module      : Gogol.Classroom.Courses.CourseWork.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a course work. This request must be made by the Developer Console project of the <https://support.google.com/cloud/answer/6158849 OAuth client ID> used to create the corresponding course work item. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting developer project did not create the corresponding course work, if the requesting user is not permitted to delete the requested course or for access errors. * @FAILED_PRECONDITION@ if the requested course work has already been deleted. * @NOT_FOUND@ if no course exists with the requested ID.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWork.delete@.
module Gogol.Classroom.Courses.CourseWork.Delete
    (
    -- * Resource
      ClassroomCoursesCourseWorkDeleteResource

    -- ** Constructing a Request
    , ClassroomCoursesCourseWorkDelete (..)
    , newClassroomCoursesCourseWorkDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Classroom.Types

-- | A resource alias for @classroom.courses.courseWork.delete@ method which the
-- 'ClassroomCoursesCourseWorkDelete' request conforms to.
type ClassroomCoursesCourseWorkDeleteResource =
     "v1" Core.:>
       "courses" Core.:>
         Core.Capture "courseId" Core.Text Core.:>
           "courseWork" Core.:>
             Core.Capture "id" Core.Text Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Delete '[Core.JSON] Empty

-- | Deletes a course work. This request must be made by the Developer Console project of the <https://support.google.com/cloud/answer/6158849 OAuth client ID> used to create the corresponding course work item. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting developer project did not create the corresponding course work, if the requesting user is not permitted to delete the requested course or for access errors. * @FAILED_PRECONDITION@ if the requested course work has already been deleted. * @NOT_FOUND@ if no course exists with the requested ID.
--
-- /See:/ 'newClassroomCoursesCourseWorkDelete' smart constructor.
data ClassroomCoursesCourseWorkDelete = ClassroomCoursesCourseWorkDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.
    , courseId :: Core.Text
      -- | Identifier of the course work to delete. This identifier is a Classroom-assigned identifier.
    , id :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesCourseWorkDelete' with the minimum fields required to make a request.
newClassroomCoursesCourseWorkDelete 
    ::  Core.Text
       -- ^  Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. See 'courseId'.
    -> Core.Text
       -- ^  Identifier of the course work to delete. This identifier is a Classroom-assigned identifier. See 'id'.
    -> ClassroomCoursesCourseWorkDelete
newClassroomCoursesCourseWorkDelete courseId id =
  ClassroomCoursesCourseWorkDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , courseId = courseId
    , id = id
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ClassroomCoursesCourseWorkDelete
         where
        type Rs ClassroomCoursesCourseWorkDelete = Empty
        type Scopes ClassroomCoursesCourseWorkDelete =
             '[Classroom'Coursework'Students]
        requestClient ClassroomCoursesCourseWorkDelete{..}
          = go courseId id xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              classroomService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ClassroomCoursesCourseWorkDeleteResource)
                      Core.mempty

