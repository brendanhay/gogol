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
-- Module      : Gogol.Logging.BillingAccounts.Exclusions.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the description of an exclusion in the _Default sink.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.billingAccounts.exclusions.get@.
module Gogol.Logging.BillingAccounts.Exclusions.Get
    (
    -- * Resource
      LoggingBillingAccountsExclusionsGetResource

    -- ** Constructing a Request
    , newLoggingBillingAccountsExclusionsGet
    , LoggingBillingAccountsExclusionsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Logging.Types

-- | A resource alias for @logging.billingAccounts.exclusions.get@ method which the
-- 'LoggingBillingAccountsExclusionsGet' request conforms to.
type LoggingBillingAccountsExclusionsGetResource =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] LogExclusion

-- | Gets the description of an exclusion in the _Default sink.
--
-- /See:/ 'newLoggingBillingAccountsExclusionsGet' smart constructor.
data LoggingBillingAccountsExclusionsGet = LoggingBillingAccountsExclusionsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of an existing exclusion: \"projects\/[PROJECT/ID]\/exclusions\/[EXCLUSION/ID]\" \"organizations\/[ORGANIZATION/ID]\/exclusions\/[EXCLUSION/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/exclusions\/[EXCLUSION/ID]\" \"folders\/[FOLDER/ID]\/exclusions\/[EXCLUSION_ID]\" For example:\"projects\/my-project\/exclusions\/my-exclusion\"
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingBillingAccountsExclusionsGet' with the minimum fields required to make a request.
newLoggingBillingAccountsExclusionsGet 
    ::  Core.Text
       -- ^  Required. The resource name of an existing exclusion: \"projects\/[PROJECT/ID]\/exclusions\/[EXCLUSION/ID]\" \"organizations\/[ORGANIZATION/ID]\/exclusions\/[EXCLUSION/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/exclusions\/[EXCLUSION/ID]\" \"folders\/[FOLDER/ID]\/exclusions\/[EXCLUSION_ID]\" For example:\"projects\/my-project\/exclusions\/my-exclusion\" See 'name'.
    -> LoggingBillingAccountsExclusionsGet
newLoggingBillingAccountsExclusionsGet name =
  LoggingBillingAccountsExclusionsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           LoggingBillingAccountsExclusionsGet
         where
        type Rs LoggingBillingAccountsExclusionsGet =
             LogExclusion
        type Scopes LoggingBillingAccountsExclusionsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient LoggingBillingAccountsExclusionsGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              loggingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           LoggingBillingAccountsExclusionsGetResource)
                      Core.mempty

