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
-- Module      : Network.Google.Resource.Storage.DefaultObjectAccessControls.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a default object ACL entry on the specified bucket. This method
-- supports patch semantics.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.defaultObjectAccessControls.patch@.
module Network.Google.Resource.Storage.DefaultObjectAccessControls.Patch
    (
    -- * REST Resource
      DefaultObjectAccessControlsPatchResource

    -- * Creating a Request
    , defaultObjectAccessControlsPatch
    , DefaultObjectAccessControlsPatch

    -- * Request Lenses
    , doacpBucket
    , doacpPayload
    , doacpEntity
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @storage.defaultObjectAccessControls.patch@ method which the
-- 'DefaultObjectAccessControlsPatch' request conforms to.
type DefaultObjectAccessControlsPatchResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "defaultObjectAcl" :>
               Capture "entity" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] ObjectAccessControl :>
                     Patch '[JSON] ObjectAccessControl

-- | Updates a default object ACL entry on the specified bucket. This method
-- supports patch semantics.
--
-- /See:/ 'defaultObjectAccessControlsPatch' smart constructor.
data DefaultObjectAccessControlsPatch = DefaultObjectAccessControlsPatch
    { _doacpBucket  :: !Text
    , _doacpPayload :: !ObjectAccessControl
    , _doacpEntity  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DefaultObjectAccessControlsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doacpBucket'
--
-- * 'doacpPayload'
--
-- * 'doacpEntity'
defaultObjectAccessControlsPatch
    :: Text -- ^ 'doacpBucket'
    -> ObjectAccessControl -- ^ 'doacpPayload'
    -> Text -- ^ 'doacpEntity'
    -> DefaultObjectAccessControlsPatch
defaultObjectAccessControlsPatch pDoacpBucket_ pDoacpPayload_ pDoacpEntity_ =
    DefaultObjectAccessControlsPatch
    { _doacpBucket = pDoacpBucket_
    , _doacpPayload = pDoacpPayload_
    , _doacpEntity = pDoacpEntity_
    }

-- | Name of a bucket.
doacpBucket :: Lens' DefaultObjectAccessControlsPatch Text
doacpBucket
  = lens _doacpBucket (\ s a -> s{_doacpBucket = a})

-- | Multipart request metadata.
doacpPayload :: Lens' DefaultObjectAccessControlsPatch ObjectAccessControl
doacpPayload
  = lens _doacpPayload (\ s a -> s{_doacpPayload = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
doacpEntity :: Lens' DefaultObjectAccessControlsPatch Text
doacpEntity
  = lens _doacpEntity (\ s a -> s{_doacpEntity = a})

instance GoogleRequest
         DefaultObjectAccessControlsPatch where
        type Rs DefaultObjectAccessControlsPatch =
             ObjectAccessControl
        requestClient DefaultObjectAccessControlsPatch{..}
          = go _doacpBucket _doacpEntity (Just AltJSON)
              _doacpPayload
              storageService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy DefaultObjectAccessControlsPatchResource)
                      mempty
