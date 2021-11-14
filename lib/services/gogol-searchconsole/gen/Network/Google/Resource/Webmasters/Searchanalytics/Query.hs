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
-- Module      : Network.Google.Resource.Webmasters.Searchanalytics.Query
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Query your data with filters and parameters that you define. Returns
-- zero or more rows grouped by the row keys that you define. You must
-- define a date range of one or more days. When date is one of the group
-- by values, any days without data are omitted from the result list. If
-- you need to know which days have data, issue a broad date range query
-- grouped by date for any metric, and see which day rows are returned.
--
-- /See:/ <https://developers.google.com/webmaster-tools/search-console-api/ Google Search Console API Reference> for @webmasters.searchanalytics.query@.
module Network.Google.Resource.Webmasters.Searchanalytics.Query
    (
    -- * REST Resource
      SearchanalyticsQueryResource

    -- * Creating a Request
    , searchanalyticsQuery
    , SearchanalyticsQuery

    -- * Request Lenses
    , sqXgafv
    , sqUploadProtocol
    , sqSiteURL
    , sqAccessToken
    , sqUploadType
    , sqPayload
    , sqCallback
    ) where

import Network.Google.Prelude
import Network.Google.SearchConsole.Types

-- | A resource alias for @webmasters.searchanalytics.query@ method which the
-- 'SearchanalyticsQuery' request conforms to.
type SearchanalyticsQueryResource =
     "webmasters" :>
       "v3" :>
         "sites" :>
           Capture "siteUrl" Text :>
             "searchAnalytics" :>
               "query" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] SearchAnalyticsQueryRequest :>
                               Post '[JSON] SearchAnalyticsQueryResponse

-- | Query your data with filters and parameters that you define. Returns
-- zero or more rows grouped by the row keys that you define. You must
-- define a date range of one or more days. When date is one of the group
-- by values, any days without data are omitted from the result list. If
-- you need to know which days have data, issue a broad date range query
-- grouped by date for any metric, and see which day rows are returned.
--
-- /See:/ 'searchanalyticsQuery' smart constructor.
data SearchanalyticsQuery =
  SearchanalyticsQuery'
    { _sqXgafv :: !(Maybe Xgafv)
    , _sqUploadProtocol :: !(Maybe Text)
    , _sqSiteURL :: !Text
    , _sqAccessToken :: !(Maybe Text)
    , _sqUploadType :: !(Maybe Text)
    , _sqPayload :: !SearchAnalyticsQueryRequest
    , _sqCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchanalyticsQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqXgafv'
--
-- * 'sqUploadProtocol'
--
-- * 'sqSiteURL'
--
-- * 'sqAccessToken'
--
-- * 'sqUploadType'
--
-- * 'sqPayload'
--
-- * 'sqCallback'
searchanalyticsQuery
    :: Text -- ^ 'sqSiteURL'
    -> SearchAnalyticsQueryRequest -- ^ 'sqPayload'
    -> SearchanalyticsQuery
searchanalyticsQuery pSqSiteURL_ pSqPayload_ =
  SearchanalyticsQuery'
    { _sqXgafv = Nothing
    , _sqUploadProtocol = Nothing
    , _sqSiteURL = pSqSiteURL_
    , _sqAccessToken = Nothing
    , _sqUploadType = Nothing
    , _sqPayload = pSqPayload_
    , _sqCallback = Nothing
    }


-- | V1 error format.
sqXgafv :: Lens' SearchanalyticsQuery (Maybe Xgafv)
sqXgafv = lens _sqXgafv (\ s a -> s{_sqXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sqUploadProtocol :: Lens' SearchanalyticsQuery (Maybe Text)
sqUploadProtocol
  = lens _sqUploadProtocol
      (\ s a -> s{_sqUploadProtocol = a})

-- | The site\'s URL, including protocol. For example:
-- \`http:\/\/www.example.com\/\`.
sqSiteURL :: Lens' SearchanalyticsQuery Text
sqSiteURL
  = lens _sqSiteURL (\ s a -> s{_sqSiteURL = a})

-- | OAuth access token.
sqAccessToken :: Lens' SearchanalyticsQuery (Maybe Text)
sqAccessToken
  = lens _sqAccessToken
      (\ s a -> s{_sqAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sqUploadType :: Lens' SearchanalyticsQuery (Maybe Text)
sqUploadType
  = lens _sqUploadType (\ s a -> s{_sqUploadType = a})

-- | Multipart request metadata.
sqPayload :: Lens' SearchanalyticsQuery SearchAnalyticsQueryRequest
sqPayload
  = lens _sqPayload (\ s a -> s{_sqPayload = a})

-- | JSONP
sqCallback :: Lens' SearchanalyticsQuery (Maybe Text)
sqCallback
  = lens _sqCallback (\ s a -> s{_sqCallback = a})

instance GoogleRequest SearchanalyticsQuery where
        type Rs SearchanalyticsQuery =
             SearchAnalyticsQueryResponse
        type Scopes SearchanalyticsQuery =
             '["https://www.googleapis.com/auth/webmasters",
               "https://www.googleapis.com/auth/webmasters.readonly"]
        requestClient SearchanalyticsQuery'{..}
          = go _sqSiteURL _sqXgafv _sqUploadProtocol
              _sqAccessToken
              _sqUploadType
              _sqCallback
              (Just AltJSON)
              _sqPayload
              searchConsoleService
          where go
                  = buildClient
                      (Proxy :: Proxy SearchanalyticsQueryResource)
                      mempty
