{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Permissions.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a permission using patch semantics.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DrivePermissionsPatch@.
module Network.Google.Resource.Drive.Permissions.Patch
    (
    -- * REST Resource
      PermissionsPatchResource

    -- * Creating a Request
    , permissionsPatch'
    , PermissionsPatch'

    -- * Request Lenses
    , pppQuotaUser
    , pppPrettyPrint
    , pppUserIp
    , pppKey
    , pppTransferOwnership
    , pppFileId
    , pppOauthToken
    , pppPermissionId
    , pppFields
    , pppAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DrivePermissionsPatch@ which the
-- 'PermissionsPatch'' request conforms to.
type PermissionsPatchResource =
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
    { _pppQuotaUser         :: !(Maybe Text)
    , _pppPrettyPrint       :: !Bool
    , _pppUserIp            :: !(Maybe Text)
    , _pppKey               :: !(Maybe Text)
    , _pppTransferOwnership :: !Bool
    , _pppFileId            :: !Text
    , _pppOauthToken        :: !(Maybe Text)
    , _pppPermissionId      :: !Text
    , _pppFields            :: !(Maybe Text)
    , _pppAlt               :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pppQuotaUser'
--
-- * 'pppPrettyPrint'
--
-- * 'pppUserIp'
--
-- * 'pppKey'
--
-- * 'pppTransferOwnership'
--
-- * 'pppFileId'
--
-- * 'pppOauthToken'
--
-- * 'pppPermissionId'
--
-- * 'pppFields'
--
-- * 'pppAlt'
permissionsPatch'
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'permissionId'
    -> PermissionsPatch'
permissionsPatch' pPppFileId_ pPppPermissionId_ =
    PermissionsPatch'
    { _pppQuotaUser = Nothing
    , _pppPrettyPrint = True
    , _pppUserIp = Nothing
    , _pppKey = Nothing
    , _pppTransferOwnership = False
    , _pppFileId = pPppFileId_
    , _pppOauthToken = Nothing
    , _pppPermissionId = pPppPermissionId_
    , _pppFields = Nothing
    , _pppAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pppQuotaUser :: Lens' PermissionsPatch' (Maybe Text)
pppQuotaUser
  = lens _pppQuotaUser (\ s a -> s{_pppQuotaUser = a})

-- | Returns response with indentations and line breaks.
pppPrettyPrint :: Lens' PermissionsPatch' Bool
pppPrettyPrint
  = lens _pppPrettyPrint
      (\ s a -> s{_pppPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pppUserIp :: Lens' PermissionsPatch' (Maybe Text)
pppUserIp
  = lens _pppUserIp (\ s a -> s{_pppUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pppKey :: Lens' PermissionsPatch' (Maybe Text)
pppKey = lens _pppKey (\ s a -> s{_pppKey = a})

-- | Whether changing a role to \'owner\' downgrades the current owners to
-- writers. Does nothing if the specified role is not \'owner\'.
pppTransferOwnership :: Lens' PermissionsPatch' Bool
pppTransferOwnership
  = lens _pppTransferOwnership
      (\ s a -> s{_pppTransferOwnership = a})

-- | The ID for the file.
pppFileId :: Lens' PermissionsPatch' Text
pppFileId
  = lens _pppFileId (\ s a -> s{_pppFileId = a})

-- | OAuth 2.0 token for the current user.
pppOauthToken :: Lens' PermissionsPatch' (Maybe Text)
pppOauthToken
  = lens _pppOauthToken
      (\ s a -> s{_pppOauthToken = a})

-- | The ID for the permission.
pppPermissionId :: Lens' PermissionsPatch' Text
pppPermissionId
  = lens _pppPermissionId
      (\ s a -> s{_pppPermissionId = a})

-- | Selector specifying which fields to include in a partial response.
pppFields :: Lens' PermissionsPatch' (Maybe Text)
pppFields
  = lens _pppFields (\ s a -> s{_pppFields = a})

-- | Data format for the response.
pppAlt :: Lens' PermissionsPatch' Alt
pppAlt = lens _pppAlt (\ s a -> s{_pppAlt = a})

instance GoogleRequest PermissionsPatch' where
        type Rs PermissionsPatch' = Permission
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PermissionsPatch'{..}
          = go _pppQuotaUser (Just _pppPrettyPrint) _pppUserIp
              _pppKey
              (Just _pppTransferOwnership)
              _pppFileId
              _pppOauthToken
              _pppPermissionId
              _pppFields
              (Just _pppAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PermissionsPatchResource)
                      r
                      u
