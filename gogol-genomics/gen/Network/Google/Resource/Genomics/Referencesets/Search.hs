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
-- Module      : Network.Google.Resource.Genomics.Referencesets.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches for reference sets which match the given criteria. For the
-- definitions of references and other genomics resources, see
-- [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- Implements
-- [GlobalAllianceApi.searchReferenceSets](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/referencemethods.avdl#L71)
--
-- /See:/ <https://cloud.google.com/genomics Genomics API Reference> for @genomics.referencesets.search@.
module Network.Google.Resource.Genomics.Referencesets.Search
    (
    -- * REST Resource
      ReferencesetsSearchResource

    -- * Creating a Request
    , referencesetsSearch
    , ReferencesetsSearch

    -- * Request Lenses
    , rsXgafv
    , rsUploadProtocol
    , rsPp
    , rsAccessToken
    , rsUploadType
    , rsPayload
    , rsBearerToken
    , rsCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.referencesets.search@ method which the
-- 'ReferencesetsSearch' request conforms to.
type ReferencesetsSearchResource =
     "v1" :>
       "referencesets" :>
         "search" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] SearchReferenceSetsRequest :>
                             Post '[JSON] SearchReferenceSetsResponse

-- | Searches for reference sets which match the given criteria. For the
-- definitions of references and other genomics resources, see
-- [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- Implements
-- [GlobalAllianceApi.searchReferenceSets](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/referencemethods.avdl#L71)
--
-- /See:/ 'referencesetsSearch' smart constructor.
data ReferencesetsSearch = ReferencesetsSearch'
    { _rsXgafv          :: !(Maybe Xgafv)
    , _rsUploadProtocol :: !(Maybe Text)
    , _rsPp             :: !Bool
    , _rsAccessToken    :: !(Maybe Text)
    , _rsUploadType     :: !(Maybe Text)
    , _rsPayload        :: !SearchReferenceSetsRequest
    , _rsBearerToken    :: !(Maybe Text)
    , _rsCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReferencesetsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsXgafv'
--
-- * 'rsUploadProtocol'
--
-- * 'rsPp'
--
-- * 'rsAccessToken'
--
-- * 'rsUploadType'
--
-- * 'rsPayload'
--
-- * 'rsBearerToken'
--
-- * 'rsCallback'
referencesetsSearch
    :: SearchReferenceSetsRequest -- ^ 'rsPayload'
    -> ReferencesetsSearch
referencesetsSearch pRsPayload_ =
    ReferencesetsSearch'
    { _rsXgafv = Nothing
    , _rsUploadProtocol = Nothing
    , _rsPp = True
    , _rsAccessToken = Nothing
    , _rsUploadType = Nothing
    , _rsPayload = pRsPayload_
    , _rsBearerToken = Nothing
    , _rsCallback = Nothing
    }

-- | V1 error format.
rsXgafv :: Lens' ReferencesetsSearch (Maybe Xgafv)
rsXgafv = lens _rsXgafv (\ s a -> s{_rsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rsUploadProtocol :: Lens' ReferencesetsSearch (Maybe Text)
rsUploadProtocol
  = lens _rsUploadProtocol
      (\ s a -> s{_rsUploadProtocol = a})

-- | Pretty-print response.
rsPp :: Lens' ReferencesetsSearch Bool
rsPp = lens _rsPp (\ s a -> s{_rsPp = a})

-- | OAuth access token.
rsAccessToken :: Lens' ReferencesetsSearch (Maybe Text)
rsAccessToken
  = lens _rsAccessToken
      (\ s a -> s{_rsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rsUploadType :: Lens' ReferencesetsSearch (Maybe Text)
rsUploadType
  = lens _rsUploadType (\ s a -> s{_rsUploadType = a})

-- | Multipart request metadata.
rsPayload :: Lens' ReferencesetsSearch SearchReferenceSetsRequest
rsPayload
  = lens _rsPayload (\ s a -> s{_rsPayload = a})

-- | OAuth bearer token.
rsBearerToken :: Lens' ReferencesetsSearch (Maybe Text)
rsBearerToken
  = lens _rsBearerToken
      (\ s a -> s{_rsBearerToken = a})

-- | JSONP
rsCallback :: Lens' ReferencesetsSearch (Maybe Text)
rsCallback
  = lens _rsCallback (\ s a -> s{_rsCallback = a})

instance GoogleRequest ReferencesetsSearch where
        type Rs ReferencesetsSearch =
             SearchReferenceSetsResponse
        type Scopes ReferencesetsSearch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics",
               "https://www.googleapis.com/auth/genomics.readonly"]
        requestClient ReferencesetsSearch'{..}
          = go _rsXgafv _rsUploadProtocol (Just _rsPp)
              _rsAccessToken
              _rsUploadType
              _rsBearerToken
              _rsCallback
              (Just AltJSON)
              _rsPayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy ReferencesetsSearchResource)
                      mempty
