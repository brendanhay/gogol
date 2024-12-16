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
-- Module      : Gogol.Classroom.Courses.Topics.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a topic. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access the requested course or topic, or for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if the requested course or topic does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.topics.get@.
module Gogol.Classroom.Courses.Topics.Get
    (
    -- * Resource
      ClassroomCoursesTopicsGetResource

    -- ** Constructing a Request
    , ClassroomCoursesTopicsGet (..)
    , newClassroomCoursesTopicsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Classroom.Types

-- | A resource alias for @classroom.courses.topics.get@ method which the
-- 'ClassroomCoursesTopicsGet' request conforms to.
type ClassroomCoursesTopicsGetResource =
     "v1" Core.:>
       "courses" Core.:>
         Core.Capture "courseId" Core.Text Core.:>
           "topics" Core.:>
             Core.Capture "id" Core.Text Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] Topic

-- | Returns a topic. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access the requested course or topic, or for access errors. * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if the requested course or topic does not exist.
--
-- /See:/ 'newClassroomCoursesTopicsGet' smart constructor.
data ClassroomCoursesTopicsGet = ClassroomCoursesTopicsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Identifier of the course.
    , courseId :: Core.Text
      -- | Identifier of the topic.
    , id :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesTopicsGet' with the minimum fields required to make a request.
newClassroomCoursesTopicsGet 
    ::  Core.Text
       -- ^  Identifier of the course. See 'courseId'.
    -> Core.Text
       -- ^  Identifier of the topic. See 'id'.
    -> ClassroomCoursesTopicsGet
newClassroomCoursesTopicsGet courseId id =
  ClassroomCoursesTopicsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , courseId = courseId
    , id = id
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ClassroomCoursesTopicsGet
         where
        type Rs ClassroomCoursesTopicsGet = Topic
        type Scopes ClassroomCoursesTopicsGet =
             '[Classroom'Topics, Classroom'Topics'Readonly]
        requestClient ClassroomCoursesTopicsGet{..}
          = go courseId id xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              classroomService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ClassroomCoursesTopicsGetResource)
                      Core.mempty

