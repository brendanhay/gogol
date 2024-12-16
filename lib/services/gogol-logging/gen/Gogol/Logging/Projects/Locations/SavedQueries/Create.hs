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
-- Module      : Gogol.Logging.Projects.Locations.SavedQueries.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new SavedQuery for the user making the request.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.locations.savedQueries.create@.
module Gogol.Logging.Projects.Locations.SavedQueries.Create
    (
    -- * Resource
      LoggingProjectsLocationsSavedQueriesCreateResource

    -- ** Constructing a Request
    , LoggingProjectsLocationsSavedQueriesCreate (..)
    , newLoggingProjectsLocationsSavedQueriesCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Logging.Types

-- | A resource alias for @logging.projects.locations.savedQueries.create@ method which the
-- 'LoggingProjectsLocationsSavedQueriesCreate' request conforms to.
type LoggingProjectsLocationsSavedQueriesCreateResource
     =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "savedQueries" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "savedQueryId" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] SavedQuery Core.:>
                           Core.Post '[Core.JSON] SavedQuery

-- | Creates a new SavedQuery for the user making the request.
--
-- /See:/ 'newLoggingProjectsLocationsSavedQueriesCreate' smart constructor.
data LoggingProjectsLocationsSavedQueriesCreate = LoggingProjectsLocationsSavedQueriesCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The parent resource in which to create the saved query: \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\" \"organizations\/[ORGANIZATION/ID]\/locations\/[LOCATION/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/locations\/[LOCATION/ID]\" \"folders\/[FOLDER/ID]\/locations\/[LOCATION_ID]\" For example: \"projects\/my-project\/locations\/global\" \"organizations\/123456789\/locations\/us-central1\"
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: SavedQuery
      -- | Optional. The ID to use for the saved query, which will become the final component of the saved query\'s resource name.If the saved/query/id is not provided, the system will generate an alphanumeric ID.The saved/query/id is limited to 100 characters and can include only the following characters: upper and lower-case alphanumeric characters, underscores, hyphens, periods.First character has to be alphanumeric.
    , savedQueryId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingProjectsLocationsSavedQueriesCreate' with the minimum fields required to make a request.
newLoggingProjectsLocationsSavedQueriesCreate 
    ::  Core.Text
       -- ^  Required. The parent resource in which to create the saved query: \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\" \"organizations\/[ORGANIZATION/ID]\/locations\/[LOCATION/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/locations\/[LOCATION/ID]\" \"folders\/[FOLDER/ID]\/locations\/[LOCATION_ID]\" For example: \"projects\/my-project\/locations\/global\" \"organizations\/123456789\/locations\/us-central1\" See 'parent'.
    -> SavedQuery
       -- ^  Multipart request metadata. See 'payload'.
    -> LoggingProjectsLocationsSavedQueriesCreate
newLoggingProjectsLocationsSavedQueriesCreate parent payload =
  LoggingProjectsLocationsSavedQueriesCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , savedQueryId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           LoggingProjectsLocationsSavedQueriesCreate
         where
        type Rs LoggingProjectsLocationsSavedQueriesCreate =
             SavedQuery
        type Scopes
               LoggingProjectsLocationsSavedQueriesCreate
             = '[CloudPlatform'FullControl, Logging'Admin]
        requestClient
          LoggingProjectsLocationsSavedQueriesCreate{..}
          = go parent xgafv accessToken callback savedQueryId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              loggingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           LoggingProjectsLocationsSavedQueriesCreateResource)
                      Core.mempty
