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
-- Module      : Network.Google.Resource.DFAReporting.Reports.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a report.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingReportsInsert@.
module Network.Google.Resource.DFAReporting.Reports.Insert
    (
    -- * REST Resource
      ReportsInsertResource

    -- * Creating a Request
    , reportsInsert'
    , ReportsInsert'

    -- * Request Lenses
    , riQuotaUser
    , riPrettyPrint
    , riUserIp
    , riProfileId
    , riKey
    , riOauthToken
    , riFields
    , riAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingReportsInsert@ which the
-- 'ReportsInsert'' request conforms to.
type ReportsInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "reports" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] Report

-- | Creates a report.
--
-- /See:/ 'reportsInsert'' smart constructor.
data ReportsInsert' = ReportsInsert'
    { _riQuotaUser   :: !(Maybe Text)
    , _riPrettyPrint :: !Bool
    , _riUserIp      :: !(Maybe Text)
    , _riProfileId   :: !Int64
    , _riKey         :: !(Maybe Text)
    , _riOauthToken  :: !(Maybe Text)
    , _riFields      :: !(Maybe Text)
    , _riAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riQuotaUser'
--
-- * 'riPrettyPrint'
--
-- * 'riUserIp'
--
-- * 'riProfileId'
--
-- * 'riKey'
--
-- * 'riOauthToken'
--
-- * 'riFields'
--
-- * 'riAlt'
reportsInsert'
    :: Int64 -- ^ 'profileId'
    -> ReportsInsert'
reportsInsert' pRiProfileId_ =
    ReportsInsert'
    { _riQuotaUser = Nothing
    , _riPrettyPrint = True
    , _riUserIp = Nothing
    , _riProfileId = pRiProfileId_
    , _riKey = Nothing
    , _riOauthToken = Nothing
    , _riFields = Nothing
    , _riAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
riQuotaUser :: Lens' ReportsInsert' (Maybe Text)
riQuotaUser
  = lens _riQuotaUser (\ s a -> s{_riQuotaUser = a})

-- | Returns response with indentations and line breaks.
riPrettyPrint :: Lens' ReportsInsert' Bool
riPrettyPrint
  = lens _riPrettyPrint
      (\ s a -> s{_riPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
riUserIp :: Lens' ReportsInsert' (Maybe Text)
riUserIp = lens _riUserIp (\ s a -> s{_riUserIp = a})

-- | The DFA user profile ID.
riProfileId :: Lens' ReportsInsert' Int64
riProfileId
  = lens _riProfileId (\ s a -> s{_riProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
riKey :: Lens' ReportsInsert' (Maybe Text)
riKey = lens _riKey (\ s a -> s{_riKey = a})

-- | OAuth 2.0 token for the current user.
riOauthToken :: Lens' ReportsInsert' (Maybe Text)
riOauthToken
  = lens _riOauthToken (\ s a -> s{_riOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
riFields :: Lens' ReportsInsert' (Maybe Text)
riFields = lens _riFields (\ s a -> s{_riFields = a})

-- | Data format for the response.
riAlt :: Lens' ReportsInsert' Alt
riAlt = lens _riAlt (\ s a -> s{_riAlt = a})

instance GoogleRequest ReportsInsert' where
        type Rs ReportsInsert' = Report
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ReportsInsert'{..}
          = go _riQuotaUser (Just _riPrettyPrint) _riUserIp
              _riProfileId
              _riKey
              _riOauthToken
              _riFields
              (Just _riAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReportsInsertResource)
                      r
                      u
