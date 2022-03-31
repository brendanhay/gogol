{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Classroom.Courses.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a course. The user specified in @ownerId@ is the owner of the created course and added as a teacher. A non-admin requesting user can only create a course with themselves as the owner. Domain admins can create courses owned by any user within their domain. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to create courses or for access errors. * @NOT_FOUND@ if the primary teacher is not a valid user. * @FAILED_PRECONDITION@ if the course owner\'s account is disabled or for the following request errors: * UserGroupsMembershipLimitReached * @ALREADY_EXISTS@ if an alias was specified in the @id@ and already exists.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.create@.
module Gogol.Classroom.Courses.Create
  ( -- * Resource
    ClassroomCoursesCreateResource,

    -- ** Constructing a Request
    newClassroomCoursesCreate,
    ClassroomCoursesCreate,
  )
where

import Gogol.Classroom.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @classroom.courses.create@ method which the
-- 'ClassroomCoursesCreate' request conforms to.
type ClassroomCoursesCreateResource =
  "v1"
    Core.:> "courses"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Course
    Core.:> Core.Post '[Core.JSON] Course

-- | Creates a course. The user specified in @ownerId@ is the owner of the created course and added as a teacher. A non-admin requesting user can only create a course with themselves as the owner. Domain admins can create courses owned by any user within their domain. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to create courses or for access errors. * @NOT_FOUND@ if the primary teacher is not a valid user. * @FAILED_PRECONDITION@ if the course owner\'s account is disabled or for the following request errors: * UserGroupsMembershipLimitReached * @ALREADY_EXISTS@ if an alias was specified in the @id@ and already exists.
--
-- /See:/ 'newClassroomCoursesCreate' smart constructor.
data ClassroomCoursesCreate = ClassroomCoursesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Course,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesCreate' with the minimum fields required to make a request.
newClassroomCoursesCreate ::
  -- |  Multipart request metadata. See 'payload'.
  Course ->
  ClassroomCoursesCreate
newClassroomCoursesCreate payload =
  ClassroomCoursesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ClassroomCoursesCreate where
  type Rs ClassroomCoursesCreate = Course
  type
    Scopes ClassroomCoursesCreate =
      '[Classroom'Courses]
  requestClient ClassroomCoursesCreate {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      classroomService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ClassroomCoursesCreateResource
          )
          Core.mempty
