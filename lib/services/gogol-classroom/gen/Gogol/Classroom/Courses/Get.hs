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
-- Module      : Gogol.Classroom.Courses.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a course. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access the requested course or for access errors. * @NOT_FOUND@ if no course exists with the requested ID.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.get@.
module Gogol.Classroom.Courses.Get
  ( -- * Resource
    ClassroomCoursesGetResource,

    -- ** Constructing a Request
    ClassroomCoursesGet (..),
    newClassroomCoursesGet,
  )
where

import Gogol.Classroom.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @classroom.courses.get@ method which the
-- 'ClassroomCoursesGet' request conforms to.
type ClassroomCoursesGetResource =
  "v1"
    Core.:> "courses"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Course

-- | Returns a course. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access the requested course or for access errors. * @NOT_FOUND@ if no course exists with the requested ID.
--
-- /See:/ 'newClassroomCoursesGet' smart constructor.
data ClassroomCoursesGet = ClassroomCoursesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier of the course to return. This identifier can be either the Classroom-assigned identifier or an alias.
    id :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesGet' with the minimum fields required to make a request.
newClassroomCoursesGet ::
  -- |  Identifier of the course to return. This identifier can be either the Classroom-assigned identifier or an alias. See 'id'.
  Core.Text ->
  ClassroomCoursesGet
newClassroomCoursesGet id =
  ClassroomCoursesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      id = id,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ClassroomCoursesGet where
  type Rs ClassroomCoursesGet = Course
  type
    Scopes ClassroomCoursesGet =
      '[Classroom'Courses, Classroom'Courses'Readonly]
  requestClient ClassroomCoursesGet {..} =
    go
      id
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      classroomService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ClassroomCoursesGetResource
          )
          Core.mempty
