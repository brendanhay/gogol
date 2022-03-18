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
-- Module      : Gogol.Logging.Logs.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes all the log entries in a log for the _Default Log Bucket. The log reappears if it receives new entries. Log entries written shortly before the delete operation might not be deleted. Entries received after the delete operation with a timestamp before the operation will be deleted.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.logs.delete@.
module Gogol.Logging.Logs.Delete
    (
    -- * Resource
      LoggingLogsDeleteResource

    -- ** Constructing a Request
    , newLoggingLogsDelete
    , LoggingLogsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Logging.Types

-- | A resource alias for @logging.logs.delete@ method which the
-- 'LoggingLogsDelete' request conforms to.
type LoggingLogsDeleteResource =
     "v2" Core.:>
       Core.Capture "logName" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] Empty

-- | Deletes all the log entries in a log for the _Default Log Bucket. The log reappears if it receives new entries. Log entries written shortly before the delete operation might not be deleted. Entries received after the delete operation with a timestamp before the operation will be deleted.
--
-- /See:/ 'newLoggingLogsDelete' smart constructor.
data LoggingLogsDelete = LoggingLogsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the log to delete: projects\/[PROJECT/ID]\/logs\/[LOG/ID] organizations\/[ORGANIZATION/ID]\/logs\/[LOG/ID] billingAccounts\/[BILLING/ACCOUNT/ID]\/logs\/[LOG/ID] folders\/[FOLDER/ID]\/logs\/[LOG_ID][LOG_ID] must be URL-encoded. For example, \"projects\/my-project-id\/logs\/syslog\", \"organizations\/123\/logs\/cloudaudit.googleapis.com%2Factivity\".For more information about log names, see LogEntry.
    , logName :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingLogsDelete' with the minimum fields required to make a request.
newLoggingLogsDelete 
    ::  Core.Text
       -- ^  Required. The resource name of the log to delete: projects\/[PROJECT/ID]\/logs\/[LOG/ID] organizations\/[ORGANIZATION/ID]\/logs\/[LOG/ID] billingAccounts\/[BILLING/ACCOUNT/ID]\/logs\/[LOG/ID] folders\/[FOLDER/ID]\/logs\/[LOG_ID][LOG_ID] must be URL-encoded. For example, \"projects\/my-project-id\/logs\/syslog\", \"organizations\/123\/logs\/cloudaudit.googleapis.com%2Factivity\".For more information about log names, see LogEntry. See 'logName'.
    -> LoggingLogsDelete
newLoggingLogsDelete logName =
  LoggingLogsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , logName = logName
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest LoggingLogsDelete where
        type Rs LoggingLogsDelete = Empty
        type Scopes LoggingLogsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient LoggingLogsDelete{..}
          = go logName xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              loggingService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy LoggingLogsDeleteResource)
                      Core.mempty

