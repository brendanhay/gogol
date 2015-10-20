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
-- Module      : Network.Google.Resource.Storage.Objects.Copy
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Copies a source object to a destination object. Optionally overrides
-- metadata.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.copy@.
module Network.Google.Resource.Storage.Objects.Copy
    (
    -- * REST Resource
      ObjectsCopyResource

    -- * Creating a Request
    , objectsCopy
    , ObjectsCopy

    -- * Request Lenses
    , ocDestinationPredefinedACL
    , ocIfSourceGenerationMatch
    , ocIfMetagenerationMatch
    , ocIfGenerationNotMatch
    , ocIfSourceMetagenerationNotMatch
    , ocIfSourceMetagenerationMatch
    , ocIfGenerationMatch
    , ocSourceObject
    , ocSourceBucket
    , ocPayload
    , ocDestinationBucket
    , ocIfMetagenerationNotMatch
    , ocIfSourceGenerationNotMatch
    , ocProjection
    , ocSourceGeneration
    , ocDestinationObject
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @storage.objects.copy@ method which the
-- 'ObjectsCopy' request conforms to.
type ObjectsCopyResource =
     "b" :>
       Capture "sourceBucket" Text :>
         "o" :>
           Capture "sourceObject" Text :>
             "copyTo" :>
               "b" :>
                 Capture "destinationBucket" Text :>
                   "o" :>
                     Capture "destinationObject" Text :>
                       QueryParam "destinationPredefinedAcl"
                         ObjectsCopyDestinationPredefinedACL
                         :>
                         QueryParam "ifSourceGenerationMatch" Int64 :>
                           QueryParam "ifMetagenerationMatch" Int64 :>
                             QueryParam "ifGenerationNotMatch" Int64 :>
                               QueryParam "ifSourceMetagenerationNotMatch" Int64
                                 :>
                                 QueryParam "ifSourceMetagenerationMatch" Int64
                                   :>
                                   QueryParam "ifGenerationMatch" Int64 :>
                                     QueryParam "ifMetagenerationNotMatch" Int64
                                       :>
                                       QueryParam "ifSourceGenerationNotMatch"
                                         Int64
                                         :>
                                         QueryParam "projection"
                                           ObjectsCopyProjection
                                           :>
                                           QueryParam "sourceGeneration" Int64
                                             :>
                                             QueryParam "alt" AltJSON :>
                                               ReqBody '[JSON] Object :>
                                                 Post '[JSON] Object
       :<|>
       "b" :>
         Capture "sourceBucket" Text :>
           "o" :>
             Capture "sourceObject" Text :>
               "copyTo" :>
                 "b" :>
                   Capture "destinationBucket" Text :>
                     "o" :>
                       Capture "destinationObject" Text :>
                         QueryParam "destinationPredefinedAcl"
                           ObjectsCopyDestinationPredefinedACL
                           :>
                           QueryParam "ifSourceGenerationMatch" Int64 :>
                             QueryParam "ifMetagenerationMatch" Int64 :>
                               QueryParam "ifGenerationNotMatch" Int64 :>
                                 QueryParam "ifSourceMetagenerationNotMatch"
                                   Int64
                                   :>
                                   QueryParam "ifSourceMetagenerationMatch"
                                     Int64
                                     :>
                                     QueryParam "ifGenerationMatch" Int64 :>
                                       QueryParam "ifMetagenerationNotMatch"
                                         Int64
                                         :>
                                         QueryParam "ifSourceGenerationNotMatch"
                                           Int64
                                           :>
                                           QueryParam "projection"
                                             ObjectsCopyProjection
                                             :>
                                             QueryParam "sourceGeneration" Int64
                                               :>
                                               QueryParam "alt" AltMedia :>
                                                 ReqBody '[JSON] Object :>
                                                   Post '[OctetStream] Stream

-- | Copies a source object to a destination object. Optionally overrides
-- metadata.
--
-- /See:/ 'objectsCopy' smart constructor.
data ObjectsCopy = ObjectsCopy
    { _ocDestinationPredefinedACL       :: !(Maybe ObjectsCopyDestinationPredefinedACL)
    , _ocIfSourceGenerationMatch        :: !(Maybe Int64)
    , _ocIfMetagenerationMatch          :: !(Maybe Int64)
    , _ocIfGenerationNotMatch           :: !(Maybe Int64)
    , _ocIfSourceMetagenerationNotMatch :: !(Maybe Int64)
    , _ocIfSourceMetagenerationMatch    :: !(Maybe Int64)
    , _ocIfGenerationMatch              :: !(Maybe Int64)
    , _ocSourceObject                   :: !Text
    , _ocSourceBucket                   :: !Text
    , _ocPayload                        :: !Object
    , _ocDestinationBucket              :: !Text
    , _ocIfMetagenerationNotMatch       :: !(Maybe Int64)
    , _ocIfSourceGenerationNotMatch     :: !(Maybe Int64)
    , _ocProjection                     :: !(Maybe ObjectsCopyProjection)
    , _ocSourceGeneration               :: !(Maybe Int64)
    , _ocDestinationObject              :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectsCopy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocDestinationPredefinedACL'
--
-- * 'ocIfSourceGenerationMatch'
--
-- * 'ocIfMetagenerationMatch'
--
-- * 'ocIfGenerationNotMatch'
--
-- * 'ocIfSourceMetagenerationNotMatch'
--
-- * 'ocIfSourceMetagenerationMatch'
--
-- * 'ocIfGenerationMatch'
--
-- * 'ocSourceObject'
--
-- * 'ocSourceBucket'
--
-- * 'ocPayload'
--
-- * 'ocDestinationBucket'
--
-- * 'ocIfMetagenerationNotMatch'
--
-- * 'ocIfSourceGenerationNotMatch'
--
-- * 'ocProjection'
--
-- * 'ocSourceGeneration'
--
-- * 'ocDestinationObject'
objectsCopy
    :: Text -- ^ 'ocSourceObject'
    -> Text -- ^ 'ocSourceBucket'
    -> Object -- ^ 'ocPayload'
    -> Text -- ^ 'ocDestinationBucket'
    -> Text -- ^ 'ocDestinationObject'
    -> ObjectsCopy
objectsCopy pOcSourceObject_ pOcSourceBucket_ pOcPayload_ pOcDestinationBucket_ pOcDestinationObject_ =
    ObjectsCopy
    { _ocDestinationPredefinedACL = Nothing
    , _ocIfSourceGenerationMatch = Nothing
    , _ocIfMetagenerationMatch = Nothing
    , _ocIfGenerationNotMatch = Nothing
    , _ocIfSourceMetagenerationNotMatch = Nothing
    , _ocIfSourceMetagenerationMatch = Nothing
    , _ocIfGenerationMatch = Nothing
    , _ocSourceObject = pOcSourceObject_
    , _ocSourceBucket = pOcSourceBucket_
    , _ocPayload = pOcPayload_
    , _ocDestinationBucket = pOcDestinationBucket_
    , _ocIfMetagenerationNotMatch = Nothing
    , _ocIfSourceGenerationNotMatch = Nothing
    , _ocProjection = Nothing
    , _ocSourceGeneration = Nothing
    , _ocDestinationObject = pOcDestinationObject_
    }

-- | Apply a predefined set of access controls to the destination object.
ocDestinationPredefinedACL :: Lens' ObjectsCopy (Maybe ObjectsCopyDestinationPredefinedACL)
ocDestinationPredefinedACL
  = lens _ocDestinationPredefinedACL
      (\ s a -> s{_ocDestinationPredefinedACL = a})

-- | Makes the operation conditional on whether the source object\'s
-- generation matches the given value.
ocIfSourceGenerationMatch :: Lens' ObjectsCopy (Maybe Int64)
ocIfSourceGenerationMatch
  = lens _ocIfSourceGenerationMatch
      (\ s a -> s{_ocIfSourceGenerationMatch = a})

-- | Makes the operation conditional on whether the destination object\'s
-- current metageneration matches the given value.
ocIfMetagenerationMatch :: Lens' ObjectsCopy (Maybe Int64)
ocIfMetagenerationMatch
  = lens _ocIfMetagenerationMatch
      (\ s a -> s{_ocIfMetagenerationMatch = a})

-- | Makes the operation conditional on whether the destination object\'s
-- current generation does not match the given value.
ocIfGenerationNotMatch :: Lens' ObjectsCopy (Maybe Int64)
ocIfGenerationNotMatch
  = lens _ocIfGenerationNotMatch
      (\ s a -> s{_ocIfGenerationNotMatch = a})

-- | Makes the operation conditional on whether the source object\'s current
-- metageneration does not match the given value.
ocIfSourceMetagenerationNotMatch :: Lens' ObjectsCopy (Maybe Int64)
ocIfSourceMetagenerationNotMatch
  = lens _ocIfSourceMetagenerationNotMatch
      (\ s a -> s{_ocIfSourceMetagenerationNotMatch = a})

-- | Makes the operation conditional on whether the source object\'s current
-- metageneration matches the given value.
ocIfSourceMetagenerationMatch :: Lens' ObjectsCopy (Maybe Int64)
ocIfSourceMetagenerationMatch
  = lens _ocIfSourceMetagenerationMatch
      (\ s a -> s{_ocIfSourceMetagenerationMatch = a})

-- | Makes the operation conditional on whether the destination object\'s
-- current generation matches the given value.
ocIfGenerationMatch :: Lens' ObjectsCopy (Maybe Int64)
ocIfGenerationMatch
  = lens _ocIfGenerationMatch
      (\ s a -> s{_ocIfGenerationMatch = a})

-- | Name of the source object. For information about how to URL encode
-- object names to be path safe, see Encoding URI Path Parts.
ocSourceObject :: Lens' ObjectsCopy Text
ocSourceObject
  = lens _ocSourceObject
      (\ s a -> s{_ocSourceObject = a})

-- | Name of the bucket in which to find the source object.
ocSourceBucket :: Lens' ObjectsCopy Text
ocSourceBucket
  = lens _ocSourceBucket
      (\ s a -> s{_ocSourceBucket = a})

-- | Multipart request metadata.
ocPayload :: Lens' ObjectsCopy Object
ocPayload
  = lens _ocPayload (\ s a -> s{_ocPayload = a})

-- | Name of the bucket in which to store the new object. Overrides the
-- provided object metadata\'s bucket value, if any.For information about
-- how to URL encode object names to be path safe, see Encoding URI Path
-- Parts.
ocDestinationBucket :: Lens' ObjectsCopy Text
ocDestinationBucket
  = lens _ocDestinationBucket
      (\ s a -> s{_ocDestinationBucket = a})

-- | Makes the operation conditional on whether the destination object\'s
-- current metageneration does not match the given value.
ocIfMetagenerationNotMatch :: Lens' ObjectsCopy (Maybe Int64)
ocIfMetagenerationNotMatch
  = lens _ocIfMetagenerationNotMatch
      (\ s a -> s{_ocIfMetagenerationNotMatch = a})

-- | Makes the operation conditional on whether the source object\'s
-- generation does not match the given value.
ocIfSourceGenerationNotMatch :: Lens' ObjectsCopy (Maybe Int64)
ocIfSourceGenerationNotMatch
  = lens _ocIfSourceGenerationNotMatch
      (\ s a -> s{_ocIfSourceGenerationNotMatch = a})

-- | Set of properties to return. Defaults to noAcl, unless the object
-- resource specifies the acl property, when it defaults to full.
ocProjection :: Lens' ObjectsCopy (Maybe ObjectsCopyProjection)
ocProjection
  = lens _ocProjection (\ s a -> s{_ocProjection = a})

-- | If present, selects a specific revision of the source object (as opposed
-- to the latest version, the default).
ocSourceGeneration :: Lens' ObjectsCopy (Maybe Int64)
ocSourceGeneration
  = lens _ocSourceGeneration
      (\ s a -> s{_ocSourceGeneration = a})

-- | Name of the new object. Required when the object metadata is not
-- otherwise provided. Overrides the object metadata\'s name value, if any.
ocDestinationObject :: Lens' ObjectsCopy Text
ocDestinationObject
  = lens _ocDestinationObject
      (\ s a -> s{_ocDestinationObject = a})

instance GoogleRequest ObjectsCopy where
        type Rs ObjectsCopy = Object
        requestClient ObjectsCopy{..}
          = go _ocSourceBucket _ocSourceObject
              _ocDestinationBucket
              _ocDestinationObject
              _ocDestinationPredefinedACL
              _ocIfSourceGenerationMatch
              _ocIfMetagenerationMatch
              _ocIfGenerationNotMatch
              _ocIfSourceMetagenerationNotMatch
              _ocIfSourceMetagenerationMatch
              _ocIfGenerationMatch
              _ocIfMetagenerationNotMatch
              _ocIfSourceGenerationNotMatch
              _ocProjection
              _ocSourceGeneration
              (Just AltJSON)
              _ocPayload
              storageService
          where go :<|> _
                  = buildClient (Proxy :: Proxy ObjectsCopyResource)
                      mempty

instance GoogleRequest (Download ObjectsCopy) where
        type Rs (Download ObjectsCopy) = Stream
        requestClient (Download ObjectsCopy{..})
          = go _ocSourceBucket _ocSourceObject
              _ocDestinationBucket
              _ocDestinationObject
              _ocDestinationPredefinedACL
              _ocIfSourceGenerationMatch
              _ocIfMetagenerationMatch
              _ocIfGenerationNotMatch
              _ocIfSourceMetagenerationNotMatch
              _ocIfSourceMetagenerationMatch
              _ocIfGenerationMatch
              _ocIfMetagenerationNotMatch
              _ocIfSourceGenerationNotMatch
              _ocProjection
              _ocSourceGeneration
              (Just AltMedia)
              _ocPayload
              storageService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy ObjectsCopyResource)
                      mempty
