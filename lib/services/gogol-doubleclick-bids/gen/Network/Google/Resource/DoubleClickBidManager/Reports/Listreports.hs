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
-- Module      : Network.Google.Resource.DoubleClickBidManager.Reports.Listreports
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves stored reports.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @doubleclickbidmanager.reports.listreports@.
module Network.Google.Resource.DoubleClickBidManager.Reports.Listreports
    (
    -- * REST Resource
      ReportsListreportsResource

    -- * Creating a Request
    , reportsListreports
    , ReportsListreports

    -- * Request Lenses
    , rlXgafv
    , rlQueryId
    , rlUploadProtocol
    , rlAccessToken
    , rlUploadType
    , rlPageToken
    , rlPageSize
    , rlCallback
    ) where

import Network.Google.DoubleClickBids.Types
import Network.Google.Prelude

-- | A resource alias for @doubleclickbidmanager.reports.listreports@ method which the
-- 'ReportsListreports' request conforms to.
type ReportsListreportsResource =
     "doubleclickbidmanager" :>
       "v1.1" :>
         "queries" :>
           Capture "queryId" (Textual Int64) :>
             "reports" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListReportsResponse

-- | Retrieves stored reports.
--
-- /See:/ 'reportsListreports' smart constructor.
data ReportsListreports =
  ReportsListreports'
    { _rlXgafv :: !(Maybe Xgafv)
    , _rlQueryId :: !(Textual Int64)
    , _rlUploadProtocol :: !(Maybe Text)
    , _rlAccessToken :: !(Maybe Text)
    , _rlUploadType :: !(Maybe Text)
    , _rlPageToken :: !(Maybe Text)
    , _rlPageSize :: !(Maybe (Textual Int32))
    , _rlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportsListreports' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlXgafv'
--
-- * 'rlQueryId'
--
-- * 'rlUploadProtocol'
--
-- * 'rlAccessToken'
--
-- * 'rlUploadType'
--
-- * 'rlPageToken'
--
-- * 'rlPageSize'
--
-- * 'rlCallback'
reportsListreports
    :: Int64 -- ^ 'rlQueryId'
    -> ReportsListreports
reportsListreports pRlQueryId_ =
  ReportsListreports'
    { _rlXgafv = Nothing
    , _rlQueryId = _Coerce # pRlQueryId_
    , _rlUploadProtocol = Nothing
    , _rlAccessToken = Nothing
    , _rlUploadType = Nothing
    , _rlPageToken = Nothing
    , _rlPageSize = Nothing
    , _rlCallback = Nothing
    }


-- | V1 error format.
rlXgafv :: Lens' ReportsListreports (Maybe Xgafv)
rlXgafv = lens _rlXgafv (\ s a -> s{_rlXgafv = a})

-- | Query ID with which the reports are associated.
rlQueryId :: Lens' ReportsListreports Int64
rlQueryId
  = lens _rlQueryId (\ s a -> s{_rlQueryId = a}) .
      _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rlUploadProtocol :: Lens' ReportsListreports (Maybe Text)
rlUploadProtocol
  = lens _rlUploadProtocol
      (\ s a -> s{_rlUploadProtocol = a})

-- | OAuth access token.
rlAccessToken :: Lens' ReportsListreports (Maybe Text)
rlAccessToken
  = lens _rlAccessToken
      (\ s a -> s{_rlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rlUploadType :: Lens' ReportsListreports (Maybe Text)
rlUploadType
  = lens _rlUploadType (\ s a -> s{_rlUploadType = a})

-- | Optional pagination token.
rlPageToken :: Lens' ReportsListreports (Maybe Text)
rlPageToken
  = lens _rlPageToken (\ s a -> s{_rlPageToken = a})

-- | Maximum number of results per page. Must be between 1 and 100. Defaults
-- to 100 if unspecified.
rlPageSize :: Lens' ReportsListreports (Maybe Int32)
rlPageSize
  = lens _rlPageSize (\ s a -> s{_rlPageSize = a}) .
      mapping _Coerce

-- | JSONP
rlCallback :: Lens' ReportsListreports (Maybe Text)
rlCallback
  = lens _rlCallback (\ s a -> s{_rlCallback = a})

instance GoogleRequest ReportsListreports where
        type Rs ReportsListreports = ListReportsResponse
        type Scopes ReportsListreports =
             '["https://www.googleapis.com/auth/doubleclickbidmanager"]
        requestClient ReportsListreports'{..}
          = go _rlQueryId _rlXgafv _rlUploadProtocol
              _rlAccessToken
              _rlUploadType
              _rlPageToken
              _rlPageSize
              _rlCallback
              (Just AltJSON)
              doubleClickBidsService
          where go
                  = buildClient
                      (Proxy :: Proxy ReportsListreportsResource)
                      mempty
