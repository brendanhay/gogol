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
-- Module      : Network.Google.Resource.Drive.Permissions.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a permission from a file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DrivePermissionsDelete@.
module Network.Google.Resource.Drive.Permissions.Delete
    (
    -- * REST Resource
      PermissionsDeleteResource

    -- * Creating a Request
    , permissionsDelete'
    , PermissionsDelete'

    -- * Request Lenses
    , perQuotaUser
    , perPrettyPrint
    , perUserIP
    , perKey
    , perFileId
    , perOAuthToken
    , perPermissionId
    , perFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DrivePermissionsDelete@ which the
-- 'PermissionsDelete'' request conforms to.
type PermissionsDeleteResource =
     "files" :>
       Capture "fileId" Text :>
         "permissions" :>
           Capture "permissionId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a permission from a file.
--
-- /See:/ 'permissionsDelete'' smart constructor.
data PermissionsDelete' = PermissionsDelete'
    { _perQuotaUser    :: !(Maybe Text)
    , _perPrettyPrint  :: !Bool
    , _perUserIP       :: !(Maybe Text)
    , _perKey          :: !(Maybe AuthKey)
    , _perFileId       :: !Text
    , _perOAuthToken   :: !(Maybe OAuthToken)
    , _perPermissionId :: !Text
    , _perFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'perQuotaUser'
--
-- * 'perPrettyPrint'
--
-- * 'perUserIP'
--
-- * 'perKey'
--
-- * 'perFileId'
--
-- * 'perOAuthToken'
--
-- * 'perPermissionId'
--
-- * 'perFields'
permissionsDelete'
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'permissionId'
    -> PermissionsDelete'
permissionsDelete' pPerFileId_ pPerPermissionId_ =
    PermissionsDelete'
    { _perQuotaUser = Nothing
    , _perPrettyPrint = True
    , _perUserIP = Nothing
    , _perKey = Nothing
    , _perFileId = pPerFileId_
    , _perOAuthToken = Nothing
    , _perPermissionId = pPerPermissionId_
    , _perFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
perQuotaUser :: Lens' PermissionsDelete' (Maybe Text)
perQuotaUser
  = lens _perQuotaUser (\ s a -> s{_perQuotaUser = a})

-- | Returns response with indentations and line breaks.
perPrettyPrint :: Lens' PermissionsDelete' Bool
perPrettyPrint
  = lens _perPrettyPrint
      (\ s a -> s{_perPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
perUserIP :: Lens' PermissionsDelete' (Maybe Text)
perUserIP
  = lens _perUserIP (\ s a -> s{_perUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
perKey :: Lens' PermissionsDelete' (Maybe AuthKey)
perKey = lens _perKey (\ s a -> s{_perKey = a})

-- | The ID for the file.
perFileId :: Lens' PermissionsDelete' Text
perFileId
  = lens _perFileId (\ s a -> s{_perFileId = a})

-- | OAuth 2.0 token for the current user.
perOAuthToken :: Lens' PermissionsDelete' (Maybe OAuthToken)
perOAuthToken
  = lens _perOAuthToken
      (\ s a -> s{_perOAuthToken = a})

-- | The ID for the permission.
perPermissionId :: Lens' PermissionsDelete' Text
perPermissionId
  = lens _perPermissionId
      (\ s a -> s{_perPermissionId = a})

-- | Selector specifying which fields to include in a partial response.
perFields :: Lens' PermissionsDelete' (Maybe Text)
perFields
  = lens _perFields (\ s a -> s{_perFields = a})

instance GoogleAuth PermissionsDelete' where
        _AuthKey = perKey . _Just
        _AuthToken = perOAuthToken . _Just

instance GoogleRequest PermissionsDelete' where
        type Rs PermissionsDelete' = ()
        request = requestWith driveRequest
        requestWith rq PermissionsDelete'{..}
          = go _perFileId _perPermissionId _perQuotaUser
              (Just _perPrettyPrint)
              _perUserIP
              _perFields
              _perKey
              _perOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy PermissionsDeleteResource)
                      rq
