{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Classroom.Registrations.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a @Registration@, causing Classroom to stop sending notifications for that @Registration@.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.registrations.delete@.
module Gogol.Classroom.Registrations.Delete
  ( -- * Resource
    ClassroomRegistrationsDeleteResource,

    -- ** Constructing a Request
    ClassroomRegistrationsDelete (..),
    newClassroomRegistrationsDelete,
  )
where

import Gogol.Classroom.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @classroom.registrations.delete@ method which the
-- 'ClassroomRegistrationsDelete' request conforms to.
type ClassroomRegistrationsDeleteResource =
  "v1"
    Core.:> "registrations"
    Core.:> Core.Capture "registrationId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes a @Registration@, causing Classroom to stop sending notifications for that @Registration@.
--
-- /See:/ 'newClassroomRegistrationsDelete' smart constructor.
data ClassroomRegistrationsDelete = ClassroomRegistrationsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The @registration_id@ of the @Registration@ to be deleted.
    registrationId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomRegistrationsDelete' with the minimum fields required to make a request.
newClassroomRegistrationsDelete ::
  -- |  The @registration_id@ of the @Registration@ to be deleted. See 'registrationId'.
  Core.Text ->
  ClassroomRegistrationsDelete
newClassroomRegistrationsDelete registrationId =
  ClassroomRegistrationsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      registrationId = registrationId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ClassroomRegistrationsDelete where
  type Rs ClassroomRegistrationsDelete = Empty
  type
    Scopes ClassroomRegistrationsDelete =
      '[Classroom'PushNotifications]
  requestClient ClassroomRegistrationsDelete {..} =
    go
      registrationId
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
          (Core.Proxy :: Core.Proxy ClassroomRegistrationsDeleteResource)
          Core.mempty
