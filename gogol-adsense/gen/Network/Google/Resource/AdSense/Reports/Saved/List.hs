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
-- Module      : Network.Google.Resource.AdSense.Reports.Saved.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all saved reports in this AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseReportsSavedList@.
module Network.Google.Resource.AdSense.Reports.Saved.List
    (
    -- * REST Resource
      ReportsSavedListResource

    -- * Creating a Request
    , reportsSavedList'
    , ReportsSavedList'

    -- * Request Lenses
    , rslQuotaUser
    , rslPrettyPrint
    , rslUserIP
    , rslKey
    , rslPageToken
    , rslOAuthToken
    , rslMaxResults
    , rslFields
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseReportsSavedList@ method which the
-- 'ReportsSavedList'' request conforms to.
type ReportsSavedListResource =
     "reports" :>
       "saved" :>
         QueryParam "pageToken" Text :>
           QueryParam "maxResults" Int32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] SavedReports

-- | List all saved reports in this AdSense account.
--
-- /See:/ 'reportsSavedList'' smart constructor.
data ReportsSavedList' = ReportsSavedList'
    { _rslQuotaUser   :: !(Maybe Text)
    , _rslPrettyPrint :: !Bool
    , _rslUserIP      :: !(Maybe Text)
    , _rslKey         :: !(Maybe AuthKey)
    , _rslPageToken   :: !(Maybe Text)
    , _rslOAuthToken  :: !(Maybe OAuthToken)
    , _rslMaxResults  :: !(Maybe Int32)
    , _rslFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsSavedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rslQuotaUser'
--
-- * 'rslPrettyPrint'
--
-- * 'rslUserIP'
--
-- * 'rslKey'
--
-- * 'rslPageToken'
--
-- * 'rslOAuthToken'
--
-- * 'rslMaxResults'
--
-- * 'rslFields'
reportsSavedList'
    :: ReportsSavedList'
reportsSavedList' =
    ReportsSavedList'
    { _rslQuotaUser = Nothing
    , _rslPrettyPrint = True
    , _rslUserIP = Nothing
    , _rslKey = Nothing
    , _rslPageToken = Nothing
    , _rslOAuthToken = Nothing
    , _rslMaxResults = Nothing
    , _rslFields = Nothing
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
rslUserIP :: Lens' ReportsSavedList' (Maybe Text)
rslUserIP
  = lens _rslUserIP (\ s a -> s{_rslUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rslKey :: Lens' ReportsSavedList' (Maybe AuthKey)
rslKey = lens _rslKey (\ s a -> s{_rslKey = a})

-- | A continuation token, used to page through saved reports. To retrieve
-- the next page, set this parameter to the value of \"nextPageToken\" from
-- the previous response.
rslPageToken :: Lens' ReportsSavedList' (Maybe Text)
rslPageToken
  = lens _rslPageToken (\ s a -> s{_rslPageToken = a})

-- | OAuth 2.0 token for the current user.
rslOAuthToken :: Lens' ReportsSavedList' (Maybe OAuthToken)
rslOAuthToken
  = lens _rslOAuthToken
      (\ s a -> s{_rslOAuthToken = a})

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

instance GoogleAuth ReportsSavedList' where
        _AuthKey = rslKey . _Just
        _AuthToken = rslOAuthToken . _Just

instance GoogleRequest ReportsSavedList' where
        type Rs ReportsSavedList' = SavedReports
        request = requestWith adSenseRequest
        requestWith rq ReportsSavedList'{..}
          = go _rslPageToken _rslMaxResults _rslQuotaUser
              (Just _rslPrettyPrint)
              _rslUserIP
              _rslFields
              _rslKey
              _rslOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ReportsSavedListResource)
                      rq
