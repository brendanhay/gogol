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
-- Module      : Network.Google.Resource.Genomics.Annotations.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an annotation. Caller must have WRITE permission for the
-- associated annotation set.
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.annotations.delete@.
module Network.Google.Resource.Genomics.Annotations.Delete
    (
    -- * REST Resource
      AnnotationsDeleteResource

    -- * Creating a Request
    , annotationsDelete
    , AnnotationsDelete

    -- * Request Lenses
    , adXgafv
    , adUploadProtocol
    , adPp
    , adAccessToken
    , adUploadType
    , adBearerToken
    , adAnnotationId
    , adCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.annotations.delete@ method which the
-- 'AnnotationsDelete' request conforms to.
type AnnotationsDeleteResource =
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
                         QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes an annotation. Caller must have WRITE permission for the
-- associated annotation set.
--
-- /See:/ 'annotationsDelete' smart constructor.
data AnnotationsDelete = AnnotationsDelete'
    { _adXgafv          :: !(Maybe Text)
    , _adUploadProtocol :: !(Maybe Text)
    , _adPp             :: !Bool
    , _adAccessToken    :: !(Maybe Text)
    , _adUploadType     :: !(Maybe Text)
    , _adBearerToken    :: !(Maybe Text)
    , _adAnnotationId   :: !Text
    , _adCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adXgafv'
--
-- * 'adUploadProtocol'
--
-- * 'adPp'
--
-- * 'adAccessToken'
--
-- * 'adUploadType'
--
-- * 'adBearerToken'
--
-- * 'adAnnotationId'
--
-- * 'adCallback'
annotationsDelete
    :: Text -- ^ 'adAnnotationId'
    -> AnnotationsDelete
annotationsDelete pAdAnnotationId_ =
    AnnotationsDelete'
    { _adXgafv = Nothing
    , _adUploadProtocol = Nothing
    , _adPp = True
    , _adAccessToken = Nothing
    , _adUploadType = Nothing
    , _adBearerToken = Nothing
    , _adAnnotationId = pAdAnnotationId_
    , _adCallback = Nothing
    }

-- | V1 error format.
adXgafv :: Lens' AnnotationsDelete (Maybe Text)
adXgafv = lens _adXgafv (\ s a -> s{_adXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
adUploadProtocol :: Lens' AnnotationsDelete (Maybe Text)
adUploadProtocol
  = lens _adUploadProtocol
      (\ s a -> s{_adUploadProtocol = a})

-- | Pretty-print response.
adPp :: Lens' AnnotationsDelete Bool
adPp = lens _adPp (\ s a -> s{_adPp = a})

-- | OAuth access token.
adAccessToken :: Lens' AnnotationsDelete (Maybe Text)
adAccessToken
  = lens _adAccessToken
      (\ s a -> s{_adAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
adUploadType :: Lens' AnnotationsDelete (Maybe Text)
adUploadType
  = lens _adUploadType (\ s a -> s{_adUploadType = a})

-- | OAuth bearer token.
adBearerToken :: Lens' AnnotationsDelete (Maybe Text)
adBearerToken
  = lens _adBearerToken
      (\ s a -> s{_adBearerToken = a})

-- | The ID of the annotation to be deleted.
adAnnotationId :: Lens' AnnotationsDelete Text
adAnnotationId
  = lens _adAnnotationId
      (\ s a -> s{_adAnnotationId = a})

-- | JSONP
adCallback :: Lens' AnnotationsDelete (Maybe Text)
adCallback
  = lens _adCallback (\ s a -> s{_adCallback = a})

instance GoogleRequest AnnotationsDelete where
        type Rs AnnotationsDelete = Empty
        type Scopes AnnotationsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics"]
        requestClient AnnotationsDelete'{..}
          = go _adAnnotationId _adXgafv _adUploadProtocol
              (Just _adPp)
              _adAccessToken
              _adUploadType
              _adBearerToken
              _adCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy AnnotationsDeleteResource)
                      mempty
