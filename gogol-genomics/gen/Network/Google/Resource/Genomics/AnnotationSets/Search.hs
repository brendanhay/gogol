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
-- Module      : Network.Google.Resource.Genomics.AnnotationSets.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches for annotation sets that match the given criteria. Annotation
-- sets are returned in an unspecified order. This order is consistent,
-- such that two queries for the same content (regardless of page size)
-- yield annotation sets in the same order across their respective streams
-- of paginated responses. Caller must have READ permission for the queried
-- datasets.
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.annotationsets.search@.
module Network.Google.Resource.Genomics.AnnotationSets.Search
    (
    -- * REST Resource
      AnnotationSetsSearchResource

    -- * Creating a Request
    , annotationSetsSearch
    , AnnotationSetsSearch

    -- * Request Lenses
    , assXgafv
    , assUploadProtocol
    , assPp
    , assAccessToken
    , assUploadType
    , assPayload
    , assBearerToken
    , assCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.annotationsets.search@ method which the
-- 'AnnotationSetsSearch' request conforms to.
type AnnotationSetsSearchResource =
     "v1" :>
       "annotationsets" :>
         "search" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] SearchAnnotationSetsRequest :>
                             Post '[JSON] SearchAnnotationSetsResponse

-- | Searches for annotation sets that match the given criteria. Annotation
-- sets are returned in an unspecified order. This order is consistent,
-- such that two queries for the same content (regardless of page size)
-- yield annotation sets in the same order across their respective streams
-- of paginated responses. Caller must have READ permission for the queried
-- datasets.
--
-- /See:/ 'annotationSetsSearch' smart constructor.
data AnnotationSetsSearch = AnnotationSetsSearch'
    { _assXgafv          :: !(Maybe Text)
    , _assUploadProtocol :: !(Maybe Text)
    , _assPp             :: !Bool
    , _assAccessToken    :: !(Maybe Text)
    , _assUploadType     :: !(Maybe Text)
    , _assPayload        :: !SearchAnnotationSetsRequest
    , _assBearerToken    :: !(Maybe Text)
    , _assCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationSetsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assXgafv'
--
-- * 'assUploadProtocol'
--
-- * 'assPp'
--
-- * 'assAccessToken'
--
-- * 'assUploadType'
--
-- * 'assPayload'
--
-- * 'assBearerToken'
--
-- * 'assCallback'
annotationSetsSearch
    :: SearchAnnotationSetsRequest -- ^ 'assPayload'
    -> AnnotationSetsSearch
annotationSetsSearch pAssPayload_ =
    AnnotationSetsSearch'
    { _assXgafv = Nothing
    , _assUploadProtocol = Nothing
    , _assPp = True
    , _assAccessToken = Nothing
    , _assUploadType = Nothing
    , _assPayload = pAssPayload_
    , _assBearerToken = Nothing
    , _assCallback = Nothing
    }

-- | V1 error format.
assXgafv :: Lens' AnnotationSetsSearch (Maybe Text)
assXgafv = lens _assXgafv (\ s a -> s{_assXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
assUploadProtocol :: Lens' AnnotationSetsSearch (Maybe Text)
assUploadProtocol
  = lens _assUploadProtocol
      (\ s a -> s{_assUploadProtocol = a})

-- | Pretty-print response.
assPp :: Lens' AnnotationSetsSearch Bool
assPp = lens _assPp (\ s a -> s{_assPp = a})

-- | OAuth access token.
assAccessToken :: Lens' AnnotationSetsSearch (Maybe Text)
assAccessToken
  = lens _assAccessToken
      (\ s a -> s{_assAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
assUploadType :: Lens' AnnotationSetsSearch (Maybe Text)
assUploadType
  = lens _assUploadType
      (\ s a -> s{_assUploadType = a})

-- | Multipart request metadata.
assPayload :: Lens' AnnotationSetsSearch SearchAnnotationSetsRequest
assPayload
  = lens _assPayload (\ s a -> s{_assPayload = a})

-- | OAuth bearer token.
assBearerToken :: Lens' AnnotationSetsSearch (Maybe Text)
assBearerToken
  = lens _assBearerToken
      (\ s a -> s{_assBearerToken = a})

-- | JSONP
assCallback :: Lens' AnnotationSetsSearch (Maybe Text)
assCallback
  = lens _assCallback (\ s a -> s{_assCallback = a})

instance GoogleRequest AnnotationSetsSearch where
        type Rs AnnotationSetsSearch =
             SearchAnnotationSetsResponse
        type Scopes AnnotationSetsSearch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics",
               "https://www.googleapis.com/auth/genomics.readonly"]
        requestClient AnnotationSetsSearch'{..}
          = go _assXgafv _assUploadProtocol (Just _assPp)
              _assAccessToken
              _assUploadType
              _assBearerToken
              _assCallback
              (Just AltJSON)
              _assPayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy AnnotationSetsSearchResource)
                      mempty
