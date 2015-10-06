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
    , clgProFileId
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
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] ChangeLog

-- | Gets one change log by ID.
--
-- /See:/ 'changeLogsGet'' smart constructor.
data ChangeLogsGet' = ChangeLogsGet'
    { _clgQuotaUser   :: !(Maybe Text)
    , _clgPrettyPrint :: !Bool
    , _clgUserIP      :: !(Maybe Text)
    , _clgProFileId   :: !Int64
    , _clgKey         :: !(Maybe AuthKey)
    , _clgId          :: !Int64
    , _clgOAuthToken  :: !(Maybe OAuthToken)
    , _clgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'clgProFileId'
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
changeLogsGet' pClgProFileId_ pClgId_ =
    ChangeLogsGet'
    { _clgQuotaUser = Nothing
    , _clgPrettyPrint = True
    , _clgUserIP = Nothing
    , _clgProFileId = pClgProFileId_
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
clgProFileId :: Lens' ChangeLogsGet' Int64
clgProFileId
  = lens _clgProFileId (\ s a -> s{_clgProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clgKey :: Lens' ChangeLogsGet' (Maybe AuthKey)
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
        request = requestWith dFAReportingRequest
        requestWith rq ChangeLogsGet'{..}
          = go _clgProFileId _clgId _clgQuotaUser
              (Just _clgPrettyPrint)
              _clgUserIP
              _clgFields
              _clgKey
              _clgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy ChangeLogsGetResource)
                      rq
