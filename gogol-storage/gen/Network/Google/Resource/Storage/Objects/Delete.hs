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
-- Module      : Network.Google.Resource.Storage.Objects.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an object and its metadata. Deletions are permanent if
-- versioning is not enabled for the bucket, or if the generation parameter
-- is used.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.delete@.
module Network.Google.Resource.Storage.Objects.Delete
    (
    -- * REST Resource
      ObjectsDeleteResource

    -- * Creating a Request
    , objectsDelete
    , ObjectsDelete

    -- * Request Lenses
    , odIfMetagenerationMatch
    , odIfGenerationNotMatch
    , odIfGenerationMatch
    , odBucket
    , odUserProject
    , odIfMetagenerationNotMatch
    , odObject
    , odGeneration
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @storage.objects.delete@ method which the
-- 'ObjectsDelete' request conforms to.
type ObjectsDeleteResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "o" :>
               Capture "object" Text :>
                 QueryParam "ifMetagenerationMatch" (Textual Int64) :>
                   QueryParam "ifGenerationNotMatch" (Textual Int64) :>
                     QueryParam "ifGenerationMatch" (Textual Int64) :>
                       QueryParam "userProject" Text :>
                         QueryParam "ifMetagenerationNotMatch" (Textual Int64)
                           :>
                           QueryParam "generation" (Textual Int64) :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an object and its metadata. Deletions are permanent if
-- versioning is not enabled for the bucket, or if the generation parameter
-- is used.
--
-- /See:/ 'objectsDelete' smart constructor.
data ObjectsDelete = ObjectsDelete'
    { _odIfMetagenerationMatch    :: !(Maybe (Textual Int64))
    , _odIfGenerationNotMatch     :: !(Maybe (Textual Int64))
    , _odIfGenerationMatch        :: !(Maybe (Textual Int64))
    , _odBucket                   :: !Text
    , _odUserProject              :: !(Maybe Text)
    , _odIfMetagenerationNotMatch :: !(Maybe (Textual Int64))
    , _odObject                   :: !Text
    , _odGeneration               :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odIfMetagenerationMatch'
--
-- * 'odIfGenerationNotMatch'
--
-- * 'odIfGenerationMatch'
--
-- * 'odBucket'
--
-- * 'odUserProject'
--
-- * 'odIfMetagenerationNotMatch'
--
-- * 'odObject'
--
-- * 'odGeneration'
objectsDelete
    :: Text -- ^ 'odBucket'
    -> Text -- ^ 'odObject'
    -> ObjectsDelete
objectsDelete pOdBucket_ pOdObject_ =
    ObjectsDelete'
    { _odIfMetagenerationMatch = Nothing
    , _odIfGenerationNotMatch = Nothing
    , _odIfGenerationMatch = Nothing
    , _odBucket = pOdBucket_
    , _odUserProject = Nothing
    , _odIfMetagenerationNotMatch = Nothing
    , _odObject = pOdObject_
    , _odGeneration = Nothing
    }

-- | Makes the operation conditional on whether the object\'s current
-- metageneration matches the given value.
odIfMetagenerationMatch :: Lens' ObjectsDelete (Maybe Int64)
odIfMetagenerationMatch
  = lens _odIfMetagenerationMatch
      (\ s a -> s{_odIfMetagenerationMatch = a})
      . mapping _Coerce

-- | Makes the operation conditional on whether the object\'s current
-- generation does not match the given value. If no live object exists, the
-- precondition fails. Setting to 0 makes the operation succeed only if
-- there is a live version of the object.
odIfGenerationNotMatch :: Lens' ObjectsDelete (Maybe Int64)
odIfGenerationNotMatch
  = lens _odIfGenerationNotMatch
      (\ s a -> s{_odIfGenerationNotMatch = a})
      . mapping _Coerce

-- | Makes the operation conditional on whether the object\'s current
-- generation matches the given value. Setting to 0 makes the operation
-- succeed only if there are no live versions of the object.
odIfGenerationMatch :: Lens' ObjectsDelete (Maybe Int64)
odIfGenerationMatch
  = lens _odIfGenerationMatch
      (\ s a -> s{_odIfGenerationMatch = a})
      . mapping _Coerce

-- | Name of the bucket in which the object resides.
odBucket :: Lens' ObjectsDelete Text
odBucket = lens _odBucket (\ s a -> s{_odBucket = a})

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
odUserProject :: Lens' ObjectsDelete (Maybe Text)
odUserProject
  = lens _odUserProject
      (\ s a -> s{_odUserProject = a})

-- | Makes the operation conditional on whether the object\'s current
-- metageneration does not match the given value.
odIfMetagenerationNotMatch :: Lens' ObjectsDelete (Maybe Int64)
odIfMetagenerationNotMatch
  = lens _odIfMetagenerationNotMatch
      (\ s a -> s{_odIfMetagenerationNotMatch = a})
      . mapping _Coerce

-- | Name of the object. For information about how to URL encode object names
-- to be path safe, see Encoding URI Path Parts.
odObject :: Lens' ObjectsDelete Text
odObject = lens _odObject (\ s a -> s{_odObject = a})

-- | If present, permanently deletes a specific revision of this object (as
-- opposed to the latest version, the default).
odGeneration :: Lens' ObjectsDelete (Maybe Int64)
odGeneration
  = lens _odGeneration (\ s a -> s{_odGeneration = a})
      . mapping _Coerce

instance GoogleRequest ObjectsDelete where
        type Rs ObjectsDelete = ()
        type Scopes ObjectsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient ObjectsDelete'{..}
          = go _odBucket _odObject _odIfMetagenerationMatch
              _odIfGenerationNotMatch
              _odIfGenerationMatch
              _odUserProject
              _odIfMetagenerationNotMatch
              _odGeneration
              (Just AltJSON)
              storageService
          where go
                  = buildClient (Proxy :: Proxy ObjectsDeleteResource)
                      mempty
