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
-- Module      : Gogol.AndroidPublisher.Edits.Expansionfiles.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches the APK\'s expansion file configuration to reference another APK\'s expansion file. To add a new expansion file use the Upload method.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.expansionfiles.patch@.
module Gogol.AndroidPublisher.Edits.Expansionfiles.Patch
    (
    -- * Resource
      AndroidPublisherEditsExpansionfilesPatchResource

    -- ** Constructing a Request
    , newAndroidPublisherEditsExpansionfilesPatch
    , AndroidPublisherEditsExpansionfilesPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.edits.expansionfiles.patch@ method which the
-- 'AndroidPublisherEditsExpansionfilesPatch' request conforms to.
type AndroidPublisherEditsExpansionfilesPatchResource
     =
     "androidpublisher" Core.:>
       "v3" Core.:>
         "applications" Core.:>
           Core.Capture "packageName" Core.Text Core.:>
             "edits" Core.:>
               Core.Capture "editId" Core.Text Core.:>
                 "apks" Core.:>
                   Core.Capture "apkVersionCode" Core.Int32 Core.:>
                     "expansionFiles" Core.:>
                       Core.Capture "expansionFileType"
                         EditsExpansionfilesPatchExpansionFileType
                         Core.:>
                         Core.QueryParam "$.xgafv" Xgafv Core.:>
                           Core.QueryParam "access_token" Core.Text Core.:>
                             Core.QueryParam "callback" Core.Text Core.:>
                               Core.QueryParam "uploadType" Core.Text Core.:>
                                 Core.QueryParam "upload_protocol" Core.Text
                                   Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.ReqBody '[Core.JSON] ExpansionFile
                                       Core.:>
                                       Core.Patch '[Core.JSON] ExpansionFile

-- | Patches the APK\'s expansion file configuration to reference another APK\'s expansion file. To add a new expansion file use the Upload method.
--
-- /See:/ 'newAndroidPublisherEditsExpansionfilesPatch' smart constructor.
data AndroidPublisherEditsExpansionfilesPatch = AndroidPublisherEditsExpansionfilesPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | The version code of the APK whose expansion file configuration is being read or modified.
    , apkVersionCode :: Core.Int32
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Identifier of the edit.
    , editId :: Core.Text
      -- | The file type of the expansion file configuration which is being updated.
    , expansionFileType :: EditsExpansionfilesPatchExpansionFileType
      -- | Package name of the app.
    , packageName :: Core.Text
      -- | Multipart request metadata.
    , payload :: ExpansionFile
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherEditsExpansionfilesPatch' with the minimum fields required to make a request.
newAndroidPublisherEditsExpansionfilesPatch 
    ::  Core.Int32
       -- ^  The version code of the APK whose expansion file configuration is being read or modified. See 'apkVersionCode'.
    -> Core.Text
       -- ^  Identifier of the edit. See 'editId'.
    -> EditsExpansionfilesPatchExpansionFileType
       -- ^  The file type of the expansion file configuration which is being updated. See 'expansionFileType'.
    -> Core.Text
       -- ^  Package name of the app. See 'packageName'.
    -> ExpansionFile
       -- ^  Multipart request metadata. See 'payload'.
    -> AndroidPublisherEditsExpansionfilesPatch
newAndroidPublisherEditsExpansionfilesPatch apkVersionCode editId expansionFileType packageName payload =
  AndroidPublisherEditsExpansionfilesPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , apkVersionCode = apkVersionCode
    , callback = Core.Nothing
    , editId = editId
    , expansionFileType = expansionFileType
    , packageName = packageName
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AndroidPublisherEditsExpansionfilesPatch
         where
        type Rs AndroidPublisherEditsExpansionfilesPatch =
             ExpansionFile
        type Scopes AndroidPublisherEditsExpansionfilesPatch
             =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient
          AndroidPublisherEditsExpansionfilesPatch{..}
          = go packageName editId apkVersionCode
              expansionFileType
              xgafv
              accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              androidPublisherService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidPublisherEditsExpansionfilesPatchResource)
                      Core.mempty

