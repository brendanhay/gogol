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
-- Module      : Network.Google.Resource.Directory.Groups.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a group\'s properties.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.groups.get@.
module Network.Google.Resource.Directory.Groups.Get
    (
    -- * REST Resource
      GroupsGetResource

    -- * Creating a Request
    , groupsGet
    , GroupsGet

    -- * Request Lenses
    , ggXgafv
    , ggUploadProtocol
    , ggAccessToken
    , ggGroupKey
    , ggUploadType
    , ggCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.groups.get@ method which the
-- 'GroupsGet' request conforms to.
type GroupsGetResource =
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
                         QueryParam "alt" AltJSON :> Get '[JSON] Group

-- | Retrieves a group\'s properties.
--
-- /See:/ 'groupsGet' smart constructor.
data GroupsGet =
  GroupsGet'
    { _ggXgafv :: !(Maybe Xgafv)
    , _ggUploadProtocol :: !(Maybe Text)
    , _ggAccessToken :: !(Maybe Text)
    , _ggGroupKey :: !Text
    , _ggUploadType :: !(Maybe Text)
    , _ggCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggXgafv'
--
-- * 'ggUploadProtocol'
--
-- * 'ggAccessToken'
--
-- * 'ggGroupKey'
--
-- * 'ggUploadType'
--
-- * 'ggCallback'
groupsGet
    :: Text -- ^ 'ggGroupKey'
    -> GroupsGet
groupsGet pGgGroupKey_ =
  GroupsGet'
    { _ggXgafv = Nothing
    , _ggUploadProtocol = Nothing
    , _ggAccessToken = Nothing
    , _ggGroupKey = pGgGroupKey_
    , _ggUploadType = Nothing
    , _ggCallback = Nothing
    }


-- | V1 error format.
ggXgafv :: Lens' GroupsGet (Maybe Xgafv)
ggXgafv = lens _ggXgafv (\ s a -> s{_ggXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ggUploadProtocol :: Lens' GroupsGet (Maybe Text)
ggUploadProtocol
  = lens _ggUploadProtocol
      (\ s a -> s{_ggUploadProtocol = a})

-- | OAuth access token.
ggAccessToken :: Lens' GroupsGet (Maybe Text)
ggAccessToken
  = lens _ggAccessToken
      (\ s a -> s{_ggAccessToken = a})

-- | Identifies the group in the API request. The value can be the group\'s
-- email address, group alias, or the unique group ID.
ggGroupKey :: Lens' GroupsGet Text
ggGroupKey
  = lens _ggGroupKey (\ s a -> s{_ggGroupKey = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ggUploadType :: Lens' GroupsGet (Maybe Text)
ggUploadType
  = lens _ggUploadType (\ s a -> s{_ggUploadType = a})

-- | JSONP
ggCallback :: Lens' GroupsGet (Maybe Text)
ggCallback
  = lens _ggCallback (\ s a -> s{_ggCallback = a})

instance GoogleRequest GroupsGet where
        type Rs GroupsGet = Group
        type Scopes GroupsGet =
             '["https://www.googleapis.com/auth/admin.directory.group",
               "https://www.googleapis.com/auth/admin.directory.group.readonly"]
        requestClient GroupsGet'{..}
          = go _ggGroupKey _ggXgafv _ggUploadProtocol
              _ggAccessToken
              _ggUploadType
              _ggCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy GroupsGetResource)
                      mempty
