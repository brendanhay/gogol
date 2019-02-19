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
-- Module      : Network.Google.Resource.Storage.Objects.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an IAM policy for the specified object.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.setIamPolicy@.
module Network.Google.Resource.Storage.Objects.SetIAMPolicy
    (
    -- * REST Resource
      ObjectsSetIAMPolicyResource

    -- * Creating a Request
    , objectsSetIAMPolicy
    , ObjectsSetIAMPolicy

    -- * Request Lenses
    , osipBucket
    , osipPayload
    , osipUserProject
    , osipObject
    , osipGeneration
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @storage.objects.setIamPolicy@ method which the
-- 'ObjectsSetIAMPolicy' request conforms to.
type ObjectsSetIAMPolicyResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "o" :>
               Capture "object" Text :>
                 "iam" :>
                   QueryParam "userProject" Text :>
                     QueryParam "generation" (Textual Int64) :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Policy :> Put '[JSON] Policy

-- | Updates an IAM policy for the specified object.
--
-- /See:/ 'objectsSetIAMPolicy' smart constructor.
data ObjectsSetIAMPolicy =
  ObjectsSetIAMPolicy'
    { _osipBucket      :: !Text
    , _osipPayload     :: !Policy
    , _osipUserProject :: !(Maybe Text)
    , _osipObject      :: !Text
    , _osipGeneration  :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ObjectsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osipBucket'
--
-- * 'osipPayload'
--
-- * 'osipUserProject'
--
-- * 'osipObject'
--
-- * 'osipGeneration'
objectsSetIAMPolicy
    :: Text -- ^ 'osipBucket'
    -> Policy -- ^ 'osipPayload'
    -> Text -- ^ 'osipObject'
    -> ObjectsSetIAMPolicy
objectsSetIAMPolicy pOsipBucket_ pOsipPayload_ pOsipObject_ =
  ObjectsSetIAMPolicy'
    { _osipBucket = pOsipBucket_
    , _osipPayload = pOsipPayload_
    , _osipUserProject = Nothing
    , _osipObject = pOsipObject_
    , _osipGeneration = Nothing
    }

-- | Name of the bucket in which the object resides.
osipBucket :: Lens' ObjectsSetIAMPolicy Text
osipBucket
  = lens _osipBucket (\ s a -> s{_osipBucket = a})

-- | Multipart request metadata.
osipPayload :: Lens' ObjectsSetIAMPolicy Policy
osipPayload
  = lens _osipPayload (\ s a -> s{_osipPayload = a})

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
osipUserProject :: Lens' ObjectsSetIAMPolicy (Maybe Text)
osipUserProject
  = lens _osipUserProject
      (\ s a -> s{_osipUserProject = a})

-- | Name of the object. For information about how to URL encode object names
-- to be path safe, see Encoding URI Path Parts.
osipObject :: Lens' ObjectsSetIAMPolicy Text
osipObject
  = lens _osipObject (\ s a -> s{_osipObject = a})

-- | If present, selects a specific revision of this object (as opposed to
-- the latest version, the default).
osipGeneration :: Lens' ObjectsSetIAMPolicy (Maybe Int64)
osipGeneration
  = lens _osipGeneration
      (\ s a -> s{_osipGeneration = a})
      . mapping _Coerce

instance GoogleRequest ObjectsSetIAMPolicy where
        type Rs ObjectsSetIAMPolicy = Policy
        type Scopes ObjectsSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient ObjectsSetIAMPolicy'{..}
          = go _osipBucket _osipObject _osipUserProject
              _osipGeneration
              (Just AltJSON)
              _osipPayload
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy ObjectsSetIAMPolicyResource)
                      mempty
