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
    , clgUserIP
    , clgProfileId
    , clgKey
    , clgId
    , clgOAuthToken
    , clgFields
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
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] ChangeLog

-- | Gets one change log by ID.
--
-- /See:/ 'changeLogsGet'' smart constructor.
data ChangeLogsGet' = ChangeLogsGet'
    { _clgQuotaUser   :: !(Maybe Text)
    , _clgPrettyPrint :: !Bool
    , _clgUserIP      :: !(Maybe Text)
    , _clgProfileId   :: !Int64
    , _clgKey         :: !(Maybe Key)
    , _clgId          :: !Int64
    , _clgOAuthToken  :: !(Maybe OAuthToken)
    , _clgFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangeLogsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clgQuotaUser'
--
-- * 'clgPrettyPrint'
--
-- * 'clgUserIP'
--
-- * 'clgProfileId'
--
-- * 'clgKey'
--
-- * 'clgId'
--
-- * 'clgOAuthToken'
--
-- * 'clgFields'
changeLogsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> ChangeLogsGet'
changeLogsGet' pClgProfileId_ pClgId_ =
    ChangeLogsGet'
    { _clgQuotaUser = Nothing
    , _clgPrettyPrint = True
    , _clgUserIP = Nothing
    , _clgProfileId = pClgProfileId_
    , _clgKey = Nothing
    , _clgId = pClgId_
    , _clgOAuthToken = Nothing
    , _clgFields = Nothing
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
clgUserIP :: Lens' ChangeLogsGet' (Maybe Text)
clgUserIP
  = lens _clgUserIP (\ s a -> s{_clgUserIP = a})

-- | User profile ID associated with this request.
clgProfileId :: Lens' ChangeLogsGet' Int64
clgProfileId
  = lens _clgProfileId (\ s a -> s{_clgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clgKey :: Lens' ChangeLogsGet' (Maybe Key)
clgKey = lens _clgKey (\ s a -> s{_clgKey = a})

-- | Change log ID.
clgId :: Lens' ChangeLogsGet' Int64
clgId = lens _clgId (\ s a -> s{_clgId = a})

-- | OAuth 2.0 token for the current user.
clgOAuthToken :: Lens' ChangeLogsGet' (Maybe OAuthToken)
clgOAuthToken
  = lens _clgOAuthToken
      (\ s a -> s{_clgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
clgFields :: Lens' ChangeLogsGet' (Maybe Text)
clgFields
  = lens _clgFields (\ s a -> s{_clgFields = a})

instance GoogleAuth ChangeLogsGet' where
        authKey = clgKey . _Just
        authToken = clgOAuthToken . _Just

instance GoogleRequest ChangeLogsGet' where
        type Rs ChangeLogsGet' = ChangeLog
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ChangeLogsGet'{..}
          = go _clgQuotaUser (Just _clgPrettyPrint) _clgUserIP
              _clgProfileId
              _clgKey
              _clgId
              _clgOAuthToken
              _clgFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ChangeLogsGetResource)
                      r
                      u
