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
-- Module      : Network.Google.Resource.DoubleClickSearch.Reports.Request
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a report request into the reporting system.
--
-- /See:/ <https://developers.google.com/search-ads Search Ads 360 API Reference> for @doubleclicksearch.reports.request@.
module Network.Google.Resource.DoubleClickSearch.Reports.Request
    (
    -- * REST Resource
      ReportsRequestResource

    -- * Creating a Request
    , reportsRequest
    , ReportsRequest

    -- * Request Lenses
    , rrXgafv
    , rrUploadProtocol
    , rrAccessToken
    , rrUploadType
    , rrPayload
    , rrCallback
    ) where

import Network.Google.DoubleClickSearch.Types
import Network.Google.Prelude

-- | A resource alias for @doubleclicksearch.reports.request@ method which the
-- 'ReportsRequest' request conforms to.
type ReportsRequestResource =
     "doubleclicksearch" :>
       "v2" :>
         "reports" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ReportRequest :> Post '[JSON] Report

-- | Inserts a report request into the reporting system.
--
-- /See:/ 'reportsRequest' smart constructor.
data ReportsRequest =
  ReportsRequest'
    { _rrXgafv :: !(Maybe Xgafv)
    , _rrUploadProtocol :: !(Maybe Text)
    , _rrAccessToken :: !(Maybe Text)
    , _rrUploadType :: !(Maybe Text)
    , _rrPayload :: !ReportRequest
    , _rrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrXgafv'
--
-- * 'rrUploadProtocol'
--
-- * 'rrAccessToken'
--
-- * 'rrUploadType'
--
-- * 'rrPayload'
--
-- * 'rrCallback'
reportsRequest
    :: ReportRequest -- ^ 'rrPayload'
    -> ReportsRequest
reportsRequest pRrPayload_ =
  ReportsRequest'
    { _rrXgafv = Nothing
    , _rrUploadProtocol = Nothing
    , _rrAccessToken = Nothing
    , _rrUploadType = Nothing
    , _rrPayload = pRrPayload_
    , _rrCallback = Nothing
    }


-- | V1 error format.
rrXgafv :: Lens' ReportsRequest (Maybe Xgafv)
rrXgafv = lens _rrXgafv (\ s a -> s{_rrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rrUploadProtocol :: Lens' ReportsRequest (Maybe Text)
rrUploadProtocol
  = lens _rrUploadProtocol
      (\ s a -> s{_rrUploadProtocol = a})

-- | OAuth access token.
rrAccessToken :: Lens' ReportsRequest (Maybe Text)
rrAccessToken
  = lens _rrAccessToken
      (\ s a -> s{_rrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rrUploadType :: Lens' ReportsRequest (Maybe Text)
rrUploadType
  = lens _rrUploadType (\ s a -> s{_rrUploadType = a})

-- | Multipart request metadata.
rrPayload :: Lens' ReportsRequest ReportRequest
rrPayload
  = lens _rrPayload (\ s a -> s{_rrPayload = a})

-- | JSONP
rrCallback :: Lens' ReportsRequest (Maybe Text)
rrCallback
  = lens _rrCallback (\ s a -> s{_rrCallback = a})

instance GoogleRequest ReportsRequest where
        type Rs ReportsRequest = Report
        type Scopes ReportsRequest =
             '["https://www.googleapis.com/auth/doubleclicksearch"]
        requestClient ReportsRequest'{..}
          = go _rrXgafv _rrUploadProtocol _rrAccessToken
              _rrUploadType
              _rrCallback
              (Just AltJSON)
              _rrPayload
              doubleClickSearchService
          where go
                  = buildClient (Proxy :: Proxy ReportsRequestResource)
                      mempty
