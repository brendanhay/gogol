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
module Network.Google.Resource.DFAReporting.UserRoles.Patch
    (
    -- * REST Resource
      UserRolesPatchResource

    -- * Creating a Request
    , userRolesPatch'
    , UserRolesPatch'

    -- * Request Lenses
    , urpQuotaUser
    , urpPrettyPrint
    , urpUserIP
    , urpProFileId
    , urpPayload
    , urpKey
    , urpId
    , urpOAuthToken
    , urpFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingUserRolesPatch@ method which the
-- 'UserRolesPatch'' request conforms to.
type UserRolesPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "userRoles" :>
           QueryParam "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] UserRole :> Patch '[JSON] UserRole

-- | Updates an existing user role. This method supports patch semantics.
--
-- /See:/ 'userRolesPatch'' smart constructor.
data UserRolesPatch' = UserRolesPatch'
    { _urpQuotaUser   :: !(Maybe Text)
    , _urpPrettyPrint :: !Bool
    , _urpUserIP      :: !(Maybe Text)
    , _urpProFileId   :: !Int64
    , _urpPayload     :: !UserRole
    , _urpKey         :: !(Maybe AuthKey)
    , _urpId          :: !Int64
    , _urpOAuthToken  :: !(Maybe OAuthToken)
    , _urpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urpQuotaUser'
--
-- * 'urpPrettyPrint'
--
-- * 'urpUserIP'
--
-- * 'urpProFileId'
--
-- * 'urpPayload'
--
-- * 'urpKey'
--
-- * 'urpId'
--
-- * 'urpOAuthToken'
--
-- * 'urpFields'
userRolesPatch'
    :: Int64 -- ^ 'profileId'
    -> UserRole -- ^ 'payload'
    -> Int64 -- ^ 'id'
    -> UserRolesPatch'
userRolesPatch' pUrpProFileId_ pUrpPayload_ pUrpId_ =
    UserRolesPatch'
    { _urpQuotaUser = Nothing
    , _urpPrettyPrint = True
    , _urpUserIP = Nothing
    , _urpProFileId = pUrpProFileId_
    , _urpPayload = pUrpPayload_
    , _urpKey = Nothing
    , _urpId = pUrpId_
    , _urpOAuthToken = Nothing
    , _urpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
urpQuotaUser :: Lens' UserRolesPatch' (Maybe Text)
urpQuotaUser
  = lens _urpQuotaUser (\ s a -> s{_urpQuotaUser = a})

-- | Returns response with indentations and line breaks.
urpPrettyPrint :: Lens' UserRolesPatch' Bool
urpPrettyPrint
  = lens _urpPrettyPrint
      (\ s a -> s{_urpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
urpUserIP :: Lens' UserRolesPatch' (Maybe Text)
urpUserIP
  = lens _urpUserIP (\ s a -> s{_urpUserIP = a})

-- | User profile ID associated with this request.
urpProFileId :: Lens' UserRolesPatch' Int64
urpProFileId
  = lens _urpProFileId (\ s a -> s{_urpProFileId = a})

-- | Multipart request metadata.
urpPayload :: Lens' UserRolesPatch' UserRole
urpPayload
  = lens _urpPayload (\ s a -> s{_urpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
urpKey :: Lens' UserRolesPatch' (Maybe AuthKey)
urpKey = lens _urpKey (\ s a -> s{_urpKey = a})

-- | User role ID.
urpId :: Lens' UserRolesPatch' Int64
urpId = lens _urpId (\ s a -> s{_urpId = a})

-- | OAuth 2.0 token for the current user.
urpOAuthToken :: Lens' UserRolesPatch' (Maybe OAuthToken)
urpOAuthToken
  = lens _urpOAuthToken
      (\ s a -> s{_urpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
urpFields :: Lens' UserRolesPatch' (Maybe Text)
urpFields
  = lens _urpFields (\ s a -> s{_urpFields = a})

instance GoogleAuth UserRolesPatch' where
        _AuthKey = urpKey . _Just
        _AuthToken = urpOAuthToken . _Just

instance GoogleRequest UserRolesPatch' where
        type Rs UserRolesPatch' = UserRole
        request = requestWith dFAReportingRequest
        requestWith rq UserRolesPatch'{..}
          = go _urpProFileId (Just _urpId) _urpQuotaUser
              (Just _urpPrettyPrint)
              _urpUserIP
              _urpFields
              _urpKey
              _urpOAuthToken
              (Just AltJSON)
              _urpPayload
          where go
                  = clientBuild (Proxy :: Proxy UserRolesPatchResource)
                      rq
