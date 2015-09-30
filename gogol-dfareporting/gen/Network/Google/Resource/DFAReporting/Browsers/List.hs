{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Browsers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of browsers.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingBrowsersList@.
module Network.Google.Resource.DFAReporting.Browsers.List
    (
    -- * REST Resource
      BrowsersListResource

    -- * Creating a Request
    , browsersList'
    , BrowsersList'

    -- * Request Lenses
    , blQuotaUser
    , blPrettyPrint
    , blUserIp
    , blProfileId
    , blKey
    , blOauthToken
    , blFields
    , blAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingBrowsersList@ which the
-- 'BrowsersList'' request conforms to.
type BrowsersListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "browsers" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Get '[JSON] BrowsersListResponse

-- | Retrieves a list of browsers.
--
-- /See:/ 'browsersList'' smart constructor.
data BrowsersList' = BrowsersList'
    { _blQuotaUser   :: !(Maybe Text)
    , _blPrettyPrint :: !Bool
    , _blUserIp      :: !(Maybe Text)
    , _blProfileId   :: !Int64
    , _blKey         :: !(Maybe Text)
    , _blOauthToken  :: !(Maybe Text)
    , _blFields      :: !(Maybe Text)
    , _blAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BrowsersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blQuotaUser'
--
-- * 'blPrettyPrint'
--
-- * 'blUserIp'
--
-- * 'blProfileId'
--
-- * 'blKey'
--
-- * 'blOauthToken'
--
-- * 'blFields'
--
-- * 'blAlt'
browsersList'
    :: Int64 -- ^ 'profileId'
    -> BrowsersList'
browsersList' pBlProfileId_ =
    BrowsersList'
    { _blQuotaUser = Nothing
    , _blPrettyPrint = True
    , _blUserIp = Nothing
    , _blProfileId = pBlProfileId_
    , _blKey = Nothing
    , _blOauthToken = Nothing
    , _blFields = Nothing
    , _blAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
blQuotaUser :: Lens' BrowsersList' (Maybe Text)
blQuotaUser
  = lens _blQuotaUser (\ s a -> s{_blQuotaUser = a})

-- | Returns response with indentations and line breaks.
blPrettyPrint :: Lens' BrowsersList' Bool
blPrettyPrint
  = lens _blPrettyPrint
      (\ s a -> s{_blPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
blUserIp :: Lens' BrowsersList' (Maybe Text)
blUserIp = lens _blUserIp (\ s a -> s{_blUserIp = a})

-- | User profile ID associated with this request.
blProfileId :: Lens' BrowsersList' Int64
blProfileId
  = lens _blProfileId (\ s a -> s{_blProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
blKey :: Lens' BrowsersList' (Maybe Text)
blKey = lens _blKey (\ s a -> s{_blKey = a})

-- | OAuth 2.0 token for the current user.
blOauthToken :: Lens' BrowsersList' (Maybe Text)
blOauthToken
  = lens _blOauthToken (\ s a -> s{_blOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
blFields :: Lens' BrowsersList' (Maybe Text)
blFields = lens _blFields (\ s a -> s{_blFields = a})

-- | Data format for the response.
blAlt :: Lens' BrowsersList' Alt
blAlt = lens _blAlt (\ s a -> s{_blAlt = a})

instance GoogleRequest BrowsersList' where
        type Rs BrowsersList' = BrowsersListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u BrowsersList'{..}
          = go _blQuotaUser (Just _blPrettyPrint) _blUserIp
              _blProfileId
              _blKey
              _blOauthToken
              _blFields
              (Just _blAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BrowsersListResource)
                      r
                      u
