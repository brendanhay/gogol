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
-- Module      : Gogol.AndroidPublisher.Edits.Testers.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches testers. Note: Testers resource does not support email lists.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.testers.patch@.
module Gogol.AndroidPublisher.Edits.Testers.Patch
    (
    -- * Resource
      AndroidPublisherEditsTestersPatchResource

    -- ** Constructing a Request
    , AndroidPublisherEditsTestersPatch (..)
    , newAndroidPublisherEditsTestersPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.edits.testers.patch@ method which the
-- 'AndroidPublisherEditsTestersPatch' request conforms to.
type AndroidPublisherEditsTestersPatchResource =
     "androidpublisher" Core.:>
       "v3" Core.:>
         "applications" Core.:>
           Core.Capture "packageName" Core.Text Core.:>
             "edits" Core.:>
               Core.Capture "editId" Core.Text Core.:>
                 "testers" Core.:>
                   Core.Capture "track" Core.Text Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.ReqBody '[Core.JSON] Testers Core.:>
                                   Core.Patch '[Core.JSON] Testers

-- | Patches testers. Note: Testers resource does not support email lists.
--
-- /See:/ 'newAndroidPublisherEditsTestersPatch' smart constructor.
data AndroidPublisherEditsTestersPatch = AndroidPublisherEditsTestersPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Identifier of the edit.
    , editId :: Core.Text
      -- | Package name of the app.
    , packageName :: Core.Text
      -- | Multipart request metadata.
    , payload :: Testers
      -- | The track to update.
    , track :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherEditsTestersPatch' with the minimum fields required to make a request.
newAndroidPublisherEditsTestersPatch 
    ::  Core.Text
       -- ^  Identifier of the edit. See 'editId'.
    -> Core.Text
       -- ^  Package name of the app. See 'packageName'.
    -> Testers
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  The track to update. See 'track'.
    -> AndroidPublisherEditsTestersPatch
newAndroidPublisherEditsTestersPatch editId packageName payload track =
  AndroidPublisherEditsTestersPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , editId = editId
    , packageName = packageName
    , payload = payload
    , track = track
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AndroidPublisherEditsTestersPatch
         where
        type Rs AndroidPublisherEditsTestersPatch = Testers
        type Scopes AndroidPublisherEditsTestersPatch =
             '[Androidpublisher'FullControl]
        requestClient AndroidPublisherEditsTestersPatch{..}
          = go packageName editId track xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              androidPublisherService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AndroidPublisherEditsTestersPatchResource)
                      Core.mempty

