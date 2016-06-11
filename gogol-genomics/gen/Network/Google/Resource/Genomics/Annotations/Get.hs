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
-- Module      : Network.Google.Resource.Genomics.Annotations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an annotation. Caller must have READ permission for the associated
-- annotation set.
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.annotations.get@.
module Network.Google.Resource.Genomics.Annotations.Get
    (
    -- * REST Resource
      AnnotationsGetResource

    -- * Creating a Request
    , annotationsGet
    , AnnotationsGet

    -- * Request Lenses
    , agXgafv
    , agUploadProtocol
    , agPp
    , agAccessToken
    , agUploadType
    , agBearerToken
    , agAnnotationId
    , agCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.annotations.get@ method which the
-- 'AnnotationsGet' request conforms to.
type AnnotationsGetResource =
     "v1" :>
       "annotations" :>
         Capture "annotationId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Annotation

-- | Gets an annotation. Caller must have READ permission for the associated
-- annotation set.
--
-- /See:/ 'annotationsGet' smart constructor.
data AnnotationsGet = AnnotationsGet'
    { _agXgafv          :: !(Maybe Text)
    , _agUploadProtocol :: !(Maybe Text)
    , _agPp             :: !Bool
    , _agAccessToken    :: !(Maybe Text)
    , _agUploadType     :: !(Maybe Text)
    , _agBearerToken    :: !(Maybe Text)
    , _agAnnotationId   :: !Text
    , _agCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agXgafv'
--
-- * 'agUploadProtocol'
--
-- * 'agPp'
--
-- * 'agAccessToken'
--
-- * 'agUploadType'
--
-- * 'agBearerToken'
--
-- * 'agAnnotationId'
--
-- * 'agCallback'
annotationsGet
    :: Text -- ^ 'agAnnotationId'
    -> AnnotationsGet
annotationsGet pAgAnnotationId_ =
    AnnotationsGet'
    { _agXgafv = Nothing
    , _agUploadProtocol = Nothing
    , _agPp = True
    , _agAccessToken = Nothing
    , _agUploadType = Nothing
    , _agBearerToken = Nothing
    , _agAnnotationId = pAgAnnotationId_
    , _agCallback = Nothing
    }

-- | V1 error format.
agXgafv :: Lens' AnnotationsGet (Maybe Text)
agXgafv = lens _agXgafv (\ s a -> s{_agXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
agUploadProtocol :: Lens' AnnotationsGet (Maybe Text)
agUploadProtocol
  = lens _agUploadProtocol
      (\ s a -> s{_agUploadProtocol = a})

-- | Pretty-print response.
agPp :: Lens' AnnotationsGet Bool
agPp = lens _agPp (\ s a -> s{_agPp = a})

-- | OAuth access token.
agAccessToken :: Lens' AnnotationsGet (Maybe Text)
agAccessToken
  = lens _agAccessToken
      (\ s a -> s{_agAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
agUploadType :: Lens' AnnotationsGet (Maybe Text)
agUploadType
  = lens _agUploadType (\ s a -> s{_agUploadType = a})

-- | OAuth bearer token.
agBearerToken :: Lens' AnnotationsGet (Maybe Text)
agBearerToken
  = lens _agBearerToken
      (\ s a -> s{_agBearerToken = a})

-- | The ID of the annotation to be retrieved.
agAnnotationId :: Lens' AnnotationsGet Text
agAnnotationId
  = lens _agAnnotationId
      (\ s a -> s{_agAnnotationId = a})

-- | JSONP
agCallback :: Lens' AnnotationsGet (Maybe Text)
agCallback
  = lens _agCallback (\ s a -> s{_agCallback = a})

instance GoogleRequest AnnotationsGet where
        type Rs AnnotationsGet = Annotation
        type Scopes AnnotationsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics",
               "https://www.googleapis.com/auth/genomics.readonly"]
        requestClient AnnotationsGet'{..}
          = go _agAnnotationId _agXgafv _agUploadProtocol
              (Just _agPp)
              _agAccessToken
              _agUploadType
              _agBearerToken
              _agCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy AnnotationsGetResource)
                      mempty
