{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdSense.Reports.Saved.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all saved reports in this AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.reports.saved.list@.
module Network.Google.API.AdSense.Reports.Saved.List
    (
    -- * REST Resource
      ReportsSavedListAPI

    -- * Creating a Request
    , reportsSavedList'
    , ReportsSavedList'

    -- * Request Lenses
    , rslQuotaUser
    , rslPrettyPrint
    , rslUserIp
    , rslKey
    , rslPageToken
    , rslOauthToken
    , rslMaxResults
    , rslFields
    , rslAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for adsense.reports.saved.list which the
-- 'ReportsSavedList'' request conforms to.
type ReportsSavedListAPI =
     "reports" :>
       "saved" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "maxResults" Int32 :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] SavedReports

-- | List all saved reports in this AdSense account.
--
-- /See:/ 'reportsSavedList'' smart constructor.
data ReportsSavedList' = ReportsSavedList'
    { _rslQuotaUser   :: !(Maybe Text)
    , _rslPrettyPrint :: !Bool
    , _rslUserIp      :: !(Maybe Text)
    , _rslKey         :: !(Maybe Text)
    , _rslPageToken   :: !(Maybe Text)
    , _rslOauthToken  :: !(Maybe Text)
    , _rslMaxResults  :: !(Maybe Int32)
    , _rslFields      :: !(Maybe Text)
    , _rslAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsSavedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rslQuotaUser'
--
-- * 'rslPrettyPrint'
--
-- * 'rslUserIp'
--
-- * 'rslKey'
--
-- * 'rslPageToken'
--
-- * 'rslOauthToken'
--
-- * 'rslMaxResults'
--
-- * 'rslFields'
--
-- * 'rslAlt'
reportsSavedList'
    :: ReportsSavedList'
reportsSavedList' =
    ReportsSavedList'
    { _rslQuotaUser = Nothing
    , _rslPrettyPrint = True
    , _rslUserIp = Nothing
    , _rslKey = Nothing
    , _rslPageToken = Nothing
    , _rslOauthToken = Nothing
    , _rslMaxResults = Nothing
    , _rslFields = Nothing
    , _rslAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rslQuotaUser :: Lens' ReportsSavedList' (Maybe Text)
rslQuotaUser
  = lens _rslQuotaUser (\ s a -> s{_rslQuotaUser = a})

-- | Returns response with indentations and line breaks.
rslPrettyPrint :: Lens' ReportsSavedList' Bool
rslPrettyPrint
  = lens _rslPrettyPrint
      (\ s a -> s{_rslPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rslUserIp :: Lens' ReportsSavedList' (Maybe Text)
rslUserIp
  = lens _rslUserIp (\ s a -> s{_rslUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rslKey :: Lens' ReportsSavedList' (Maybe Text)
rslKey = lens _rslKey (\ s a -> s{_rslKey = a})

-- | A continuation token, used to page through saved reports. To retrieve
-- the next page, set this parameter to the value of \"nextPageToken\" from
-- the previous response.
rslPageToken :: Lens' ReportsSavedList' (Maybe Text)
rslPageToken
  = lens _rslPageToken (\ s a -> s{_rslPageToken = a})

-- | OAuth 2.0 token for the current user.
rslOauthToken :: Lens' ReportsSavedList' (Maybe Text)
rslOauthToken
  = lens _rslOauthToken
      (\ s a -> s{_rslOauthToken = a})

-- | The maximum number of saved reports to include in the response, used for
-- paging.
rslMaxResults :: Lens' ReportsSavedList' (Maybe Int32)
rslMaxResults
  = lens _rslMaxResults
      (\ s a -> s{_rslMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
rslFields :: Lens' ReportsSavedList' (Maybe Text)
rslFields
  = lens _rslFields (\ s a -> s{_rslFields = a})

-- | Data format for the response.
rslAlt :: Lens' ReportsSavedList' Alt
rslAlt = lens _rslAlt (\ s a -> s{_rslAlt = a})

instance GoogleRequest ReportsSavedList' where
        type Rs ReportsSavedList' = SavedReports
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u ReportsSavedList'{..}
          = go _rslQuotaUser (Just _rslPrettyPrint) _rslUserIp
              _rslKey
              _rslPageToken
              _rslOauthToken
              _rslMaxResults
              _rslFields
              (Just _rslAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReportsSavedListAPI)
                      r
                      u
