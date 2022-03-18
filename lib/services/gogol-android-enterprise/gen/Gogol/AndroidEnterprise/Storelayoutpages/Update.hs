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
-- Module      : Gogol.AndroidEnterprise.Storelayoutpages.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the content of a store page.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.storelayoutpages.update@.
module Gogol.AndroidEnterprise.Storelayoutpages.Update
    (
    -- * Resource
      AndroidEnterpriseStorelayoutpagesUpdateResource

    -- ** Constructing a Request
    , newAndroidEnterpriseStorelayoutpagesUpdate
    , AndroidEnterpriseStorelayoutpagesUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidEnterprise.Types

-- | A resource alias for @androidenterprise.storelayoutpages.update@ method which the
-- 'AndroidEnterpriseStorelayoutpagesUpdate' request conforms to.
type AndroidEnterpriseStorelayoutpagesUpdateResource
     =
     "androidenterprise" Core.:>
       "v1" Core.:>
         "enterprises" Core.:>
           Core.Capture "enterpriseId" Core.Text Core.:>
             "storeLayout" Core.:>
               "pages" Core.:>
                 Core.Capture "pageId" Core.Text Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.ReqBody '[Core.JSON] StorePage Core.:>
                                 Core.Put '[Core.JSON] StorePage

-- | Updates the content of a store page.
--
-- /See:/ 'newAndroidEnterpriseStorelayoutpagesUpdate' smart constructor.
data AndroidEnterpriseStorelayoutpagesUpdate = AndroidEnterpriseStorelayoutpagesUpdate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the enterprise.
    , enterpriseId :: Core.Text
      -- | The ID of the page.
    , pageId :: Core.Text
      -- | Multipart request metadata.
    , payload :: StorePage
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseStorelayoutpagesUpdate' with the minimum fields required to make a request.
newAndroidEnterpriseStorelayoutpagesUpdate 
    ::  Core.Text
       -- ^  The ID of the enterprise. See 'enterpriseId'.
    -> Core.Text
       -- ^  The ID of the page. See 'pageId'.
    -> StorePage
       -- ^  Multipart request metadata. See 'payload'.
    -> AndroidEnterpriseStorelayoutpagesUpdate
newAndroidEnterpriseStorelayoutpagesUpdate enterpriseId pageId payload =
  AndroidEnterpriseStorelayoutpagesUpdate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , enterpriseId = enterpriseId
    , pageId = pageId
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AndroidEnterpriseStorelayoutpagesUpdate
         where
        type Rs AndroidEnterpriseStorelayoutpagesUpdate =
             StorePage
        type Scopes AndroidEnterpriseStorelayoutpagesUpdate =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient
          AndroidEnterpriseStorelayoutpagesUpdate{..}
          = go enterpriseId pageId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              androidEnterpriseService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidEnterpriseStorelayoutpagesUpdateResource)
                      Core.mempty

