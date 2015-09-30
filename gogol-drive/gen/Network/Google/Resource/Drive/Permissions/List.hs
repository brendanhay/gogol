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
-- Module      : Network.Google.Resource.Drive.Permissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists a file\'s permissions.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DrivePermissionsList@.
module Network.Google.Resource.Drive.Permissions.List
    (
    -- * REST Resource
      PermissionsListResource

    -- * Creating a Request
    , permissionsList'
    , PermissionsList'

    -- * Request Lenses
    , pllQuotaUser
    , pllPrettyPrint
    , pllUserIp
    , pllKey
    , pllFileId
    , pllOauthToken
    , pllFields
    , pllAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DrivePermissionsList@ which the
-- 'PermissionsList'' request conforms to.
type PermissionsListResource =
     "files" :>
       Capture "fileId" Text :>
         "permissions" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] PermissionList

-- | Lists a file\'s permissions.
--
-- /See:/ 'permissionsList'' smart constructor.
data PermissionsList' = PermissionsList'
    { _pllQuotaUser   :: !(Maybe Text)
    , _pllPrettyPrint :: !Bool
    , _pllUserIp      :: !(Maybe Text)
    , _pllKey         :: !(Maybe Text)
    , _pllFileId      :: !Text
    , _pllOauthToken  :: !(Maybe Text)
    , _pllFields      :: !(Maybe Text)
    , _pllAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pllQuotaUser'
--
-- * 'pllPrettyPrint'
--
-- * 'pllUserIp'
--
-- * 'pllKey'
--
-- * 'pllFileId'
--
-- * 'pllOauthToken'
--
-- * 'pllFields'
--
-- * 'pllAlt'
permissionsList'
    :: Text -- ^ 'fileId'
    -> PermissionsList'
permissionsList' pPllFileId_ =
    PermissionsList'
    { _pllQuotaUser = Nothing
    , _pllPrettyPrint = True
    , _pllUserIp = Nothing
    , _pllKey = Nothing
    , _pllFileId = pPllFileId_
    , _pllOauthToken = Nothing
    , _pllFields = Nothing
    , _pllAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pllQuotaUser :: Lens' PermissionsList' (Maybe Text)
pllQuotaUser
  = lens _pllQuotaUser (\ s a -> s{_pllQuotaUser = a})

-- | Returns response with indentations and line breaks.
pllPrettyPrint :: Lens' PermissionsList' Bool
pllPrettyPrint
  = lens _pllPrettyPrint
      (\ s a -> s{_pllPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pllUserIp :: Lens' PermissionsList' (Maybe Text)
pllUserIp
  = lens _pllUserIp (\ s a -> s{_pllUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pllKey :: Lens' PermissionsList' (Maybe Text)
pllKey = lens _pllKey (\ s a -> s{_pllKey = a})

-- | The ID for the file.
pllFileId :: Lens' PermissionsList' Text
pllFileId
  = lens _pllFileId (\ s a -> s{_pllFileId = a})

-- | OAuth 2.0 token for the current user.
pllOauthToken :: Lens' PermissionsList' (Maybe Text)
pllOauthToken
  = lens _pllOauthToken
      (\ s a -> s{_pllOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pllFields :: Lens' PermissionsList' (Maybe Text)
pllFields
  = lens _pllFields (\ s a -> s{_pllFields = a})

-- | Data format for the response.
pllAlt :: Lens' PermissionsList' Alt
pllAlt = lens _pllAlt (\ s a -> s{_pllAlt = a})

instance GoogleRequest PermissionsList' where
        type Rs PermissionsList' = PermissionList
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PermissionsList'{..}
          = go _pllQuotaUser (Just _pllPrettyPrint) _pllUserIp
              _pllKey
              _pllFileId
              _pllOauthToken
              _pllFields
              (Just _pllAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PermissionsListResource)
                      r
                      u
