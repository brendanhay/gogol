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
-- Module      : Network.Google.Resource.Storage.ObjectAccessControls.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the ACL entry for the specified entity on the specified object.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objectAccessControls.get@.
module Network.Google.Resource.Storage.ObjectAccessControls.Get
    (
    -- * REST Resource
      ObjectAccessControlsGetResource

    -- * Creating a Request
    , objectAccessControlsGet
    , ObjectAccessControlsGet

    -- * Request Lenses
    , oacgBucket
    , oacgUserProject
    , oacgObject
    , oacgProvisionalUserProject
    , oacgEntity
    , oacgGeneration
    ) where

import Network.Google.Prelude
import Network.Google.Storage.Types

-- | A resource alias for @storage.objectAccessControls.get@ method which the
-- 'ObjectAccessControlsGet' request conforms to.
type ObjectAccessControlsGetResource =
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
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ObjectAccessControl

-- | Returns the ACL entry for the specified entity on the specified object.
--
-- /See:/ 'objectAccessControlsGet' smart constructor.
data ObjectAccessControlsGet =
  ObjectAccessControlsGet'
    { _oacgBucket :: !Text
    , _oacgUserProject :: !(Maybe Text)
    , _oacgObject :: !Text
    , _oacgProvisionalUserProject :: !(Maybe Text)
    , _oacgEntity :: !Text
    , _oacgGeneration :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ObjectAccessControlsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oacgBucket'
--
-- * 'oacgUserProject'
--
-- * 'oacgObject'
--
-- * 'oacgProvisionalUserProject'
--
-- * 'oacgEntity'
--
-- * 'oacgGeneration'
objectAccessControlsGet
    :: Text -- ^ 'oacgBucket'
    -> Text -- ^ 'oacgObject'
    -> Text -- ^ 'oacgEntity'
    -> ObjectAccessControlsGet
objectAccessControlsGet pOacgBucket_ pOacgObject_ pOacgEntity_ =
  ObjectAccessControlsGet'
    { _oacgBucket = pOacgBucket_
    , _oacgUserProject = Nothing
    , _oacgObject = pOacgObject_
    , _oacgProvisionalUserProject = Nothing
    , _oacgEntity = pOacgEntity_
    , _oacgGeneration = Nothing
    }


-- | Name of a bucket.
oacgBucket :: Lens' ObjectAccessControlsGet Text
oacgBucket
  = lens _oacgBucket (\ s a -> s{_oacgBucket = a})

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
oacgUserProject :: Lens' ObjectAccessControlsGet (Maybe Text)
oacgUserProject
  = lens _oacgUserProject
      (\ s a -> s{_oacgUserProject = a})

-- | Name of the object. For information about how to URL encode object names
-- to be path safe, see Encoding URI Path Parts.
oacgObject :: Lens' ObjectAccessControlsGet Text
oacgObject
  = lens _oacgObject (\ s a -> s{_oacgObject = a})

-- | The project to be billed for this request if the target bucket is
-- requester-pays bucket.
oacgProvisionalUserProject :: Lens' ObjectAccessControlsGet (Maybe Text)
oacgProvisionalUserProject
  = lens _oacgProvisionalUserProject
      (\ s a -> s{_oacgProvisionalUserProject = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
oacgEntity :: Lens' ObjectAccessControlsGet Text
oacgEntity
  = lens _oacgEntity (\ s a -> s{_oacgEntity = a})

-- | If present, selects a specific revision of this object (as opposed to
-- the latest version, the default).
oacgGeneration :: Lens' ObjectAccessControlsGet (Maybe Int64)
oacgGeneration
  = lens _oacgGeneration
      (\ s a -> s{_oacgGeneration = a})
      . mapping _Coerce

instance GoogleRequest ObjectAccessControlsGet where
        type Rs ObjectAccessControlsGet = ObjectAccessControl
        type Scopes ObjectAccessControlsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control"]
        requestClient ObjectAccessControlsGet'{..}
          = go _oacgBucket _oacgObject _oacgEntity
              _oacgUserProject
              _oacgProvisionalUserProject
              _oacgGeneration
              (Just AltJSON)
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy ObjectAccessControlsGetResource)
                      mempty
