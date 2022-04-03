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
-- Module      : Gogol.Translate.Projects.Locations.Operations.Wait
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Waits until the specified long-running operation is done or reaches at most a specified timeout, returning the latest state. If the operation is already done, the latest state is immediately returned. If the timeout specified is greater than the default HTTP\/RPC timeout, the HTTP\/RPC timeout is used. If the server does not support this method, it returns @google.rpc.Code.UNIMPLEMENTED@. Note that this method is on a best-effort basis. It may return the latest state before the specified timeout (including immediately), meaning even an immediate response is no guarantee that the operation is done.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.operations.wait@.
module Gogol.Translate.Projects.Locations.Operations.Wait
  ( -- * Resource
    TranslateProjectsLocationsOperationsWaitResource,

    -- ** Constructing a Request
    TranslateProjectsLocationsOperationsWait (..),
    newTranslateProjectsLocationsOperationsWait,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Translate.Types

-- | A resource alias for @translate.projects.locations.operations.wait@ method which the
-- 'TranslateProjectsLocationsOperationsWait' request conforms to.
type TranslateProjectsLocationsOperationsWaitResource =
  "v3"
    Core.:> Core.CaptureMode "name" "wait" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] WaitOperationRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Waits until the specified long-running operation is done or reaches at most a specified timeout, returning the latest state. If the operation is already done, the latest state is immediately returned. If the timeout specified is greater than the default HTTP\/RPC timeout, the HTTP\/RPC timeout is used. If the server does not support this method, it returns @google.rpc.Code.UNIMPLEMENTED@. Note that this method is on a best-effort basis. It may return the latest state before the specified timeout (including immediately), meaning even an immediate response is no guarantee that the operation is done.
--
-- /See:/ 'newTranslateProjectsLocationsOperationsWait' smart constructor.
data TranslateProjectsLocationsOperationsWait = TranslateProjectsLocationsOperationsWait
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the operation resource to wait on.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: WaitOperationRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateProjectsLocationsOperationsWait' with the minimum fields required to make a request.
newTranslateProjectsLocationsOperationsWait ::
  -- |  The name of the operation resource to wait on. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  WaitOperationRequest ->
  TranslateProjectsLocationsOperationsWait
newTranslateProjectsLocationsOperationsWait name payload =
  TranslateProjectsLocationsOperationsWait
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TranslateProjectsLocationsOperationsWait
  where
  type
    Rs TranslateProjectsLocationsOperationsWait =
      Operation
  type
    Scopes TranslateProjectsLocationsOperationsWait =
      '[ CloudPlatform'FullControl,
         CloudTranslation'FullControl
       ]
  requestClient
    TranslateProjectsLocationsOperationsWait {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        translateService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  TranslateProjectsLocationsOperationsWaitResource
            )
            Core.mempty
