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
-- Module      : Gogol.AdSense.Accounts.PolicyIssues.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the selected policy issue.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.policyIssues.get@.
module Gogol.AdSense.Accounts.PolicyIssues.Get
    (
    -- * Resource
      AdSenseAccountsPolicyIssuesGetResource

    -- ** Constructing a Request
    , AdSenseAccountsPolicyIssuesGet (..)
    , newAdSenseAccountsPolicyIssuesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdSense.Types

-- | A resource alias for @adsense.accounts.policyIssues.get@ method which the
-- 'AdSenseAccountsPolicyIssuesGet' request conforms to.
type AdSenseAccountsPolicyIssuesGetResource =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] PolicyIssue

-- | Gets information about the selected policy issue.
--
-- /See:/ 'newAdSenseAccountsPolicyIssuesGet' smart constructor.
data AdSenseAccountsPolicyIssuesGet = AdSenseAccountsPolicyIssuesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Name of the policy issue. Format: accounts\/{account}\/policyIssues\/{policy_issue}
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseAccountsPolicyIssuesGet' with the minimum fields required to make a request.
newAdSenseAccountsPolicyIssuesGet 
    ::  Core.Text
       -- ^  Required. Name of the policy issue. Format: accounts\/{account}\/policyIssues\/{policy_issue} See 'name'.
    -> AdSenseAccountsPolicyIssuesGet
newAdSenseAccountsPolicyIssuesGet name =
  AdSenseAccountsPolicyIssuesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AdSenseAccountsPolicyIssuesGet
         where
        type Rs AdSenseAccountsPolicyIssuesGet = PolicyIssue
        type Scopes AdSenseAccountsPolicyIssuesGet =
             '[Adsense'FullControl, Adsense'Readonly]
        requestClient AdSenseAccountsPolicyIssuesGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              adSenseService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AdSenseAccountsPolicyIssuesGetResource)
                      Core.mempty

