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
-- Module      : Network.Google.Resource.AdExchangeBuyer.PerformanceReport.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the authenticated user\'s list of performance metrics.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerPerformanceReportList@.
module Network.Google.Resource.AdExchangeBuyer.PerformanceReport.List
    (
    -- * REST Resource
      PerformanceReportListResource

    -- * Creating a Request
    , performanceReportList'
    , PerformanceReportList'

    -- * Request Lenses
    , prlQuotaUser
    , prlPrettyPrint
    , prlUserIP
    , prlAccountId
    , prlKey
    , prlPageToken
    , prlOAuthToken
    , prlEndDateTime
    , prlMaxResults
    , prlStartDateTime
    , prlFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerPerformanceReportList@ method which the
-- 'PerformanceReportList'' request conforms to.
type PerformanceReportListResource =
     "performancereport" :>
       QueryParam "accountId" Int64 :>
         QueryParam "endDateTime" Text :>
           QueryParam "startDateTime" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] PerformanceReportList

-- | Retrieves the authenticated user\'s list of performance metrics.
--
-- /See:/ 'performanceReportList'' smart constructor.
data PerformanceReportList' = PerformanceReportList'
    { _prlQuotaUser     :: !(Maybe Text)
    , _prlPrettyPrint   :: !Bool
    , _prlUserIP        :: !(Maybe Text)
    , _prlAccountId     :: !Int64
    , _prlKey           :: !(Maybe AuthKey)
    , _prlPageToken     :: !(Maybe Text)
    , _prlOAuthToken    :: !(Maybe OAuthToken)
    , _prlEndDateTime   :: !Text
    , _prlMaxResults    :: !(Maybe Word32)
    , _prlStartDateTime :: !Text
    , _prlFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PerformanceReportList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prlQuotaUser'
--
-- * 'prlPrettyPrint'
--
-- * 'prlUserIP'
--
-- * 'prlAccountId'
--
-- * 'prlKey'
--
-- * 'prlPageToken'
--
-- * 'prlOAuthToken'
--
-- * 'prlEndDateTime'
--
-- * 'prlMaxResults'
--
-- * 'prlStartDateTime'
--
-- * 'prlFields'
performanceReportList'
    :: Int64 -- ^ 'accountId'
    -> Text -- ^ 'endDateTime'
    -> Text -- ^ 'startDateTime'
    -> PerformanceReportList'
performanceReportList' pPrlAccountId_ pPrlEndDateTime_ pPrlStartDateTime_ =
    PerformanceReportList'
    { _prlQuotaUser = Nothing
    , _prlPrettyPrint = True
    , _prlUserIP = Nothing
    , _prlAccountId = pPrlAccountId_
    , _prlKey = Nothing
    , _prlPageToken = Nothing
    , _prlOAuthToken = Nothing
    , _prlEndDateTime = pPrlEndDateTime_
    , _prlMaxResults = Nothing
    , _prlStartDateTime = pPrlStartDateTime_
    , _prlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
prlQuotaUser :: Lens' PerformanceReportList' (Maybe Text)
prlQuotaUser
  = lens _prlQuotaUser (\ s a -> s{_prlQuotaUser = a})

-- | Returns response with indentations and line breaks.
prlPrettyPrint :: Lens' PerformanceReportList' Bool
prlPrettyPrint
  = lens _prlPrettyPrint
      (\ s a -> s{_prlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
prlUserIP :: Lens' PerformanceReportList' (Maybe Text)
prlUserIP
  = lens _prlUserIP (\ s a -> s{_prlUserIP = a})

-- | The account id to get the reports.
prlAccountId :: Lens' PerformanceReportList' Int64
prlAccountId
  = lens _prlAccountId (\ s a -> s{_prlAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
prlKey :: Lens' PerformanceReportList' (Maybe AuthKey)
prlKey = lens _prlKey (\ s a -> s{_prlKey = a})

-- | A continuation token, used to page through performance reports. To
-- retrieve the next page, set this parameter to the value of
-- \"nextPageToken\" from the previous response. Optional.
prlPageToken :: Lens' PerformanceReportList' (Maybe Text)
prlPageToken
  = lens _prlPageToken (\ s a -> s{_prlPageToken = a})

-- | OAuth 2.0 token for the current user.
prlOAuthToken :: Lens' PerformanceReportList' (Maybe OAuthToken)
prlOAuthToken
  = lens _prlOAuthToken
      (\ s a -> s{_prlOAuthToken = a})

-- | The end time of the report in ISO 8601 timestamp format using UTC.
prlEndDateTime :: Lens' PerformanceReportList' Text
prlEndDateTime
  = lens _prlEndDateTime
      (\ s a -> s{_prlEndDateTime = a})

-- | Maximum number of entries returned on one result page. If not set, the
-- default is 100. Optional.
prlMaxResults :: Lens' PerformanceReportList' (Maybe Word32)
prlMaxResults
  = lens _prlMaxResults
      (\ s a -> s{_prlMaxResults = a})

-- | The start time of the report in ISO 8601 timestamp format using UTC.
prlStartDateTime :: Lens' PerformanceReportList' Text
prlStartDateTime
  = lens _prlStartDateTime
      (\ s a -> s{_prlStartDateTime = a})

-- | Selector specifying which fields to include in a partial response.
prlFields :: Lens' PerformanceReportList' (Maybe Text)
prlFields
  = lens _prlFields (\ s a -> s{_prlFields = a})

instance GoogleAuth PerformanceReportList' where
        _AuthKey = prlKey . _Just
        _AuthToken = prlOAuthToken . _Just

instance GoogleRequest PerformanceReportList' where
        type Rs PerformanceReportList' =
             PerformanceReportList
        request = requestWith adExchangeBuyerRequest
        requestWith rq PerformanceReportList'{..}
          = go (Just _prlAccountId) (Just _prlEndDateTime)
              (Just _prlStartDateTime)
              _prlPageToken
              _prlMaxResults
              _prlQuotaUser
              (Just _prlPrettyPrint)
              _prlUserIP
              _prlFields
              _prlKey
              _prlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy PerformanceReportListResource)
                      rq
