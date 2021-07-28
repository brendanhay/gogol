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
-- Module      : Network.Google.Resource.Storage.ObjectAccessControls.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes the ACL entry for the specified entity on the
-- specified object.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objectAccessControls.delete@.
module Network.Google.Resource.Storage.ObjectAccessControls.Delete
    (
    -- * REST Resource
      ObjectAccessControlsDeleteResource

    -- * Creating a Request
    , objectAccessControlsDelete
    , ObjectAccessControlsDelete

    -- * Request Lenses
    , oacdBucket
    , oacdUserProject
    , oacdObject
    , oacdProvisionalUserProject
    , oacdEntity
    , oacdGeneration
    ) where

import Network.Google.Prelude
import Network.Google.Storage.Types

-- | A resource alias for @storage.objectAccessControls.delete@ method which the
-- 'ObjectAccessControlsDelete' request conforms to.
type ObjectAccessControlsDeleteResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "o" :>
               Capture "object" Text :>
                 "acl" :>
                   Capture "entity" Text :>
                     QueryParam "userProject" Text :>
                       QueryParam "provisionalUserProject" Text :>
                         QueryParam "generation" (Textual Int64) :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Permanently deletes the ACL entry for the specified entity on the
-- specified object.
--
-- /See:/ 'objectAccessControlsDelete' smart constructor.
data ObjectAccessControlsDelete =
  ObjectAccessControlsDelete'
    { _oacdBucket :: !Text
    , _oacdUserProject :: !(Maybe Text)
    , _oacdObject :: !Text
    , _oacdProvisionalUserProject :: !(Maybe Text)
    , _oacdEntity :: !Text
    , _oacdGeneration :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ObjectAccessControlsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oacdBucket'
--
-- * 'oacdUserProject'
--
-- * 'oacdObject'
--
-- * 'oacdProvisionalUserProject'
--
-- * 'oacdEntity'
--
-- * 'oacdGeneration'
objectAccessControlsDelete
    :: Text -- ^ 'oacdBucket'
    -> Text -- ^ 'oacdObject'
    -> Text -- ^ 'oacdEntity'
    -> ObjectAccessControlsDelete
objectAccessControlsDelete pOacdBucket_ pOacdObject_ pOacdEntity_ =
  ObjectAccessControlsDelete'
    { _oacdBucket = pOacdBucket_
    , _oacdUserProject = Nothing
    , _oacdObject = pOacdObject_
    , _oacdProvisionalUserProject = Nothing
    , _oacdEntity = pOacdEntity_
    , _oacdGeneration = Nothing
    }


-- | Name of a bucket.
oacdBucket :: Lens' ObjectAccessControlsDelete Text
oacdBucket
  = lens _oacdBucket (\ s a -> s{_oacdBucket = a})

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
oacdUserProject :: Lens' ObjectAccessControlsDelete (Maybe Text)
oacdUserProject
  = lens _oacdUserProject
      (\ s a -> s{_oacdUserProject = a})

-- | Name of the object. For information about how to URL encode object names
-- to be path safe, see Encoding URI Path Parts.
oacdObject :: Lens' ObjectAccessControlsDelete Text
oacdObject
  = lens _oacdObject (\ s a -> s{_oacdObject = a})

-- | The project to be billed for this request if the target bucket is
-- requester-pays bucket.
oacdProvisionalUserProject :: Lens' ObjectAccessControlsDelete (Maybe Text)
oacdProvisionalUserProject
  = lens _oacdProvisionalUserProject
      (\ s a -> s{_oacdProvisionalUserProject = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
oacdEntity :: Lens' ObjectAccessControlsDelete Text
oacdEntity
  = lens _oacdEntity (\ s a -> s{_oacdEntity = a})

-- | If present, selects a specific revision of this object (as opposed to
-- the latest version, the default).
oacdGeneration :: Lens' ObjectAccessControlsDelete (Maybe Int64)
oacdGeneration
  = lens _oacdGeneration
      (\ s a -> s{_oacdGeneration = a})
      . mapping _Coerce

instance GoogleRequest ObjectAccessControlsDelete
         where
        type Rs ObjectAccessControlsDelete = ()
        type Scopes ObjectAccessControlsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control"]
        requestClient ObjectAccessControlsDelete'{..}
          = go _oacdBucket _oacdObject _oacdEntity
              _oacdUserProject
              _oacdProvisionalUserProject
              _oacdGeneration
              (Just AltJSON)
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy ObjectAccessControlsDeleteResource)
                      mempty
