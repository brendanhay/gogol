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
-- Module      : Network.Google.Resource.Directory.Groups.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a group.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.groups.delete@.
module Network.Google.Resource.Directory.Groups.Delete
    (
    -- * REST Resource
      GroupsDeleteResource

    -- * Creating a Request
    , groupsDelete
    , GroupsDelete

    -- * Request Lenses
    , gdXgafv
    , gdUploadProtocol
    , gdAccessToken
    , gdGroupKey
    , gdUploadType
    , gdCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.groups.delete@ method which the
-- 'GroupsDelete' request conforms to.
type GroupsDeleteResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "groups" :>
             Capture "groupKey" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a group.
--
-- /See:/ 'groupsDelete' smart constructor.
data GroupsDelete =
  GroupsDelete'
    { _gdXgafv :: !(Maybe Xgafv)
    , _gdUploadProtocol :: !(Maybe Text)
    , _gdAccessToken :: !(Maybe Text)
    , _gdGroupKey :: !Text
    , _gdUploadType :: !(Maybe Text)
    , _gdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdXgafv'
--
-- * 'gdUploadProtocol'
--
-- * 'gdAccessToken'
--
-- * 'gdGroupKey'
--
-- * 'gdUploadType'
--
-- * 'gdCallback'
groupsDelete
    :: Text -- ^ 'gdGroupKey'
    -> GroupsDelete
groupsDelete pGdGroupKey_ =
  GroupsDelete'
    { _gdXgafv = Nothing
    , _gdUploadProtocol = Nothing
    , _gdAccessToken = Nothing
    , _gdGroupKey = pGdGroupKey_
    , _gdUploadType = Nothing
    , _gdCallback = Nothing
    }


-- | V1 error format.
gdXgafv :: Lens' GroupsDelete (Maybe Xgafv)
gdXgafv = lens _gdXgafv (\ s a -> s{_gdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
gdUploadProtocol :: Lens' GroupsDelete (Maybe Text)
gdUploadProtocol
  = lens _gdUploadProtocol
      (\ s a -> s{_gdUploadProtocol = a})

-- | OAuth access token.
gdAccessToken :: Lens' GroupsDelete (Maybe Text)
gdAccessToken
  = lens _gdAccessToken
      (\ s a -> s{_gdAccessToken = a})

-- | Identifies the group in the API request. The value can be the group\'s
-- email address, group alias, or the unique group ID.
gdGroupKey :: Lens' GroupsDelete Text
gdGroupKey
  = lens _gdGroupKey (\ s a -> s{_gdGroupKey = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gdUploadType :: Lens' GroupsDelete (Maybe Text)
gdUploadType
  = lens _gdUploadType (\ s a -> s{_gdUploadType = a})

-- | JSONP
gdCallback :: Lens' GroupsDelete (Maybe Text)
gdCallback
  = lens _gdCallback (\ s a -> s{_gdCallback = a})

instance GoogleRequest GroupsDelete where
        type Rs GroupsDelete = ()
        type Scopes GroupsDelete =
             '["https://www.googleapis.com/auth/admin.directory.group"]
        requestClient GroupsDelete'{..}
          = go _gdGroupKey _gdXgafv _gdUploadProtocol
              _gdAccessToken
              _gdUploadType
              _gdCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy GroupsDeleteResource)
                      mempty
