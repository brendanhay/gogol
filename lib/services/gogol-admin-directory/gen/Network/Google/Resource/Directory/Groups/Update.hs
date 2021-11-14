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
-- Module      : Network.Google.Resource.Directory.Groups.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a group\'s properties.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.groups.update@.
module Network.Google.Resource.Directory.Groups.Update
    (
    -- * REST Resource
      GroupsUpdateResource

    -- * Creating a Request
    , groupsUpdate
    , GroupsUpdate

    -- * Request Lenses
    , guXgafv
    , guUploadProtocol
    , guAccessToken
    , guGroupKey
    , guUploadType
    , guPayload
    , guCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.groups.update@ method which the
-- 'GroupsUpdate' request conforms to.
type GroupsUpdateResource =
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
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Group :> Put '[JSON] Group

-- | Updates a group\'s properties.
--
-- /See:/ 'groupsUpdate' smart constructor.
data GroupsUpdate =
  GroupsUpdate'
    { _guXgafv :: !(Maybe Xgafv)
    , _guUploadProtocol :: !(Maybe Text)
    , _guAccessToken :: !(Maybe Text)
    , _guGroupKey :: !Text
    , _guUploadType :: !(Maybe Text)
    , _guPayload :: !Group
    , _guCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'guXgafv'
--
-- * 'guUploadProtocol'
--
-- * 'guAccessToken'
--
-- * 'guGroupKey'
--
-- * 'guUploadType'
--
-- * 'guPayload'
--
-- * 'guCallback'
groupsUpdate
    :: Text -- ^ 'guGroupKey'
    -> Group -- ^ 'guPayload'
    -> GroupsUpdate
groupsUpdate pGuGroupKey_ pGuPayload_ =
  GroupsUpdate'
    { _guXgafv = Nothing
    , _guUploadProtocol = Nothing
    , _guAccessToken = Nothing
    , _guGroupKey = pGuGroupKey_
    , _guUploadType = Nothing
    , _guPayload = pGuPayload_
    , _guCallback = Nothing
    }


-- | V1 error format.
guXgafv :: Lens' GroupsUpdate (Maybe Xgafv)
guXgafv = lens _guXgafv (\ s a -> s{_guXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
guUploadProtocol :: Lens' GroupsUpdate (Maybe Text)
guUploadProtocol
  = lens _guUploadProtocol
      (\ s a -> s{_guUploadProtocol = a})

-- | OAuth access token.
guAccessToken :: Lens' GroupsUpdate (Maybe Text)
guAccessToken
  = lens _guAccessToken
      (\ s a -> s{_guAccessToken = a})

-- | Identifies the group in the API request. The value can be the group\'s
-- email address, group alias, or the unique group ID.
guGroupKey :: Lens' GroupsUpdate Text
guGroupKey
  = lens _guGroupKey (\ s a -> s{_guGroupKey = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
guUploadType :: Lens' GroupsUpdate (Maybe Text)
guUploadType
  = lens _guUploadType (\ s a -> s{_guUploadType = a})

-- | Multipart request metadata.
guPayload :: Lens' GroupsUpdate Group
guPayload
  = lens _guPayload (\ s a -> s{_guPayload = a})

-- | JSONP
guCallback :: Lens' GroupsUpdate (Maybe Text)
guCallback
  = lens _guCallback (\ s a -> s{_guCallback = a})

instance GoogleRequest GroupsUpdate where
        type Rs GroupsUpdate = Group
        type Scopes GroupsUpdate =
             '["https://www.googleapis.com/auth/admin.directory.group"]
        requestClient GroupsUpdate'{..}
          = go _guGroupKey _guXgafv _guUploadProtocol
              _guAccessToken
              _guUploadType
              _guCallback
              (Just AltJSON)
              _guPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy GroupsUpdateResource)
                      mempty
