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
-- Module      : Gogol.Classroom.Courses.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a course. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to modify the requested course or for access errors. * @NOT_FOUND@ if no course exists with the requested ID. * @FAILED_PRECONDITION@ for the following request errors: * CourseNotModifiable
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.update@.
module Gogol.Classroom.Courses.Update
    (
    -- * Resource
      ClassroomCoursesUpdateResource

    -- ** Constructing a Request
    , newClassroomCoursesUpdate
    , ClassroomCoursesUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Classroom.Types

-- | A resource alias for @classroom.courses.update@ method which the
-- 'ClassroomCoursesUpdate' request conforms to.
type ClassroomCoursesUpdateResource =
     "v1" Core.:>
       "courses" Core.:>
         Core.Capture "id" Core.Text Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] Course Core.:>
                         Core.Put '[Core.JSON] Course

-- | Updates a course. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to modify the requested course or for access errors. * @NOT_FOUND@ if no course exists with the requested ID. * @FAILED_PRECONDITION@ for the following request errors: * CourseNotModifiable
--
-- /See:/ 'newClassroomCoursesUpdate' smart constructor.
data ClassroomCoursesUpdate = ClassroomCoursesUpdate
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
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesUpdate' with the minimum fields required to make a request.
newClassroomCoursesUpdate 
    ::  Core.Text
       -- ^  Identifier of the course to update. This identifier can be either the Classroom-assigned identifier or an alias. See 'id'.
    -> Course
       -- ^  Multipart request metadata. See 'payload'.
    -> ClassroomCoursesUpdate
newClassroomCoursesUpdate id payload =
  ClassroomCoursesUpdate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , id = id
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ClassroomCoursesUpdate
         where
        type Rs ClassroomCoursesUpdate = Course
        type Scopes ClassroomCoursesUpdate =
             '["https://www.googleapis.com/auth/classroom.courses"]
        requestClient ClassroomCoursesUpdate{..}
          = go id xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              classroomService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ClassroomCoursesUpdateResource)
                      Core.mempty

