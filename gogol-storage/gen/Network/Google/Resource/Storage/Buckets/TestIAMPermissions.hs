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
-- Module      : Network.Google.Resource.Storage.Buckets.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Tests a set of permissions on the given bucket to see which, if any, are
-- held by the caller.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.testIamPermissions@.
module Network.Google.Resource.Storage.Buckets.TestIAMPermissions
    (
    -- * REST Resource
      BucketsTestIAMPermissionsResource

    -- * Creating a Request
    , bucketsTestIAMPermissions
    , BucketsTestIAMPermissions

    -- * Request Lenses
    , btipBucket
    , btipUserProject
    , btipPermissions
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @storage.buckets.testIamPermissions@ method which the
-- 'BucketsTestIAMPermissions' request conforms to.
type BucketsTestIAMPermissionsResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "iam" :>
               "testPermissions" :>
                 QueryParams "permissions" Text :>
                   QueryParam "userProject" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] TestIAMPermissionsResponse

-- | Tests a set of permissions on the given bucket to see which, if any, are
-- held by the caller.
--
-- /See:/ 'bucketsTestIAMPermissions' smart constructor.
data BucketsTestIAMPermissions =
  BucketsTestIAMPermissions'
    { _btipBucket      :: !Text
    , _btipUserProject :: !(Maybe Text)
    , _btipPermissions :: ![Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BucketsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'btipBucket'
--
-- * 'btipUserProject'
--
-- * 'btipPermissions'
bucketsTestIAMPermissions
    :: Text -- ^ 'btipBucket'
    -> [Text] -- ^ 'btipPermissions'
    -> BucketsTestIAMPermissions
bucketsTestIAMPermissions pBtipBucket_ pBtipPermissions_ =
  BucketsTestIAMPermissions'
    { _btipBucket = pBtipBucket_
    , _btipUserProject = Nothing
    , _btipPermissions = _Coerce # pBtipPermissions_
    }


-- | Name of a bucket.
btipBucket :: Lens' BucketsTestIAMPermissions Text
btipBucket
  = lens _btipBucket (\ s a -> s{_btipBucket = a})

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
btipUserProject :: Lens' BucketsTestIAMPermissions (Maybe Text)
btipUserProject
  = lens _btipUserProject
      (\ s a -> s{_btipUserProject = a})

-- | Permissions to test.
btipPermissions :: Lens' BucketsTestIAMPermissions [Text]
btipPermissions
  = lens _btipPermissions
      (\ s a -> s{_btipPermissions = a})
      . _Coerce

instance GoogleRequest BucketsTestIAMPermissions
         where
        type Rs BucketsTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes BucketsTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_only",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient BucketsTestIAMPermissions'{..}
          = go _btipBucket _btipPermissions _btipUserProject
              (Just AltJSON)
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy BucketsTestIAMPermissionsResource)
                      mempty
