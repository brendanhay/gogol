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
-- Module      : Gogol.Logging.Sinks.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a sink. If the sink has a unique writer_identity, then that service account is also deleted.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.sinks.delete@.
module Gogol.Logging.Sinks.Delete
    (
    -- * Resource
      LoggingSinksDeleteResource

    -- ** Constructing a Request
    , newLoggingSinksDelete
    , LoggingSinksDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Logging.Types

-- | A resource alias for @logging.sinks.delete@ method which the
-- 'LoggingSinksDelete' request conforms to.
type LoggingSinksDeleteResource =
     "v2" Core.:>
       Core.Capture "sinkName" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] Empty

-- | Deletes a sink. If the sink has a unique writer_identity, then that service account is also deleted.
--
-- /See:/ 'newLoggingSinksDelete' smart constructor.
data LoggingSinksDelete = LoggingSinksDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The full resource name of the sink to delete, including the parent resource and the sink identifier: \"projects\/[PROJECT/ID]\/sinks\/[SINK/ID]\" \"organizations\/[ORGANIZATION/ID]\/sinks\/[SINK/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/sinks\/[SINK/ID]\" \"folders\/[FOLDER/ID]\/sinks\/[SINK_ID]\" For example:\"projects\/my-project\/sinks\/my-sink\"
    , sinkName :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingSinksDelete' with the minimum fields required to make a request.
newLoggingSinksDelete 
    ::  Core.Text
       -- ^  Required. The full resource name of the sink to delete, including the parent resource and the sink identifier: \"projects\/[PROJECT/ID]\/sinks\/[SINK/ID]\" \"organizations\/[ORGANIZATION/ID]\/sinks\/[SINK/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/sinks\/[SINK/ID]\" \"folders\/[FOLDER/ID]\/sinks\/[SINK_ID]\" For example:\"projects\/my-project\/sinks\/my-sink\" See 'sinkName'.
    -> LoggingSinksDelete
newLoggingSinksDelete sinkName =
  LoggingSinksDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , sinkName = sinkName
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest LoggingSinksDelete where
        type Rs LoggingSinksDelete = Empty
        type Scopes LoggingSinksDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient LoggingSinksDelete{..}
          = go sinkName xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              loggingService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy LoggingSinksDeleteResource)
                      Core.mempty

