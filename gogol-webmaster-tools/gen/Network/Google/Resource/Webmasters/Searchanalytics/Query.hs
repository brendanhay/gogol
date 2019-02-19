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
-- Copyright   : (c) 2015-2016 Brendan Hay
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
-- /See:/ <https://developers.google.com/webmaster-tools/ Search Console API Reference> for @webmasters.searchanalytics.query@.
module Network.Google.Resource.Webmasters.Searchanalytics.Query
    (
    -- * REST Resource
      SearchanalyticsQueryResource

    -- * Creating a Request
    , searchanalyticsQuery
    , SearchanalyticsQuery

    -- * Request Lenses
    , sqSiteURL
    , sqPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @webmasters.searchanalytics.query@ method which the
-- 'SearchanalyticsQuery' request conforms to.
type SearchanalyticsQueryResource =
     "webmasters" :>
       "v3" :>
         "sites" :>
           Capture "siteUrl" Text :>
             "searchAnalytics" :>
               "query" :>
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
    { _sqSiteURL :: !Text
    , _sqPayload :: !SearchAnalyticsQueryRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SearchanalyticsQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqSiteURL'
--
-- * 'sqPayload'
searchanalyticsQuery
    :: Text -- ^ 'sqSiteURL'
    -> SearchAnalyticsQueryRequest -- ^ 'sqPayload'
    -> SearchanalyticsQuery
searchanalyticsQuery pSqSiteURL_ pSqPayload_ =
  SearchanalyticsQuery' {_sqSiteURL = pSqSiteURL_, _sqPayload = pSqPayload_}

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
sqSiteURL :: Lens' SearchanalyticsQuery Text
sqSiteURL
  = lens _sqSiteURL (\ s a -> s{_sqSiteURL = a})

-- | Multipart request metadata.
sqPayload :: Lens' SearchanalyticsQuery SearchAnalyticsQueryRequest
sqPayload
  = lens _sqPayload (\ s a -> s{_sqPayload = a})

instance GoogleRequest SearchanalyticsQuery where
        type Rs SearchanalyticsQuery =
             SearchAnalyticsQueryResponse
        type Scopes SearchanalyticsQuery =
             '["https://www.googleapis.com/auth/webmasters",
               "https://www.googleapis.com/auth/webmasters.readonly"]
        requestClient SearchanalyticsQuery'{..}
          = go _sqSiteURL (Just AltJSON) _sqPayload
              webmasterToolsService
          where go
                  = buildClient
                      (Proxy :: Proxy SearchanalyticsQueryResource)
                      mempty
