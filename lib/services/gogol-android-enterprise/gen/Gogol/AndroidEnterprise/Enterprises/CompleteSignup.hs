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
-- Module      : Gogol.AndroidEnterprise.Enterprises.CompleteSignup
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Completes the signup flow, by specifying the Completion token and Enterprise token. This request must not be called multiple times for a given Enterprise Token.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.completeSignup@.
module Gogol.AndroidEnterprise.Enterprises.CompleteSignup
    (
    -- * Resource
      AndroidEnterpriseEnterprisesCompleteSignupResource

    -- ** Constructing a Request
    , AndroidEnterpriseEnterprisesCompleteSignup (..)
    , newAndroidEnterpriseEnterprisesCompleteSignup
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidEnterprise.Types

-- | A resource alias for @androidenterprise.enterprises.completeSignup@ method which the
-- 'AndroidEnterpriseEnterprisesCompleteSignup' request conforms to.
type AndroidEnterpriseEnterprisesCompleteSignupResource
     =
     "androidenterprise" Core.:>
       "v1" Core.:>
         "enterprises" Core.:>
           "completeSignup" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "completionToken" Core.Text Core.:>
                     Core.QueryParam "enterpriseToken" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Post '[Core.JSON] Enterprise

-- | Completes the signup flow, by specifying the Completion token and Enterprise token. This request must not be called multiple times for a given Enterprise Token.
--
-- /See:/ 'newAndroidEnterpriseEnterprisesCompleteSignup' smart constructor.
data AndroidEnterpriseEnterprisesCompleteSignup = AndroidEnterpriseEnterprisesCompleteSignup
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The Completion token initially returned by GenerateSignupUrl.
    , completionToken :: (Core.Maybe Core.Text)
      -- | The Enterprise token appended to the Callback URL.
    , enterpriseToken :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseEnterprisesCompleteSignup' with the minimum fields required to make a request.
newAndroidEnterpriseEnterprisesCompleteSignup 
    ::  AndroidEnterpriseEnterprisesCompleteSignup
newAndroidEnterpriseEnterprisesCompleteSignup =
  AndroidEnterpriseEnterprisesCompleteSignup
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , completionToken = Core.Nothing
    , enterpriseToken = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AndroidEnterpriseEnterprisesCompleteSignup
         where
        type Rs AndroidEnterpriseEnterprisesCompleteSignup =
             Enterprise
        type Scopes
               AndroidEnterpriseEnterprisesCompleteSignup
             = '[Androidenterprise'FullControl]
        requestClient
          AndroidEnterpriseEnterprisesCompleteSignup{..}
          = go xgafv accessToken callback completionToken
              enterpriseToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              androidEnterpriseService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidEnterpriseEnterprisesCompleteSignupResource)
                      Core.mempty

