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
-- Module      : Network.Google.Resource.Directory.Groups.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a group.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.groups.insert@.
module Network.Google.Resource.Directory.Groups.Insert
    (
    -- * REST Resource
      GroupsInsertResource

    -- * Creating a Request
    , groupsInsert
    , GroupsInsert

    -- * Request Lenses
    , giXgafv
    , giUploadProtocol
    , giAccessToken
    , giUploadType
    , giPayload
    , giCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.groups.insert@ method which the
-- 'GroupsInsert' request conforms to.
type GroupsInsertResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "groups" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Group :> Post '[JSON] Group

-- | Creates a group.
--
-- /See:/ 'groupsInsert' smart constructor.
data GroupsInsert =
  GroupsInsert'
    { _giXgafv :: !(Maybe Xgafv)
    , _giUploadProtocol :: !(Maybe Text)
    , _giAccessToken :: !(Maybe Text)
    , _giUploadType :: !(Maybe Text)
    , _giPayload :: !Group
    , _giCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giXgafv'
--
-- * 'giUploadProtocol'
--
-- * 'giAccessToken'
--
-- * 'giUploadType'
--
-- * 'giPayload'
--
-- * 'giCallback'
groupsInsert
    :: Group -- ^ 'giPayload'
    -> GroupsInsert
groupsInsert pGiPayload_ =
  GroupsInsert'
    { _giXgafv = Nothing
    , _giUploadProtocol = Nothing
    , _giAccessToken = Nothing
    , _giUploadType = Nothing
    , _giPayload = pGiPayload_
    , _giCallback = Nothing
    }


-- | V1 error format.
giXgafv :: Lens' GroupsInsert (Maybe Xgafv)
giXgafv = lens _giXgafv (\ s a -> s{_giXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
giUploadProtocol :: Lens' GroupsInsert (Maybe Text)
giUploadProtocol
  = lens _giUploadProtocol
      (\ s a -> s{_giUploadProtocol = a})

-- | OAuth access token.
giAccessToken :: Lens' GroupsInsert (Maybe Text)
giAccessToken
  = lens _giAccessToken
      (\ s a -> s{_giAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
giUploadType :: Lens' GroupsInsert (Maybe Text)
giUploadType
  = lens _giUploadType (\ s a -> s{_giUploadType = a})

-- | Multipart request metadata.
giPayload :: Lens' GroupsInsert Group
giPayload
  = lens _giPayload (\ s a -> s{_giPayload = a})

-- | JSONP
giCallback :: Lens' GroupsInsert (Maybe Text)
giCallback
  = lens _giCallback (\ s a -> s{_giCallback = a})

instance GoogleRequest GroupsInsert where
        type Rs GroupsInsert = Group
        type Scopes GroupsInsert =
             '["https://www.googleapis.com/auth/admin.directory.group"]
        requestClient GroupsInsert'{..}
          = go _giXgafv _giUploadProtocol _giAccessToken
              _giUploadType
              _giCallback
              (Just AltJSON)
              _giPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy GroupsInsertResource)
                      mempty
