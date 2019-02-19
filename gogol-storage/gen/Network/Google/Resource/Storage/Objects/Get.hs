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
-- Module      : Network.Google.Resource.Storage.Objects.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an object or its metadata.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.get@.
module Network.Google.Resource.Storage.Objects.Get
    (
    -- * REST Resource
      ObjectsGetResource

    -- * Creating a Request
    , objectsGet
    , ObjectsGet

    -- * Request Lenses
    , ogIfMetagenerationMatch
    , ogIfGenerationNotMatch
    , ogIfGenerationMatch
    , ogBucket
    , ogUserProject
    , ogIfMetagenerationNotMatch
    , ogObject
    , ogProjection
    , ogGeneration
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @storage.objects.get@ method which the
-- 'ObjectsGet' request conforms to.
type ObjectsGetResource =
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
                           QueryParam "projection" ObjectsGetProjection :>
                             QueryParam "generation" (Textual Int64) :>
                               QueryParam "alt" AltJSON :> Get '[JSON] Object
       :<|>
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
                             QueryParam "projection" ObjectsGetProjection :>
                               QueryParam "generation" (Textual Int64) :>
                                 QueryParam "alt" AltMedia :>
                                   Get '[OctetStream] Stream

-- | Retrieves an object or its metadata.
--
-- /See:/ 'objectsGet' smart constructor.
data ObjectsGet =
  ObjectsGet'
    { _ogIfMetagenerationMatch    :: !(Maybe (Textual Int64))
    , _ogIfGenerationNotMatch     :: !(Maybe (Textual Int64))
    , _ogIfGenerationMatch        :: !(Maybe (Textual Int64))
    , _ogBucket                   :: !Text
    , _ogUserProject              :: !(Maybe Text)
    , _ogIfMetagenerationNotMatch :: !(Maybe (Textual Int64))
    , _ogObject                   :: !Text
    , _ogProjection               :: !(Maybe ObjectsGetProjection)
    , _ogGeneration               :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ObjectsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogIfMetagenerationMatch'
--
-- * 'ogIfGenerationNotMatch'
--
-- * 'ogIfGenerationMatch'
--
-- * 'ogBucket'
--
-- * 'ogUserProject'
--
-- * 'ogIfMetagenerationNotMatch'
--
-- * 'ogObject'
--
-- * 'ogProjection'
--
-- * 'ogGeneration'
objectsGet
    :: Text -- ^ 'ogBucket'
    -> Text -- ^ 'ogObject'
    -> ObjectsGet
objectsGet pOgBucket_ pOgObject_ =
  ObjectsGet'
    { _ogIfMetagenerationMatch = Nothing
    , _ogIfGenerationNotMatch = Nothing
    , _ogIfGenerationMatch = Nothing
    , _ogBucket = pOgBucket_
    , _ogUserProject = Nothing
    , _ogIfMetagenerationNotMatch = Nothing
    , _ogObject = pOgObject_
    , _ogProjection = Nothing
    , _ogGeneration = Nothing
    }

-- | Makes the operation conditional on whether the object\'s current
-- metageneration matches the given value.
ogIfMetagenerationMatch :: Lens' ObjectsGet (Maybe Int64)
ogIfMetagenerationMatch
  = lens _ogIfMetagenerationMatch
      (\ s a -> s{_ogIfMetagenerationMatch = a})
      . mapping _Coerce

-- | Makes the operation conditional on whether the object\'s current
-- generation does not match the given value. If no live object exists, the
-- precondition fails. Setting to 0 makes the operation succeed only if
-- there is a live version of the object.
ogIfGenerationNotMatch :: Lens' ObjectsGet (Maybe Int64)
ogIfGenerationNotMatch
  = lens _ogIfGenerationNotMatch
      (\ s a -> s{_ogIfGenerationNotMatch = a})
      . mapping _Coerce

-- | Makes the operation conditional on whether the object\'s current
-- generation matches the given value. Setting to 0 makes the operation
-- succeed only if there are no live versions of the object.
ogIfGenerationMatch :: Lens' ObjectsGet (Maybe Int64)
ogIfGenerationMatch
  = lens _ogIfGenerationMatch
      (\ s a -> s{_ogIfGenerationMatch = a})
      . mapping _Coerce

-- | Name of the bucket in which the object resides.
ogBucket :: Lens' ObjectsGet Text
ogBucket = lens _ogBucket (\ s a -> s{_ogBucket = a})

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
ogUserProject :: Lens' ObjectsGet (Maybe Text)
ogUserProject
  = lens _ogUserProject
      (\ s a -> s{_ogUserProject = a})

-- | Makes the operation conditional on whether the object\'s current
-- metageneration does not match the given value.
ogIfMetagenerationNotMatch :: Lens' ObjectsGet (Maybe Int64)
ogIfMetagenerationNotMatch
  = lens _ogIfMetagenerationNotMatch
      (\ s a -> s{_ogIfMetagenerationNotMatch = a})
      . mapping _Coerce

-- | Name of the object. For information about how to URL encode object names
-- to be path safe, see Encoding URI Path Parts.
ogObject :: Lens' ObjectsGet Text
ogObject = lens _ogObject (\ s a -> s{_ogObject = a})

-- | Set of properties to return. Defaults to noAcl.
ogProjection :: Lens' ObjectsGet (Maybe ObjectsGetProjection)
ogProjection
  = lens _ogProjection (\ s a -> s{_ogProjection = a})

-- | If present, selects a specific revision of this object (as opposed to
-- the latest version, the default).
ogGeneration :: Lens' ObjectsGet (Maybe Int64)
ogGeneration
  = lens _ogGeneration (\ s a -> s{_ogGeneration = a})
      . mapping _Coerce

instance GoogleRequest ObjectsGet where
        type Rs ObjectsGet = Object
        type Scopes ObjectsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_only",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient ObjectsGet'{..}
          = go _ogBucket _ogObject _ogIfMetagenerationMatch
              _ogIfGenerationNotMatch
              _ogIfGenerationMatch
              _ogUserProject
              _ogIfMetagenerationNotMatch
              _ogProjection
              _ogGeneration
              (Just AltJSON)
              storageService
          where go :<|> _
                  = buildClient (Proxy :: Proxy ObjectsGetResource)
                      mempty

instance GoogleRequest (MediaDownload ObjectsGet)
         where
        type Rs (MediaDownload ObjectsGet) = Stream
        type Scopes (MediaDownload ObjectsGet) =
             Scopes ObjectsGet
        requestClient (MediaDownload ObjectsGet'{..})
          = go _ogBucket _ogObject _ogIfMetagenerationMatch
              _ogIfGenerationNotMatch
              _ogIfGenerationMatch
              _ogUserProject
              _ogIfMetagenerationNotMatch
              _ogProjection
              _ogGeneration
              (Just AltMedia)
              storageService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy ObjectsGetResource)
                      mempty
