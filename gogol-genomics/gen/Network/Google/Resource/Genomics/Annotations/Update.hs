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
-- Module      : Network.Google.Resource.Genomics.Annotations.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an annotation. Caller must have WRITE permission for the
-- associated dataset.
--
-- /See:/ <https://cloud.google.com/genomics Genomics API Reference> for @genomics.annotations.update@.
module Network.Google.Resource.Genomics.Annotations.Update
    (
    -- * REST Resource
      AnnotationsUpdateResource

    -- * Creating a Request
    , annotationsUpdate
    , AnnotationsUpdate

    -- * Request Lenses
    , auXgafv
    , auUploadProtocol
    , auUpdateMask
    , auPp
    , auAccessToken
    , auUploadType
    , auPayload
    , auBearerToken
    , auAnnotationId
    , auCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.annotations.update@ method which the
-- 'AnnotationsUpdate' request conforms to.
type AnnotationsUpdateResource =
     "v1" :>
       "annotations" :>
         Capture "annotationId" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "updateMask" FieldMask :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Annotation :>
                               Put '[JSON] Annotation

-- | Updates an annotation. Caller must have WRITE permission for the
-- associated dataset.
--
-- /See:/ 'annotationsUpdate' smart constructor.
data AnnotationsUpdate = AnnotationsUpdate'
    { _auXgafv          :: !(Maybe Xgafv)
    , _auUploadProtocol :: !(Maybe Text)
    , _auUpdateMask     :: !(Maybe FieldMask)
    , _auPp             :: !Bool
    , _auAccessToken    :: !(Maybe Text)
    , _auUploadType     :: !(Maybe Text)
    , _auPayload        :: !Annotation
    , _auBearerToken    :: !(Maybe Text)
    , _auAnnotationId   :: !Text
    , _auCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auXgafv'
--
-- * 'auUploadProtocol'
--
-- * 'auUpdateMask'
--
-- * 'auPp'
--
-- * 'auAccessToken'
--
-- * 'auUploadType'
--
-- * 'auPayload'
--
-- * 'auBearerToken'
--
-- * 'auAnnotationId'
--
-- * 'auCallback'
annotationsUpdate
    :: Annotation -- ^ 'auPayload'
    -> Text -- ^ 'auAnnotationId'
    -> AnnotationsUpdate
annotationsUpdate pAuPayload_ pAuAnnotationId_ =
    AnnotationsUpdate'
    { _auXgafv = Nothing
    , _auUploadProtocol = Nothing
    , _auUpdateMask = Nothing
    , _auPp = True
    , _auAccessToken = Nothing
    , _auUploadType = Nothing
    , _auPayload = pAuPayload_
    , _auBearerToken = Nothing
    , _auAnnotationId = pAuAnnotationId_
    , _auCallback = Nothing
    }

-- | V1 error format.
auXgafv :: Lens' AnnotationsUpdate (Maybe Xgafv)
auXgafv = lens _auXgafv (\ s a -> s{_auXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
auUploadProtocol :: Lens' AnnotationsUpdate (Maybe Text)
auUploadProtocol
  = lens _auUploadProtocol
      (\ s a -> s{_auUploadProtocol = a})

-- | An optional mask specifying which fields to update. Mutable fields are
-- name, variant, transcript, and info. If unspecified, all mutable fields
-- will be updated.
auUpdateMask :: Lens' AnnotationsUpdate (Maybe FieldMask)
auUpdateMask
  = lens _auUpdateMask (\ s a -> s{_auUpdateMask = a})

-- | Pretty-print response.
auPp :: Lens' AnnotationsUpdate Bool
auPp = lens _auPp (\ s a -> s{_auPp = a})

-- | OAuth access token.
auAccessToken :: Lens' AnnotationsUpdate (Maybe Text)
auAccessToken
  = lens _auAccessToken
      (\ s a -> s{_auAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
auUploadType :: Lens' AnnotationsUpdate (Maybe Text)
auUploadType
  = lens _auUploadType (\ s a -> s{_auUploadType = a})

-- | Multipart request metadata.
auPayload :: Lens' AnnotationsUpdate Annotation
auPayload
  = lens _auPayload (\ s a -> s{_auPayload = a})

-- | OAuth bearer token.
auBearerToken :: Lens' AnnotationsUpdate (Maybe Text)
auBearerToken
  = lens _auBearerToken
      (\ s a -> s{_auBearerToken = a})

-- | The ID of the annotation to be updated.
auAnnotationId :: Lens' AnnotationsUpdate Text
auAnnotationId
  = lens _auAnnotationId
      (\ s a -> s{_auAnnotationId = a})

-- | JSONP
auCallback :: Lens' AnnotationsUpdate (Maybe Text)
auCallback
  = lens _auCallback (\ s a -> s{_auCallback = a})

instance GoogleRequest AnnotationsUpdate where
        type Rs AnnotationsUpdate = Annotation
        type Scopes AnnotationsUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics"]
        requestClient AnnotationsUpdate'{..}
          = go _auAnnotationId _auXgafv _auUploadProtocol
              _auUpdateMask
              (Just _auPp)
              _auAccessToken
              _auUploadType
              _auBearerToken
              _auCallback
              (Just AltJSON)
              _auPayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy AnnotationsUpdateResource)
                      mempty
