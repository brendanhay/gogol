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
-- Module      : Network.Google.Resource.Genomics.AnnotationSets.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an annotation set. The update must respect all mutability
-- restrictions and other invariants described on the annotation set
-- resource. Caller must have WRITE permission for the associated dataset.
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.annotationsets.update@.
module Network.Google.Resource.Genomics.AnnotationSets.Update
    (
    -- * REST Resource
      AnnotationSetsUpdateResource

    -- * Creating a Request
    , annotationSetsUpdate
    , AnnotationSetsUpdate

    -- * Request Lenses
    , asuXgafv
    , asuUploadProtocol
    , asuUpdateMask
    , asuAnnotationSetId
    , asuPp
    , asuAccessToken
    , asuUploadType
    , asuPayload
    , asuBearerToken
    , asuCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.annotationsets.update@ method which the
-- 'AnnotationSetsUpdate' request conforms to.
type AnnotationSetsUpdateResource =
     "v1" :>
       "annotationsets" :>
         Capture "annotationSetId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "updateMask" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] AnnotationSet :>
                               Put '[JSON] AnnotationSet

-- | Updates an annotation set. The update must respect all mutability
-- restrictions and other invariants described on the annotation set
-- resource. Caller must have WRITE permission for the associated dataset.
--
-- /See:/ 'annotationSetsUpdate' smart constructor.
data AnnotationSetsUpdate = AnnotationSetsUpdate'
    { _asuXgafv           :: !(Maybe Text)
    , _asuUploadProtocol  :: !(Maybe Text)
    , _asuUpdateMask      :: !(Maybe Text)
    , _asuAnnotationSetId :: !Text
    , _asuPp              :: !Bool
    , _asuAccessToken     :: !(Maybe Text)
    , _asuUploadType      :: !(Maybe Text)
    , _asuPayload         :: !AnnotationSet
    , _asuBearerToken     :: !(Maybe Text)
    , _asuCallback        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationSetsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asuXgafv'
--
-- * 'asuUploadProtocol'
--
-- * 'asuUpdateMask'
--
-- * 'asuAnnotationSetId'
--
-- * 'asuPp'
--
-- * 'asuAccessToken'
--
-- * 'asuUploadType'
--
-- * 'asuPayload'
--
-- * 'asuBearerToken'
--
-- * 'asuCallback'
annotationSetsUpdate
    :: Text -- ^ 'asuAnnotationSetId'
    -> AnnotationSet -- ^ 'asuPayload'
    -> AnnotationSetsUpdate
annotationSetsUpdate pAsuAnnotationSetId_ pAsuPayload_ =
    AnnotationSetsUpdate'
    { _asuXgafv = Nothing
    , _asuUploadProtocol = Nothing
    , _asuUpdateMask = Nothing
    , _asuAnnotationSetId = pAsuAnnotationSetId_
    , _asuPp = True
    , _asuAccessToken = Nothing
    , _asuUploadType = Nothing
    , _asuPayload = pAsuPayload_
    , _asuBearerToken = Nothing
    , _asuCallback = Nothing
    }

-- | V1 error format.
asuXgafv :: Lens' AnnotationSetsUpdate (Maybe Text)
asuXgafv = lens _asuXgafv (\ s a -> s{_asuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
asuUploadProtocol :: Lens' AnnotationSetsUpdate (Maybe Text)
asuUploadProtocol
  = lens _asuUploadProtocol
      (\ s a -> s{_asuUploadProtocol = a})

-- | An optional mask specifying which fields to update. Mutable fields are
-- name, source_uri, and info. If unspecified, all mutable fields will be
-- updated.
asuUpdateMask :: Lens' AnnotationSetsUpdate (Maybe Text)
asuUpdateMask
  = lens _asuUpdateMask
      (\ s a -> s{_asuUpdateMask = a})

-- | The ID of the annotation set to be updated.
asuAnnotationSetId :: Lens' AnnotationSetsUpdate Text
asuAnnotationSetId
  = lens _asuAnnotationSetId
      (\ s a -> s{_asuAnnotationSetId = a})

-- | Pretty-print response.
asuPp :: Lens' AnnotationSetsUpdate Bool
asuPp = lens _asuPp (\ s a -> s{_asuPp = a})

-- | OAuth access token.
asuAccessToken :: Lens' AnnotationSetsUpdate (Maybe Text)
asuAccessToken
  = lens _asuAccessToken
      (\ s a -> s{_asuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
asuUploadType :: Lens' AnnotationSetsUpdate (Maybe Text)
asuUploadType
  = lens _asuUploadType
      (\ s a -> s{_asuUploadType = a})

-- | Multipart request metadata.
asuPayload :: Lens' AnnotationSetsUpdate AnnotationSet
asuPayload
  = lens _asuPayload (\ s a -> s{_asuPayload = a})

-- | OAuth bearer token.
asuBearerToken :: Lens' AnnotationSetsUpdate (Maybe Text)
asuBearerToken
  = lens _asuBearerToken
      (\ s a -> s{_asuBearerToken = a})

-- | JSONP
asuCallback :: Lens' AnnotationSetsUpdate (Maybe Text)
asuCallback
  = lens _asuCallback (\ s a -> s{_asuCallback = a})

instance GoogleRequest AnnotationSetsUpdate where
        type Rs AnnotationSetsUpdate = AnnotationSet
        type Scopes AnnotationSetsUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics"]
        requestClient AnnotationSetsUpdate'{..}
          = go _asuAnnotationSetId _asuXgafv _asuUploadProtocol
              _asuUpdateMask
              (Just _asuPp)
              _asuAccessToken
              _asuUploadType
              _asuBearerToken
              _asuCallback
              (Just AltJSON)
              _asuPayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy AnnotationSetsUpdateResource)
                      mempty
