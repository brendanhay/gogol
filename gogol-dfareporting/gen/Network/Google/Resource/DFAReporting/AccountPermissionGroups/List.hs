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
-- Module      : Network.Google.Resource.DFAReporting.AccountPermissionGroups.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of account permission groups.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAccountPermissionGroupsList@.
module Network.Google.Resource.DFAReporting.AccountPermissionGroups.List
    (
    -- * REST Resource
      AccountPermissionGroupsListResource

    -- * Creating a Request
    , accountPermissionGroupsList'
    , AccountPermissionGroupsList'

    -- * Request Lenses
    , apglQuotaUser
    , apglPrettyPrint
    , apglUserIp
    , apglProfileId
    , apglKey
    , apglOauthToken
    , apglFields
    , apglAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountPermissionGroupsList@ which the
-- 'AccountPermissionGroupsList'' request conforms to.
type AccountPermissionGroupsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accountPermissionGroups" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Get '[JSON] AccountPermissionGroupsListResponse

-- | Retrieves the list of account permission groups.
--
-- /See:/ 'accountPermissionGroupsList'' smart constructor.
data AccountPermissionGroupsList' = AccountPermissionGroupsList'
    { _apglQuotaUser   :: !(Maybe Text)
    , _apglPrettyPrint :: !Bool
    , _apglUserIp      :: !(Maybe Text)
    , _apglProfileId   :: !Int64
    , _apglKey         :: !(Maybe Text)
    , _apglOauthToken  :: !(Maybe Text)
    , _apglFields      :: !(Maybe Text)
    , _apglAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountPermissionGroupsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apglQuotaUser'
--
-- * 'apglPrettyPrint'
--
-- * 'apglUserIp'
--
-- * 'apglProfileId'
--
-- * 'apglKey'
--
-- * 'apglOauthToken'
--
-- * 'apglFields'
--
-- * 'apglAlt'
accountPermissionGroupsList'
    :: Int64 -- ^ 'profileId'
    -> AccountPermissionGroupsList'
accountPermissionGroupsList' pApglProfileId_ =
    AccountPermissionGroupsList'
    { _apglQuotaUser = Nothing
    , _apglPrettyPrint = True
    , _apglUserIp = Nothing
    , _apglProfileId = pApglProfileId_
    , _apglKey = Nothing
    , _apglOauthToken = Nothing
    , _apglFields = Nothing
    , _apglAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
apglQuotaUser :: Lens' AccountPermissionGroupsList' (Maybe Text)
apglQuotaUser
  = lens _apglQuotaUser
      (\ s a -> s{_apglQuotaUser = a})

-- | Returns response with indentations and line breaks.
apglPrettyPrint :: Lens' AccountPermissionGroupsList' Bool
apglPrettyPrint
  = lens _apglPrettyPrint
      (\ s a -> s{_apglPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
apglUserIp :: Lens' AccountPermissionGroupsList' (Maybe Text)
apglUserIp
  = lens _apglUserIp (\ s a -> s{_apglUserIp = a})

-- | User profile ID associated with this request.
apglProfileId :: Lens' AccountPermissionGroupsList' Int64
apglProfileId
  = lens _apglProfileId
      (\ s a -> s{_apglProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
apglKey :: Lens' AccountPermissionGroupsList' (Maybe Text)
apglKey = lens _apglKey (\ s a -> s{_apglKey = a})

-- | OAuth 2.0 token for the current user.
apglOauthToken :: Lens' AccountPermissionGroupsList' (Maybe Text)
apglOauthToken
  = lens _apglOauthToken
      (\ s a -> s{_apglOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
apglFields :: Lens' AccountPermissionGroupsList' (Maybe Text)
apglFields
  = lens _apglFields (\ s a -> s{_apglFields = a})

-- | Data format for the response.
apglAlt :: Lens' AccountPermissionGroupsList' Alt
apglAlt = lens _apglAlt (\ s a -> s{_apglAlt = a})

instance GoogleRequest AccountPermissionGroupsList'
         where
        type Rs AccountPermissionGroupsList' =
             AccountPermissionGroupsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AccountPermissionGroupsList'{..}
          = go _apglQuotaUser (Just _apglPrettyPrint)
              _apglUserIp
              _apglProfileId
              _apglKey
              _apglOauthToken
              _apglFields
              (Just _apglAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountPermissionGroupsListResource)
                      r
                      u
