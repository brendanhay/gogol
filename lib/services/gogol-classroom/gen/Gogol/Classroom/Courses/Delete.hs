{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Classroom.Courses.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a course. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to delete the requested course or for access errors. * @NOT_FOUND@ if no course exists with the requested ID.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.delete@.
module Gogol.Classroom.Courses.Delete
  ( -- * Resource
    ClassroomCoursesDeleteResource,

    -- ** Constructing a Request
    ClassroomCoursesDelete (..),
    newClassroomCoursesDelete,
  )
where

import Gogol.Classroom.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @classroom.courses.delete@ method which the
-- 'ClassroomCoursesDelete' request conforms to.
type ClassroomCoursesDeleteResource =
  "v1"
    Core.:> "courses"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes a course. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to delete the requested course or for access errors. * @NOT_FOUND@ if no course exists with the requested ID.
--
-- /See:/ 'newClassroomCoursesDelete' smart constructor.
data ClassroomCoursesDelete = ClassroomCoursesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier of the course to delete. This identifier can be either the Classroom-assigned identifier or an alias.
    id :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesDelete' with the minimum fields required to make a request.
newClassroomCoursesDelete ::
  -- |  Identifier of the course to delete. This identifier can be either the Classroom-assigned identifier or an alias. See 'id'.
  Core.Text ->
  ClassroomCoursesDelete
newClassroomCoursesDelete id =
  ClassroomCoursesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      id = id,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ClassroomCoursesDelete where
  type Rs ClassroomCoursesDelete = Empty
  type Scopes ClassroomCoursesDelete = '[Classroom'Courses]
  requestClient ClassroomCoursesDelete {..} =
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
          (Core.Proxy :: Core.Proxy ClassroomCoursesDeleteResource)
          Core.mempty
