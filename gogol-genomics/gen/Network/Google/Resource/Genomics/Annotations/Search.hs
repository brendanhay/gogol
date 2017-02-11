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
-- Module      : Network.Google.Resource.Genomics.Annotations.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches for annotations that match the given criteria. Results are
-- ordered by genomic coordinate (by reference sequence, then position).
-- Annotations with equivalent genomic coordinates are returned in an
-- unspecified order. This order is consistent, such that two queries for
-- the same content (regardless of page size) yield annotations in the same
-- order across their respective streams of paginated responses. Caller
-- must have READ permission for the queried annotation sets.
--
-- /See:/ <https://cloud.google.com/genomics Genomics API Reference> for @genomics.annotations.search@.
module Network.Google.Resource.Genomics.Annotations.Search
    (
    -- * REST Resource
      AnnotationsSearchResource

    -- * Creating a Request
    , annotationsSearch
    , AnnotationsSearch

    -- * Request Lenses
    , asXgafv
    , asUploadProtocol
    , asPp
    , asAccessToken
    , asUploadType
    , asPayload
    , asBearerToken
    , asCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.annotations.search@ method which the
-- 'AnnotationsSearch' request conforms to.
type AnnotationsSearchResource =
     "v1" :>
       "annotations" :>
         "search" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] SearchAnnotationsRequest :>
                             Post '[JSON] SearchAnnotationsResponse

-- | Searches for annotations that match the given criteria. Results are
-- ordered by genomic coordinate (by reference sequence, then position).
-- Annotations with equivalent genomic coordinates are returned in an
-- unspecified order. This order is consistent, such that two queries for
-- the same content (regardless of page size) yield annotations in the same
-- order across their respective streams of paginated responses. Caller
-- must have READ permission for the queried annotation sets.
--
-- /See:/ 'annotationsSearch' smart constructor.
data AnnotationsSearch = AnnotationsSearch'
    { _asXgafv          :: !(Maybe Xgafv)
    , _asUploadProtocol :: !(Maybe Text)
    , _asPp             :: !Bool
    , _asAccessToken    :: !(Maybe Text)
    , _asUploadType     :: !(Maybe Text)
    , _asPayload        :: !SearchAnnotationsRequest
    , _asBearerToken    :: !(Maybe Text)
    , _asCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asXgafv'
--
-- * 'asUploadProtocol'
--
-- * 'asPp'
--
-- * 'asAccessToken'
--
-- * 'asUploadType'
--
-- * 'asPayload'
--
-- * 'asBearerToken'
--
-- * 'asCallback'
annotationsSearch
    :: SearchAnnotationsRequest -- ^ 'asPayload'
    -> AnnotationsSearch
annotationsSearch pAsPayload_ =
    AnnotationsSearch'
    { _asXgafv = Nothing
    , _asUploadProtocol = Nothing
    , _asPp = True
    , _asAccessToken = Nothing
    , _asUploadType = Nothing
    , _asPayload = pAsPayload_
    , _asBearerToken = Nothing
    , _asCallback = Nothing
    }

-- | V1 error format.
asXgafv :: Lens' AnnotationsSearch (Maybe Xgafv)
asXgafv = lens _asXgafv (\ s a -> s{_asXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
asUploadProtocol :: Lens' AnnotationsSearch (Maybe Text)
asUploadProtocol
  = lens _asUploadProtocol
      (\ s a -> s{_asUploadProtocol = a})

-- | Pretty-print response.
asPp :: Lens' AnnotationsSearch Bool
asPp = lens _asPp (\ s a -> s{_asPp = a})

-- | OAuth access token.
asAccessToken :: Lens' AnnotationsSearch (Maybe Text)
asAccessToken
  = lens _asAccessToken
      (\ s a -> s{_asAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
asUploadType :: Lens' AnnotationsSearch (Maybe Text)
asUploadType
  = lens _asUploadType (\ s a -> s{_asUploadType = a})

-- | Multipart request metadata.
asPayload :: Lens' AnnotationsSearch SearchAnnotationsRequest
asPayload
  = lens _asPayload (\ s a -> s{_asPayload = a})

-- | OAuth bearer token.
asBearerToken :: Lens' AnnotationsSearch (Maybe Text)
asBearerToken
  = lens _asBearerToken
      (\ s a -> s{_asBearerToken = a})

-- | JSONP
asCallback :: Lens' AnnotationsSearch (Maybe Text)
asCallback
  = lens _asCallback (\ s a -> s{_asCallback = a})

instance GoogleRequest AnnotationsSearch where
        type Rs AnnotationsSearch = SearchAnnotationsResponse
        type Scopes AnnotationsSearch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics",
               "https://www.googleapis.com/auth/genomics.readonly"]
        requestClient AnnotationsSearch'{..}
          = go _asXgafv _asUploadProtocol (Just _asPp)
              _asAccessToken
              _asUploadType
              _asBearerToken
              _asCallback
              (Just AltJSON)
              _asPayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy AnnotationsSearchResource)
                      mempty
