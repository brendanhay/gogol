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
-- Copyright   : (c) 2015 Brendan Hay
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
                 QueryParam "ifMetagenerationMatch" Int64 :>
                   QueryParam "ifGenerationNotMatch" Int64 :>
                     QueryParam "ifGenerationMatch" Int64 :>
                       QueryParam "ifMetagenerationNotMatch" Int64 :>
                         QueryParam "projection" ObjectsGetProjection :>
                           QueryParam "generation" Int64 :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Object
       :<|>
       "storage" :>
         "v1" :>
           "b" :>
             Capture "bucket" Text :>
               "o" :>
                 Capture "object" Text :>
                   QueryParam "ifMetagenerationMatch" Int64 :>
                     QueryParam "ifGenerationNotMatch" Int64 :>
                       QueryParam "ifGenerationMatch" Int64 :>
                         QueryParam "ifMetagenerationNotMatch" Int64 :>
                           QueryParam "projection" ObjectsGetProjection :>
                             QueryParam "generation" Int64 :>
                               QueryParam "alt" AltMedia :>
                                 Get '[OctetStream] Stream

-- | Retrieves an object or its metadata.
--
-- /See:/ 'objectsGet' smart constructor.
data ObjectsGet = ObjectsGet
    { _ogIfMetagenerationMatch    :: !(Maybe Int64)
    , _ogIfGenerationNotMatch     :: !(Maybe Int64)
    , _ogIfGenerationMatch        :: !(Maybe Int64)
    , _ogBucket                   :: !Text
    , _ogIfMetagenerationNotMatch :: !(Maybe Int64)
    , _ogObject                   :: !Text
    , _ogProjection               :: !(Maybe ObjectsGetProjection)
    , _ogGeneration               :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    ObjectsGet
    { _ogIfMetagenerationMatch = Nothing
    , _ogIfGenerationNotMatch = Nothing
    , _ogIfGenerationMatch = Nothing
    , _ogBucket = pOgBucket_
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

-- | Makes the operation conditional on whether the object\'s generation does
-- not match the given value.
ogIfGenerationNotMatch :: Lens' ObjectsGet (Maybe Int64)
ogIfGenerationNotMatch
  = lens _ogIfGenerationNotMatch
      (\ s a -> s{_ogIfGenerationNotMatch = a})

-- | Makes the operation conditional on whether the object\'s generation
-- matches the given value.
ogIfGenerationMatch :: Lens' ObjectsGet (Maybe Int64)
ogIfGenerationMatch
  = lens _ogIfGenerationMatch
      (\ s a -> s{_ogIfGenerationMatch = a})

-- | Name of the bucket in which the object resides.
ogBucket :: Lens' ObjectsGet Text
ogBucket = lens _ogBucket (\ s a -> s{_ogBucket = a})

-- | Makes the operation conditional on whether the object\'s current
-- metageneration does not match the given value.
ogIfMetagenerationNotMatch :: Lens' ObjectsGet (Maybe Int64)
ogIfMetagenerationNotMatch
  = lens _ogIfMetagenerationNotMatch
      (\ s a -> s{_ogIfMetagenerationNotMatch = a})

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

instance GoogleRequest ObjectsGet where
        type Rs ObjectsGet = Object
        requestClient ObjectsGet{..}
          = go _ogBucket _ogObject _ogIfMetagenerationMatch
              _ogIfGenerationNotMatch
              _ogIfGenerationMatch
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
        requestClient (MediaDownload ObjectsGet{..})
          = go _ogBucket _ogObject _ogIfMetagenerationMatch
              _ogIfGenerationNotMatch
              _ogIfGenerationMatch
              _ogIfMetagenerationNotMatch
              _ogProjection
              _ogGeneration
              (Just AltMedia)
              storageService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy ObjectsGetResource)
                      mempty
