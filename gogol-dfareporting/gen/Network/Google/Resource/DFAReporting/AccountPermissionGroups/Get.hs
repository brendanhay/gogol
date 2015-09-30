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
-- Module      : Network.Google.Resource.DFAReporting.AccountPermissionGroups.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one account permission group by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAccountPermissionGroupsGet@.
module Network.Google.Resource.DFAReporting.AccountPermissionGroups.Get
    (
    -- * REST Resource
      AccountPermissionGroupsGetResource

    -- * Creating a Request
    , accountPermissionGroupsGet'
    , AccountPermissionGroupsGet'

    -- * Request Lenses
    , apggQuotaUser
    , apggPrettyPrint
    , apggUserIp
    , apggProfileId
    , apggKey
    , apggId
    , apggOauthToken
    , apggFields
    , apggAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountPermissionGroupsGet@ which the
-- 'AccountPermissionGroupsGet'' request conforms to.
type AccountPermissionGroupsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accountPermissionGroups" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Get '[JSON] AccountPermissionGroup

-- | Gets one account permission group by ID.
--
-- /See:/ 'accountPermissionGroupsGet'' smart constructor.
data AccountPermissionGroupsGet' = AccountPermissionGroupsGet'
    { _apggQuotaUser   :: !(Maybe Text)
    , _apggPrettyPrint :: !Bool
    , _apggUserIp      :: !(Maybe Text)
    , _apggProfileId   :: !Int64
    , _apggKey         :: !(Maybe Text)
    , _apggId          :: !Int64
    , _apggOauthToken  :: !(Maybe Text)
    , _apggFields      :: !(Maybe Text)
    , _apggAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountPermissionGroupsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apggQuotaUser'
--
-- * 'apggPrettyPrint'
--
-- * 'apggUserIp'
--
-- * 'apggProfileId'
--
-- * 'apggKey'
--
-- * 'apggId'
--
-- * 'apggOauthToken'
--
-- * 'apggFields'
--
-- * 'apggAlt'
accountPermissionGroupsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AccountPermissionGroupsGet'
accountPermissionGroupsGet' pApggProfileId_ pApggId_ =
    AccountPermissionGroupsGet'
    { _apggQuotaUser = Nothing
    , _apggPrettyPrint = True
    , _apggUserIp = Nothing
    , _apggProfileId = pApggProfileId_
    , _apggKey = Nothing
    , _apggId = pApggId_
    , _apggOauthToken = Nothing
    , _apggFields = Nothing
    , _apggAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
apggQuotaUser :: Lens' AccountPermissionGroupsGet' (Maybe Text)
apggQuotaUser
  = lens _apggQuotaUser
      (\ s a -> s{_apggQuotaUser = a})

-- | Returns response with indentations and line breaks.
apggPrettyPrint :: Lens' AccountPermissionGroupsGet' Bool
apggPrettyPrint
  = lens _apggPrettyPrint
      (\ s a -> s{_apggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
apggUserIp :: Lens' AccountPermissionGroupsGet' (Maybe Text)
apggUserIp
  = lens _apggUserIp (\ s a -> s{_apggUserIp = a})

-- | User profile ID associated with this request.
apggProfileId :: Lens' AccountPermissionGroupsGet' Int64
apggProfileId
  = lens _apggProfileId
      (\ s a -> s{_apggProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
apggKey :: Lens' AccountPermissionGroupsGet' (Maybe Text)
apggKey = lens _apggKey (\ s a -> s{_apggKey = a})

-- | Account permission group ID.
apggId :: Lens' AccountPermissionGroupsGet' Int64
apggId = lens _apggId (\ s a -> s{_apggId = a})

-- | OAuth 2.0 token for the current user.
apggOauthToken :: Lens' AccountPermissionGroupsGet' (Maybe Text)
apggOauthToken
  = lens _apggOauthToken
      (\ s a -> s{_apggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
apggFields :: Lens' AccountPermissionGroupsGet' (Maybe Text)
apggFields
  = lens _apggFields (\ s a -> s{_apggFields = a})

-- | Data format for the response.
apggAlt :: Lens' AccountPermissionGroupsGet' Alt
apggAlt = lens _apggAlt (\ s a -> s{_apggAlt = a})

instance GoogleRequest AccountPermissionGroupsGet'
         where
        type Rs AccountPermissionGroupsGet' =
             AccountPermissionGroup
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AccountPermissionGroupsGet'{..}
          = go _apggQuotaUser (Just _apggPrettyPrint)
              _apggUserIp
              _apggProfileId
              _apggKey
              _apggId
              _apggOauthToken
              _apggFields
              (Just _apggAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountPermissionGroupsGetResource)
                      r
                      u
