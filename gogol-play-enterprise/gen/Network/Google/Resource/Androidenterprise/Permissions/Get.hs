{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidenterprise.Permissions.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves details of an Android app permission for display to an
-- enterprise admin.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterprisePermissionsGet@.
module Androidenterprise.Permissions.Get
    (
    -- * REST Resource
      PermissionsGetAPI

    -- * Creating a Request
    , permissionsGet
    , PermissionsGet

    -- * Request Lenses
    , pgQuotaUser
    , pgPrettyPrint
    , pgUserIp
    , pgKey
    , pgLanguage
    , pgOauthToken
    , pgPermissionId
    , pgFields
    , pgAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterprisePermissionsGet@ which the
-- 'PermissionsGet' request conforms to.
type PermissionsGetAPI =
     "permissions" :>
       Capture "permissionId" Text :>
         QueryParam "language" Text :> Get '[JSON] Permission

-- | Retrieves details of an Android app permission for display to an
-- enterprise admin.
--
-- /See:/ 'permissionsGet' smart constructor.
data PermissionsGet = PermissionsGet
    { _pgQuotaUser    :: !(Maybe Text)
    , _pgPrettyPrint  :: !Bool
    , _pgUserIp       :: !(Maybe Text)
    , _pgKey          :: !(Maybe Text)
    , _pgLanguage     :: !(Maybe Text)
    , _pgOauthToken   :: !(Maybe Text)
    , _pgPermissionId :: !Text
    , _pgFields       :: !(Maybe Text)
    , _pgAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgQuotaUser'
--
-- * 'pgPrettyPrint'
--
-- * 'pgUserIp'
--
-- * 'pgKey'
--
-- * 'pgLanguage'
--
-- * 'pgOauthToken'
--
-- * 'pgPermissionId'
--
-- * 'pgFields'
--
-- * 'pgAlt'
permissionsGet
    :: Text -- ^ 'permissionId'
    -> PermissionsGet
permissionsGet pPgPermissionId_ =
    PermissionsGet
    { _pgQuotaUser = Nothing
    , _pgPrettyPrint = True
    , _pgUserIp = Nothing
    , _pgKey = Nothing
    , _pgLanguage = Nothing
    , _pgOauthToken = Nothing
    , _pgPermissionId = pPgPermissionId_
    , _pgFields = Nothing
    , _pgAlt = "json"
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
pgUserIp :: Lens' PermissionsGet' (Maybe Text)
pgUserIp = lens _pgUserIp (\ s a -> s{_pgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgKey :: Lens' PermissionsGet' (Maybe Text)
pgKey = lens _pgKey (\ s a -> s{_pgKey = a})

-- | The BCP47 tag for the user\'s preferred language (e.g. \"en-US\",
-- \"de\")
pgLanguage :: Lens' PermissionsGet' (Maybe Text)
pgLanguage
  = lens _pgLanguage (\ s a -> s{_pgLanguage = a})

-- | OAuth 2.0 token for the current user.
pgOauthToken :: Lens' PermissionsGet' (Maybe Text)
pgOauthToken
  = lens _pgOauthToken (\ s a -> s{_pgOauthToken = a})

-- | The ID of the permission.
pgPermissionId :: Lens' PermissionsGet' Text
pgPermissionId
  = lens _pgPermissionId
      (\ s a -> s{_pgPermissionId = a})

-- | Selector specifying which fields to include in a partial response.
pgFields :: Lens' PermissionsGet' (Maybe Text)
pgFields = lens _pgFields (\ s a -> s{_pgFields = a})

-- | Data format for the response.
pgAlt :: Lens' PermissionsGet' Text
pgAlt = lens _pgAlt (\ s a -> s{_pgAlt = a})

instance GoogleRequest PermissionsGet' where
        type Rs PermissionsGet' = Permission
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u PermissionsGet{..}
          = go _pgQuotaUser _pgPrettyPrint _pgUserIp _pgKey
              _pgLanguage
              _pgOauthToken
              _pgPermissionId
              _pgFields
              _pgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy PermissionsGetAPI)
                      r
                      u
