{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Permissions.GetIdForEmail
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the permission ID for an email address.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DrivePermissionsGetIdForEmail@.
module Network.Google.Resource.Drive.Permissions.GetIdForEmail
    (
    -- * REST Resource
      PermissionsGetIdForEmailResource

    -- * Creating a Request
    , permissionsGetIdForEmail'
    , PermissionsGetIdForEmail'

    -- * Request Lenses
    , pgifeEmail
    , pgifeQuotaUser
    , pgifePrettyPrint
    , pgifeUserIP
    , pgifeKey
    , pgifeOAuthToken
    , pgifeFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DrivePermissionsGetIdForEmail@ which the
-- 'PermissionsGetIdForEmail'' request conforms to.
type PermissionsGetIdForEmailResource =
     "permissionIds" :>
       Capture "email" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] PermissionId

-- | Returns the permission ID for an email address.
--
-- /See:/ 'permissionsGetIdForEmail'' smart constructor.
data PermissionsGetIdForEmail' = PermissionsGetIdForEmail'
    { _pgifeEmail       :: !Text
    , _pgifeQuotaUser   :: !(Maybe Text)
    , _pgifePrettyPrint :: !Bool
    , _pgifeUserIP      :: !(Maybe Text)
    , _pgifeKey         :: !(Maybe Key)
    , _pgifeOAuthToken  :: !(Maybe OAuthToken)
    , _pgifeFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsGetIdForEmail'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgifeEmail'
--
-- * 'pgifeQuotaUser'
--
-- * 'pgifePrettyPrint'
--
-- * 'pgifeUserIP'
--
-- * 'pgifeKey'
--
-- * 'pgifeOAuthToken'
--
-- * 'pgifeFields'
permissionsGetIdForEmail'
    :: Text -- ^ 'email'
    -> PermissionsGetIdForEmail'
permissionsGetIdForEmail' pPgifeEmail_ =
    PermissionsGetIdForEmail'
    { _pgifeEmail = pPgifeEmail_
    , _pgifeQuotaUser = Nothing
    , _pgifePrettyPrint = True
    , _pgifeUserIP = Nothing
    , _pgifeKey = Nothing
    , _pgifeOAuthToken = Nothing
    , _pgifeFields = Nothing
    }

-- | The email address for which to return a permission ID
pgifeEmail :: Lens' PermissionsGetIdForEmail' Text
pgifeEmail
  = lens _pgifeEmail (\ s a -> s{_pgifeEmail = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pgifeQuotaUser :: Lens' PermissionsGetIdForEmail' (Maybe Text)
pgifeQuotaUser
  = lens _pgifeQuotaUser
      (\ s a -> s{_pgifeQuotaUser = a})

-- | Returns response with indentations and line breaks.
pgifePrettyPrint :: Lens' PermissionsGetIdForEmail' Bool
pgifePrettyPrint
  = lens _pgifePrettyPrint
      (\ s a -> s{_pgifePrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pgifeUserIP :: Lens' PermissionsGetIdForEmail' (Maybe Text)
pgifeUserIP
  = lens _pgifeUserIP (\ s a -> s{_pgifeUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgifeKey :: Lens' PermissionsGetIdForEmail' (Maybe Key)
pgifeKey = lens _pgifeKey (\ s a -> s{_pgifeKey = a})

-- | OAuth 2.0 token for the current user.
pgifeOAuthToken :: Lens' PermissionsGetIdForEmail' (Maybe OAuthToken)
pgifeOAuthToken
  = lens _pgifeOAuthToken
      (\ s a -> s{_pgifeOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pgifeFields :: Lens' PermissionsGetIdForEmail' (Maybe Text)
pgifeFields
  = lens _pgifeFields (\ s a -> s{_pgifeFields = a})

instance GoogleAuth PermissionsGetIdForEmail' where
        authKey = pgifeKey . _Just
        authToken = pgifeOAuthToken . _Just

instance GoogleRequest PermissionsGetIdForEmail'
         where
        type Rs PermissionsGetIdForEmail' = PermissionId
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PermissionsGetIdForEmail'{..}
          = go _pgifeEmail _pgifeQuotaUser
              (Just _pgifePrettyPrint)
              _pgifeUserIP
              _pgifeFields
              _pgifeKey
              _pgifeOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PermissionsGetIdForEmailResource)
                      r
                      u
