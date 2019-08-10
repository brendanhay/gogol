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
-- Module      : Network.Google.Resource.CloudIdentity.Groups.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Group.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.delete@.
module Network.Google.Resource.CloudIdentity.Groups.Delete
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
    , gdUploadType
    , gdName
    , gdCallback
    ) where

import           Network.Google.CloudIdentity.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudidentity.groups.delete@ method which the
-- 'GroupsDelete' request conforms to.
type GroupsDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes a Group.
--
-- /See:/ 'groupsDelete' smart constructor.
data GroupsDelete =
  GroupsDelete'
    { _gdXgafv          :: !(Maybe Xgafv)
    , _gdUploadProtocol :: !(Maybe Text)
    , _gdAccessToken    :: !(Maybe Text)
    , _gdUploadType     :: !(Maybe Text)
    , _gdName           :: !Text
    , _gdCallback       :: !(Maybe Text)
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
-- * 'gdUploadType'
--
-- * 'gdName'
--
-- * 'gdCallback'
groupsDelete
    :: Text -- ^ 'gdName'
    -> GroupsDelete
groupsDelete pGdName_ =
  GroupsDelete'
    { _gdXgafv = Nothing
    , _gdUploadProtocol = Nothing
    , _gdAccessToken = Nothing
    , _gdUploadType = Nothing
    , _gdName = pGdName_
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

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gdUploadType :: Lens' GroupsDelete (Maybe Text)
gdUploadType
  = lens _gdUploadType (\ s a -> s{_gdUploadType = a})

-- | [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- Group in the format: \`groups\/{group_id}\`, where \`group_id\` is the
-- unique ID assigned to the Group.
gdName :: Lens' GroupsDelete Text
gdName = lens _gdName (\ s a -> s{_gdName = a})

-- | JSONP
gdCallback :: Lens' GroupsDelete (Maybe Text)
gdCallback
  = lens _gdCallback (\ s a -> s{_gdCallback = a})

instance GoogleRequest GroupsDelete where
        type Rs GroupsDelete = Operation
        type Scopes GroupsDelete =
             '["https://www.googleapis.com/auth/cloud-identity.groups"]
        requestClient GroupsDelete'{..}
          = go _gdName _gdXgafv _gdUploadProtocol
              _gdAccessToken
              _gdUploadType
              _gdCallback
              (Just AltJSON)
              cloudIdentityService
          where go
                  = buildClient (Proxy :: Proxy GroupsDeleteResource)
                      mempty
