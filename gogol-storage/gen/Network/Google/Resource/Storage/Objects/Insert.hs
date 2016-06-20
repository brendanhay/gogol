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
-- Module      : Network.Google.Resource.Storage.Objects.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stores a new object and metadata.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.insert@.
module Network.Google.Resource.Storage.Objects.Insert
    (
    -- * REST Resource
      ObjectsInsertResource

    -- * Creating a Request
    , objectsInsert
    , ObjectsInsert

    -- * Request Lenses
    , oiIfMetagenerationMatch
    , oiIfGenerationNotMatch
    , oiIfGenerationMatch
    , oiPredefinedACL
    , oiBucket
    , oiPayload
    , oiName
    , oiIfMetagenerationNotMatch
    , oiContentEncoding
    , oiProjection
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @storage.objects.insert@ method which the
-- 'ObjectsInsert' request conforms to.
type ObjectsInsertResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "o" :>
               QueryParam "ifMetagenerationMatch" (Textual Int64) :>
                 QueryParam "ifGenerationNotMatch" (Textual Int64) :>
                   QueryParam "ifGenerationMatch" (Textual Int64) :>
                     QueryParam "predefinedAcl" ObjectsInsertPredefinedACL
                       :>
                       QueryParam "name" Text :>
                         QueryParam "ifMetagenerationNotMatch" (Textual Int64)
                           :>
                           QueryParam "contentEncoding" Text :>
                             QueryParam "projection" ObjectsInsertProjection :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Object :> Post '[JSON] Object
       :<|>
       "storage" :>
         "v1" :>
           "b" :>
             Capture "bucket" Text :>
               "o" :>
                 QueryParam "ifMetagenerationMatch" (Textual Int64) :>
                   QueryParam "ifGenerationNotMatch" (Textual Int64) :>
                     QueryParam "ifGenerationMatch" (Textual Int64) :>
                       QueryParam "predefinedAcl" ObjectsInsertPredefinedACL
                         :>
                         QueryParam "name" Text :>
                           QueryParam "ifMetagenerationNotMatch" (Textual Int64)
                             :>
                             QueryParam "contentEncoding" Text :>
                               QueryParam "projection" ObjectsInsertProjection
                                 :>
                                 QueryParam "alt" AltMedia :>
                                   Post '[OctetStream] Stream
       :<|>
       "upload" :>
         "storage" :>
           "v1" :>
             "b" :>
               Capture "bucket" Text :>
                 "o" :>
                   QueryParam "ifMetagenerationMatch" (Textual Int64) :>
                     QueryParam "ifGenerationNotMatch" (Textual Int64) :>
                       QueryParam "ifGenerationMatch" (Textual Int64) :>
                         QueryParam "predefinedAcl" ObjectsInsertPredefinedACL
                           :>
                           QueryParam "name" Text :>
                             QueryParam "ifMetagenerationNotMatch"
                               (Textual Int64)
                               :>
                               QueryParam "contentEncoding" Text :>
                                 QueryParam "projection" ObjectsInsertProjection
                                   :>
                                   QueryParam "alt" AltJSON :>
                                     QueryParam "uploadType" Multipart :>
                                       MultipartRelated '[JSON] Object :>
                                         Post '[JSON] Object

-- | Stores a new object and metadata.
--
-- /See:/ 'objectsInsert' smart constructor.
data ObjectsInsert = ObjectsInsert'
    { _oiIfMetagenerationMatch    :: !(Maybe (Textual Int64))
    , _oiIfGenerationNotMatch     :: !(Maybe (Textual Int64))
    , _oiIfGenerationMatch        :: !(Maybe (Textual Int64))
    , _oiPredefinedACL            :: !(Maybe ObjectsInsertPredefinedACL)
    , _oiBucket                   :: !Text
    , _oiPayload                  :: !Object
    , _oiName                     :: !(Maybe Text)
    , _oiIfMetagenerationNotMatch :: !(Maybe (Textual Int64))
    , _oiContentEncoding          :: !(Maybe Text)
    , _oiProjection               :: !(Maybe ObjectsInsertProjection)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oiIfMetagenerationMatch'
--
-- * 'oiIfGenerationNotMatch'
--
-- * 'oiIfGenerationMatch'
--
-- * 'oiPredefinedACL'
--
-- * 'oiBucket'
--
-- * 'oiPayload'
--
-- * 'oiName'
--
-- * 'oiIfMetagenerationNotMatch'
--
-- * 'oiContentEncoding'
--
-- * 'oiProjection'
objectsInsert
    :: Text -- ^ 'oiBucket'
    -> Object -- ^ 'oiPayload'
    -> ObjectsInsert
objectsInsert pOiBucket_ pOiPayload_ =
    ObjectsInsert'
    { _oiIfMetagenerationMatch = Nothing
    , _oiIfGenerationNotMatch = Nothing
    , _oiIfGenerationMatch = Nothing
    , _oiPredefinedACL = Nothing
    , _oiBucket = pOiBucket_
    , _oiPayload = pOiPayload_
    , _oiName = Nothing
    , _oiIfMetagenerationNotMatch = Nothing
    , _oiContentEncoding = Nothing
    , _oiProjection = Nothing
    }

-- | Makes the operation conditional on whether the object\'s current
-- metageneration matches the given value.
oiIfMetagenerationMatch :: Lens' ObjectsInsert (Maybe Int64)
oiIfMetagenerationMatch
  = lens _oiIfMetagenerationMatch
      (\ s a -> s{_oiIfMetagenerationMatch = a})
      . mapping _Coerce

-- | Makes the operation conditional on whether the object\'s current
-- generation does not match the given value.
oiIfGenerationNotMatch :: Lens' ObjectsInsert (Maybe Int64)
oiIfGenerationNotMatch
  = lens _oiIfGenerationNotMatch
      (\ s a -> s{_oiIfGenerationNotMatch = a})
      . mapping _Coerce

-- | Makes the operation conditional on whether the object\'s current
-- generation matches the given value.
oiIfGenerationMatch :: Lens' ObjectsInsert (Maybe Int64)
oiIfGenerationMatch
  = lens _oiIfGenerationMatch
      (\ s a -> s{_oiIfGenerationMatch = a})
      . mapping _Coerce

-- | Apply a predefined set of access controls to this object.
oiPredefinedACL :: Lens' ObjectsInsert (Maybe ObjectsInsertPredefinedACL)
oiPredefinedACL
  = lens _oiPredefinedACL
      (\ s a -> s{_oiPredefinedACL = a})

-- | Name of the bucket in which to store the new object. Overrides the
-- provided object metadata\'s bucket value, if any.
oiBucket :: Lens' ObjectsInsert Text
oiBucket = lens _oiBucket (\ s a -> s{_oiBucket = a})

-- | Multipart request metadata.
oiPayload :: Lens' ObjectsInsert Object
oiPayload
  = lens _oiPayload (\ s a -> s{_oiPayload = a})

-- | Name of the object. Required when the object metadata is not otherwise
-- provided. Overrides the object metadata\'s name value, if any. For
-- information about how to URL encode object names to be path safe, see
-- Encoding URI Path Parts.
oiName :: Lens' ObjectsInsert (Maybe Text)
oiName = lens _oiName (\ s a -> s{_oiName = a})

-- | Makes the operation conditional on whether the object\'s current
-- metageneration does not match the given value.
oiIfMetagenerationNotMatch :: Lens' ObjectsInsert (Maybe Int64)
oiIfMetagenerationNotMatch
  = lens _oiIfMetagenerationNotMatch
      (\ s a -> s{_oiIfMetagenerationNotMatch = a})
      . mapping _Coerce

-- | If set, sets the contentEncoding property of the final object to this
-- value. Setting this parameter is equivalent to setting the
-- contentEncoding metadata property. This can be useful when uploading an
-- object with uploadType=media to indicate the encoding of the content
-- being uploaded.
oiContentEncoding :: Lens' ObjectsInsert (Maybe Text)
oiContentEncoding
  = lens _oiContentEncoding
      (\ s a -> s{_oiContentEncoding = a})

-- | Set of properties to return. Defaults to noAcl, unless the object
-- resource specifies the acl property, when it defaults to full.
oiProjection :: Lens' ObjectsInsert (Maybe ObjectsInsertProjection)
oiProjection
  = lens _oiProjection (\ s a -> s{_oiProjection = a})

instance GoogleRequest ObjectsInsert where
        type Rs ObjectsInsert = Object
        type Scopes ObjectsInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient ObjectsInsert'{..}
          = go _oiBucket _oiIfMetagenerationMatch
              _oiIfGenerationNotMatch
              _oiIfGenerationMatch
              _oiPredefinedACL
              _oiName
              _oiIfMetagenerationNotMatch
              _oiContentEncoding
              _oiProjection
              (Just AltJSON)
              _oiPayload
              storageService
          where go :<|> (_ :<|> _)
                  = buildClient (Proxy :: Proxy ObjectsInsertResource)
                      mempty

instance GoogleRequest (MediaUpload ObjectsInsert)
         where
        type Rs (MediaUpload ObjectsInsert) = Object
        type Scopes (MediaUpload ObjectsInsert) =
             Scopes ObjectsInsert
        requestClient (MediaUpload ObjectsInsert'{..} body)
          = go _oiBucket _oiIfMetagenerationMatch
              _oiIfGenerationNotMatch
              _oiIfGenerationMatch
              _oiPredefinedACL
              _oiName
              _oiIfMetagenerationNotMatch
              _oiContentEncoding
              _oiProjection
              (Just AltJSON)
              (Just Multipart)
              _oiPayload
              body
              storageService
          where _ :<|> (_ :<|> go)
                  = buildClient (Proxy :: Proxy ObjectsInsertResource)
                      mempty
