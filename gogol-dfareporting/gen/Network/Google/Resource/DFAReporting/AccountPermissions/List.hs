{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.AccountPermissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of account permissions.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAccountPermissionsList@.
module DFAReporting.AccountPermissions.List
    (
    -- * REST Resource
      AccountPermissionsListAPI

    -- * Creating a Request
    , accountPermissionsList
    , AccountPermissionsList

    -- * Request Lenses
    , aplQuotaUser
    , aplPrettyPrint
    , aplUserIp
    , aplProfileId
    , aplKey
    , aplOauthToken
    , aplFields
    , aplAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountPermissionsList@ which the
-- 'AccountPermissionsList' request conforms to.
type AccountPermissionsListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accountPermissions" :>
           Get '[JSON] AccountPermissionsListResponse

-- | Retrieves the list of account permissions.
--
-- /See:/ 'accountPermissionsList' smart constructor.
data AccountPermissionsList = AccountPermissionsList
    { _aplQuotaUser   :: !(Maybe Text)
    , _aplPrettyPrint :: !Bool
    , _aplUserIp      :: !(Maybe Text)
    , _aplProfileId   :: !Int64
    , _aplKey         :: !(Maybe Text)
    , _aplOauthToken  :: !(Maybe Text)
    , _aplFields      :: !(Maybe Text)
    , _aplAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountPermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aplQuotaUser'
--
-- * 'aplPrettyPrint'
--
-- * 'aplUserIp'
--
-- * 'aplProfileId'
--
-- * 'aplKey'
--
-- * 'aplOauthToken'
--
-- * 'aplFields'
--
-- * 'aplAlt'
accountPermissionsList
    :: Int64 -- ^ 'profileId'
    -> AccountPermissionsList
accountPermissionsList pAplProfileId_ =
    AccountPermissionsList
    { _aplQuotaUser = Nothing
    , _aplPrettyPrint = True
    , _aplUserIp = Nothing
    , _aplProfileId = pAplProfileId_
    , _aplKey = Nothing
    , _aplOauthToken = Nothing
    , _aplFields = Nothing
    , _aplAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aplQuotaUser :: Lens' AccountPermissionsList' (Maybe Text)
aplQuotaUser
  = lens _aplQuotaUser (\ s a -> s{_aplQuotaUser = a})

-- | Returns response with indentations and line breaks.
aplPrettyPrint :: Lens' AccountPermissionsList' Bool
aplPrettyPrint
  = lens _aplPrettyPrint
      (\ s a -> s{_aplPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aplUserIp :: Lens' AccountPermissionsList' (Maybe Text)
aplUserIp
  = lens _aplUserIp (\ s a -> s{_aplUserIp = a})

-- | User profile ID associated with this request.
aplProfileId :: Lens' AccountPermissionsList' Int64
aplProfileId
  = lens _aplProfileId (\ s a -> s{_aplProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aplKey :: Lens' AccountPermissionsList' (Maybe Text)
aplKey = lens _aplKey (\ s a -> s{_aplKey = a})

-- | OAuth 2.0 token for the current user.
aplOauthToken :: Lens' AccountPermissionsList' (Maybe Text)
aplOauthToken
  = lens _aplOauthToken
      (\ s a -> s{_aplOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aplFields :: Lens' AccountPermissionsList' (Maybe Text)
aplFields
  = lens _aplFields (\ s a -> s{_aplFields = a})

-- | Data format for the response.
aplAlt :: Lens' AccountPermissionsList' Text
aplAlt = lens _aplAlt (\ s a -> s{_aplAlt = a})

instance GoogleRequest AccountPermissionsList' where
        type Rs AccountPermissionsList' =
             AccountPermissionsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AccountPermissionsList{..}
          = go _aplQuotaUser _aplPrettyPrint _aplUserIp
              _aplProfileId
              _aplKey
              _aplOauthToken
              _aplFields
              _aplAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountPermissionsListAPI)
                      r
                      u
