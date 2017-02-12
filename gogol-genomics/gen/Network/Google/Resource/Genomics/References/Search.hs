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
-- Module      : Network.Google.Resource.Genomics.References.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches for references which match the given criteria. For the
-- definitions of references and other genomics resources, see
-- [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- Implements
-- [GlobalAllianceApi.searchReferences](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/referencemethods.avdl#L146).
--
-- /See:/ <https://cloud.google.com/genomics Genomics API Reference> for @genomics.references.search@.
module Network.Google.Resource.Genomics.References.Search
    (
    -- * REST Resource
      ReferencesSearchResource

    -- * Creating a Request
    , referencesSearch
    , ReferencesSearch

    -- * Request Lenses
    , refXgafv
    , refUploadProtocol
    , refPp
    , refAccessToken
    , refUploadType
    , refPayload
    , refBearerToken
    , refCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.references.search@ method which the
-- 'ReferencesSearch' request conforms to.
type ReferencesSearchResource =
     "v1" :>
       "references" :>
         "search" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] SearchReferencesRequest :>
                             Post '[JSON] SearchReferencesResponse

-- | Searches for references which match the given criteria. For the
-- definitions of references and other genomics resources, see
-- [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- Implements
-- [GlobalAllianceApi.searchReferences](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/referencemethods.avdl#L146).
--
-- /See:/ 'referencesSearch' smart constructor.
data ReferencesSearch = ReferencesSearch'
    { _refXgafv          :: !(Maybe Xgafv)
    , _refUploadProtocol :: !(Maybe Text)
    , _refPp             :: !Bool
    , _refAccessToken    :: !(Maybe Text)
    , _refUploadType     :: !(Maybe Text)
    , _refPayload        :: !SearchReferencesRequest
    , _refBearerToken    :: !(Maybe Text)
    , _refCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReferencesSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'refXgafv'
--
-- * 'refUploadProtocol'
--
-- * 'refPp'
--
-- * 'refAccessToken'
--
-- * 'refUploadType'
--
-- * 'refPayload'
--
-- * 'refBearerToken'
--
-- * 'refCallback'
referencesSearch
    :: SearchReferencesRequest -- ^ 'refPayload'
    -> ReferencesSearch
referencesSearch pRefPayload_ =
    ReferencesSearch'
    { _refXgafv = Nothing
    , _refUploadProtocol = Nothing
    , _refPp = True
    , _refAccessToken = Nothing
    , _refUploadType = Nothing
    , _refPayload = pRefPayload_
    , _refBearerToken = Nothing
    , _refCallback = Nothing
    }

-- | V1 error format.
refXgafv :: Lens' ReferencesSearch (Maybe Xgafv)
refXgafv = lens _refXgafv (\ s a -> s{_refXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
refUploadProtocol :: Lens' ReferencesSearch (Maybe Text)
refUploadProtocol
  = lens _refUploadProtocol
      (\ s a -> s{_refUploadProtocol = a})

-- | Pretty-print response.
refPp :: Lens' ReferencesSearch Bool
refPp = lens _refPp (\ s a -> s{_refPp = a})

-- | OAuth access token.
refAccessToken :: Lens' ReferencesSearch (Maybe Text)
refAccessToken
  = lens _refAccessToken
      (\ s a -> s{_refAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
refUploadType :: Lens' ReferencesSearch (Maybe Text)
refUploadType
  = lens _refUploadType
      (\ s a -> s{_refUploadType = a})

-- | Multipart request metadata.
refPayload :: Lens' ReferencesSearch SearchReferencesRequest
refPayload
  = lens _refPayload (\ s a -> s{_refPayload = a})

-- | OAuth bearer token.
refBearerToken :: Lens' ReferencesSearch (Maybe Text)
refBearerToken
  = lens _refBearerToken
      (\ s a -> s{_refBearerToken = a})

-- | JSONP
refCallback :: Lens' ReferencesSearch (Maybe Text)
refCallback
  = lens _refCallback (\ s a -> s{_refCallback = a})

instance GoogleRequest ReferencesSearch where
        type Rs ReferencesSearch = SearchReferencesResponse
        type Scopes ReferencesSearch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics",
               "https://www.googleapis.com/auth/genomics.readonly"]
        requestClient ReferencesSearch'{..}
          = go _refXgafv _refUploadProtocol (Just _refPp)
              _refAccessToken
              _refUploadType
              _refBearerToken
              _refCallback
              (Just AltJSON)
              _refPayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy ReferencesSearchResource)
                      mempty
