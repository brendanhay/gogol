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
-- Module      : Gogol.AndroidEnterprise.Storelayoutclusters.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a cluster.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.storelayoutclusters.delete@.
module Gogol.AndroidEnterprise.Storelayoutclusters.Delete
    (
    -- * Resource
      AndroidEnterpriseStorelayoutclustersDeleteResource

    -- ** Constructing a Request
    , AndroidEnterpriseStorelayoutclustersDelete (..)
    , newAndroidEnterpriseStorelayoutclustersDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidEnterprise.Types

-- | A resource alias for @androidenterprise.storelayoutclusters.delete@ method which the
-- 'AndroidEnterpriseStorelayoutclustersDelete' request conforms to.
type AndroidEnterpriseStorelayoutclustersDeleteResource
     =
     "androidenterprise" Core.:>
       "v1" Core.:>
         "enterprises" Core.:>
           Core.Capture "enterpriseId" Core.Text Core.:>
             "storeLayout" Core.:>
               "pages" Core.:>
                 Core.Capture "pageId" Core.Text Core.:>
                   "clusters" Core.:>
                     Core.Capture "clusterId" Core.Text Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.Delete '[Core.JSON] ()

-- | Deletes a cluster.
--
-- /See:/ 'newAndroidEnterpriseStorelayoutclustersDelete' smart constructor.
data AndroidEnterpriseStorelayoutclustersDelete = AndroidEnterpriseStorelayoutclustersDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the cluster.
    , clusterId :: Core.Text
      -- | The ID of the enterprise.
    , enterpriseId :: Core.Text
      -- | The ID of the page.
    , pageId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseStorelayoutclustersDelete' with the minimum fields required to make a request.
newAndroidEnterpriseStorelayoutclustersDelete 
    ::  Core.Text
       -- ^  The ID of the cluster. See 'clusterId'.
    -> Core.Text
       -- ^  The ID of the enterprise. See 'enterpriseId'.
    -> Core.Text
       -- ^  The ID of the page. See 'pageId'.
    -> AndroidEnterpriseStorelayoutclustersDelete
newAndroidEnterpriseStorelayoutclustersDelete clusterId enterpriseId pageId =
  AndroidEnterpriseStorelayoutclustersDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , clusterId = clusterId
    , enterpriseId = enterpriseId
    , pageId = pageId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AndroidEnterpriseStorelayoutclustersDelete
         where
        type Rs AndroidEnterpriseStorelayoutclustersDelete =
             ()
        type Scopes
               AndroidEnterpriseStorelayoutclustersDelete
             = '[Androidenterprise'FullControl]
        requestClient
          AndroidEnterpriseStorelayoutclustersDelete{..}
          = go enterpriseId pageId clusterId xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              androidEnterpriseService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidEnterpriseStorelayoutclustersDeleteResource)
                      Core.mempty

