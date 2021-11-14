{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.DoubleClickSearch.Reports.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Polls for the status of a report request.
--
-- /See:/ <https://developers.google.com/search-ads Search Ads 360 API Reference> for @doubleclicksearch.reports.get@.
module Network.Google.Resource.DoubleClickSearch.Reports.Get
    (
    -- * REST Resource
      ReportsGetResource

    -- * Creating a Request
    , reportsGet
    , ReportsGet

    -- * Request Lenses
    , rgXgafv
    , rgUploadProtocol
    , rgAccessToken
    , rgReportId
    , rgUploadType
    , rgCallback
    ) where

import Network.Google.DoubleClickSearch.Types
import Network.Google.Prelude

-- | A resource alias for @doubleclicksearch.reports.get@ method which the
-- 'ReportsGet' request conforms to.
type ReportsGetResource =
     "doubleclicksearch" :>
       "v2" :>
         "reports" :>
           Capture "reportId" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Report

-- | Polls for the status of a report request.
--
-- /See:/ 'reportsGet' smart constructor.
data ReportsGet =
  ReportsGet'
    { _rgXgafv :: !(Maybe Xgafv)
    , _rgUploadProtocol :: !(Maybe Text)
    , _rgAccessToken :: !(Maybe Text)
    , _rgReportId :: !Text
    , _rgUploadType :: !(Maybe Text)
    , _rgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgXgafv'
--
-- * 'rgUploadProtocol'
--
-- * 'rgAccessToken'
--
-- * 'rgReportId'
--
-- * 'rgUploadType'
--
-- * 'rgCallback'
reportsGet
    :: Text -- ^ 'rgReportId'
    -> ReportsGet
reportsGet pRgReportId_ =
  ReportsGet'
    { _rgXgafv = Nothing
    , _rgUploadProtocol = Nothing
    , _rgAccessToken = Nothing
    , _rgReportId = pRgReportId_
    , _rgUploadType = Nothing
    , _rgCallback = Nothing
    }


-- | V1 error format.
rgXgafv :: Lens' ReportsGet (Maybe Xgafv)
rgXgafv = lens _rgXgafv (\ s a -> s{_rgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rgUploadProtocol :: Lens' ReportsGet (Maybe Text)
rgUploadProtocol
  = lens _rgUploadProtocol
      (\ s a -> s{_rgUploadProtocol = a})

-- | OAuth access token.
rgAccessToken :: Lens' ReportsGet (Maybe Text)
rgAccessToken
  = lens _rgAccessToken
      (\ s a -> s{_rgAccessToken = a})

-- | ID of the report request being polled.
rgReportId :: Lens' ReportsGet Text
rgReportId
  = lens _rgReportId (\ s a -> s{_rgReportId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rgUploadType :: Lens' ReportsGet (Maybe Text)
rgUploadType
  = lens _rgUploadType (\ s a -> s{_rgUploadType = a})

-- | JSONP
rgCallback :: Lens' ReportsGet (Maybe Text)
rgCallback
  = lens _rgCallback (\ s a -> s{_rgCallback = a})

instance GoogleRequest ReportsGet where
        type Rs ReportsGet = Report
        type Scopes ReportsGet =
             '["https://www.googleapis.com/auth/doubleclicksearch"]
        requestClient ReportsGet'{..}
          = go _rgReportId _rgXgafv _rgUploadProtocol
              _rgAccessToken
              _rgUploadType
              _rgCallback
              (Just AltJSON)
              doubleClickSearchService
          where go
                  = buildClient (Proxy :: Proxy ReportsGetResource)
                      mempty
