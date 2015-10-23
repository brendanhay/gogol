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
-- Module      : Network.Google.Resource.Storage.ObjectAccessControls.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an ACL entry on the specified object. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objectAccessControls.patch@.
module Network.Google.Resource.Storage.ObjectAccessControls.Patch
    (
    -- * REST Resource
      ObjectAccessControlsPatchResource

    -- * Creating a Request
    , objectAccessControlsPatch
    , ObjectAccessControlsPatch

    -- * Request Lenses
    , oacpBucket
    , oacpPayload
    , oacpObject
    , oacpEntity
    , oacpGeneration
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @storage.objectAccessControls.patch@ method which the
-- 'ObjectAccessControlsPatch' request conforms to.
type ObjectAccessControlsPatchResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "o" :>
               Capture "object" Text :>
                 "acl" :>
                   Capture "entity" Text :>
                     QueryParam "generation" Int64 :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ObjectAccessControl :>
                           Patch '[JSON] ObjectAccessControl

-- | Updates an ACL entry on the specified object. This method supports patch
-- semantics.
--
-- /See:/ 'objectAccessControlsPatch' smart constructor.
data ObjectAccessControlsPatch = ObjectAccessControlsPatch
    { _oacpBucket     :: !Text
    , _oacpPayload    :: !ObjectAccessControl
    , _oacpObject     :: !Text
    , _oacpEntity     :: !Text
    , _oacpGeneration :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectAccessControlsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oacpBucket'
--
-- * 'oacpPayload'
--
-- * 'oacpObject'
--
-- * 'oacpEntity'
--
-- * 'oacpGeneration'
objectAccessControlsPatch
    :: Text -- ^ 'oacpBucket'
    -> ObjectAccessControl -- ^ 'oacpPayload'
    -> Text -- ^ 'oacpObject'
    -> Text -- ^ 'oacpEntity'
    -> ObjectAccessControlsPatch
objectAccessControlsPatch pOacpBucket_ pOacpPayload_ pOacpObject_ pOacpEntity_ =
    ObjectAccessControlsPatch
    { _oacpBucket = pOacpBucket_
    , _oacpPayload = pOacpPayload_
    , _oacpObject = pOacpObject_
    , _oacpEntity = pOacpEntity_
    , _oacpGeneration = Nothing
    }

-- | Name of a bucket.
oacpBucket :: Lens' ObjectAccessControlsPatch Text
oacpBucket
  = lens _oacpBucket (\ s a -> s{_oacpBucket = a})

-- | Multipart request metadata.
oacpPayload :: Lens' ObjectAccessControlsPatch ObjectAccessControl
oacpPayload
  = lens _oacpPayload (\ s a -> s{_oacpPayload = a})

-- | Name of the object. For information about how to URL encode object names
-- to be path safe, see Encoding URI Path Parts.
oacpObject :: Lens' ObjectAccessControlsPatch Text
oacpObject
  = lens _oacpObject (\ s a -> s{_oacpObject = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
oacpEntity :: Lens' ObjectAccessControlsPatch Text
oacpEntity
  = lens _oacpEntity (\ s a -> s{_oacpEntity = a})

-- | If present, selects a specific revision of this object (as opposed to
-- the latest version, the default).
oacpGeneration :: Lens' ObjectAccessControlsPatch (Maybe Int64)
oacpGeneration
  = lens _oacpGeneration
      (\ s a -> s{_oacpGeneration = a})

instance GoogleRequest ObjectAccessControlsPatch
         where
        type Rs ObjectAccessControlsPatch =
             ObjectAccessControl
        requestClient ObjectAccessControlsPatch{..}
          = go _oacpBucket _oacpObject _oacpEntity
              _oacpGeneration
              (Just AltJSON)
              _oacpPayload
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy ObjectAccessControlsPatchResource)
                      mempty
