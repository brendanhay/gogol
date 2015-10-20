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
-- Module      : Network.Google.Resource.Storage.Objects.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an object\'s metadata.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.update@.
module Network.Google.Resource.Storage.Objects.Update
    (
    -- * REST Resource
      ObjectsUpdateResource

    -- * Creating a Request
    , objectsUpdate
    , ObjectsUpdate

    -- * Request Lenses
    , ouIfMetagenerationMatch
    , ouIfGenerationNotMatch
    , ouIfGenerationMatch
    , ouPredefinedACL
    , ouBucket
    , ouPayload
    , ouIfMetagenerationNotMatch
    , ouObject
    , ouProjection
    , ouGeneration
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @storage.objects.update@ method which the
-- 'ObjectsUpdate' request conforms to.
type ObjectsUpdateResource =
     "b" :>
       Capture "bucket" Text :>
         "o" :>
           Capture "object" Text :>
             QueryParam "ifMetagenerationMatch" Int64 :>
               QueryParam "ifGenerationNotMatch" Int64 :>
                 QueryParam "ifGenerationMatch" Int64 :>
                   QueryParam "predefinedAcl" ObjectsUpdatePredefinedACL
                     :>
                     QueryParam "ifMetagenerationNotMatch" Int64 :>
                       QueryParam "projection" ObjectsUpdateProjection :>
                         QueryParam "generation" Int64 :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Object :> Put '[JSON] Object
       :<|>
       "b" :>
         Capture "bucket" Text :>
           "o" :>
             Capture "object" Text :>
               QueryParam "ifMetagenerationMatch" Int64 :>
                 QueryParam "ifGenerationNotMatch" Int64 :>
                   QueryParam "ifGenerationMatch" Int64 :>
                     QueryParam "predefinedAcl" ObjectsUpdatePredefinedACL
                       :>
                       QueryParam "ifMetagenerationNotMatch" Int64 :>
                         QueryParam "projection" ObjectsUpdateProjection :>
                           QueryParam "generation" Int64 :>
                             QueryParam "alt" AltMedia :>
                               ReqBody '[JSON] Object :>
                                 Put '[OctetStream] Stream

-- | Updates an object\'s metadata.
--
-- /See:/ 'objectsUpdate' smart constructor.
data ObjectsUpdate = ObjectsUpdate
    { _ouIfMetagenerationMatch    :: !(Maybe Int64)
    , _ouIfGenerationNotMatch     :: !(Maybe Int64)
    , _ouIfGenerationMatch        :: !(Maybe Int64)
    , _ouPredefinedACL            :: !(Maybe ObjectsUpdatePredefinedACL)
    , _ouBucket                   :: !Text
    , _ouPayload                  :: !Object
    , _ouIfMetagenerationNotMatch :: !(Maybe Int64)
    , _ouObject                   :: !Text
    , _ouProjection               :: !(Maybe ObjectsUpdateProjection)
    , _ouGeneration               :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ouIfMetagenerationMatch'
--
-- * 'ouIfGenerationNotMatch'
--
-- * 'ouIfGenerationMatch'
--
-- * 'ouPredefinedACL'
--
-- * 'ouBucket'
--
-- * 'ouPayload'
--
-- * 'ouIfMetagenerationNotMatch'
--
-- * 'ouObject'
--
-- * 'ouProjection'
--
-- * 'ouGeneration'
objectsUpdate
    :: Text -- ^ 'ouBucket'
    -> Object -- ^ 'ouPayload'
    -> Text -- ^ 'ouObject'
    -> ObjectsUpdate
objectsUpdate pOuBucket_ pOuPayload_ pOuObject_ =
    ObjectsUpdate
    { _ouIfMetagenerationMatch = Nothing
    , _ouIfGenerationNotMatch = Nothing
    , _ouIfGenerationMatch = Nothing
    , _ouPredefinedACL = Nothing
    , _ouBucket = pOuBucket_
    , _ouPayload = pOuPayload_
    , _ouIfMetagenerationNotMatch = Nothing
    , _ouObject = pOuObject_
    , _ouProjection = Nothing
    , _ouGeneration = Nothing
    }

-- | Makes the operation conditional on whether the object\'s current
-- metageneration matches the given value.
ouIfMetagenerationMatch :: Lens' ObjectsUpdate (Maybe Int64)
ouIfMetagenerationMatch
  = lens _ouIfMetagenerationMatch
      (\ s a -> s{_ouIfMetagenerationMatch = a})

-- | Makes the operation conditional on whether the object\'s current
-- generation does not match the given value.
ouIfGenerationNotMatch :: Lens' ObjectsUpdate (Maybe Int64)
ouIfGenerationNotMatch
  = lens _ouIfGenerationNotMatch
      (\ s a -> s{_ouIfGenerationNotMatch = a})

-- | Makes the operation conditional on whether the object\'s current
-- generation matches the given value.
ouIfGenerationMatch :: Lens' ObjectsUpdate (Maybe Int64)
ouIfGenerationMatch
  = lens _ouIfGenerationMatch
      (\ s a -> s{_ouIfGenerationMatch = a})

-- | Apply a predefined set of access controls to this object.
ouPredefinedACL :: Lens' ObjectsUpdate (Maybe ObjectsUpdatePredefinedACL)
ouPredefinedACL
  = lens _ouPredefinedACL
      (\ s a -> s{_ouPredefinedACL = a})

-- | Name of the bucket in which the object resides.
ouBucket :: Lens' ObjectsUpdate Text
ouBucket = lens _ouBucket (\ s a -> s{_ouBucket = a})

-- | Multipart request metadata.
ouPayload :: Lens' ObjectsUpdate Object
ouPayload
  = lens _ouPayload (\ s a -> s{_ouPayload = a})

-- | Makes the operation conditional on whether the object\'s current
-- metageneration does not match the given value.
ouIfMetagenerationNotMatch :: Lens' ObjectsUpdate (Maybe Int64)
ouIfMetagenerationNotMatch
  = lens _ouIfMetagenerationNotMatch
      (\ s a -> s{_ouIfMetagenerationNotMatch = a})

-- | Name of the object. For information about how to URL encode object names
-- to be path safe, see Encoding URI Path Parts.
ouObject :: Lens' ObjectsUpdate Text
ouObject = lens _ouObject (\ s a -> s{_ouObject = a})

-- | Set of properties to return. Defaults to full.
ouProjection :: Lens' ObjectsUpdate (Maybe ObjectsUpdateProjection)
ouProjection
  = lens _ouProjection (\ s a -> s{_ouProjection = a})

-- | If present, selects a specific revision of this object (as opposed to
-- the latest version, the default).
ouGeneration :: Lens' ObjectsUpdate (Maybe Int64)
ouGeneration
  = lens _ouGeneration (\ s a -> s{_ouGeneration = a})

instance GoogleRequest ObjectsUpdate where
        type Rs ObjectsUpdate = Object
        requestClient ObjectsUpdate{..}
          = go _ouBucket _ouObject _ouIfMetagenerationMatch
              _ouIfGenerationNotMatch
              _ouIfGenerationMatch
              _ouPredefinedACL
              _ouIfMetagenerationNotMatch
              _ouProjection
              _ouGeneration
              (Just AltJSON)
              _ouPayload
              storageService
          where go :<|> _
                  = buildClient (Proxy :: Proxy ObjectsUpdateResource)
                      mempty

instance GoogleRequest (Download ObjectsUpdate) where
        type Rs (Download ObjectsUpdate) = Stream
        requestClient (Download ObjectsUpdate{..})
          = go _ouBucket _ouObject _ouIfMetagenerationMatch
              _ouIfGenerationNotMatch
              _ouIfGenerationMatch
              _ouPredefinedACL
              _ouIfMetagenerationNotMatch
              _ouProjection
              _ouGeneration
              (Just AltMedia)
              _ouPayload
              storageService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy ObjectsUpdateResource)
                      mempty
