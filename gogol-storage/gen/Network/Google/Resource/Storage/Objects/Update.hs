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
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , ouUserProject
    , ouIfMetagenerationNotMatch
    , ouObject
    , ouProjection
    , ouProvisionalUserProject
    , ouGeneration
    ) where

import Network.Google.Prelude
import Network.Google.Storage.Types

-- | A resource alias for @storage.objects.update@ method which the
-- 'ObjectsUpdate' request conforms to.
type ObjectsUpdateResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "o" :>
               Capture "object" Text :>
                 QueryParam "ifMetagenerationMatch" (Textual Int64) :>
                   QueryParam "ifGenerationNotMatch" (Textual Int64) :>
                     QueryParam "ifGenerationMatch" (Textual Int64) :>
                       QueryParam "predefinedAcl" ObjectsUpdatePredefinedACL
                         :>
                         QueryParam "userProject" Text :>
                           QueryParam "ifMetagenerationNotMatch" (Textual Int64)
                             :>
                             QueryParam "projection" ObjectsUpdateProjection :>
                               QueryParam "provisionalUserProject" Text :>
                                 QueryParam "generation" (Textual Int64) :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] Object :>
                                       Put '[JSON] Object

-- | Updates an object\'s metadata.
--
-- /See:/ 'objectsUpdate' smart constructor.
data ObjectsUpdate =
  ObjectsUpdate'
    { _ouIfMetagenerationMatch :: !(Maybe (Textual Int64))
    , _ouIfGenerationNotMatch :: !(Maybe (Textual Int64))
    , _ouIfGenerationMatch :: !(Maybe (Textual Int64))
    , _ouPredefinedACL :: !(Maybe ObjectsUpdatePredefinedACL)
    , _ouBucket :: !Text
    , _ouPayload :: !Object
    , _ouUserProject :: !(Maybe Text)
    , _ouIfMetagenerationNotMatch :: !(Maybe (Textual Int64))
    , _ouObject :: !Text
    , _ouProjection :: !(Maybe ObjectsUpdateProjection)
    , _ouProvisionalUserProject :: !(Maybe Text)
    , _ouGeneration :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
-- * 'ouUserProject'
--
-- * 'ouIfMetagenerationNotMatch'
--
-- * 'ouObject'
--
-- * 'ouProjection'
--
-- * 'ouProvisionalUserProject'
--
-- * 'ouGeneration'
objectsUpdate
    :: Text -- ^ 'ouBucket'
    -> Object -- ^ 'ouPayload'
    -> Text -- ^ 'ouObject'
    -> ObjectsUpdate
objectsUpdate pOuBucket_ pOuPayload_ pOuObject_ =
  ObjectsUpdate'
    { _ouIfMetagenerationMatch = Nothing
    , _ouIfGenerationNotMatch = Nothing
    , _ouIfGenerationMatch = Nothing
    , _ouPredefinedACL = Nothing
    , _ouBucket = pOuBucket_
    , _ouPayload = pOuPayload_
    , _ouUserProject = Nothing
    , _ouIfMetagenerationNotMatch = Nothing
    , _ouObject = pOuObject_
    , _ouProjection = Nothing
    , _ouProvisionalUserProject = Nothing
    , _ouGeneration = Nothing
    }


-- | Makes the operation conditional on whether the object\'s current
-- metageneration matches the given value.
ouIfMetagenerationMatch :: Lens' ObjectsUpdate (Maybe Int64)
ouIfMetagenerationMatch
  = lens _ouIfMetagenerationMatch
      (\ s a -> s{_ouIfMetagenerationMatch = a})
      . mapping _Coerce

-- | Makes the operation conditional on whether the object\'s current
-- generation does not match the given value. If no live object exists, the
-- precondition fails. Setting to 0 makes the operation succeed only if
-- there is a live version of the object.
ouIfGenerationNotMatch :: Lens' ObjectsUpdate (Maybe Int64)
ouIfGenerationNotMatch
  = lens _ouIfGenerationNotMatch
      (\ s a -> s{_ouIfGenerationNotMatch = a})
      . mapping _Coerce

-- | Makes the operation conditional on whether the object\'s current
-- generation matches the given value. Setting to 0 makes the operation
-- succeed only if there are no live versions of the object.
ouIfGenerationMatch :: Lens' ObjectsUpdate (Maybe Int64)
ouIfGenerationMatch
  = lens _ouIfGenerationMatch
      (\ s a -> s{_ouIfGenerationMatch = a})
      . mapping _Coerce

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

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
ouUserProject :: Lens' ObjectsUpdate (Maybe Text)
ouUserProject
  = lens _ouUserProject
      (\ s a -> s{_ouUserProject = a})

-- | Makes the operation conditional on whether the object\'s current
-- metageneration does not match the given value.
ouIfMetagenerationNotMatch :: Lens' ObjectsUpdate (Maybe Int64)
ouIfMetagenerationNotMatch
  = lens _ouIfMetagenerationNotMatch
      (\ s a -> s{_ouIfMetagenerationNotMatch = a})
      . mapping _Coerce

-- | Name of the object. For information about how to URL encode object names
-- to be path safe, see Encoding URI Path Parts.
ouObject :: Lens' ObjectsUpdate Text
ouObject = lens _ouObject (\ s a -> s{_ouObject = a})

-- | Set of properties to return. Defaults to full.
ouProjection :: Lens' ObjectsUpdate (Maybe ObjectsUpdateProjection)
ouProjection
  = lens _ouProjection (\ s a -> s{_ouProjection = a})

-- | The project to be billed for this request if the target bucket is
-- requester-pays bucket.
ouProvisionalUserProject :: Lens' ObjectsUpdate (Maybe Text)
ouProvisionalUserProject
  = lens _ouProvisionalUserProject
      (\ s a -> s{_ouProvisionalUserProject = a})

-- | If present, selects a specific revision of this object (as opposed to
-- the latest version, the default).
ouGeneration :: Lens' ObjectsUpdate (Maybe Int64)
ouGeneration
  = lens _ouGeneration (\ s a -> s{_ouGeneration = a})
      . mapping _Coerce

instance GoogleRequest ObjectsUpdate where
        type Rs ObjectsUpdate = Object
        type Scopes ObjectsUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control"]
        requestClient ObjectsUpdate'{..}
          = go _ouBucket _ouObject _ouIfMetagenerationMatch
              _ouIfGenerationNotMatch
              _ouIfGenerationMatch
              _ouPredefinedACL
              _ouUserProject
              _ouIfMetagenerationNotMatch
              _ouProjection
              _ouProvisionalUserProject
              _ouGeneration
              (Just AltJSON)
              _ouPayload
              storageService
          where go
                  = buildClient (Proxy :: Proxy ObjectsUpdateResource)
                      mempty
