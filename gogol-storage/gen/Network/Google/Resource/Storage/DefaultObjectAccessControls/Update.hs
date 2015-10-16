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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a default object ACL entry on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @StorageDefaultObjectAccessControlsUpdate@.
module Network.Google.Resource.Storage.DefaultObjectAccessControls.Update
    (
    -- * REST Resource
      DefaultObjectAccessControlsUpdateResource

    -- * Creating a Request
    , defaultObjectAccessControlsUpdate'
    , DefaultObjectAccessControlsUpdate'

    -- * Request Lenses
    , doacuBucket
    , doacuPayload
    , doacuEntity
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageDefaultObjectAccessControlsUpdate@ method which the
-- 'DefaultObjectAccessControlsUpdate'' request conforms to.
type DefaultObjectAccessControlsUpdateResource =
     "b" :>
       Capture "bucket" Text :>
         "defaultObjectAcl" :>
           Capture "entity" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] ObjectAccessControl :>
                 Put '[JSON] ObjectAccessControl

-- | Updates a default object ACL entry on the specified bucket.
--
-- /See:/ 'defaultObjectAccessControlsUpdate'' smart constructor.
data DefaultObjectAccessControlsUpdate' = DefaultObjectAccessControlsUpdate'
    { _doacuBucket  :: !Text
    , _doacuPayload :: !ObjectAccessControl
    , _doacuEntity  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DefaultObjectAccessControlsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doacuBucket'
--
-- * 'doacuPayload'
--
-- * 'doacuEntity'
defaultObjectAccessControlsUpdate'
    :: Text -- ^ 'bucket'
    -> ObjectAccessControl -- ^ 'payload'
    -> Text -- ^ 'entity'
    -> DefaultObjectAccessControlsUpdate'
defaultObjectAccessControlsUpdate' pDoacuBucket_ pDoacuPayload_ pDoacuEntity_ =
    DefaultObjectAccessControlsUpdate'
    { _doacuBucket = pDoacuBucket_
    , _doacuPayload = pDoacuPayload_
    , _doacuEntity = pDoacuEntity_
    }

-- | Name of a bucket.
doacuBucket :: Lens' DefaultObjectAccessControlsUpdate' Text
doacuBucket
  = lens _doacuBucket (\ s a -> s{_doacuBucket = a})

-- | Multipart request metadata.
doacuPayload :: Lens' DefaultObjectAccessControlsUpdate' ObjectAccessControl
doacuPayload
  = lens _doacuPayload (\ s a -> s{_doacuPayload = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
doacuEntity :: Lens' DefaultObjectAccessControlsUpdate' Text
doacuEntity
  = lens _doacuEntity (\ s a -> s{_doacuEntity = a})

instance GoogleRequest
         DefaultObjectAccessControlsUpdate' where
        type Rs DefaultObjectAccessControlsUpdate' =
             ObjectAccessControl
        requestClient DefaultObjectAccessControlsUpdate'{..}
          = go _doacuBucket _doacuEntity (Just AltJSON)
              _doacuPayload
              storageService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy DefaultObjectAccessControlsUpdateResource)
                      mempty
