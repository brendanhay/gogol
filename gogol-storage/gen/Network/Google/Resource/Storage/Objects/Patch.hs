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
-- Module      : Network.Google.Resource.Storage.Objects.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an object\'s metadata. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.patch@.
module Network.Google.Resource.Storage.Objects.Patch
    (
    -- * REST Resource
      ObjectsPatchResource

    -- * Creating a Request
    , objectsPatch
    , ObjectsPatch

    -- * Request Lenses
    , opIfMetagenerationMatch
    , opIfGenerationNotMatch
    , opIfGenerationMatch
    , opPredefinedACL
    , opBucket
    , opPayload
    , opIfMetagenerationNotMatch
    , opObject
    , opProjection
    , opGeneration
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @storage.objects.patch@ method which the
-- 'ObjectsPatch' request conforms to.
type ObjectsPatchResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "o" :>
               Capture "object" Text :>
                 QueryParam "ifMetagenerationMatch" (Textual Int64) :>
                   QueryParam "ifGenerationNotMatch" (Textual Int64) :>
                     QueryParam "ifGenerationMatch" (Textual Int64) :>
                       QueryParam "predefinedAcl" ObjectsPatchPredefinedACL
                         :>
                         QueryParam "ifMetagenerationNotMatch" (Textual Int64)
                           :>
                           QueryParam "projection" ObjectsPatchProjection :>
                             QueryParam "generation" (Textual Int64) :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Object :> Patch '[JSON] Object

-- | Updates an object\'s metadata. This method supports patch semantics.
--
-- /See:/ 'objectsPatch' smart constructor.
data ObjectsPatch = ObjectsPatch'
    { _opIfMetagenerationMatch    :: !(Maybe (Textual Int64))
    , _opIfGenerationNotMatch     :: !(Maybe (Textual Int64))
    , _opIfGenerationMatch        :: !(Maybe (Textual Int64))
    , _opPredefinedACL            :: !(Maybe ObjectsPatchPredefinedACL)
    , _opBucket                   :: !Text
    , _opPayload                  :: !Object
    , _opIfMetagenerationNotMatch :: !(Maybe (Textual Int64))
    , _opObject                   :: !Text
    , _opProjection               :: !(Maybe ObjectsPatchProjection)
    , _opGeneration               :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'opIfMetagenerationMatch'
--
-- * 'opIfGenerationNotMatch'
--
-- * 'opIfGenerationMatch'
--
-- * 'opPredefinedACL'
--
-- * 'opBucket'
--
-- * 'opPayload'
--
-- * 'opIfMetagenerationNotMatch'
--
-- * 'opObject'
--
-- * 'opProjection'
--
-- * 'opGeneration'
objectsPatch
    :: Text -- ^ 'opBucket'
    -> Object -- ^ 'opPayload'
    -> Text -- ^ 'opObject'
    -> ObjectsPatch
objectsPatch pOpBucket_ pOpPayload_ pOpObject_ =
    ObjectsPatch'
    { _opIfMetagenerationMatch = Nothing
    , _opIfGenerationNotMatch = Nothing
    , _opIfGenerationMatch = Nothing
    , _opPredefinedACL = Nothing
    , _opBucket = pOpBucket_
    , _opPayload = pOpPayload_
    , _opIfMetagenerationNotMatch = Nothing
    , _opObject = pOpObject_
    , _opProjection = Nothing
    , _opGeneration = Nothing
    }

-- | Makes the operation conditional on whether the object\'s current
-- metageneration matches the given value.
opIfMetagenerationMatch :: Lens' ObjectsPatch (Maybe Int64)
opIfMetagenerationMatch
  = lens _opIfMetagenerationMatch
      (\ s a -> s{_opIfMetagenerationMatch = a})
      . mapping _Coerce

-- | Makes the operation conditional on whether the object\'s current
-- generation does not match the given value.
opIfGenerationNotMatch :: Lens' ObjectsPatch (Maybe Int64)
opIfGenerationNotMatch
  = lens _opIfGenerationNotMatch
      (\ s a -> s{_opIfGenerationNotMatch = a})
      . mapping _Coerce

-- | Makes the operation conditional on whether the object\'s current
-- generation matches the given value.
opIfGenerationMatch :: Lens' ObjectsPatch (Maybe Int64)
opIfGenerationMatch
  = lens _opIfGenerationMatch
      (\ s a -> s{_opIfGenerationMatch = a})
      . mapping _Coerce

-- | Apply a predefined set of access controls to this object.
opPredefinedACL :: Lens' ObjectsPatch (Maybe ObjectsPatchPredefinedACL)
opPredefinedACL
  = lens _opPredefinedACL
      (\ s a -> s{_opPredefinedACL = a})

-- | Name of the bucket in which the object resides.
opBucket :: Lens' ObjectsPatch Text
opBucket = lens _opBucket (\ s a -> s{_opBucket = a})

-- | Multipart request metadata.
opPayload :: Lens' ObjectsPatch Object
opPayload
  = lens _opPayload (\ s a -> s{_opPayload = a})

-- | Makes the operation conditional on whether the object\'s current
-- metageneration does not match the given value.
opIfMetagenerationNotMatch :: Lens' ObjectsPatch (Maybe Int64)
opIfMetagenerationNotMatch
  = lens _opIfMetagenerationNotMatch
      (\ s a -> s{_opIfMetagenerationNotMatch = a})
      . mapping _Coerce

-- | Name of the object. For information about how to URL encode object names
-- to be path safe, see Encoding URI Path Parts.
opObject :: Lens' ObjectsPatch Text
opObject = lens _opObject (\ s a -> s{_opObject = a})

-- | Set of properties to return. Defaults to full.
opProjection :: Lens' ObjectsPatch (Maybe ObjectsPatchProjection)
opProjection
  = lens _opProjection (\ s a -> s{_opProjection = a})

-- | If present, selects a specific revision of this object (as opposed to
-- the latest version, the default).
opGeneration :: Lens' ObjectsPatch (Maybe Int64)
opGeneration
  = lens _opGeneration (\ s a -> s{_opGeneration = a})
      . mapping _Coerce

instance GoogleRequest ObjectsPatch where
        type Rs ObjectsPatch = Object
        type Scopes ObjectsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control"]
        requestClient ObjectsPatch'{..}
          = go _opBucket _opObject _opIfMetagenerationMatch
              _opIfGenerationNotMatch
              _opIfGenerationMatch
              _opPredefinedACL
              _opIfMetagenerationNotMatch
              _opProjection
              _opGeneration
              (Just AltJSON)
              _opPayload
              storageService
          where go
                  = buildClient (Proxy :: Proxy ObjectsPatchResource)
                      mempty
