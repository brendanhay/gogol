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
-- Module      : Network.Google.Resource.Storage.Objects.Rewrite
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Rewrites a source object to a destination object. Optionally overrides
-- metadata.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.rewrite@.
module Network.Google.Resource.Storage.Objects.Rewrite
    (
    -- * REST Resource
      ObjectsRewriteResource

    -- * Creating a Request
    , objectsRewrite
    , ObjectsRewrite

    -- * Request Lenses
    , orDestinationPredefinedACL
    , orIfSourceGenerationMatch
    , orIfMetagenerationMatch
    , orIfGenerationNotMatch
    , orIfSourceMetagenerationNotMatch
    , orIfSourceMetagenerationMatch
    , orIfGenerationMatch
    , orSourceObject
    , orMaxBytesRewrittenPerCall
    , orSourceBucket
    , orPayload
    , orUserProject
    , orDestinationBucket
    , orIfMetagenerationNotMatch
    , orIfSourceGenerationNotMatch
    , orProjection
    , orProvisionalUserProject
    , orSourceGeneration
    , orDestinationKmsKeyName
    , orRewriteToken
    , orDestinationObject
    ) where

import Network.Google.Prelude
import Network.Google.Storage.Types

-- | A resource alias for @storage.objects.rewrite@ method which the
-- 'ObjectsRewrite' request conforms to.
type ObjectsRewriteResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "sourceBucket" Text :>
             "o" :>
               Capture "sourceObject" Text :>
                 "rewriteTo" :>
                   "b" :>
                     Capture "destinationBucket" Text :>
                       "o" :>
                         Capture "destinationObject" Text :>
                           QueryParam "destinationPredefinedAcl"
                             ObjectsRewriteDestinationPredefinedACL
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
                                         QueryParam "maxBytesRewrittenPerCall"
                                           (Textual Int64)
                                           :>
                                           QueryParam "userProject" Text :>
                                             QueryParam
                                               "ifMetagenerationNotMatch"
                                               (Textual Int64)
                                               :>
                                               QueryParam
                                                 "ifSourceGenerationNotMatch"
                                                 (Textual Int64)
                                                 :>
                                                 QueryParam "projection"
                                                   ObjectsRewriteProjection
                                                   :>
                                                   QueryParam
                                                     "provisionalUserProject"
                                                     Text
                                                     :>
                                                     QueryParam
                                                       "sourceGeneration"
                                                       (Textual Int64)
                                                       :>
                                                       QueryParam
                                                         "destinationKmsKeyName"
                                                         Text
                                                         :>
                                                         QueryParam
                                                           "rewriteToken"
                                                           Text
                                                           :>
                                                           QueryParam "alt"
                                                             AltJSON
                                                             :>
                                                             ReqBody '[JSON]
                                                               Object
                                                               :>
                                                               Post '[JSON]
                                                                 RewriteResponse

-- | Rewrites a source object to a destination object. Optionally overrides
-- metadata.
--
-- /See:/ 'objectsRewrite' smart constructor.
data ObjectsRewrite =
  ObjectsRewrite'
    { _orDestinationPredefinedACL :: !(Maybe ObjectsRewriteDestinationPredefinedACL)
    , _orIfSourceGenerationMatch :: !(Maybe (Textual Int64))
    , _orIfMetagenerationMatch :: !(Maybe (Textual Int64))
    , _orIfGenerationNotMatch :: !(Maybe (Textual Int64))
    , _orIfSourceMetagenerationNotMatch :: !(Maybe (Textual Int64))
    , _orIfSourceMetagenerationMatch :: !(Maybe (Textual Int64))
    , _orIfGenerationMatch :: !(Maybe (Textual Int64))
    , _orSourceObject :: !Text
    , _orMaxBytesRewrittenPerCall :: !(Maybe (Textual Int64))
    , _orSourceBucket :: !Text
    , _orPayload :: !Object
    , _orUserProject :: !(Maybe Text)
    , _orDestinationBucket :: !Text
    , _orIfMetagenerationNotMatch :: !(Maybe (Textual Int64))
    , _orIfSourceGenerationNotMatch :: !(Maybe (Textual Int64))
    , _orProjection :: !(Maybe ObjectsRewriteProjection)
    , _orProvisionalUserProject :: !(Maybe Text)
    , _orSourceGeneration :: !(Maybe (Textual Int64))
    , _orDestinationKmsKeyName :: !(Maybe Text)
    , _orRewriteToken :: !(Maybe Text)
    , _orDestinationObject :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ObjectsRewrite' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orDestinationPredefinedACL'
--
-- * 'orIfSourceGenerationMatch'
--
-- * 'orIfMetagenerationMatch'
--
-- * 'orIfGenerationNotMatch'
--
-- * 'orIfSourceMetagenerationNotMatch'
--
-- * 'orIfSourceMetagenerationMatch'
--
-- * 'orIfGenerationMatch'
--
-- * 'orSourceObject'
--
-- * 'orMaxBytesRewrittenPerCall'
--
-- * 'orSourceBucket'
--
-- * 'orPayload'
--
-- * 'orUserProject'
--
-- * 'orDestinationBucket'
--
-- * 'orIfMetagenerationNotMatch'
--
-- * 'orIfSourceGenerationNotMatch'
--
-- * 'orProjection'
--
-- * 'orProvisionalUserProject'
--
-- * 'orSourceGeneration'
--
-- * 'orDestinationKmsKeyName'
--
-- * 'orRewriteToken'
--
-- * 'orDestinationObject'
objectsRewrite
    :: Text -- ^ 'orSourceObject'
    -> Text -- ^ 'orSourceBucket'
    -> Object -- ^ 'orPayload'
    -> Text -- ^ 'orDestinationBucket'
    -> Text -- ^ 'orDestinationObject'
    -> ObjectsRewrite
objectsRewrite pOrSourceObject_ pOrSourceBucket_ pOrPayload_ pOrDestinationBucket_ pOrDestinationObject_ =
  ObjectsRewrite'
    { _orDestinationPredefinedACL = Nothing
    , _orIfSourceGenerationMatch = Nothing
    , _orIfMetagenerationMatch = Nothing
    , _orIfGenerationNotMatch = Nothing
    , _orIfSourceMetagenerationNotMatch = Nothing
    , _orIfSourceMetagenerationMatch = Nothing
    , _orIfGenerationMatch = Nothing
    , _orSourceObject = pOrSourceObject_
    , _orMaxBytesRewrittenPerCall = Nothing
    , _orSourceBucket = pOrSourceBucket_
    , _orPayload = pOrPayload_
    , _orUserProject = Nothing
    , _orDestinationBucket = pOrDestinationBucket_
    , _orIfMetagenerationNotMatch = Nothing
    , _orIfSourceGenerationNotMatch = Nothing
    , _orProjection = Nothing
    , _orProvisionalUserProject = Nothing
    , _orSourceGeneration = Nothing
    , _orDestinationKmsKeyName = Nothing
    , _orRewriteToken = Nothing
    , _orDestinationObject = pOrDestinationObject_
    }


-- | Apply a predefined set of access controls to the destination object.
orDestinationPredefinedACL :: Lens' ObjectsRewrite (Maybe ObjectsRewriteDestinationPredefinedACL)
orDestinationPredefinedACL
  = lens _orDestinationPredefinedACL
      (\ s a -> s{_orDestinationPredefinedACL = a})

-- | Makes the operation conditional on whether the source object\'s current
-- generation matches the given value.
orIfSourceGenerationMatch :: Lens' ObjectsRewrite (Maybe Int64)
orIfSourceGenerationMatch
  = lens _orIfSourceGenerationMatch
      (\ s a -> s{_orIfSourceGenerationMatch = a})
      . mapping _Coerce

-- | Makes the operation conditional on whether the destination object\'s
-- current metageneration matches the given value.
orIfMetagenerationMatch :: Lens' ObjectsRewrite (Maybe Int64)
orIfMetagenerationMatch
  = lens _orIfMetagenerationMatch
      (\ s a -> s{_orIfMetagenerationMatch = a})
      . mapping _Coerce

-- | Makes the operation conditional on whether the object\'s current
-- generation does not match the given value. If no live object exists, the
-- precondition fails. Setting to 0 makes the operation succeed only if
-- there is a live version of the object.
orIfGenerationNotMatch :: Lens' ObjectsRewrite (Maybe Int64)
orIfGenerationNotMatch
  = lens _orIfGenerationNotMatch
      (\ s a -> s{_orIfGenerationNotMatch = a})
      . mapping _Coerce

-- | Makes the operation conditional on whether the source object\'s current
-- metageneration does not match the given value.
orIfSourceMetagenerationNotMatch :: Lens' ObjectsRewrite (Maybe Int64)
orIfSourceMetagenerationNotMatch
  = lens _orIfSourceMetagenerationNotMatch
      (\ s a -> s{_orIfSourceMetagenerationNotMatch = a})
      . mapping _Coerce

-- | Makes the operation conditional on whether the source object\'s current
-- metageneration matches the given value.
orIfSourceMetagenerationMatch :: Lens' ObjectsRewrite (Maybe Int64)
orIfSourceMetagenerationMatch
  = lens _orIfSourceMetagenerationMatch
      (\ s a -> s{_orIfSourceMetagenerationMatch = a})
      . mapping _Coerce

-- | Makes the operation conditional on whether the object\'s current
-- generation matches the given value. Setting to 0 makes the operation
-- succeed only if there are no live versions of the object.
orIfGenerationMatch :: Lens' ObjectsRewrite (Maybe Int64)
orIfGenerationMatch
  = lens _orIfGenerationMatch
      (\ s a -> s{_orIfGenerationMatch = a})
      . mapping _Coerce

-- | Name of the source object. For information about how to URL encode
-- object names to be path safe, see Encoding URI Path Parts.
orSourceObject :: Lens' ObjectsRewrite Text
orSourceObject
  = lens _orSourceObject
      (\ s a -> s{_orSourceObject = a})

-- | The maximum number of bytes that will be rewritten per rewrite request.
-- Most callers shouldn\'t need to specify this parameter - it is primarily
-- in place to support testing. If specified the value must be an integral
-- multiple of 1 MiB (1048576). Also, this only applies to requests where
-- the source and destination span locations and\/or storage classes.
-- Finally, this value must not change across rewrite calls else you\'ll
-- get an error that the rewriteToken is invalid.
orMaxBytesRewrittenPerCall :: Lens' ObjectsRewrite (Maybe Int64)
orMaxBytesRewrittenPerCall
  = lens _orMaxBytesRewrittenPerCall
      (\ s a -> s{_orMaxBytesRewrittenPerCall = a})
      . mapping _Coerce

-- | Name of the bucket in which to find the source object.
orSourceBucket :: Lens' ObjectsRewrite Text
orSourceBucket
  = lens _orSourceBucket
      (\ s a -> s{_orSourceBucket = a})

-- | Multipart request metadata.
orPayload :: Lens' ObjectsRewrite Object
orPayload
  = lens _orPayload (\ s a -> s{_orPayload = a})

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
orUserProject :: Lens' ObjectsRewrite (Maybe Text)
orUserProject
  = lens _orUserProject
      (\ s a -> s{_orUserProject = a})

-- | Name of the bucket in which to store the new object. Overrides the
-- provided object metadata\'s bucket value, if any.
orDestinationBucket :: Lens' ObjectsRewrite Text
orDestinationBucket
  = lens _orDestinationBucket
      (\ s a -> s{_orDestinationBucket = a})

-- | Makes the operation conditional on whether the destination object\'s
-- current metageneration does not match the given value.
orIfMetagenerationNotMatch :: Lens' ObjectsRewrite (Maybe Int64)
orIfMetagenerationNotMatch
  = lens _orIfMetagenerationNotMatch
      (\ s a -> s{_orIfMetagenerationNotMatch = a})
      . mapping _Coerce

-- | Makes the operation conditional on whether the source object\'s current
-- generation does not match the given value.
orIfSourceGenerationNotMatch :: Lens' ObjectsRewrite (Maybe Int64)
orIfSourceGenerationNotMatch
  = lens _orIfSourceGenerationNotMatch
      (\ s a -> s{_orIfSourceGenerationNotMatch = a})
      . mapping _Coerce

-- | Set of properties to return. Defaults to noAcl, unless the object
-- resource specifies the acl property, when it defaults to full.
orProjection :: Lens' ObjectsRewrite (Maybe ObjectsRewriteProjection)
orProjection
  = lens _orProjection (\ s a -> s{_orProjection = a})

-- | The project to be billed for this request if the target bucket is
-- requester-pays bucket.
orProvisionalUserProject :: Lens' ObjectsRewrite (Maybe Text)
orProvisionalUserProject
  = lens _orProvisionalUserProject
      (\ s a -> s{_orProvisionalUserProject = a})

-- | If present, selects a specific revision of the source object (as opposed
-- to the latest version, the default).
orSourceGeneration :: Lens' ObjectsRewrite (Maybe Int64)
orSourceGeneration
  = lens _orSourceGeneration
      (\ s a -> s{_orSourceGeneration = a})
      . mapping _Coerce

-- | Resource name of the Cloud KMS key, of the form
-- projects\/my-project\/locations\/global\/keyRings\/my-kr\/cryptoKeys\/my-key,
-- that will be used to encrypt the object. Overrides the object
-- metadata\'s kms_key_name value, if any.
orDestinationKmsKeyName :: Lens' ObjectsRewrite (Maybe Text)
orDestinationKmsKeyName
  = lens _orDestinationKmsKeyName
      (\ s a -> s{_orDestinationKmsKeyName = a})

-- | Include this field (from the previous rewrite response) on each rewrite
-- request after the first one, until the rewrite response \'done\' flag is
-- true. Calls that provide a rewriteToken can omit all other request
-- fields, but if included those fields must match the values provided in
-- the first rewrite request.
orRewriteToken :: Lens' ObjectsRewrite (Maybe Text)
orRewriteToken
  = lens _orRewriteToken
      (\ s a -> s{_orRewriteToken = a})

-- | Name of the new object. Required when the object metadata is not
-- otherwise provided. Overrides the object metadata\'s name value, if any.
-- For information about how to URL encode object names to be path safe,
-- see Encoding URI Path Parts.
orDestinationObject :: Lens' ObjectsRewrite Text
orDestinationObject
  = lens _orDestinationObject
      (\ s a -> s{_orDestinationObject = a})

instance GoogleRequest ObjectsRewrite where
        type Rs ObjectsRewrite = RewriteResponse
        type Scopes ObjectsRewrite =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient ObjectsRewrite'{..}
          = go _orSourceBucket _orSourceObject
              _orDestinationBucket
              _orDestinationObject
              _orDestinationPredefinedACL
              _orIfSourceGenerationMatch
              _orIfMetagenerationMatch
              _orIfGenerationNotMatch
              _orIfSourceMetagenerationNotMatch
              _orIfSourceMetagenerationMatch
              _orIfGenerationMatch
              _orMaxBytesRewrittenPerCall
              _orUserProject
              _orIfMetagenerationNotMatch
              _orIfSourceGenerationNotMatch
              _orProjection
              _orProvisionalUserProject
              _orSourceGeneration
              _orDestinationKmsKeyName
              _orRewriteToken
              (Just AltJSON)
              _orPayload
              storageService
          where go
                  = buildClient (Proxy :: Proxy ObjectsRewriteResource)
                      mempty
