{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.UserRoles.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an existing user role.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.userRoles.delete@.
module Network.Google.API.DFAReporting.UserRoles.Delete
    (
    -- * REST Resource
      UserRolesDeleteAPI

    -- * Creating a Request
    , userRolesDelete'
    , UserRolesDelete'

    -- * Request Lenses
    , urdQuotaUser
    , urdPrettyPrint
    , urdUserIp
    , urdProfileId
    , urdKey
    , urdId
    , urdOauthToken
    , urdFields
    , urdAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.userRoles.delete which the
-- 'UserRolesDelete'' request conforms to.
type UserRolesDeleteAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "userRoles" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes an existing user role.
--
-- /See:/ 'userRolesDelete'' smart constructor.
data UserRolesDelete' = UserRolesDelete'
    { _urdQuotaUser   :: !(Maybe Text)
    , _urdPrettyPrint :: !Bool
    , _urdUserIp      :: !(Maybe Text)
    , _urdProfileId   :: !Int64
    , _urdKey         :: !(Maybe Text)
    , _urdId          :: !Int64
    , _urdOauthToken  :: !(Maybe Text)
    , _urdFields      :: !(Maybe Text)
    , _urdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urdQuotaUser'
--
-- * 'urdPrettyPrint'
--
-- * 'urdUserIp'
--
-- * 'urdProfileId'
--
-- * 'urdKey'
--
-- * 'urdId'
--
-- * 'urdOauthToken'
--
-- * 'urdFields'
--
-- * 'urdAlt'
userRolesDelete'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> UserRolesDelete'
userRolesDelete' pUrdProfileId_ pUrdId_ =
    UserRolesDelete'
    { _urdQuotaUser = Nothing
    , _urdPrettyPrint = True
    , _urdUserIp = Nothing
    , _urdProfileId = pUrdProfileId_
    , _urdKey = Nothing
    , _urdId = pUrdId_
    , _urdOauthToken = Nothing
    , _urdFields = Nothing
    , _urdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
urdQuotaUser :: Lens' UserRolesDelete' (Maybe Text)
urdQuotaUser
  = lens _urdQuotaUser (\ s a -> s{_urdQuotaUser = a})

-- | Returns response with indentations and line breaks.
urdPrettyPrint :: Lens' UserRolesDelete' Bool
urdPrettyPrint
  = lens _urdPrettyPrint
      (\ s a -> s{_urdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
urdUserIp :: Lens' UserRolesDelete' (Maybe Text)
urdUserIp
  = lens _urdUserIp (\ s a -> s{_urdUserIp = a})

-- | User profile ID associated with this request.
urdProfileId :: Lens' UserRolesDelete' Int64
urdProfileId
  = lens _urdProfileId (\ s a -> s{_urdProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
urdKey :: Lens' UserRolesDelete' (Maybe Text)
urdKey = lens _urdKey (\ s a -> s{_urdKey = a})

-- | User role ID.
urdId :: Lens' UserRolesDelete' Int64
urdId = lens _urdId (\ s a -> s{_urdId = a})

-- | OAuth 2.0 token for the current user.
urdOauthToken :: Lens' UserRolesDelete' (Maybe Text)
urdOauthToken
  = lens _urdOauthToken
      (\ s a -> s{_urdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
urdFields :: Lens' UserRolesDelete' (Maybe Text)
urdFields
  = lens _urdFields (\ s a -> s{_urdFields = a})

-- | Data format for the response.
urdAlt :: Lens' UserRolesDelete' Alt
urdAlt = lens _urdAlt (\ s a -> s{_urdAlt = a})

instance GoogleRequest UserRolesDelete' where
        type Rs UserRolesDelete' = ()
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u UserRolesDelete'{..}
          = go _urdQuotaUser (Just _urdPrettyPrint) _urdUserIp
              _urdProfileId
              _urdKey
              _urdId
              _urdOauthToken
              _urdFields
              (Just _urdAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy UserRolesDeleteAPI)
                      r
                      u
