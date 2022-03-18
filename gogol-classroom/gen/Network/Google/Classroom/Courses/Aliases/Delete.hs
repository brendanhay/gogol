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
-- Module      : Network.Google.Classroom.Courses.Aliases.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an alias of a course. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to remove the alias or for access errors. * @NOT_FOUND@ if the alias does not exist. * @FAILED_PRECONDITION@ if the alias requested does not make sense for the requesting user or course (for example, if a user not in a domain attempts to delete a domain-scoped alias).
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.aliases.delete@.
module Network.Google.Classroom.Courses.Aliases.Delete
  ( -- * Resource
    ClassroomCoursesAliasesDeleteResource,

    -- ** Constructing a Request
    newClassroomCoursesAliasesDelete,
    ClassroomCoursesAliasesDelete,
  )
where

import Network.Google.Classroom.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @classroom.courses.aliases.delete@ method which the
-- 'ClassroomCoursesAliasesDelete' request conforms to.
type ClassroomCoursesAliasesDeleteResource =
  "v1"
    Core.:> "courses"
    Core.:> Core.Capture "courseId" Core.Text
    Core.:> "aliases"
    Core.:> Core.Capture "alias" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes an alias of a course. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to remove the alias or for access errors. * @NOT_FOUND@ if the alias does not exist. * @FAILED_PRECONDITION@ if the alias requested does not make sense for the requesting user or course (for example, if a user not in a domain attempts to delete a domain-scoped alias).
--
-- /See:/ 'newClassroomCoursesAliasesDelete' smart constructor.
data ClassroomCoursesAliasesDelete = ClassroomCoursesAliasesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Alias to delete. This may not be the Classroom-assigned identifier.
    alias :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier of the course whose alias should be deleted. This identifier can be either the Classroom-assigned identifier or an alias.
    courseId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesAliasesDelete' with the minimum fields required to make a request.
newClassroomCoursesAliasesDelete ::
  -- |  Alias to delete. This may not be the Classroom-assigned identifier. See 'alias'.
  Core.Text ->
  -- |  Identifier of the course whose alias should be deleted. This identifier can be either the Classroom-assigned identifier or an alias. See 'courseId'.
  Core.Text ->
  ClassroomCoursesAliasesDelete
newClassroomCoursesAliasesDelete alias courseId =
  ClassroomCoursesAliasesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      alias = alias,
      callback = Core.Nothing,
      courseId = courseId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ClassroomCoursesAliasesDelete
  where
  type Rs ClassroomCoursesAliasesDelete = Empty
  type
    Scopes ClassroomCoursesAliasesDelete =
      '["https://www.googleapis.com/auth/classroom.courses"]
  requestClient ClassroomCoursesAliasesDelete {..} =
    go
      courseId
      alias
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
              Core.Proxy ClassroomCoursesAliasesDeleteResource
          )
          Core.mempty
