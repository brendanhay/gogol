{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidenterprise.Permissions.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves details of an Android app permission for display to an
-- enterprise admin.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.permissions.get@.
module Network.Google.API.Androidenterprise.Permissions.Get
    (
    -- * REST Resource
      PermissionsGetAPI

    -- * Creating a Request
    , permissionsGet'
    , PermissionsGet'

    -- * Request Lenses
    , pQuotaUser
    , pPrettyPrint
    , pUserIp
    , pKey
    , pLanguage
    , pOauthToken
    , pPermissionId
    , pFields
    , pAlt
    ) where

import           Network.Google.Play.Enterprise.Types
import           Network.Google.Prelude

-- | A resource alias for androidenterprise.permissions.get which the
-- 'PermissionsGet'' request conforms to.
type PermissionsGetAPI =
     "permissions" :>
       Capture "permissionId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "language" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] Permission

-- | Retrieves details of an Android app permission for display to an
-- enterprise admin.
--
-- /See:/ 'permissionsGet'' smart constructor.
data PermissionsGet' = PermissionsGet'
    { _pQuotaUser    :: !(Maybe Text)
    , _pPrettyPrint  :: !Bool
    , _pUserIp       :: !(Maybe Text)
    , _pKey          :: !(Maybe Text)
    , _pLanguage     :: !(Maybe Text)
    , _pOauthToken   :: !(Maybe Text)
    , _pPermissionId :: !Text
    , _pFields       :: !(Maybe Text)
    , _pAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pQuotaUser'
--
-- * 'pPrettyPrint'
--
-- * 'pUserIp'
--
-- * 'pKey'
--
-- * 'pLanguage'
--
-- * 'pOauthToken'
--
-- * 'pPermissionId'
--
-- * 'pFields'
--
-- * 'pAlt'
permissionsGet'
    :: Text -- ^ 'permissionId'
    -> PermissionsGet'
permissionsGet' pPPermissionId_ =
    PermissionsGet'
    { _pQuotaUser = Nothing
    , _pPrettyPrint = True
    , _pUserIp = Nothing
    , _pKey = Nothing
    , _pLanguage = Nothing
    , _pOauthToken = Nothing
    , _pPermissionId = pPPermissionId_
    , _pFields = Nothing
    , _pAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pQuotaUser :: Lens' PermissionsGet' (Maybe Text)
pQuotaUser
  = lens _pQuotaUser (\ s a -> s{_pQuotaUser = a})

-- | Returns response with indentations and line breaks.
pPrettyPrint :: Lens' PermissionsGet' Bool
pPrettyPrint
  = lens _pPrettyPrint (\ s a -> s{_pPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pUserIp :: Lens' PermissionsGet' (Maybe Text)
pUserIp = lens _pUserIp (\ s a -> s{_pUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pKey :: Lens' PermissionsGet' (Maybe Text)
pKey = lens _pKey (\ s a -> s{_pKey = a})

-- | The BCP47 tag for the user\'s preferred language (e.g. \"en-US\",
-- \"de\")
pLanguage :: Lens' PermissionsGet' (Maybe Text)
pLanguage
  = lens _pLanguage (\ s a -> s{_pLanguage = a})

-- | OAuth 2.0 token for the current user.
pOauthToken :: Lens' PermissionsGet' (Maybe Text)
pOauthToken
  = lens _pOauthToken (\ s a -> s{_pOauthToken = a})

-- | The ID of the permission.
pPermissionId :: Lens' PermissionsGet' Text
pPermissionId
  = lens _pPermissionId
      (\ s a -> s{_pPermissionId = a})

-- | Selector specifying which fields to include in a partial response.
pFields :: Lens' PermissionsGet' (Maybe Text)
pFields = lens _pFields (\ s a -> s{_pFields = a})

-- | Data format for the response.
pAlt :: Lens' PermissionsGet' Alt
pAlt = lens _pAlt (\ s a -> s{_pAlt = a})

instance GoogleRequest PermissionsGet' where
        type Rs PermissionsGet' = Permission
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u PermissionsGet'{..}
          = go _pQuotaUser (Just _pPrettyPrint) _pUserIp _pKey
              _pLanguage
              _pOauthToken
              _pPermissionId
              _pFields
              (Just _pAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy PermissionsGetAPI)
                      r
                      u
