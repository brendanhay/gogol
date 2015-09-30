{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Webmasters.Searchanalytics.Query
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Query your data with filters and parameters that you define. Returns
-- zero or more rows grouped by the row keys that you define. You must
-- define a date range of one or more days. When date is one of the group
-- by values, any days without data are omitted from the result list. If
-- you need to know which days have data, issue a broad date range query
-- grouped by date for any metric, and see which day rows are returned.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @WebmastersSearchanalyticsQuery@.
module Webmasters.Searchanalytics.Query
    (
    -- * REST Resource
      SearchanalyticsQueryAPI

    -- * Creating a Request
    , searchanalyticsQuery
    , SearchanalyticsQuery

    -- * Request Lenses
    , sqQuotaUser
    , sqPrettyPrint
    , sqUserIp
    , sqSiteUrl
    , sqKey
    , sqOauthToken
    , sqFields
    , sqAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersSearchanalyticsQuery@ which the
-- 'SearchanalyticsQuery' request conforms to.
type SearchanalyticsQueryAPI =
     "sites" :>
       Capture "siteUrl" Text :>
         "searchAnalytics" :>
           "query" :> Post '[JSON] SearchAnalyticsQueryResponse

-- | Query your data with filters and parameters that you define. Returns
-- zero or more rows grouped by the row keys that you define. You must
-- define a date range of one or more days. When date is one of the group
-- by values, any days without data are omitted from the result list. If
-- you need to know which days have data, issue a broad date range query
-- grouped by date for any metric, and see which day rows are returned.
--
-- /See:/ 'searchanalyticsQuery' smart constructor.
data SearchanalyticsQuery = SearchanalyticsQuery
    { _sqQuotaUser   :: !(Maybe Text)
    , _sqPrettyPrint :: !Bool
    , _sqUserIp      :: !(Maybe Text)
    , _sqSiteUrl     :: !Text
    , _sqKey         :: !(Maybe Text)
    , _sqOauthToken  :: !(Maybe Text)
    , _sqFields      :: !(Maybe Text)
    , _sqAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchanalyticsQuery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqQuotaUser'
--
-- * 'sqPrettyPrint'
--
-- * 'sqUserIp'
--
-- * 'sqSiteUrl'
--
-- * 'sqKey'
--
-- * 'sqOauthToken'
--
-- * 'sqFields'
--
-- * 'sqAlt'
searchanalyticsQuery
    :: Text -- ^ 'siteUrl'
    -> SearchanalyticsQuery
searchanalyticsQuery pSqSiteUrl_ =
    SearchanalyticsQuery
    { _sqQuotaUser = Nothing
    , _sqPrettyPrint = True
    , _sqUserIp = Nothing
    , _sqSiteUrl = pSqSiteUrl_
    , _sqKey = Nothing
    , _sqOauthToken = Nothing
    , _sqFields = Nothing
    , _sqAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sqQuotaUser :: Lens' SearchanalyticsQuery' (Maybe Text)
sqQuotaUser
  = lens _sqQuotaUser (\ s a -> s{_sqQuotaUser = a})

-- | Returns response with indentations and line breaks.
sqPrettyPrint :: Lens' SearchanalyticsQuery' Bool
sqPrettyPrint
  = lens _sqPrettyPrint
      (\ s a -> s{_sqPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sqUserIp :: Lens' SearchanalyticsQuery' (Maybe Text)
sqUserIp = lens _sqUserIp (\ s a -> s{_sqUserIp = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
sqSiteUrl :: Lens' SearchanalyticsQuery' Text
sqSiteUrl
  = lens _sqSiteUrl (\ s a -> s{_sqSiteUrl = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sqKey :: Lens' SearchanalyticsQuery' (Maybe Text)
sqKey = lens _sqKey (\ s a -> s{_sqKey = a})

-- | OAuth 2.0 token for the current user.
sqOauthToken :: Lens' SearchanalyticsQuery' (Maybe Text)
sqOauthToken
  = lens _sqOauthToken (\ s a -> s{_sqOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sqFields :: Lens' SearchanalyticsQuery' (Maybe Text)
sqFields = lens _sqFields (\ s a -> s{_sqFields = a})

-- | Data format for the response.
sqAlt :: Lens' SearchanalyticsQuery' Text
sqAlt = lens _sqAlt (\ s a -> s{_sqAlt = a})

instance GoogleRequest SearchanalyticsQuery' where
        type Rs SearchanalyticsQuery' =
             SearchAnalyticsQueryResponse
        request = requestWithRoute defReq webmasterToolsURL
        requestWithRoute r u SearchanalyticsQuery{..}
          = go _sqQuotaUser _sqPrettyPrint _sqUserIp _sqSiteUrl
              _sqKey
              _sqOauthToken
              _sqFields
              _sqAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SearchanalyticsQueryAPI)
                      r
                      u
