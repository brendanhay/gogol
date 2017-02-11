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
-- Module      : Network.Google.Resource.Genomics.Annotations.BatchCreate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates one or more new annotations atomically. All annotations must
-- belong to the same annotation set. Caller must have WRITE permission for
-- this annotation set. For optimal performance, batch positionally
-- adjacent annotations together. If the request has a systemic issue, such
-- as an attempt to write to an inaccessible annotation set, the entire RPC
-- will fail accordingly. For lesser data issues, when possible an error
-- will be isolated to the corresponding batch entry in the response; the
-- remaining well formed annotations will be created normally. For details
-- on the requirements for each individual annotation resource, see
-- CreateAnnotation.
--
-- /See:/ <https://cloud.google.com/genomics Genomics API Reference> for @genomics.annotations.batchCreate@.
module Network.Google.Resource.Genomics.Annotations.BatchCreate
    (
    -- * REST Resource
      AnnotationsBatchCreateResource

    -- * Creating a Request
    , annotationsBatchCreate
    , AnnotationsBatchCreate

    -- * Request Lenses
    , abcXgafv
    , abcUploadProtocol
    , abcPp
    , abcAccessToken
    , abcUploadType
    , abcPayload
    , abcBearerToken
    , abcCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.annotations.batchCreate@ method which the
-- 'AnnotationsBatchCreate' request conforms to.
type AnnotationsBatchCreateResource =
     "v1" :>
       "annotations:batchCreate" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] BatchCreateAnnotationsRequest :>
                           Post '[JSON] BatchCreateAnnotationsResponse

-- | Creates one or more new annotations atomically. All annotations must
-- belong to the same annotation set. Caller must have WRITE permission for
-- this annotation set. For optimal performance, batch positionally
-- adjacent annotations together. If the request has a systemic issue, such
-- as an attempt to write to an inaccessible annotation set, the entire RPC
-- will fail accordingly. For lesser data issues, when possible an error
-- will be isolated to the corresponding batch entry in the response; the
-- remaining well formed annotations will be created normally. For details
-- on the requirements for each individual annotation resource, see
-- CreateAnnotation.
--
-- /See:/ 'annotationsBatchCreate' smart constructor.
data AnnotationsBatchCreate = AnnotationsBatchCreate'
    { _abcXgafv          :: !(Maybe Xgafv)
    , _abcUploadProtocol :: !(Maybe Text)
    , _abcPp             :: !Bool
    , _abcAccessToken    :: !(Maybe Text)
    , _abcUploadType     :: !(Maybe Text)
    , _abcPayload        :: !BatchCreateAnnotationsRequest
    , _abcBearerToken    :: !(Maybe Text)
    , _abcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationsBatchCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'abcXgafv'
--
-- * 'abcUploadProtocol'
--
-- * 'abcPp'
--
-- * 'abcAccessToken'
--
-- * 'abcUploadType'
--
-- * 'abcPayload'
--
-- * 'abcBearerToken'
--
-- * 'abcCallback'
annotationsBatchCreate
    :: BatchCreateAnnotationsRequest -- ^ 'abcPayload'
    -> AnnotationsBatchCreate
annotationsBatchCreate pAbcPayload_ =
    AnnotationsBatchCreate'
    { _abcXgafv = Nothing
    , _abcUploadProtocol = Nothing
    , _abcPp = True
    , _abcAccessToken = Nothing
    , _abcUploadType = Nothing
    , _abcPayload = pAbcPayload_
    , _abcBearerToken = Nothing
    , _abcCallback = Nothing
    }

-- | V1 error format.
abcXgafv :: Lens' AnnotationsBatchCreate (Maybe Xgafv)
abcXgafv = lens _abcXgafv (\ s a -> s{_abcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
abcUploadProtocol :: Lens' AnnotationsBatchCreate (Maybe Text)
abcUploadProtocol
  = lens _abcUploadProtocol
      (\ s a -> s{_abcUploadProtocol = a})

-- | Pretty-print response.
abcPp :: Lens' AnnotationsBatchCreate Bool
abcPp = lens _abcPp (\ s a -> s{_abcPp = a})

-- | OAuth access token.
abcAccessToken :: Lens' AnnotationsBatchCreate (Maybe Text)
abcAccessToken
  = lens _abcAccessToken
      (\ s a -> s{_abcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
abcUploadType :: Lens' AnnotationsBatchCreate (Maybe Text)
abcUploadType
  = lens _abcUploadType
      (\ s a -> s{_abcUploadType = a})

-- | Multipart request metadata.
abcPayload :: Lens' AnnotationsBatchCreate BatchCreateAnnotationsRequest
abcPayload
  = lens _abcPayload (\ s a -> s{_abcPayload = a})

-- | OAuth bearer token.
abcBearerToken :: Lens' AnnotationsBatchCreate (Maybe Text)
abcBearerToken
  = lens _abcBearerToken
      (\ s a -> s{_abcBearerToken = a})

-- | JSONP
abcCallback :: Lens' AnnotationsBatchCreate (Maybe Text)
abcCallback
  = lens _abcCallback (\ s a -> s{_abcCallback = a})

instance GoogleRequest AnnotationsBatchCreate where
        type Rs AnnotationsBatchCreate =
             BatchCreateAnnotationsResponse
        type Scopes AnnotationsBatchCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics"]
        requestClient AnnotationsBatchCreate'{..}
          = go _abcXgafv _abcUploadProtocol (Just _abcPp)
              _abcAccessToken
              _abcUploadType
              _abcBearerToken
              _abcCallback
              (Just AltJSON)
              _abcPayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy AnnotationsBatchCreateResource)
                      mempty
