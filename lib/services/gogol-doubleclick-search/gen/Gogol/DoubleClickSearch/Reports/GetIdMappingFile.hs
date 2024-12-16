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
-- Module      : Gogol.DoubleClickSearch.Reports.GetIdMappingFile
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Downloads a csv file(encoded in UTF-8) that contains ID mappings between legacy SA360 and new SA360. The file includes all children entities of the given advertiser(e.g. engine accounts, campaigns, ad groups, etc.) that exist in both legacy SA360 and new SA360.
--
-- /See:/ <https://developers.google.com/search-ads Search Ads 360 API Reference> for @doubleclicksearch.reports.getIdMappingFile@.
module Gogol.DoubleClickSearch.Reports.GetIdMappingFile
    (
    -- * Resource
      DoubleClickSearchReportsGetIdMappingFileResource

    -- ** Constructing a Request
    , DoubleClickSearchReportsGetIdMappingFile (..)
    , newDoubleClickSearchReportsGetIdMappingFile
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DoubleClickSearch.Types

-- | A resource alias for @doubleclicksearch.reports.getIdMappingFile@ method which the
-- 'DoubleClickSearchReportsGetIdMappingFile' request conforms to.
type DoubleClickSearchReportsGetIdMappingFileResource
     =
     "doubleclicksearch" Core.:>
       "v2" Core.:>
         "agency" Core.:>
           Core.Capture "agencyId" Core.Int64 Core.:>
             "advertiser" Core.:>
               Core.Capture "advertiserId" Core.Int64 Core.:>
                 "idmapping" Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] IdMappingFile
       Core.:<|>
       "doubleclicksearch" Core.:>
         "v2" Core.:>
           "agency" Core.:>
             Core.Capture "agencyId" Core.Int64 Core.:>
               "advertiser" Core.:>
                 Core.Capture "advertiserId" Core.Int64 Core.:>
                   "idmapping" Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltMedia Core.:>
                                 Core.Get '[Core.OctetStream] Core.Stream

-- | Downloads a csv file(encoded in UTF-8) that contains ID mappings between legacy SA360 and new SA360. The file includes all children entities of the given advertiser(e.g. engine accounts, campaigns, ad groups, etc.) that exist in both legacy SA360 and new SA360.
--
-- /See:/ 'newDoubleClickSearchReportsGetIdMappingFile' smart constructor.
data DoubleClickSearchReportsGetIdMappingFile = DoubleClickSearchReportsGetIdMappingFile
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Legacy SA360 advertiser ID.
    , advertiserId :: Core.Int64
      -- | Legacy SA360 agency ID.
    , agencyId :: Core.Int64
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DoubleClickSearchReportsGetIdMappingFile' with the minimum fields required to make a request.
newDoubleClickSearchReportsGetIdMappingFile 
    ::  Core.Int64
       -- ^  Legacy SA360 advertiser ID. See 'advertiserId'.
    -> Core.Int64
       -- ^  Legacy SA360 agency ID. See 'agencyId'.
    -> DoubleClickSearchReportsGetIdMappingFile
newDoubleClickSearchReportsGetIdMappingFile advertiserId agencyId =
  DoubleClickSearchReportsGetIdMappingFile
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , advertiserId = advertiserId
    , agencyId = agencyId
    , callback = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DoubleClickSearchReportsGetIdMappingFile
         where
        type Rs DoubleClickSearchReportsGetIdMappingFile =
             IdMappingFile
        type Scopes DoubleClickSearchReportsGetIdMappingFile
             = '[Doubleclicksearch'FullControl]
        requestClient
          DoubleClickSearchReportsGetIdMappingFile{..}
          = go agencyId advertiserId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              doubleClickSearchService
          where go Core.:<|> _
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DoubleClickSearchReportsGetIdMappingFileResource)
                      Core.mempty

instance Core.GoogleRequest
           (Core.MediaDownload
              DoubleClickSearchReportsGetIdMappingFile)
         where
        type Rs
               (Core.MediaDownload
                  DoubleClickSearchReportsGetIdMappingFile)
             = Core.Stream
        type Scopes
               (Core.MediaDownload
                  DoubleClickSearchReportsGetIdMappingFile)
             =
             Core.Scopes DoubleClickSearchReportsGetIdMappingFile
        requestClient
          (Core.MediaDownload
             DoubleClickSearchReportsGetIdMappingFile{..})
          = go agencyId advertiserId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltMedia)
              doubleClickSearchService
          where _ Core.:<|> go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DoubleClickSearchReportsGetIdMappingFileResource)
                      Core.mempty

