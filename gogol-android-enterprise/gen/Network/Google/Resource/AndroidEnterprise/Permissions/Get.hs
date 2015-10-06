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
-- Module      : Network.Google.Resource.AndroidEnterprise.Permissions.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves details of an Android app permission for display to an
-- enterprise admin.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterprisePermissionsGet@.
module Network.Google.Resource.AndroidEnterprise.Permissions.Get
    (
    -- * REST Resource
      PermissionsGetResource

    -- * Creating a Request
    , permissionsGet'
    , PermissionsGet'

    -- * Request Lenses
    , pgQuotaUser
    , pgPrettyPrint
    , pgUserIP
    , pgKey
    , pgLanguage
    , pgOAuthToken
    , pgPermissionId
    , pgFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterprisePermissionsGet@ which the
-- 'PermissionsGet'' request conforms to.
type PermissionsGetResource =
     "permissions" :>
       Capture "permissionId" Text :>
         QueryParam "language" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Permission

-- | Retrieves details of an Android app permission for display to an
-- enterprise admin.
--
-- /See:/ 'permissionsGet'' smart constructor.
data PermissionsGet' = PermissionsGet'
    { _pgQuotaUser    :: !(Maybe Text)
    , _pgPrettyPrint  :: !Bool
    , _pgUserIP       :: !(Maybe Text)
    , _pgKey          :: !(Maybe AuthKey)
    , _pgLanguage     :: !(Maybe Text)
    , _pgOAuthToken   :: !(Maybe OAuthToken)
    , _pgPermissionId :: !Text
    , _pgFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgQuotaUser'
--
-- * 'pgPrettyPrint'
--
-- * 'pgUserIP'
--
-- * 'pgKey'
--
-- * 'pgLanguage'
--
-- * 'pgOAuthToken'
--
-- * 'pgPermissionId'
--
-- * 'pgFields'
permissionsGet'
    :: Text -- ^ 'permissionId'
    -> PermissionsGet'
permissionsGet' pPgPermissionId_ =
    PermissionsGet'
    { _pgQuotaUser = Nothing
    , _pgPrettyPrint = True
    , _pgUserIP = Nothing
    , _pgKey = Nothing
    , _pgLanguage = Nothing
    , _pgOAuthToken = Nothing
    , _pgPermissionId = pPgPermissionId_
    , _pgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pgQuotaUser :: Lens' PermissionsGet' (Maybe Text)
pgQuotaUser
  = lens _pgQuotaUser (\ s a -> s{_pgQuotaUser = a})

-- | Returns response with indentations and line breaks.
pgPrettyPrint :: Lens' PermissionsGet' Bool
pgPrettyPrint
  = lens _pgPrettyPrint
      (\ s a -> s{_pgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pgUserIP :: Lens' PermissionsGet' (Maybe Text)
pgUserIP = lens _pgUserIP (\ s a -> s{_pgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgKey :: Lens' PermissionsGet' (Maybe AuthKey)
pgKey = lens _pgKey (\ s a -> s{_pgKey = a})

-- | The BCP47 tag for the user\'s preferred language (e.g. \"en-US\",
-- \"de\")
pgLanguage :: Lens' PermissionsGet' (Maybe Text)
pgLanguage
  = lens _pgLanguage (\ s a -> s{_pgLanguage = a})

-- | OAuth 2.0 token for the current user.
pgOAuthToken :: Lens' PermissionsGet' (Maybe OAuthToken)
pgOAuthToken
  = lens _pgOAuthToken (\ s a -> s{_pgOAuthToken = a})

-- | The ID of the permission.
pgPermissionId :: Lens' PermissionsGet' Text
pgPermissionId
  = lens _pgPermissionId
      (\ s a -> s{_pgPermissionId = a})

-- | Selector specifying which fields to include in a partial response.
pgFields :: Lens' PermissionsGet' (Maybe Text)
pgFields = lens _pgFields (\ s a -> s{_pgFields = a})

instance GoogleAuth PermissionsGet' where
        _AuthKey = pgKey . _Just
        _AuthToken = pgOAuthToken . _Just

instance GoogleRequest PermissionsGet' where
        type Rs PermissionsGet' = Permission
        request = requestWith androidEnterpriseRequest
        requestWith rq PermissionsGet'{..}
          = go _pgPermissionId _pgLanguage _pgQuotaUser
              (Just _pgPrettyPrint)
              _pgUserIP
              _pgFields
              _pgKey
              _pgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy PermissionsGetResource)
                      rq
