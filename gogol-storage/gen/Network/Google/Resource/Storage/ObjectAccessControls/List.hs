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
-- Module      : Network.Google.Resource.Storage.ObjectAccessControls.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves ACL entries on the specified object.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objectAccessControls.list@.
module Network.Google.Resource.Storage.ObjectAccessControls.List
    (
    -- * REST Resource
      ObjectAccessControlsListResource

    -- * Creating a Request
    , objectAccessControlsList
    , ObjectAccessControlsList

    -- * Request Lenses
    , oaclBucket
    , oaclUserProject
    , oaclObject
    , oaclProvisionalUserProject
    , oaclGeneration
    ) where

import Network.Google.Prelude
import Network.Google.Storage.Types

-- | A resource alias for @storage.objectAccessControls.list@ method which the
-- 'ObjectAccessControlsList' request conforms to.
type ObjectAccessControlsListResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "o" :>
               Capture "object" Text :>
                 "acl" :>
                   QueryParam "userProject" Text :>
                     QueryParam "provisionalUserProject" Text :>
                       QueryParam "generation" (Textual Int64) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ObjectAccessControls

-- | Retrieves ACL entries on the specified object.
--
-- /See:/ 'objectAccessControlsList' smart constructor.
data ObjectAccessControlsList =
  ObjectAccessControlsList'
    { _oaclBucket :: !Text
    , _oaclUserProject :: !(Maybe Text)
    , _oaclObject :: !Text
    , _oaclProvisionalUserProject :: !(Maybe Text)
    , _oaclGeneration :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ObjectAccessControlsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oaclBucket'
--
-- * 'oaclUserProject'
--
-- * 'oaclObject'
--
-- * 'oaclProvisionalUserProject'
--
-- * 'oaclGeneration'
objectAccessControlsList
    :: Text -- ^ 'oaclBucket'
    -> Text -- ^ 'oaclObject'
    -> ObjectAccessControlsList
objectAccessControlsList pOaclBucket_ pOaclObject_ =
  ObjectAccessControlsList'
    { _oaclBucket = pOaclBucket_
    , _oaclUserProject = Nothing
    , _oaclObject = pOaclObject_
    , _oaclProvisionalUserProject = Nothing
    , _oaclGeneration = Nothing
    }


-- | Name of a bucket.
oaclBucket :: Lens' ObjectAccessControlsList Text
oaclBucket
  = lens _oaclBucket (\ s a -> s{_oaclBucket = a})

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
oaclUserProject :: Lens' ObjectAccessControlsList (Maybe Text)
oaclUserProject
  = lens _oaclUserProject
      (\ s a -> s{_oaclUserProject = a})

-- | Name of the object. For information about how to URL encode object names
-- to be path safe, see Encoding URI Path Parts.
oaclObject :: Lens' ObjectAccessControlsList Text
oaclObject
  = lens _oaclObject (\ s a -> s{_oaclObject = a})

-- | The project to be billed for this request if the target bucket is
-- requester-pays bucket.
oaclProvisionalUserProject :: Lens' ObjectAccessControlsList (Maybe Text)
oaclProvisionalUserProject
  = lens _oaclProvisionalUserProject
      (\ s a -> s{_oaclProvisionalUserProject = a})

-- | If present, selects a specific revision of this object (as opposed to
-- the latest version, the default).
oaclGeneration :: Lens' ObjectAccessControlsList (Maybe Int64)
oaclGeneration
  = lens _oaclGeneration
      (\ s a -> s{_oaclGeneration = a})
      . mapping _Coerce

instance GoogleRequest ObjectAccessControlsList where
        type Rs ObjectAccessControlsList =
             ObjectAccessControls
        type Scopes ObjectAccessControlsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control"]
        requestClient ObjectAccessControlsList'{..}
          = go _oaclBucket _oaclObject _oaclUserProject
              _oaclProvisionalUserProject
              _oaclGeneration
              (Just AltJSON)
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy ObjectAccessControlsListResource)
                      mempty
