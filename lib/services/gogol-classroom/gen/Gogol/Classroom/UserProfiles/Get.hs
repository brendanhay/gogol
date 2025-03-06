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
-- Module      : Gogol.Classroom.UserProfiles.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a user profile. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access this user profile, if no profile exists with the requested ID, or for access errors.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.userProfiles.get@.
module Gogol.Classroom.UserProfiles.Get
  ( -- * Resource
    ClassroomUserProfilesGetResource,

    -- ** Constructing a Request
    ClassroomUserProfilesGet (..),
    newClassroomUserProfilesGet,
  )
where

import Gogol.Classroom.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @classroom.userProfiles.get@ method which the
-- 'ClassroomUserProfilesGet' request conforms to.
type ClassroomUserProfilesGetResource =
  "v1"
    Core.:> "userProfiles"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] UserProfile

-- | Returns a user profile. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to access this user profile, if no profile exists with the requested ID, or for access errors.
--
-- /See:/ 'newClassroomUserProfilesGet' smart constructor.
data ClassroomUserProfilesGet = ClassroomUserProfilesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Identifier of the profile to return. The identifier can be one of the following: * the numeric identifier for the user * the email address of the user * the string literal @\"me\"@, indicating the requesting user
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomUserProfilesGet' with the minimum fields required to make a request.
newClassroomUserProfilesGet ::
  -- |  Identifier of the profile to return. The identifier can be one of the following: * the numeric identifier for the user * the email address of the user * the string literal @\"me\"@, indicating the requesting user See 'userId'.
  Core.Text ->
  ClassroomUserProfilesGet
newClassroomUserProfilesGet userId =
  ClassroomUserProfilesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = userId
    }

instance Core.GoogleRequest ClassroomUserProfilesGet where
  type Rs ClassroomUserProfilesGet = UserProfile
  type
    Scopes ClassroomUserProfilesGet =
      '[ Classroom'Profile'Emails,
         Classroom'Profile'Photos,
         Classroom'Rosters,
         Classroom'Rosters'Readonly
       ]
  requestClient ClassroomUserProfilesGet {..} =
    go
      userId
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
          (Core.Proxy :: Core.Proxy ClassroomUserProfilesGetResource)
          Core.mempty
