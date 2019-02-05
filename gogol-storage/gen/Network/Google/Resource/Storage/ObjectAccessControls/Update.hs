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
-- Module      : Network.Google.Resource.Storage.ObjectAccessControls.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an ACL entry on the specified object.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objectAccessControls.update@.
module Network.Google.Resource.Storage.ObjectAccessControls.Update
    (
    -- * REST Resource
      ObjectAccessControlsUpdateResource

    -- * Creating a Request
    , objectAccessControlsUpdate
    , ObjectAccessControlsUpdate

    -- * Request Lenses
    , oacuBucket
    , oacuPayload
    , oacuUserProject
    , oacuObject
    , oacuEntity
    , oacuGeneration
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @storage.objectAccessControls.update@ method which the
-- 'ObjectAccessControlsUpdate' request conforms to.
type ObjectAccessControlsUpdateResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "o" :>
               Capture "object" Text :>
                 "acl" :>
                   Capture "entity" Text :>
                     QueryParam "userProject" Text :>
                       QueryParam "generation" (Textual Int64) :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ObjectAccessControl :>
                             Put '[JSON] ObjectAccessControl

-- | Updates an ACL entry on the specified object.
--
-- /See:/ 'objectAccessControlsUpdate' smart constructor.
data ObjectAccessControlsUpdate = ObjectAccessControlsUpdate'
    { _oacuBucket      :: !Text
    , _oacuPayload     :: !ObjectAccessControl
    , _oacuUserProject :: !(Maybe Text)
    , _oacuObject      :: !Text
    , _oacuEntity      :: !Text
    , _oacuGeneration  :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectAccessControlsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oacuBucket'
--
-- * 'oacuPayload'
--
-- * 'oacuUserProject'
--
-- * 'oacuObject'
--
-- * 'oacuEntity'
--
-- * 'oacuGeneration'
objectAccessControlsUpdate
    :: Text -- ^ 'oacuBucket'
    -> ObjectAccessControl -- ^ 'oacuPayload'
    -> Text -- ^ 'oacuObject'
    -> Text -- ^ 'oacuEntity'
    -> ObjectAccessControlsUpdate
objectAccessControlsUpdate pOacuBucket_ pOacuPayload_ pOacuObject_ pOacuEntity_ =
    ObjectAccessControlsUpdate'
    { _oacuBucket = pOacuBucket_
    , _oacuPayload = pOacuPayload_
    , _oacuUserProject = Nothing
    , _oacuObject = pOacuObject_
    , _oacuEntity = pOacuEntity_
    , _oacuGeneration = Nothing
    }

-- | Name of a bucket.
oacuBucket :: Lens' ObjectAccessControlsUpdate Text
oacuBucket
  = lens _oacuBucket (\ s a -> s{_oacuBucket = a})

-- | Multipart request metadata.
oacuPayload :: Lens' ObjectAccessControlsUpdate ObjectAccessControl
oacuPayload
  = lens _oacuPayload (\ s a -> s{_oacuPayload = a})

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
oacuUserProject :: Lens' ObjectAccessControlsUpdate (Maybe Text)
oacuUserProject
  = lens _oacuUserProject
      (\ s a -> s{_oacuUserProject = a})

-- | Name of the object. For information about how to URL encode object names
-- to be path safe, see Encoding URI Path Parts.
oacuObject :: Lens' ObjectAccessControlsUpdate Text
oacuObject
  = lens _oacuObject (\ s a -> s{_oacuObject = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
oacuEntity :: Lens' ObjectAccessControlsUpdate Text
oacuEntity
  = lens _oacuEntity (\ s a -> s{_oacuEntity = a})

-- | If present, selects a specific revision of this object (as opposed to
-- the latest version, the default).
oacuGeneration :: Lens' ObjectAccessControlsUpdate (Maybe Int64)
oacuGeneration
  = lens _oacuGeneration
      (\ s a -> s{_oacuGeneration = a})
      . mapping _Coerce

instance GoogleRequest ObjectAccessControlsUpdate
         where
        type Rs ObjectAccessControlsUpdate =
             ObjectAccessControl
        type Scopes ObjectAccessControlsUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control"]
        requestClient ObjectAccessControlsUpdate'{..}
          = go _oacuBucket _oacuObject _oacuEntity
              _oacuUserProject
              _oacuGeneration
              (Just AltJSON)
              _oacuPayload
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy ObjectAccessControlsUpdateResource)
                      mempty
