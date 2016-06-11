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
-- Module      : Network.Google.Resource.Genomics.Annotations.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new annotation. Caller must have WRITE permission for the
-- associated annotation set. The following fields are required: *
-- annotationSetId * referenceName or referenceId ### Transcripts For
-- annotations of type TRANSCRIPT, the following fields of transcript must
-- be provided: * exons.start * exons.end All other fields may be
-- optionally specified, unless documented as being server-generated (for
-- example, the \`id\` field). The annotated range must be no longer than
-- 100Mbp (mega base pairs). See the Annotation resource for additional
-- restrictions on each field.
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.annotations.create@.
module Network.Google.Resource.Genomics.Annotations.Create
    (
    -- * REST Resource
      AnnotationsCreateResource

    -- * Creating a Request
    , annotationsCreate
    , AnnotationsCreate

    -- * Request Lenses
    , acXgafv
    , acUploadProtocol
    , acPp
    , acAccessToken
    , acUploadType
    , acPayload
    , acBearerToken
    , acCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.annotations.create@ method which the
-- 'AnnotationsCreate' request conforms to.
type AnnotationsCreateResource =
     "v1" :>
       "annotations" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Annotation :> Post '[JSON] Annotation

-- | Creates a new annotation. Caller must have WRITE permission for the
-- associated annotation set. The following fields are required: *
-- annotationSetId * referenceName or referenceId ### Transcripts For
-- annotations of type TRANSCRIPT, the following fields of transcript must
-- be provided: * exons.start * exons.end All other fields may be
-- optionally specified, unless documented as being server-generated (for
-- example, the \`id\` field). The annotated range must be no longer than
-- 100Mbp (mega base pairs). See the Annotation resource for additional
-- restrictions on each field.
--
-- /See:/ 'annotationsCreate' smart constructor.
data AnnotationsCreate = AnnotationsCreate'
    { _acXgafv          :: !(Maybe Text)
    , _acUploadProtocol :: !(Maybe Text)
    , _acPp             :: !Bool
    , _acAccessToken    :: !(Maybe Text)
    , _acUploadType     :: !(Maybe Text)
    , _acPayload        :: !Annotation
    , _acBearerToken    :: !(Maybe Text)
    , _acCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acXgafv'
--
-- * 'acUploadProtocol'
--
-- * 'acPp'
--
-- * 'acAccessToken'
--
-- * 'acUploadType'
--
-- * 'acPayload'
--
-- * 'acBearerToken'
--
-- * 'acCallback'
annotationsCreate
    :: Annotation -- ^ 'acPayload'
    -> AnnotationsCreate
annotationsCreate pAcPayload_ =
    AnnotationsCreate'
    { _acXgafv = Nothing
    , _acUploadProtocol = Nothing
    , _acPp = True
    , _acAccessToken = Nothing
    , _acUploadType = Nothing
    , _acPayload = pAcPayload_
    , _acBearerToken = Nothing
    , _acCallback = Nothing
    }

-- | V1 error format.
acXgafv :: Lens' AnnotationsCreate (Maybe Text)
acXgafv = lens _acXgafv (\ s a -> s{_acXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acUploadProtocol :: Lens' AnnotationsCreate (Maybe Text)
acUploadProtocol
  = lens _acUploadProtocol
      (\ s a -> s{_acUploadProtocol = a})

-- | Pretty-print response.
acPp :: Lens' AnnotationsCreate Bool
acPp = lens _acPp (\ s a -> s{_acPp = a})

-- | OAuth access token.
acAccessToken :: Lens' AnnotationsCreate (Maybe Text)
acAccessToken
  = lens _acAccessToken
      (\ s a -> s{_acAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acUploadType :: Lens' AnnotationsCreate (Maybe Text)
acUploadType
  = lens _acUploadType (\ s a -> s{_acUploadType = a})

-- | Multipart request metadata.
acPayload :: Lens' AnnotationsCreate Annotation
acPayload
  = lens _acPayload (\ s a -> s{_acPayload = a})

-- | OAuth bearer token.
acBearerToken :: Lens' AnnotationsCreate (Maybe Text)
acBearerToken
  = lens _acBearerToken
      (\ s a -> s{_acBearerToken = a})

-- | JSONP
acCallback :: Lens' AnnotationsCreate (Maybe Text)
acCallback
  = lens _acCallback (\ s a -> s{_acCallback = a})

instance GoogleRequest AnnotationsCreate where
        type Rs AnnotationsCreate = Annotation
        type Scopes AnnotationsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics"]
        requestClient AnnotationsCreate'{..}
          = go _acXgafv _acUploadProtocol (Just _acPp)
              _acAccessToken
              _acUploadType
              _acBearerToken
              _acCallback
              (Just AltJSON)
              _acPayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy AnnotationsCreateResource)
                      mempty
