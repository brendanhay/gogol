{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.UserRoles.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing user role. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingUserRolesPatch@.
module DFAReporting.UserRoles.Patch
    (
    -- * REST Resource
      UserRolesPatchAPI

    -- * Creating a Request
    , userRolesPatch
    , UserRolesPatch

    -- * Request Lenses
    , uQuotaUser
    , uPrettyPrint
    , uUserIp
    , uProfileId
    , uKey
    , uId
    , uOauthToken
    , uFields
    , uAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingUserRolesPatch@ which the
-- 'UserRolesPatch' request conforms to.
type UserRolesPatchAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "userRoles" :>
           QueryParam "id" Int64 :> Patch '[JSON] UserRole

-- | Updates an existing user role. This method supports patch semantics.
--
-- /See:/ 'userRolesPatch' smart constructor.
data UserRolesPatch = UserRolesPatch
    { _uQuotaUser   :: !(Maybe Text)
    , _uPrettyPrint :: !Bool
    , _uUserIp      :: !(Maybe Text)
    , _uProfileId   :: !Int64
    , _uKey         :: !(Maybe Text)
    , _uId          :: !Int64
    , _uOauthToken  :: !(Maybe Text)
    , _uFields      :: !(Maybe Text)
    , _uAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uQuotaUser'
--
-- * 'uPrettyPrint'
--
-- * 'uUserIp'
--
-- * 'uProfileId'
--
-- * 'uKey'
--
-- * 'uId'
--
-- * 'uOauthToken'
--
-- * 'uFields'
--
-- * 'uAlt'
userRolesPatch
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> UserRolesPatch
userRolesPatch pUProfileId_ pUId_ =
    UserRolesPatch
    { _uQuotaUser = Nothing
    , _uPrettyPrint = True
    , _uUserIp = Nothing
    , _uProfileId = pUProfileId_
    , _uKey = Nothing
    , _uId = pUId_
    , _uOauthToken = Nothing
    , _uFields = Nothing
    , _uAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uQuotaUser :: Lens' UserRolesPatch' (Maybe Text)
uQuotaUser
  = lens _uQuotaUser (\ s a -> s{_uQuotaUser = a})

-- | Returns response with indentations and line breaks.
uPrettyPrint :: Lens' UserRolesPatch' Bool
uPrettyPrint
  = lens _uPrettyPrint (\ s a -> s{_uPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uUserIp :: Lens' UserRolesPatch' (Maybe Text)
uUserIp = lens _uUserIp (\ s a -> s{_uUserIp = a})

-- | User profile ID associated with this request.
uProfileId :: Lens' UserRolesPatch' Int64
uProfileId
  = lens _uProfileId (\ s a -> s{_uProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uKey :: Lens' UserRolesPatch' (Maybe Text)
uKey = lens _uKey (\ s a -> s{_uKey = a})

-- | User role ID.
uId :: Lens' UserRolesPatch' Int64
uId = lens _uId (\ s a -> s{_uId = a})

-- | OAuth 2.0 token for the current user.
uOauthToken :: Lens' UserRolesPatch' (Maybe Text)
uOauthToken
  = lens _uOauthToken (\ s a -> s{_uOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
uFields :: Lens' UserRolesPatch' (Maybe Text)
uFields = lens _uFields (\ s a -> s{_uFields = a})

-- | Data format for the response.
uAlt :: Lens' UserRolesPatch' Text
uAlt = lens _uAlt (\ s a -> s{_uAlt = a})

instance GoogleRequest UserRolesPatch' where
        type Rs UserRolesPatch' = UserRole
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u UserRolesPatch{..}
          = go _uQuotaUser _uPrettyPrint _uUserIp _uProfileId
              _uKey
              (Just _uId)
              _uOauthToken
              _uFields
              _uAlt
          where go
                  = clientWithRoute (Proxy :: Proxy UserRolesPatchAPI)
                      r
                      u
