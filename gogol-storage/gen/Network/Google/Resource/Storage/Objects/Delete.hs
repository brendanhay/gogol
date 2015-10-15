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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an object and its metadata. Deletions are permanent if
-- versioning is not enabled for the bucket, or if the generation parameter
-- is used.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @StorageObjectsDelete@.
module Network.Google.Resource.Storage.Objects.Delete
    (
    -- * REST Resource
      ObjectsDeleteResource

    -- * Creating a Request
    , objectsDelete'
    , ObjectsDelete'

    -- * Request Lenses
    , odIfMetagenerationMatch
    , odIfGenerationNotMatch
    , odIfGenerationMatch
    , odBucket
    , odIfMetagenerationNotMatch
    , odObject
    , odGeneration
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageObjectsDelete@ method which the
-- 'ObjectsDelete'' request conforms to.
type ObjectsDeleteResource =
     "b" :>
       Capture "bucket" Text :>
         "o" :>
           Capture "object" Text :>
             QueryParam "ifMetagenerationMatch" Int64 :>
               QueryParam "ifGenerationNotMatch" Int64 :>
                 QueryParam "ifGenerationMatch" Int64 :>
                   QueryParam "ifMetagenerationNotMatch" Int64 :>
                     QueryParam "generation" Int64 :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an object and its metadata. Deletions are permanent if
-- versioning is not enabled for the bucket, or if the generation parameter
-- is used.
--
-- /See:/ 'objectsDelete'' smart constructor.
data ObjectsDelete' = ObjectsDelete'
    { _odIfMetagenerationMatch    :: !(Maybe Int64)
    , _odIfGenerationNotMatch     :: !(Maybe Int64)
    , _odIfGenerationMatch        :: !(Maybe Int64)
    , _odBucket                   :: !Text
    , _odIfMetagenerationNotMatch :: !(Maybe Int64)
    , _odObject                   :: !Text
    , _odGeneration               :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectsDelete'' with the minimum fields required to make a request.
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
-- * 'odIfMetagenerationNotMatch'
--
-- * 'odObject'
--
-- * 'odGeneration'
objectsDelete'
    :: Text -- ^ 'bucket'
    -> Text -- ^ 'object'
    -> ObjectsDelete'
objectsDelete' pOdBucket_ pOdObject_ =
    ObjectsDelete'
    { _odIfMetagenerationMatch = Nothing
    , _odIfGenerationNotMatch = Nothing
    , _odIfGenerationMatch = Nothing
    , _odBucket = pOdBucket_
    , _odIfMetagenerationNotMatch = Nothing
    , _odObject = pOdObject_
    , _odGeneration = Nothing
    }

-- | Makes the operation conditional on whether the object\'s current
-- metageneration matches the given value.
odIfMetagenerationMatch :: Lens' ObjectsDelete' (Maybe Int64)
odIfMetagenerationMatch
  = lens _odIfMetagenerationMatch
      (\ s a -> s{_odIfMetagenerationMatch = a})

-- | Makes the operation conditional on whether the object\'s current
-- generation does not match the given value.
odIfGenerationNotMatch :: Lens' ObjectsDelete' (Maybe Int64)
odIfGenerationNotMatch
  = lens _odIfGenerationNotMatch
      (\ s a -> s{_odIfGenerationNotMatch = a})

-- | Makes the operation conditional on whether the object\'s current
-- generation matches the given value.
odIfGenerationMatch :: Lens' ObjectsDelete' (Maybe Int64)
odIfGenerationMatch
  = lens _odIfGenerationMatch
      (\ s a -> s{_odIfGenerationMatch = a})

-- | Name of the bucket in which the object resides.
odBucket :: Lens' ObjectsDelete' Text
odBucket = lens _odBucket (\ s a -> s{_odBucket = a})

-- | Makes the operation conditional on whether the object\'s current
-- metageneration does not match the given value.
odIfMetagenerationNotMatch :: Lens' ObjectsDelete' (Maybe Int64)
odIfMetagenerationNotMatch
  = lens _odIfMetagenerationNotMatch
      (\ s a -> s{_odIfMetagenerationNotMatch = a})

-- | Name of the object. For information about how to URL encode object names
-- to be path safe, see Encoding URI Path Parts.
odObject :: Lens' ObjectsDelete' Text
odObject = lens _odObject (\ s a -> s{_odObject = a})

-- | If present, permanently deletes a specific revision of this object (as
-- opposed to the latest version, the default).
odGeneration :: Lens' ObjectsDelete' (Maybe Int64)
odGeneration
  = lens _odGeneration (\ s a -> s{_odGeneration = a})

instance GoogleRequest ObjectsDelete' where
        type Rs ObjectsDelete' = ()
        requestClient ObjectsDelete'{..}
          = go _odBucket _odObject _odIfMetagenerationMatch
              _odIfGenerationNotMatch
              _odIfGenerationMatch
              _odIfMetagenerationNotMatch
              _odGeneration
              (Just AltJSON)
              storage
          where go
                  = buildClient (Proxy :: Proxy ObjectsDeleteResource)
                      mempty
