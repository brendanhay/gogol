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
-- Module      : Gogol.Admin.DataTransfer.Applications.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the applications available for data transfer for a customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @datatransfer.applications.list@.
module Gogol.Admin.DataTransfer.Applications.List
    (
    -- * Resource
      DatatransferApplicationsListResource

    -- ** Constructing a Request
    , newDatatransferApplicationsList
    , DatatransferApplicationsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Admin.DataTransfer.Types

-- | A resource alias for @datatransfer.applications.list@ method which the
-- 'DatatransferApplicationsList' request conforms to.
type DatatransferApplicationsListResource =
     "admin" Core.:>
       "datatransfer" Core.:>
         "v1" Core.:>
           "applications" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "customerId" Core.Text Core.:>
                     Core.QueryParam "maxResults" Core.Int32 Core.:>
                       Core.QueryParam "pageToken" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] ApplicationsListResponse

-- | Lists the applications available for data transfer for a customer.
--
-- /See:/ 'newDatatransferApplicationsList' smart constructor.
data DatatransferApplicationsList = DatatransferApplicationsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Immutable ID of the Google Workspace account.
    , customerId :: (Core.Maybe Core.Text)
      -- | Maximum number of results to return. Default is 100.
    , maxResults :: (Core.Maybe Core.Int32)
      -- | Token to specify next page in the list.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatatransferApplicationsList' with the minimum fields required to make a request.
newDatatransferApplicationsList 
    ::  DatatransferApplicationsList
newDatatransferApplicationsList =
  DatatransferApplicationsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , customerId = Core.Nothing
    , maxResults = Core.Nothing
    , pageToken = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DatatransferApplicationsList
         where
        type Rs DatatransferApplicationsList =
             ApplicationsListResponse
        type Scopes DatatransferApplicationsList =
             '["https://www.googleapis.com/auth/admin.datatransfer",
               "https://www.googleapis.com/auth/admin.datatransfer.readonly"]
        requestClient DatatransferApplicationsList{..}
          = go xgafv accessToken callback customerId maxResults
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              adminDataTransferService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DatatransferApplicationsListResource)
                      Core.mempty

