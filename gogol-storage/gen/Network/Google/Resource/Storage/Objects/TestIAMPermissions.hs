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
-- Module      : Network.Google.Resource.Storage.Objects.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Tests a set of permissions on the given object to see which, if any, are
-- held by the caller.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.testIamPermissions@.
module Network.Google.Resource.Storage.Objects.TestIAMPermissions
    (
    -- * REST Resource
      ObjectsTestIAMPermissionsResource

    -- * Creating a Request
    , objectsTestIAMPermissions
    , ObjectsTestIAMPermissions

    -- * Request Lenses
    , otipBucket
    , otipUserProject
    , otipObject
    , otipPermissions
    , otipGeneration
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @storage.objects.testIamPermissions@ method which the
-- 'ObjectsTestIAMPermissions' request conforms to.
type ObjectsTestIAMPermissionsResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "o" :>
               Capture "object" Text :>
                 "iam" :>
                   "testPermissions" :>
                     QueryParams "permissions" Text :>
                       QueryParam "userProject" Text :>
                         QueryParam "generation" (Textual Int64) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] TestIAMPermissionsResponse

-- | Tests a set of permissions on the given object to see which, if any, are
-- held by the caller.
--
-- /See:/ 'objectsTestIAMPermissions' smart constructor.
data ObjectsTestIAMPermissions =
  ObjectsTestIAMPermissions'
    { _otipBucket      :: !Text
    , _otipUserProject :: !(Maybe Text)
    , _otipObject      :: !Text
    , _otipPermissions :: ![Text]
    , _otipGeneration  :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ObjectsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'otipBucket'
--
-- * 'otipUserProject'
--
-- * 'otipObject'
--
-- * 'otipPermissions'
--
-- * 'otipGeneration'
objectsTestIAMPermissions
    :: Text -- ^ 'otipBucket'
    -> Text -- ^ 'otipObject'
    -> [Text] -- ^ 'otipPermissions'
    -> ObjectsTestIAMPermissions
objectsTestIAMPermissions pOtipBucket_ pOtipObject_ pOtipPermissions_ =
  ObjectsTestIAMPermissions'
    { _otipBucket = pOtipBucket_
    , _otipUserProject = Nothing
    , _otipObject = pOtipObject_
    , _otipPermissions = _Coerce # pOtipPermissions_
    , _otipGeneration = Nothing
    }

-- | Name of the bucket in which the object resides.
otipBucket :: Lens' ObjectsTestIAMPermissions Text
otipBucket
  = lens _otipBucket (\ s a -> s{_otipBucket = a})

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
otipUserProject :: Lens' ObjectsTestIAMPermissions (Maybe Text)
otipUserProject
  = lens _otipUserProject
      (\ s a -> s{_otipUserProject = a})

-- | Name of the object. For information about how to URL encode object names
-- to be path safe, see Encoding URI Path Parts.
otipObject :: Lens' ObjectsTestIAMPermissions Text
otipObject
  = lens _otipObject (\ s a -> s{_otipObject = a})

-- | Permissions to test.
otipPermissions :: Lens' ObjectsTestIAMPermissions [Text]
otipPermissions
  = lens _otipPermissions
      (\ s a -> s{_otipPermissions = a})
      . _Coerce

-- | If present, selects a specific revision of this object (as opposed to
-- the latest version, the default).
otipGeneration :: Lens' ObjectsTestIAMPermissions (Maybe Int64)
otipGeneration
  = lens _otipGeneration
      (\ s a -> s{_otipGeneration = a})
      . mapping _Coerce

instance GoogleRequest ObjectsTestIAMPermissions
         where
        type Rs ObjectsTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes ObjectsTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_only",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient ObjectsTestIAMPermissions'{..}
          = go _otipBucket _otipObject _otipPermissions
              _otipUserProject
              _otipGeneration
              (Just AltJSON)
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy ObjectsTestIAMPermissionsResource)
                      mempty
