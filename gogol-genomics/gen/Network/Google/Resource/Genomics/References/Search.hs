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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches for references which match the given criteria. Implements
-- [GlobalAllianceApi.searchReferences](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/referencemethods.avdl#L146).
--
-- /See:/ < Genomics API Reference> for @genomics.references.search@.
module Network.Google.Resource.Genomics.References.Search
    (
    -- * REST Resource
      ReferencesSearchResource

    -- * Creating a Request
    , referencesSearch
    , ReferencesSearch

    -- * Request Lenses
    , rrXgafv
    , rrUploadProtocol
    , rrPp
    , rrAccessToken
    , rrUploadType
    , rrPayload
    , rrBearerToken
    , rrCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.references.search@ method which the
-- 'ReferencesSearch' request conforms to.
type ReferencesSearchResource =
     "v1" :>
       "references" :>
         "search" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] SearchReferencesRequest :>
                             Post '[JSON] SearchReferencesResponse

-- | Searches for references which match the given criteria. Implements
-- [GlobalAllianceApi.searchReferences](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/referencemethods.avdl#L146).
--
-- /See:/ 'referencesSearch' smart constructor.
data ReferencesSearch = ReferencesSearch
    { _rrXgafv          :: !(Maybe Text)
    , _rrUploadProtocol :: !(Maybe Text)
    , _rrPp             :: !Bool
    , _rrAccessToken    :: !(Maybe Text)
    , _rrUploadType     :: !(Maybe Text)
    , _rrPayload        :: !SearchReferencesRequest
    , _rrBearerToken    :: !(Maybe Text)
    , _rrCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReferencesSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrXgafv'
--
-- * 'rrUploadProtocol'
--
-- * 'rrPp'
--
-- * 'rrAccessToken'
--
-- * 'rrUploadType'
--
-- * 'rrPayload'
--
-- * 'rrBearerToken'
--
-- * 'rrCallback'
referencesSearch
    :: SearchReferencesRequest -- ^ 'rrPayload'
    -> ReferencesSearch
referencesSearch pRrPayload_ =
    ReferencesSearch
    { _rrXgafv = Nothing
    , _rrUploadProtocol = Nothing
    , _rrPp = True
    , _rrAccessToken = Nothing
    , _rrUploadType = Nothing
    , _rrPayload = pRrPayload_
    , _rrBearerToken = Nothing
    , _rrCallback = Nothing
    }

-- | V1 error format.
rrXgafv :: Lens' ReferencesSearch (Maybe Text)
rrXgafv = lens _rrXgafv (\ s a -> s{_rrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rrUploadProtocol :: Lens' ReferencesSearch (Maybe Text)
rrUploadProtocol
  = lens _rrUploadProtocol
      (\ s a -> s{_rrUploadProtocol = a})

-- | Pretty-print response.
rrPp :: Lens' ReferencesSearch Bool
rrPp = lens _rrPp (\ s a -> s{_rrPp = a})

-- | OAuth access token.
rrAccessToken :: Lens' ReferencesSearch (Maybe Text)
rrAccessToken
  = lens _rrAccessToken
      (\ s a -> s{_rrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rrUploadType :: Lens' ReferencesSearch (Maybe Text)
rrUploadType
  = lens _rrUploadType (\ s a -> s{_rrUploadType = a})

-- | Multipart request metadata.
rrPayload :: Lens' ReferencesSearch SearchReferencesRequest
rrPayload
  = lens _rrPayload (\ s a -> s{_rrPayload = a})

-- | OAuth bearer token.
rrBearerToken :: Lens' ReferencesSearch (Maybe Text)
rrBearerToken
  = lens _rrBearerToken
      (\ s a -> s{_rrBearerToken = a})

-- | JSONP
rrCallback :: Lens' ReferencesSearch (Maybe Text)
rrCallback
  = lens _rrCallback (\ s a -> s{_rrCallback = a})

instance GoogleRequest ReferencesSearch where
        type Rs ReferencesSearch = SearchReferencesResponse
        requestClient ReferencesSearch{..}
          = go _rrXgafv _rrUploadProtocol (Just _rrPp)
              _rrAccessToken
              _rrUploadType
              _rrBearerToken
              _rrCallback
              (Just AltJSON)
              _rrPayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy ReferencesSearchResource)
                      mempty
