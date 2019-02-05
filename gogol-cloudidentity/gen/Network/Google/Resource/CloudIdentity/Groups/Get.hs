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
-- Module      : Network.Google.Resource.CloudIdentity.Groups.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a Group.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.get@.
module Network.Google.Resource.CloudIdentity.Groups.Get
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
    , ggUploadType
    , ggName
    , ggCallback
    ) where

import           Network.Google.CloudIdentity.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudidentity.groups.get@ method which the
-- 'GroupsGet' request conforms to.
type GroupsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Group

-- | Retrieves a Group.
--
-- /See:/ 'groupsGet' smart constructor.
data GroupsGet = GroupsGet'
    { _ggXgafv          :: !(Maybe Xgafv)
    , _ggUploadProtocol :: !(Maybe Text)
    , _ggAccessToken    :: !(Maybe Text)
    , _ggUploadType     :: !(Maybe Text)
    , _ggName           :: !Text
    , _ggCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'ggUploadType'
--
-- * 'ggName'
--
-- * 'ggCallback'
groupsGet
    :: Text -- ^ 'ggName'
    -> GroupsGet
groupsGet pGgName_ =
    GroupsGet'
    { _ggXgafv = Nothing
    , _ggUploadProtocol = Nothing
    , _ggAccessToken = Nothing
    , _ggUploadType = Nothing
    , _ggName = pGgName_
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

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ggUploadType :: Lens' GroupsGet (Maybe Text)
ggUploadType
  = lens _ggUploadType (\ s a -> s{_ggUploadType = a})

-- | [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- Group in the format: \`groups\/{group_id}\`, where \`group_id\` is the
-- unique ID assigned to the Group.
ggName :: Lens' GroupsGet Text
ggName = lens _ggName (\ s a -> s{_ggName = a})

-- | JSONP
ggCallback :: Lens' GroupsGet (Maybe Text)
ggCallback
  = lens _ggCallback (\ s a -> s{_ggCallback = a})

instance GoogleRequest GroupsGet where
        type Rs GroupsGet = Group
        type Scopes GroupsGet = '[]
        requestClient GroupsGet'{..}
          = go _ggName _ggXgafv _ggUploadProtocol
              _ggAccessToken
              _ggUploadType
              _ggCallback
              (Just AltJSON)
              cloudIdentityService
          where go
                  = buildClient (Proxy :: Proxy GroupsGetResource)
                      mempty
