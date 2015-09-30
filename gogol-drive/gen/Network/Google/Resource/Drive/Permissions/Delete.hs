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
    , perUserIp
    , perKey
    , perFileId
    , perOauthToken
    , perPermissionId
    , perFields
    , perAlt
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
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a permission from a file.
--
-- /See:/ 'permissionsDelete'' smart constructor.
data PermissionsDelete' = PermissionsDelete'
    { _perQuotaUser    :: !(Maybe Text)
    , _perPrettyPrint  :: !Bool
    , _perUserIp       :: !(Maybe Text)
    , _perKey          :: !(Maybe Text)
    , _perFileId       :: !Text
    , _perOauthToken   :: !(Maybe Text)
    , _perPermissionId :: !Text
    , _perFields       :: !(Maybe Text)
    , _perAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'perQuotaUser'
--
-- * 'perPrettyPrint'
--
-- * 'perUserIp'
--
-- * 'perKey'
--
-- * 'perFileId'
--
-- * 'perOauthToken'
--
-- * 'perPermissionId'
--
-- * 'perFields'
--
-- * 'perAlt'
permissionsDelete'
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'permissionId'
    -> PermissionsDelete'
permissionsDelete' pPerFileId_ pPerPermissionId_ =
    PermissionsDelete'
    { _perQuotaUser = Nothing
    , _perPrettyPrint = True
    , _perUserIp = Nothing
    , _perKey = Nothing
    , _perFileId = pPerFileId_
    , _perOauthToken = Nothing
    , _perPermissionId = pPerPermissionId_
    , _perFields = Nothing
    , _perAlt = JSON
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
perUserIp :: Lens' PermissionsDelete' (Maybe Text)
perUserIp
  = lens _perUserIp (\ s a -> s{_perUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
perKey :: Lens' PermissionsDelete' (Maybe Text)
perKey = lens _perKey (\ s a -> s{_perKey = a})

-- | The ID for the file.
perFileId :: Lens' PermissionsDelete' Text
perFileId
  = lens _perFileId (\ s a -> s{_perFileId = a})

-- | OAuth 2.0 token for the current user.
perOauthToken :: Lens' PermissionsDelete' (Maybe Text)
perOauthToken
  = lens _perOauthToken
      (\ s a -> s{_perOauthToken = a})

-- | The ID for the permission.
perPermissionId :: Lens' PermissionsDelete' Text
perPermissionId
  = lens _perPermissionId
      (\ s a -> s{_perPermissionId = a})

-- | Selector specifying which fields to include in a partial response.
perFields :: Lens' PermissionsDelete' (Maybe Text)
perFields
  = lens _perFields (\ s a -> s{_perFields = a})

-- | Data format for the response.
perAlt :: Lens' PermissionsDelete' Alt
perAlt = lens _perAlt (\ s a -> s{_perAlt = a})

instance GoogleRequest PermissionsDelete' where
        type Rs PermissionsDelete' = ()
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PermissionsDelete'{..}
          = go _perQuotaUser (Just _perPrettyPrint) _perUserIp
              _perKey
              _perFileId
              _perOauthToken
              _perPermissionId
              _perFields
              (Just _perAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PermissionsDeleteResource)
                      r
                      u
