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
-- Module      : Gogol.AndroidEnterprise.Grouplicenses.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves IDs of all products for which the enterprise has a group license. __Note:__ This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.grouplicenses.list@.
module Gogol.AndroidEnterprise.Grouplicenses.List
    (
    -- * Resource
      AndroidEnterpriseGrouplicensesListResource

    -- ** Constructing a Request
    , AndroidEnterpriseGrouplicensesList (..)
    , newAndroidEnterpriseGrouplicensesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidEnterprise.Types

-- | A resource alias for @androidenterprise.grouplicenses.list@ method which the
-- 'AndroidEnterpriseGrouplicensesList' request conforms to.
type AndroidEnterpriseGrouplicensesListResource =
     "androidenterprise" Core.:>
       "v1" Core.:>
         "enterprises" Core.:>
           Core.Capture "enterpriseId" Core.Text Core.:>
             "groupLicenses" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] GroupLicensesListResponse

-- | Retrieves IDs of all products for which the enterprise has a group license. __Note:__ This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.
--
-- /See:/ 'newAndroidEnterpriseGrouplicensesList' smart constructor.
data AndroidEnterpriseGrouplicensesList = AndroidEnterpriseGrouplicensesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the enterprise.
    , enterpriseId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseGrouplicensesList' with the minimum fields required to make a request.
newAndroidEnterpriseGrouplicensesList 
    ::  Core.Text
       -- ^  The ID of the enterprise. See 'enterpriseId'.
    -> AndroidEnterpriseGrouplicensesList
newAndroidEnterpriseGrouplicensesList enterpriseId =
  AndroidEnterpriseGrouplicensesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , enterpriseId = enterpriseId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AndroidEnterpriseGrouplicensesList
         where
        type Rs AndroidEnterpriseGrouplicensesList =
             GroupLicensesListResponse
        type Scopes AndroidEnterpriseGrouplicensesList =
             '[Androidenterprise'FullControl]
        requestClient AndroidEnterpriseGrouplicensesList{..}
          = go enterpriseId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              androidEnterpriseService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidEnterpriseGrouplicensesListResource)
                      Core.mempty

