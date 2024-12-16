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
-- Module      : Gogol.CloudKMS.Folders.GetAutokeyConfig
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the AutokeyConfig for a folder.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.folders.getAutokeyConfig@.
module Gogol.CloudKMS.Folders.GetAutokeyConfig
    (
    -- * Resource
      CloudKMSFoldersGetAutokeyConfigResource

    -- ** Constructing a Request
    , CloudKMSFoldersGetAutokeyConfig (..)
    , newCloudKMSFoldersGetAutokeyConfig
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudKMS.Types

-- | A resource alias for @cloudkms.folders.getAutokeyConfig@ method which the
-- 'CloudKMSFoldersGetAutokeyConfig' request conforms to.
type CloudKMSFoldersGetAutokeyConfigResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] AutokeyConfig

-- | Returns the AutokeyConfig for a folder.
--
-- /See:/ 'newCloudKMSFoldersGetAutokeyConfig' smart constructor.
data CloudKMSFoldersGetAutokeyConfig = CloudKMSFoldersGetAutokeyConfig
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Name of the AutokeyConfig resource, e.g. @folders\/{FOLDER_NUMBER}\/autokeyConfig@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSFoldersGetAutokeyConfig' with the minimum fields required to make a request.
newCloudKMSFoldersGetAutokeyConfig 
    ::  Core.Text
       -- ^  Required. Name of the AutokeyConfig resource, e.g. @folders\/{FOLDER_NUMBER}\/autokeyConfig@. See 'name'.
    -> CloudKMSFoldersGetAutokeyConfig
newCloudKMSFoldersGetAutokeyConfig name =
  CloudKMSFoldersGetAutokeyConfig
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudKMSFoldersGetAutokeyConfig
         where
        type Rs CloudKMSFoldersGetAutokeyConfig =
             AutokeyConfig
        type Scopes CloudKMSFoldersGetAutokeyConfig =
             '[CloudPlatform'FullControl, Cloudkms'FullControl]
        requestClient CloudKMSFoldersGetAutokeyConfig{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              cloudKMSService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CloudKMSFoldersGetAutokeyConfigResource)
                      Core.mempty

