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
-- Module      : Network.Google.Resource.DFAReporting.ChangeLogs.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one change log by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingChangeLogsGet@.
module Network.Google.Resource.DFAReporting.ChangeLogs.Get
    (
    -- * REST Resource
      ChangeLogsGetResource

    -- * Creating a Request
    , changeLogsGet'
    , ChangeLogsGet'

    -- * Request Lenses
    , clgQuotaUser
    , clgPrettyPrint
    , clgUserIp
    , clgProfileId
    , clgKey
    , clgId
    , clgOauthToken
    , clgFields
    , clgAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingChangeLogsGet@ which the
-- 'ChangeLogsGet'' request conforms to.
type ChangeLogsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "changeLogs" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] ChangeLog

-- | Gets one change log by ID.
--
-- /See:/ 'changeLogsGet'' smart constructor.
data ChangeLogsGet' = ChangeLogsGet'
    { _clgQuotaUser   :: !(Maybe Text)
    , _clgPrettyPrint :: !Bool
    , _clgUserIp      :: !(Maybe Text)
    , _clgProfileId   :: !Int64
    , _clgKey         :: !(Maybe Text)
    , _clgId          :: !Int64
    , _clgOauthToken  :: !(Maybe Text)
    , _clgFields      :: !(Maybe Text)
    , _clgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangeLogsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clgQuotaUser'
--
-- * 'clgPrettyPrint'
--
-- * 'clgUserIp'
--
-- * 'clgProfileId'
--
-- * 'clgKey'
--
-- * 'clgId'
--
-- * 'clgOauthToken'
--
-- * 'clgFields'
--
-- * 'clgAlt'
changeLogsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> ChangeLogsGet'
changeLogsGet' pClgProfileId_ pClgId_ =
    ChangeLogsGet'
    { _clgQuotaUser = Nothing
    , _clgPrettyPrint = True
    , _clgUserIp = Nothing
    , _clgProfileId = pClgProfileId_
    , _clgKey = Nothing
    , _clgId = pClgId_
    , _clgOauthToken = Nothing
    , _clgFields = Nothing
    , _clgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
clgQuotaUser :: Lens' ChangeLogsGet' (Maybe Text)
clgQuotaUser
  = lens _clgQuotaUser (\ s a -> s{_clgQuotaUser = a})

-- | Returns response with indentations and line breaks.
clgPrettyPrint :: Lens' ChangeLogsGet' Bool
clgPrettyPrint
  = lens _clgPrettyPrint
      (\ s a -> s{_clgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
clgUserIp :: Lens' ChangeLogsGet' (Maybe Text)
clgUserIp
  = lens _clgUserIp (\ s a -> s{_clgUserIp = a})

-- | User profile ID associated with this request.
clgProfileId :: Lens' ChangeLogsGet' Int64
clgProfileId
  = lens _clgProfileId (\ s a -> s{_clgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clgKey :: Lens' ChangeLogsGet' (Maybe Text)
clgKey = lens _clgKey (\ s a -> s{_clgKey = a})

-- | Change log ID.
clgId :: Lens' ChangeLogsGet' Int64
clgId = lens _clgId (\ s a -> s{_clgId = a})

-- | OAuth 2.0 token for the current user.
clgOauthToken :: Lens' ChangeLogsGet' (Maybe Text)
clgOauthToken
  = lens _clgOauthToken
      (\ s a -> s{_clgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
clgFields :: Lens' ChangeLogsGet' (Maybe Text)
clgFields
  = lens _clgFields (\ s a -> s{_clgFields = a})

-- | Data format for the response.
clgAlt :: Lens' ChangeLogsGet' Alt
clgAlt = lens _clgAlt (\ s a -> s{_clgAlt = a})

instance GoogleRequest ChangeLogsGet' where
        type Rs ChangeLogsGet' = ChangeLog
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ChangeLogsGet'{..}
          = go _clgQuotaUser (Just _clgPrettyPrint) _clgUserIp
              _clgProfileId
              _clgKey
              _clgId
              _clgOauthToken
              _clgFields
              (Just _clgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ChangeLogsGetResource)
                      r
                      u
