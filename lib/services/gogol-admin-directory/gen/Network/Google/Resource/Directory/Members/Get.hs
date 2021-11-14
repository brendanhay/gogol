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
-- Module      : Network.Google.Resource.Directory.Members.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a group member\'s properties.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.members.get@.
module Network.Google.Resource.Directory.Members.Get
    (
    -- * REST Resource
      MembersGetResource

    -- * Creating a Request
    , membersGet
    , MembersGet

    -- * Request Lenses
    , mgXgafv
    , mgMemberKey
    , mgUploadProtocol
    , mgAccessToken
    , mgGroupKey
    , mgUploadType
    , mgCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.members.get@ method which the
-- 'MembersGet' request conforms to.
type MembersGetResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "groups" :>
             Capture "groupKey" Text :>
               "members" :>
                 Capture "memberKey" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Member

-- | Retrieves a group member\'s properties.
--
-- /See:/ 'membersGet' smart constructor.
data MembersGet =
  MembersGet'
    { _mgXgafv :: !(Maybe Xgafv)
    , _mgMemberKey :: !Text
    , _mgUploadProtocol :: !(Maybe Text)
    , _mgAccessToken :: !(Maybe Text)
    , _mgGroupKey :: !Text
    , _mgUploadType :: !(Maybe Text)
    , _mgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MembersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgXgafv'
--
-- * 'mgMemberKey'
--
-- * 'mgUploadProtocol'
--
-- * 'mgAccessToken'
--
-- * 'mgGroupKey'
--
-- * 'mgUploadType'
--
-- * 'mgCallback'
membersGet
    :: Text -- ^ 'mgMemberKey'
    -> Text -- ^ 'mgGroupKey'
    -> MembersGet
membersGet pMgMemberKey_ pMgGroupKey_ =
  MembersGet'
    { _mgXgafv = Nothing
    , _mgMemberKey = pMgMemberKey_
    , _mgUploadProtocol = Nothing
    , _mgAccessToken = Nothing
    , _mgGroupKey = pMgGroupKey_
    , _mgUploadType = Nothing
    , _mgCallback = Nothing
    }


-- | V1 error format.
mgXgafv :: Lens' MembersGet (Maybe Xgafv)
mgXgafv = lens _mgXgafv (\ s a -> s{_mgXgafv = a})

-- | Identifies the group member in the API request. A group member can be a
-- user or another group. The value can be the member\'s (group or user)
-- primary email address, alias, or unique ID.
mgMemberKey :: Lens' MembersGet Text
mgMemberKey
  = lens _mgMemberKey (\ s a -> s{_mgMemberKey = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mgUploadProtocol :: Lens' MembersGet (Maybe Text)
mgUploadProtocol
  = lens _mgUploadProtocol
      (\ s a -> s{_mgUploadProtocol = a})

-- | OAuth access token.
mgAccessToken :: Lens' MembersGet (Maybe Text)
mgAccessToken
  = lens _mgAccessToken
      (\ s a -> s{_mgAccessToken = a})

-- | Identifies the group in the API request. The value can be the group\'s
-- email address, group alias, or the unique group ID.
mgGroupKey :: Lens' MembersGet Text
mgGroupKey
  = lens _mgGroupKey (\ s a -> s{_mgGroupKey = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mgUploadType :: Lens' MembersGet (Maybe Text)
mgUploadType
  = lens _mgUploadType (\ s a -> s{_mgUploadType = a})

-- | JSONP
mgCallback :: Lens' MembersGet (Maybe Text)
mgCallback
  = lens _mgCallback (\ s a -> s{_mgCallback = a})

instance GoogleRequest MembersGet where
        type Rs MembersGet = Member
        type Scopes MembersGet =
             '["https://www.googleapis.com/auth/admin.directory.group",
               "https://www.googleapis.com/auth/admin.directory.group.member",
               "https://www.googleapis.com/auth/admin.directory.group.member.readonly",
               "https://www.googleapis.com/auth/admin.directory.group.readonly"]
        requestClient MembersGet'{..}
          = go _mgGroupKey _mgMemberKey _mgXgafv
              _mgUploadProtocol
              _mgAccessToken
              _mgUploadType
              _mgCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy MembersGetResource)
                      mempty
