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
-- Module      : Gogol.Classroom.Courses.Aliases.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an alias for a course. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to create the alias or for access errors. * @NOT_FOUND@ if the course does not exist. * @ALREADY_EXISTS@ if the alias already exists. * @FAILED_PRECONDITION@ if the alias requested does not make sense for the requesting user or course (for example, if a user not in a domain attempts to access a domain-scoped alias).
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.aliases.create@.
module Gogol.Classroom.Courses.Aliases.Create
    (
    -- * Resource
      ClassroomCoursesAliasesCreateResource

    -- ** Constructing a Request
    , newClassroomCoursesAliasesCreate
    , ClassroomCoursesAliasesCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Classroom.Types

-- | A resource alias for @classroom.courses.aliases.create@ method which the
-- 'ClassroomCoursesAliasesCreate' request conforms to.
type ClassroomCoursesAliasesCreateResource =
     "v1" Core.:>
       "courses" Core.:>
         Core.Capture "courseId" Core.Text Core.:>
           "aliases" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] CourseAlias Core.:>
                           Core.Post '[Core.JSON] CourseAlias

-- | Creates an alias for a course. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to create the alias or for access errors. * @NOT_FOUND@ if the course does not exist. * @ALREADY_EXISTS@ if the alias already exists. * @FAILED_PRECONDITION@ if the alias requested does not make sense for the requesting user or course (for example, if a user not in a domain attempts to access a domain-scoped alias).
--
-- /See:/ 'newClassroomCoursesAliasesCreate' smart constructor.
data ClassroomCoursesAliasesCreate = ClassroomCoursesAliasesCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Identifier of the course to alias. This identifier can be either the Classroom-assigned identifier or an alias.
    , courseId :: Core.Text
      -- | Multipart request metadata.
    , payload :: CourseAlias
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesAliasesCreate' with the minimum fields required to make a request.
newClassroomCoursesAliasesCreate 
    ::  Core.Text
       -- ^  Identifier of the course to alias. This identifier can be either the Classroom-assigned identifier or an alias. See 'courseId'.
    -> CourseAlias
       -- ^  Multipart request metadata. See 'payload'.
    -> ClassroomCoursesAliasesCreate
newClassroomCoursesAliasesCreate courseId payload =
  ClassroomCoursesAliasesCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , courseId = courseId
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ClassroomCoursesAliasesCreate
         where
        type Rs ClassroomCoursesAliasesCreate = CourseAlias
        type Scopes ClassroomCoursesAliasesCreate =
             '["https://www.googleapis.com/auth/classroom.courses"]
        requestClient ClassroomCoursesAliasesCreate{..}
          = go courseId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              classroomService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ClassroomCoursesAliasesCreateResource)
                      Core.mempty

