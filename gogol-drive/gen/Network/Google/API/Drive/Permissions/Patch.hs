{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Drive.Permissions.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a permission using patch semantics.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.permissions.patch@.
module Network.Google.API.Drive.Permissions.Patch
    (
    -- * REST Resource
      PermissionsPatchAPI

    -- * Creating a Request
    , permissionsPatch'
    , PermissionsPatch'

    -- * Request Lenses
    , pereQuotaUser
    , perePrettyPrint
    , pereUserIp
    , pereKey
    , pereTransferOwnership
    , pereFileId
    , pereOauthToken
    , perePermissionId
    , pereFields
    , pereAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for drive.permissions.patch which the
-- 'PermissionsPatch'' request conforms to.
type PermissionsPatchAPI =
     "files" :>
       Capture "fileId" Text :>
         "permissions" :>
           Capture "permissionId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "transferOwnership" Bool :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Patch '[JSON] Permission

-- | Updates a permission using patch semantics.
--
-- /See:/ 'permissionsPatch'' smart constructor.
data PermissionsPatch' = PermissionsPatch'
    { _pereQuotaUser         :: !(Maybe Text)
    , _perePrettyPrint       :: !Bool
    , _pereUserIp            :: !(Maybe Text)
    , _pereKey               :: !(Maybe Text)
    , _pereTransferOwnership :: !Bool
    , _pereFileId            :: !Text
    , _pereOauthToken        :: !(Maybe Text)
    , _perePermissionId      :: !Text
    , _pereFields            :: !(Maybe Text)
    , _pereAlt               :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pereQuotaUser'
--
-- * 'perePrettyPrint'
--
-- * 'pereUserIp'
--
-- * 'pereKey'
--
-- * 'pereTransferOwnership'
--
-- * 'pereFileId'
--
-- * 'pereOauthToken'
--
-- * 'perePermissionId'
--
-- * 'pereFields'
--
-- * 'pereAlt'
permissionsPatch'
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'permissionId'
    -> PermissionsPatch'
permissionsPatch' pPereFileId_ pPerePermissionId_ =
    PermissionsPatch'
    { _pereQuotaUser = Nothing
    , _perePrettyPrint = True
    , _pereUserIp = Nothing
    , _pereKey = Nothing
    , _pereTransferOwnership = False
    , _pereFileId = pPereFileId_
    , _pereOauthToken = Nothing
    , _perePermissionId = pPerePermissionId_
    , _pereFields = Nothing
    , _pereAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pereQuotaUser :: Lens' PermissionsPatch' (Maybe Text)
pereQuotaUser
  = lens _pereQuotaUser
      (\ s a -> s{_pereQuotaUser = a})

-- | Returns response with indentations and line breaks.
perePrettyPrint :: Lens' PermissionsPatch' Bool
perePrettyPrint
  = lens _perePrettyPrint
      (\ s a -> s{_perePrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pereUserIp :: Lens' PermissionsPatch' (Maybe Text)
pereUserIp
  = lens _pereUserIp (\ s a -> s{_pereUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pereKey :: Lens' PermissionsPatch' (Maybe Text)
pereKey = lens _pereKey (\ s a -> s{_pereKey = a})

-- | Whether changing a role to \'owner\' downgrades the current owners to
-- writers. Does nothing if the specified role is not \'owner\'.
pereTransferOwnership :: Lens' PermissionsPatch' Bool
pereTransferOwnership
  = lens _pereTransferOwnership
      (\ s a -> s{_pereTransferOwnership = a})

-- | The ID for the file.
pereFileId :: Lens' PermissionsPatch' Text
pereFileId
  = lens _pereFileId (\ s a -> s{_pereFileId = a})

-- | OAuth 2.0 token for the current user.
pereOauthToken :: Lens' PermissionsPatch' (Maybe Text)
pereOauthToken
  = lens _pereOauthToken
      (\ s a -> s{_pereOauthToken = a})

-- | The ID for the permission.
perePermissionId :: Lens' PermissionsPatch' Text
perePermissionId
  = lens _perePermissionId
      (\ s a -> s{_perePermissionId = a})

-- | Selector specifying which fields to include in a partial response.
pereFields :: Lens' PermissionsPatch' (Maybe Text)
pereFields
  = lens _pereFields (\ s a -> s{_pereFields = a})

-- | Data format for the response.
pereAlt :: Lens' PermissionsPatch' Alt
pereAlt = lens _pereAlt (\ s a -> s{_pereAlt = a})

instance GoogleRequest PermissionsPatch' where
        type Rs PermissionsPatch' = Permission
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PermissionsPatch'{..}
          = go _pereQuotaUser (Just _perePrettyPrint)
              _pereUserIp
              _pereKey
              (Just _pereTransferOwnership)
              _pereFileId
              _pereOauthToken
              _perePermissionId
              _pereFields
              (Just _pereAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PermissionsPatchAPI)
                      r
                      u
