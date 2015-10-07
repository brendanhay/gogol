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
module Network.Google.Resource.Webmasters.Searchanalytics.Query
    (
    -- * REST Resource
      SearchanalyticsQueryResource

    -- * Creating a Request
    , searchanalyticsQuery'
    , SearchanalyticsQuery'

    -- * Request Lenses
    , sqQuotaUser
    , sqPrettyPrint
    , sqUserIP
    , sqSiteURL
    , sqPayload
    , sqKey
    , sqOAuthToken
    , sqFields
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersSearchanalyticsQuery@ method which the
-- 'SearchanalyticsQuery'' request conforms to.
type SearchanalyticsQueryResource =
     "sites" :>
       Capture "siteUrl" Text :>
         "searchAnalytics" :>
           "query" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
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
-- /See:/ 'searchanalyticsQuery'' smart constructor.
data SearchanalyticsQuery' = SearchanalyticsQuery'
    { _sqQuotaUser   :: !(Maybe Text)
    , _sqPrettyPrint :: !Bool
    , _sqUserIP      :: !(Maybe Text)
    , _sqSiteURL     :: !Text
    , _sqPayload     :: !SearchAnalyticsQueryRequest
    , _sqKey         :: !(Maybe AuthKey)
    , _sqOAuthToken  :: !(Maybe OAuthToken)
    , _sqFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchanalyticsQuery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqQuotaUser'
--
-- * 'sqPrettyPrint'
--
-- * 'sqUserIP'
--
-- * 'sqSiteURL'
--
-- * 'sqPayload'
--
-- * 'sqKey'
--
-- * 'sqOAuthToken'
--
-- * 'sqFields'
searchanalyticsQuery'
    :: Text -- ^ 'siteUrl'
    -> SearchAnalyticsQueryRequest -- ^ 'payload'
    -> SearchanalyticsQuery'
searchanalyticsQuery' pSqSiteURL_ pSqPayload_ =
    SearchanalyticsQuery'
    { _sqQuotaUser = Nothing
    , _sqPrettyPrint = True
    , _sqUserIP = Nothing
    , _sqSiteURL = pSqSiteURL_
    , _sqPayload = pSqPayload_
    , _sqKey = Nothing
    , _sqOAuthToken = Nothing
    , _sqFields = Nothing
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
sqUserIP :: Lens' SearchanalyticsQuery' (Maybe Text)
sqUserIP = lens _sqUserIP (\ s a -> s{_sqUserIP = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
sqSiteURL :: Lens' SearchanalyticsQuery' Text
sqSiteURL
  = lens _sqSiteURL (\ s a -> s{_sqSiteURL = a})

-- | Multipart request metadata.
sqPayload :: Lens' SearchanalyticsQuery' SearchAnalyticsQueryRequest
sqPayload
  = lens _sqPayload (\ s a -> s{_sqPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sqKey :: Lens' SearchanalyticsQuery' (Maybe AuthKey)
sqKey = lens _sqKey (\ s a -> s{_sqKey = a})

-- | OAuth 2.0 token for the current user.
sqOAuthToken :: Lens' SearchanalyticsQuery' (Maybe OAuthToken)
sqOAuthToken
  = lens _sqOAuthToken (\ s a -> s{_sqOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
sqFields :: Lens' SearchanalyticsQuery' (Maybe Text)
sqFields = lens _sqFields (\ s a -> s{_sqFields = a})

instance GoogleAuth SearchanalyticsQuery' where
        _AuthKey = sqKey . _Just
        _AuthToken = sqOAuthToken . _Just

instance GoogleRequest SearchanalyticsQuery' where
        type Rs SearchanalyticsQuery' =
             SearchAnalyticsQueryResponse
        request = requestWith webmasterToolsRequest
        requestWith rq SearchanalyticsQuery'{..}
          = go _sqSiteURL _sqQuotaUser (Just _sqPrettyPrint)
              _sqUserIP
              _sqFields
              _sqKey
              _sqOAuthToken
              (Just AltJSON)
              _sqPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy SearchanalyticsQueryResource)
                      rq
