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
-- Module      : Network.Google.Resource.Genomics.CallSets.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of call sets matching the criteria. For the definitions of
-- call sets and other genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- Implements
-- [GlobalAllianceApi.searchCallSets](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/variantmethods.avdl#L178).
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.callsets.search@.
module Network.Google.Resource.Genomics.CallSets.Search
    (
    -- * REST Resource
      CallSetsSearchResource

    -- * Creating a Request
    , callSetsSearch
    , CallSetsSearch

    -- * Request Lenses
    , cssXgafv
    , cssUploadProtocol
    , cssPp
    , cssAccessToken
    , cssUploadType
    , cssPayload
    , cssBearerToken
    , cssCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.callsets.search@ method which the
-- 'CallSetsSearch' request conforms to.
type CallSetsSearchResource =
     "v1" :>
       "callsets" :>
         "search" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] SearchCallSetsRequest :>
                             Post '[JSON] SearchCallSetsResponse

-- | Gets a list of call sets matching the criteria. For the definitions of
-- call sets and other genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- Implements
-- [GlobalAllianceApi.searchCallSets](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/variantmethods.avdl#L178).
--
-- /See:/ 'callSetsSearch' smart constructor.
data CallSetsSearch = CallSetsSearch
    { _cssXgafv          :: !(Maybe Text)
    , _cssUploadProtocol :: !(Maybe Text)
    , _cssPp             :: !Bool
    , _cssAccessToken    :: !(Maybe Text)
    , _cssUploadType     :: !(Maybe Text)
    , _cssPayload        :: !SearchCallSetsRequest
    , _cssBearerToken    :: !(Maybe Text)
    , _cssCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CallSetsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cssXgafv'
--
-- * 'cssUploadProtocol'
--
-- * 'cssPp'
--
-- * 'cssAccessToken'
--
-- * 'cssUploadType'
--
-- * 'cssPayload'
--
-- * 'cssBearerToken'
--
-- * 'cssCallback'
callSetsSearch
    :: SearchCallSetsRequest -- ^ 'cssPayload'
    -> CallSetsSearch
callSetsSearch pCssPayload_ =
    CallSetsSearch
    { _cssXgafv = Nothing
    , _cssUploadProtocol = Nothing
    , _cssPp = True
    , _cssAccessToken = Nothing
    , _cssUploadType = Nothing
    , _cssPayload = pCssPayload_
    , _cssBearerToken = Nothing
    , _cssCallback = Nothing
    }

-- | V1 error format.
cssXgafv :: Lens' CallSetsSearch (Maybe Text)
cssXgafv = lens _cssXgafv (\ s a -> s{_cssXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cssUploadProtocol :: Lens' CallSetsSearch (Maybe Text)
cssUploadProtocol
  = lens _cssUploadProtocol
      (\ s a -> s{_cssUploadProtocol = a})

-- | Pretty-print response.
cssPp :: Lens' CallSetsSearch Bool
cssPp = lens _cssPp (\ s a -> s{_cssPp = a})

-- | OAuth access token.
cssAccessToken :: Lens' CallSetsSearch (Maybe Text)
cssAccessToken
  = lens _cssAccessToken
      (\ s a -> s{_cssAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cssUploadType :: Lens' CallSetsSearch (Maybe Text)
cssUploadType
  = lens _cssUploadType
      (\ s a -> s{_cssUploadType = a})

-- | Multipart request metadata.
cssPayload :: Lens' CallSetsSearch SearchCallSetsRequest
cssPayload
  = lens _cssPayload (\ s a -> s{_cssPayload = a})

-- | OAuth bearer token.
cssBearerToken :: Lens' CallSetsSearch (Maybe Text)
cssBearerToken
  = lens _cssBearerToken
      (\ s a -> s{_cssBearerToken = a})

-- | JSONP
cssCallback :: Lens' CallSetsSearch (Maybe Text)
cssCallback
  = lens _cssCallback (\ s a -> s{_cssCallback = a})

instance GoogleRequest CallSetsSearch where
        type Rs CallSetsSearch = SearchCallSetsResponse
        type Scopes CallSetsSearch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics",
               "https://www.googleapis.com/auth/genomics.readonly"]
        requestClient CallSetsSearch{..}
          = go _cssXgafv _cssUploadProtocol (Just _cssPp)
              _cssAccessToken
              _cssUploadType
              _cssBearerToken
              _cssCallback
              (Just AltJSON)
              _cssPayload
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy CallSetsSearchResource)
                      mempty
