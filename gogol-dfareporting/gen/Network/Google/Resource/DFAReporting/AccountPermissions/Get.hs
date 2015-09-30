{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.AccountPermissions.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one account permission by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAccountPermissionsGet@.
module DFAReporting.AccountPermissions.Get
    (
    -- * REST Resource
      AccountPermissionsGetAPI

    -- * Creating a Request
    , accountPermissionsGet
    , AccountPermissionsGet

    -- * Request Lenses
    , apgpQuotaUser
    , apgpPrettyPrint
    , apgpUserIp
    , apgpProfileId
    , apgpKey
    , apgpId
    , apgpOauthToken
    , apgpFields
    , apgpAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountPermissionsGet@ which the
-- 'AccountPermissionsGet' request conforms to.
type AccountPermissionsGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accountPermissions" :>
           Capture "id" Int64 :> Get '[JSON] AccountPermission

-- | Gets one account permission by ID.
--
-- /See:/ 'accountPermissionsGet' smart constructor.
data AccountPermissionsGet = AccountPermissionsGet
    { _apgpQuotaUser   :: !(Maybe Text)
    , _apgpPrettyPrint :: !Bool
    , _apgpUserIp      :: !(Maybe Text)
    , _apgpProfileId   :: !Int64
    , _apgpKey         :: !(Maybe Text)
    , _apgpId          :: !Int64
    , _apgpOauthToken  :: !(Maybe Text)
    , _apgpFields      :: !(Maybe Text)
    , _apgpAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountPermissionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apgpQuotaUser'
--
-- * 'apgpPrettyPrint'
--
-- * 'apgpUserIp'
--
-- * 'apgpProfileId'
--
-- * 'apgpKey'
--
-- * 'apgpId'
--
-- * 'apgpOauthToken'
--
-- * 'apgpFields'
--
-- * 'apgpAlt'
accountPermissionsGet
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AccountPermissionsGet
accountPermissionsGet pApgpProfileId_ pApgpId_ =
    AccountPermissionsGet
    { _apgpQuotaUser = Nothing
    , _apgpPrettyPrint = True
    , _apgpUserIp = Nothing
    , _apgpProfileId = pApgpProfileId_
    , _apgpKey = Nothing
    , _apgpId = pApgpId_
    , _apgpOauthToken = Nothing
    , _apgpFields = Nothing
    , _apgpAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
apgpQuotaUser :: Lens' AccountPermissionsGet' (Maybe Text)
apgpQuotaUser
  = lens _apgpQuotaUser
      (\ s a -> s{_apgpQuotaUser = a})

-- | Returns response with indentations and line breaks.
apgpPrettyPrint :: Lens' AccountPermissionsGet' Bool
apgpPrettyPrint
  = lens _apgpPrettyPrint
      (\ s a -> s{_apgpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
apgpUserIp :: Lens' AccountPermissionsGet' (Maybe Text)
apgpUserIp
  = lens _apgpUserIp (\ s a -> s{_apgpUserIp = a})

-- | User profile ID associated with this request.
apgpProfileId :: Lens' AccountPermissionsGet' Int64
apgpProfileId
  = lens _apgpProfileId
      (\ s a -> s{_apgpProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
apgpKey :: Lens' AccountPermissionsGet' (Maybe Text)
apgpKey = lens _apgpKey (\ s a -> s{_apgpKey = a})

-- | Account permission ID.
apgpId :: Lens' AccountPermissionsGet' Int64
apgpId = lens _apgpId (\ s a -> s{_apgpId = a})

-- | OAuth 2.0 token for the current user.
apgpOauthToken :: Lens' AccountPermissionsGet' (Maybe Text)
apgpOauthToken
  = lens _apgpOauthToken
      (\ s a -> s{_apgpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
apgpFields :: Lens' AccountPermissionsGet' (Maybe Text)
apgpFields
  = lens _apgpFields (\ s a -> s{_apgpFields = a})

-- | Data format for the response.
apgpAlt :: Lens' AccountPermissionsGet' Text
apgpAlt = lens _apgpAlt (\ s a -> s{_apgpAlt = a})

instance GoogleRequest AccountPermissionsGet' where
        type Rs AccountPermissionsGet' = AccountPermission
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AccountPermissionsGet{..}
          = go _apgpQuotaUser _apgpPrettyPrint _apgpUserIp
              _apgpProfileId
              _apgpKey
              _apgpId
              _apgpOauthToken
              _apgpFields
              _apgpAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountPermissionsGetAPI)
                      r
                      u
