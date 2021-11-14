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
-- Module      : Network.Google.Resource.Storage.DefaultObjectAccessControls.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a default object ACL entry on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.defaultObjectAccessControls.update@.
module Network.Google.Resource.Storage.DefaultObjectAccessControls.Update
    (
    -- * REST Resource
      DefaultObjectAccessControlsUpdateResource

    -- * Creating a Request
    , defaultObjectAccessControlsUpdate
    , DefaultObjectAccessControlsUpdate

    -- * Request Lenses
    , doacuBucket
    , doacuPayload
    , doacuUserProject
    , doacuProvisionalUserProject
    , doacuEntity
    ) where

import Network.Google.Prelude
import Network.Google.Storage.Types

-- | A resource alias for @storage.defaultObjectAccessControls.update@ method which the
-- 'DefaultObjectAccessControlsUpdate' request conforms to.
type DefaultObjectAccessControlsUpdateResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "defaultObjectAcl" :>
               Capture "entity" Text :>
                 QueryParam "userProject" Text :>
                   QueryParam "provisionalUserProject" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ObjectAccessControl :>
                         Put '[JSON] ObjectAccessControl

-- | Updates a default object ACL entry on the specified bucket.
--
-- /See:/ 'defaultObjectAccessControlsUpdate' smart constructor.
data DefaultObjectAccessControlsUpdate =
  DefaultObjectAccessControlsUpdate'
    { _doacuBucket :: !Text
    , _doacuPayload :: !ObjectAccessControl
    , _doacuUserProject :: !(Maybe Text)
    , _doacuProvisionalUserProject :: !(Maybe Text)
    , _doacuEntity :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DefaultObjectAccessControlsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doacuBucket'
--
-- * 'doacuPayload'
--
-- * 'doacuUserProject'
--
-- * 'doacuProvisionalUserProject'
--
-- * 'doacuEntity'
defaultObjectAccessControlsUpdate
    :: Text -- ^ 'doacuBucket'
    -> ObjectAccessControl -- ^ 'doacuPayload'
    -> Text -- ^ 'doacuEntity'
    -> DefaultObjectAccessControlsUpdate
defaultObjectAccessControlsUpdate pDoacuBucket_ pDoacuPayload_ pDoacuEntity_ =
  DefaultObjectAccessControlsUpdate'
    { _doacuBucket = pDoacuBucket_
    , _doacuPayload = pDoacuPayload_
    , _doacuUserProject = Nothing
    , _doacuProvisionalUserProject = Nothing
    , _doacuEntity = pDoacuEntity_
    }


-- | Name of a bucket.
doacuBucket :: Lens' DefaultObjectAccessControlsUpdate Text
doacuBucket
  = lens _doacuBucket (\ s a -> s{_doacuBucket = a})

-- | Multipart request metadata.
doacuPayload :: Lens' DefaultObjectAccessControlsUpdate ObjectAccessControl
doacuPayload
  = lens _doacuPayload (\ s a -> s{_doacuPayload = a})

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
doacuUserProject :: Lens' DefaultObjectAccessControlsUpdate (Maybe Text)
doacuUserProject
  = lens _doacuUserProject
      (\ s a -> s{_doacuUserProject = a})

-- | The project to be billed for this request if the target bucket is
-- requester-pays bucket.
doacuProvisionalUserProject :: Lens' DefaultObjectAccessControlsUpdate (Maybe Text)
doacuProvisionalUserProject
  = lens _doacuProvisionalUserProject
      (\ s a -> s{_doacuProvisionalUserProject = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
doacuEntity :: Lens' DefaultObjectAccessControlsUpdate Text
doacuEntity
  = lens _doacuEntity (\ s a -> s{_doacuEntity = a})

instance GoogleRequest
           DefaultObjectAccessControlsUpdate
         where
        type Rs DefaultObjectAccessControlsUpdate =
             ObjectAccessControl
        type Scopes DefaultObjectAccessControlsUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control"]
        requestClient DefaultObjectAccessControlsUpdate'{..}
          = go _doacuBucket _doacuEntity _doacuUserProject
              _doacuProvisionalUserProject
              (Just AltJSON)
              _doacuPayload
              storageService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy DefaultObjectAccessControlsUpdateResource)
                      mempty
