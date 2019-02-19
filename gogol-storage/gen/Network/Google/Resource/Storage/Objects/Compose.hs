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
-- Module      : Network.Google.Resource.Storage.Objects.Compose
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Concatenates a list of existing objects into a new object in the same
-- bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.compose@.
module Network.Google.Resource.Storage.Objects.Compose
    (
    -- * REST Resource
      ObjectsComposeResource

    -- * Creating a Request
    , objectsCompose
    , ObjectsCompose

    -- * Request Lenses
    , oDestinationPredefinedACL
    , oIfMetagenerationMatch
    , oIfGenerationMatch
    , oPayload
    , oUserProject
    , oDestinationBucket
    , oKmsKeyName
    , oDestinationObject
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @storage.objects.compose@ method which the
-- 'ObjectsCompose' request conforms to.
type ObjectsComposeResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "destinationBucket" Text :>
             "o" :>
               Capture "destinationObject" Text :>
                 "compose" :>
                   QueryParam "destinationPredefinedAcl"
                     ObjectsComposeDestinationPredefinedACL
                     :>
                     QueryParam "ifMetagenerationMatch" (Textual Int64) :>
                       QueryParam "ifGenerationMatch" (Textual Int64) :>
                         QueryParam "userProject" Text :>
                           QueryParam "kmsKeyName" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] ComposeRequest :>
                                 Post '[JSON] Object

-- | Concatenates a list of existing objects into a new object in the same
-- bucket.
--
-- /See:/ 'objectsCompose' smart constructor.
data ObjectsCompose =
  ObjectsCompose'
    { _oDestinationPredefinedACL :: !(Maybe ObjectsComposeDestinationPredefinedACL)
    , _oIfMetagenerationMatch    :: !(Maybe (Textual Int64))
    , _oIfGenerationMatch        :: !(Maybe (Textual Int64))
    , _oPayload                  :: !ComposeRequest
    , _oUserProject              :: !(Maybe Text)
    , _oDestinationBucket        :: !Text
    , _oKmsKeyName               :: !(Maybe Text)
    , _oDestinationObject        :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ObjectsCompose' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oDestinationPredefinedACL'
--
-- * 'oIfMetagenerationMatch'
--
-- * 'oIfGenerationMatch'
--
-- * 'oPayload'
--
-- * 'oUserProject'
--
-- * 'oDestinationBucket'
--
-- * 'oKmsKeyName'
--
-- * 'oDestinationObject'
objectsCompose
    :: ComposeRequest -- ^ 'oPayload'
    -> Text -- ^ 'oDestinationBucket'
    -> Text -- ^ 'oDestinationObject'
    -> ObjectsCompose
objectsCompose pOPayload_ pODestinationBucket_ pODestinationObject_ =
  ObjectsCompose'
    { _oDestinationPredefinedACL = Nothing
    , _oIfMetagenerationMatch = Nothing
    , _oIfGenerationMatch = Nothing
    , _oPayload = pOPayload_
    , _oUserProject = Nothing
    , _oDestinationBucket = pODestinationBucket_
    , _oKmsKeyName = Nothing
    , _oDestinationObject = pODestinationObject_
    }

-- | Apply a predefined set of access controls to the destination object.
oDestinationPredefinedACL :: Lens' ObjectsCompose (Maybe ObjectsComposeDestinationPredefinedACL)
oDestinationPredefinedACL
  = lens _oDestinationPredefinedACL
      (\ s a -> s{_oDestinationPredefinedACL = a})

-- | Makes the operation conditional on whether the object\'s current
-- metageneration matches the given value.
oIfMetagenerationMatch :: Lens' ObjectsCompose (Maybe Int64)
oIfMetagenerationMatch
  = lens _oIfMetagenerationMatch
      (\ s a -> s{_oIfMetagenerationMatch = a})
      . mapping _Coerce

-- | Makes the operation conditional on whether the object\'s current
-- generation matches the given value. Setting to 0 makes the operation
-- succeed only if there are no live versions of the object.
oIfGenerationMatch :: Lens' ObjectsCompose (Maybe Int64)
oIfGenerationMatch
  = lens _oIfGenerationMatch
      (\ s a -> s{_oIfGenerationMatch = a})
      . mapping _Coerce

-- | Multipart request metadata.
oPayload :: Lens' ObjectsCompose ComposeRequest
oPayload = lens _oPayload (\ s a -> s{_oPayload = a})

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
oUserProject :: Lens' ObjectsCompose (Maybe Text)
oUserProject
  = lens _oUserProject (\ s a -> s{_oUserProject = a})

-- | Name of the bucket containing the source objects. The destination object
-- is stored in this bucket.
oDestinationBucket :: Lens' ObjectsCompose Text
oDestinationBucket
  = lens _oDestinationBucket
      (\ s a -> s{_oDestinationBucket = a})

-- | Resource name of the Cloud KMS key, of the form
-- projects\/my-project\/locations\/global\/keyRings\/my-kr\/cryptoKeys\/my-key,
-- that will be used to encrypt the object. Overrides the object
-- metadata\'s kms_key_name value, if any.
oKmsKeyName :: Lens' ObjectsCompose (Maybe Text)
oKmsKeyName
  = lens _oKmsKeyName (\ s a -> s{_oKmsKeyName = a})

-- | Name of the new object. For information about how to URL encode object
-- names to be path safe, see Encoding URI Path Parts.
oDestinationObject :: Lens' ObjectsCompose Text
oDestinationObject
  = lens _oDestinationObject
      (\ s a -> s{_oDestinationObject = a})

instance GoogleRequest ObjectsCompose where
        type Rs ObjectsCompose = Object
        type Scopes ObjectsCompose =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient ObjectsCompose'{..}
          = go _oDestinationBucket _oDestinationObject
              _oDestinationPredefinedACL
              _oIfMetagenerationMatch
              _oIfGenerationMatch
              _oUserProject
              _oKmsKeyName
              (Just AltJSON)
              _oPayload
              storageService
          where go
                  = buildClient (Proxy :: Proxy ObjectsComposeResource)
                      mempty
