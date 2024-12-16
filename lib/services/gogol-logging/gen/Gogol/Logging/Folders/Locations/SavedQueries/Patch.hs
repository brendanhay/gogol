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
-- Module      : Gogol.Logging.Folders.Locations.SavedQueries.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing SavedQuery.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.folders.locations.savedQueries.patch@.
module Gogol.Logging.Folders.Locations.SavedQueries.Patch
    (
    -- * Resource
      LoggingFoldersLocationsSavedQueriesPatchResource

    -- ** Constructing a Request
    , LoggingFoldersLocationsSavedQueriesPatch (..)
    , newLoggingFoldersLocationsSavedQueriesPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Logging.Types

-- | A resource alias for @logging.folders.locations.savedQueries.patch@ method which the
-- 'LoggingFoldersLocationsSavedQueriesPatch' request conforms to.
type LoggingFoldersLocationsSavedQueriesPatchResource
     =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] SavedQuery Core.:>
                         Core.Patch '[Core.JSON] SavedQuery

-- | Updates an existing SavedQuery.
--
-- /See:/ 'newLoggingFoldersLocationsSavedQueriesPatch' smart constructor.
data LoggingFoldersLocationsSavedQueriesPatch = LoggingFoldersLocationsSavedQueriesPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Output only. Resource name of the saved query.In the format: \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY/ID]\" For a list of supported locations, see Supported Regions (https:\/\/cloud.google.com\/logging\/docs\/region-support#bucket-regions)After the saved query is created, the location cannot be changed.If the user doesn\'t provide a QUERY/ID, the system will generate an alphanumeric ID.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: SavedQuery
      -- | Required. A non-empty list of fields to change in the existing saved query. Fields are relative to the saved/query and new values for the fields are taken from the corresponding fields in the SavedQuery included in this request. Fields not mentioned in update/mask are not changed and are ignored in the request.To update all mutable fields, specify an update_mask of *.For example, to change the description and query filter text of a saved query, specify an update_mask of \"description, query.filter\".
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingFoldersLocationsSavedQueriesPatch' with the minimum fields required to make a request.
newLoggingFoldersLocationsSavedQueriesPatch 
    ::  Core.Text
       -- ^  Output only. Resource name of the saved query.In the format: \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY/ID]\" For a list of supported locations, see Supported Regions (https:\/\/cloud.google.com\/logging\/docs\/region-support#bucket-regions)After the saved query is created, the location cannot be changed.If the user doesn\'t provide a QUERY/ID, the system will generate an alphanumeric ID. See 'name'.
    -> SavedQuery
       -- ^  Multipart request metadata. See 'payload'.
    -> LoggingFoldersLocationsSavedQueriesPatch
newLoggingFoldersLocationsSavedQueriesPatch name payload =
  LoggingFoldersLocationsSavedQueriesPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           LoggingFoldersLocationsSavedQueriesPatch
         where
        type Rs LoggingFoldersLocationsSavedQueriesPatch =
             SavedQuery
        type Scopes LoggingFoldersLocationsSavedQueriesPatch
             = '[CloudPlatform'FullControl, Logging'Admin]
        requestClient
          LoggingFoldersLocationsSavedQueriesPatch{..}
          = go name xgafv accessToken callback updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              loggingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           LoggingFoldersLocationsSavedQueriesPatchResource)
                      Core.mempty

