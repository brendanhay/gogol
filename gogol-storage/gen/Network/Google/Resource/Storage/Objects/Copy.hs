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
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , ocUserProject
    , ocDestinationBucket
    , ocIfMetagenerationNotMatch
    , ocIfSourceGenerationNotMatch
    , ocProjection
    , ocProvisionalUserProject
    , ocSourceGeneration
    , ocDestinationKmsKeyName
    , ocDestinationObject
    ) where

import Network.Google.Prelude
import Network.Google.Storage.Types

-- | A resource alias for @storage.objects.copy@ method which the
-- 'ObjectsCopy' request conforms to.
type ObjectsCopyResource =
     "storage" :>
       "v1" :>
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
                             QueryParam "ifSourceGenerationMatch"
                               (Textual Int64)
                               :>
                               QueryParam "ifMetagenerationMatch"
                                 (Textual Int64)
                                 :>
                                 QueryParam "ifGenerationNotMatch"
                                   (Textual Int64)
                                   :>
                                   QueryParam "ifSourceMetagenerationNotMatch"
                                     (Textual Int64)
                                     :>
                                     QueryParam "ifSourceMetagenerationMatch"
                                       (Textual Int64)
                                       :>
                                       QueryParam "ifGenerationMatch"
                                         (Textual Int64)
                                         :>
                                         QueryParam "userProject" Text :>
                                           QueryParam "ifMetagenerationNotMatch"
                                             (Textual Int64)
                                             :>
                                             QueryParam
                                               "ifSourceGenerationNotMatch"
                                               (Textual Int64)
                                               :>
                                               QueryParam "projection"
                                                 ObjectsCopyProjection
                                                 :>
                                                 QueryParam
                                                   "provisionalUserProject"
                                                   Text
                                                   :>
                                                   QueryParam "sourceGeneration"
                                                     (Textual Int64)
                                                     :>
                                                     QueryParam
                                                       "destinationKmsKeyName"
                                                       Text
                                                       :>
                                                       QueryParam "alt" AltJSON
                                                         :>
                                                         ReqBody '[JSON] Object
                                                           :>
                                                           Post '[JSON] Object

-- | Copies a source object to a destination object. Optionally overrides
-- metadata.
--
-- /See:/ 'objectsCopy' smart constructor.
data ObjectsCopy =
  ObjectsCopy'
    { _ocDestinationPredefinedACL :: !(Maybe ObjectsCopyDestinationPredefinedACL)
    , _ocIfSourceGenerationMatch :: !(Maybe (Textual Int64))
    , _ocIfMetagenerationMatch :: !(Maybe (Textual Int64))
    , _ocIfGenerationNotMatch :: !(Maybe (Textual Int64))
    , _ocIfSourceMetagenerationNotMatch :: !(Maybe (Textual Int64))
    , _ocIfSourceMetagenerationMatch :: !(Maybe (Textual Int64))
    , _ocIfGenerationMatch :: !(Maybe (Textual Int64))
    , _ocSourceObject :: !Text
    , _ocSourceBucket :: !Text
    , _ocPayload :: !Object
    , _ocUserProject :: !(Maybe Text)
    , _ocDestinationBucket :: !Text
    , _ocIfMetagenerationNotMatch :: !(Maybe (Textual Int64))
    , _ocIfSourceGenerationNotMatch :: !(Maybe (Textual Int64))
    , _ocProjection :: !(Maybe ObjectsCopyProjection)
    , _ocProvisionalUserProject :: !(Maybe Text)
    , _ocSourceGeneration :: !(Maybe (Textual Int64))
    , _ocDestinationKmsKeyName :: !(Maybe Text)
    , _ocDestinationObject :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
-- * 'ocUserProject'
--
-- * 'ocDestinationBucket'
--
-- * 'ocIfMetagenerationNotMatch'
--
-- * 'ocIfSourceGenerationNotMatch'
--
-- * 'ocProjection'
--
-- * 'ocProvisionalUserProject'
--
-- * 'ocSourceGeneration'
--
-- * 'ocDestinationKmsKeyName'
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
  ObjectsCopy'
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
    , _ocUserProject = Nothing
    , _ocDestinationBucket = pOcDestinationBucket_
    , _ocIfMetagenerationNotMatch = Nothing
    , _ocIfSourceGenerationNotMatch = Nothing
    , _ocProjection = Nothing
    , _ocProvisionalUserProject = Nothing
    , _ocSourceGeneration = Nothing
    , _ocDestinationKmsKeyName = Nothing
    , _ocDestinationObject = pOcDestinationObject_
    }


-- | Apply a predefined set of access controls to the destination object.
ocDestinationPredefinedACL :: Lens' ObjectsCopy (Maybe ObjectsCopyDestinationPredefinedACL)
ocDestinationPredefinedACL
  = lens _ocDestinationPredefinedACL
      (\ s a -> s{_ocDestinationPredefinedACL = a})

-- | Makes the operation conditional on whether the source object\'s current
-- generation matches the given value.
ocIfSourceGenerationMatch :: Lens' ObjectsCopy (Maybe Int64)
ocIfSourceGenerationMatch
  = lens _ocIfSourceGenerationMatch
      (\ s a -> s{_ocIfSourceGenerationMatch = a})
      . mapping _Coerce

-- | Makes the operation conditional on whether the destination object\'s
-- current metageneration matches the given value.
ocIfMetagenerationMatch :: Lens' ObjectsCopy (Maybe Int64)
ocIfMetagenerationMatch
  = lens _ocIfMetagenerationMatch
      (\ s a -> s{_ocIfMetagenerationMatch = a})
      . mapping _Coerce

-- | Makes the operation conditional on whether the destination object\'s
-- current generation does not match the given value. If no live object
-- exists, the precondition fails. Setting to 0 makes the operation succeed
-- only if there is a live version of the object.
ocIfGenerationNotMatch :: Lens' ObjectsCopy (Maybe Int64)
ocIfGenerationNotMatch
  = lens _ocIfGenerationNotMatch
      (\ s a -> s{_ocIfGenerationNotMatch = a})
      . mapping _Coerce

-- | Makes the operation conditional on whether the source object\'s current
-- metageneration does not match the given value.
ocIfSourceMetagenerationNotMatch :: Lens' ObjectsCopy (Maybe Int64)
ocIfSourceMetagenerationNotMatch
  = lens _ocIfSourceMetagenerationNotMatch
      (\ s a -> s{_ocIfSourceMetagenerationNotMatch = a})
      . mapping _Coerce

-- | Makes the operation conditional on whether the source object\'s current
-- metageneration matches the given value.
ocIfSourceMetagenerationMatch :: Lens' ObjectsCopy (Maybe Int64)
ocIfSourceMetagenerationMatch
  = lens _ocIfSourceMetagenerationMatch
      (\ s a -> s{_ocIfSourceMetagenerationMatch = a})
      . mapping _Coerce

-- | Makes the operation conditional on whether the destination object\'s
-- current generation matches the given value. Setting to 0 makes the
-- operation succeed only if there are no live versions of the object.
ocIfGenerationMatch :: Lens' ObjectsCopy (Maybe Int64)
ocIfGenerationMatch
  = lens _ocIfGenerationMatch
      (\ s a -> s{_ocIfGenerationMatch = a})
      . mapping _Coerce

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

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
ocUserProject :: Lens' ObjectsCopy (Maybe Text)
ocUserProject
  = lens _ocUserProject
      (\ s a -> s{_ocUserProject = a})

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
      . mapping _Coerce

-- | Makes the operation conditional on whether the source object\'s current
-- generation does not match the given value.
ocIfSourceGenerationNotMatch :: Lens' ObjectsCopy (Maybe Int64)
ocIfSourceGenerationNotMatch
  = lens _ocIfSourceGenerationNotMatch
      (\ s a -> s{_ocIfSourceGenerationNotMatch = a})
      . mapping _Coerce

-- | Set of properties to return. Defaults to noAcl, unless the object
-- resource specifies the acl property, when it defaults to full.
ocProjection :: Lens' ObjectsCopy (Maybe ObjectsCopyProjection)
ocProjection
  = lens _ocProjection (\ s a -> s{_ocProjection = a})

-- | The project to be billed for this request if the target bucket is
-- requester-pays bucket.
ocProvisionalUserProject :: Lens' ObjectsCopy (Maybe Text)
ocProvisionalUserProject
  = lens _ocProvisionalUserProject
      (\ s a -> s{_ocProvisionalUserProject = a})

-- | If present, selects a specific revision of the source object (as opposed
-- to the latest version, the default).
ocSourceGeneration :: Lens' ObjectsCopy (Maybe Int64)
ocSourceGeneration
  = lens _ocSourceGeneration
      (\ s a -> s{_ocSourceGeneration = a})
      . mapping _Coerce

-- | Resource name of the Cloud KMS key, of the form
-- projects\/my-project\/locations\/global\/keyRings\/my-kr\/cryptoKeys\/my-key,
-- that will be used to encrypt the object. Overrides the object
-- metadata\'s kms_key_name value, if any.
ocDestinationKmsKeyName :: Lens' ObjectsCopy (Maybe Text)
ocDestinationKmsKeyName
  = lens _ocDestinationKmsKeyName
      (\ s a -> s{_ocDestinationKmsKeyName = a})

-- | Name of the new object. Required when the object metadata is not
-- otherwise provided. Overrides the object metadata\'s name value, if any.
ocDestinationObject :: Lens' ObjectsCopy Text
ocDestinationObject
  = lens _ocDestinationObject
      (\ s a -> s{_ocDestinationObject = a})

instance GoogleRequest ObjectsCopy where
        type Rs ObjectsCopy = Object
        type Scopes ObjectsCopy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient ObjectsCopy'{..}
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
              _ocUserProject
              _ocIfMetagenerationNotMatch
              _ocIfSourceGenerationNotMatch
              _ocProjection
              _ocProvisionalUserProject
              _ocSourceGeneration
              _ocDestinationKmsKeyName
              (Just AltJSON)
              _ocPayload
              storageService
          where go
                  = buildClient (Proxy :: Proxy ObjectsCopyResource)
                      mempty
