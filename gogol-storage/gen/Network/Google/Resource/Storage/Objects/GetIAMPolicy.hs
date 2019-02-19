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
-- Module      : Network.Google.Resource.Storage.Objects.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an IAM policy for the specified object.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.getIamPolicy@.
module Network.Google.Resource.Storage.Objects.GetIAMPolicy
    (
    -- * REST Resource
      ObjectsGetIAMPolicyResource

    -- * Creating a Request
    , objectsGetIAMPolicy
    , ObjectsGetIAMPolicy

    -- * Request Lenses
    , ogipBucket
    , ogipUserProject
    , ogipObject
    , ogipGeneration
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @storage.objects.getIamPolicy@ method which the
-- 'ObjectsGetIAMPolicy' request conforms to.
type ObjectsGetIAMPolicyResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "o" :>
               Capture "object" Text :>
                 "iam" :>
                   QueryParam "userProject" Text :>
                     QueryParam "generation" (Textual Int64) :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Returns an IAM policy for the specified object.
--
-- /See:/ 'objectsGetIAMPolicy' smart constructor.
data ObjectsGetIAMPolicy =
  ObjectsGetIAMPolicy'
    { _ogipBucket      :: !Text
    , _ogipUserProject :: !(Maybe Text)
    , _ogipObject      :: !Text
    , _ogipGeneration  :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ObjectsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogipBucket'
--
-- * 'ogipUserProject'
--
-- * 'ogipObject'
--
-- * 'ogipGeneration'
objectsGetIAMPolicy
    :: Text -- ^ 'ogipBucket'
    -> Text -- ^ 'ogipObject'
    -> ObjectsGetIAMPolicy
objectsGetIAMPolicy pOgipBucket_ pOgipObject_ =
  ObjectsGetIAMPolicy'
    { _ogipBucket = pOgipBucket_
    , _ogipUserProject = Nothing
    , _ogipObject = pOgipObject_
    , _ogipGeneration = Nothing
    }


-- | Name of the bucket in which the object resides.
ogipBucket :: Lens' ObjectsGetIAMPolicy Text
ogipBucket
  = lens _ogipBucket (\ s a -> s{_ogipBucket = a})

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
ogipUserProject :: Lens' ObjectsGetIAMPolicy (Maybe Text)
ogipUserProject
  = lens _ogipUserProject
      (\ s a -> s{_ogipUserProject = a})

-- | Name of the object. For information about how to URL encode object names
-- to be path safe, see Encoding URI Path Parts.
ogipObject :: Lens' ObjectsGetIAMPolicy Text
ogipObject
  = lens _ogipObject (\ s a -> s{_ogipObject = a})

-- | If present, selects a specific revision of this object (as opposed to
-- the latest version, the default).
ogipGeneration :: Lens' ObjectsGetIAMPolicy (Maybe Int64)
ogipGeneration
  = lens _ogipGeneration
      (\ s a -> s{_ogipGeneration = a})
      . mapping _Coerce

instance GoogleRequest ObjectsGetIAMPolicy where
        type Rs ObjectsGetIAMPolicy = Policy
        type Scopes ObjectsGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_only",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient ObjectsGetIAMPolicy'{..}
          = go _ogipBucket _ogipObject _ogipUserProject
              _ogipGeneration
              (Just AltJSON)
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy ObjectsGetIAMPolicyResource)
                      mempty
