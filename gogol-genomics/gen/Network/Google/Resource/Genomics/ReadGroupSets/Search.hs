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
-- Module      : Network.Google.Resource.Genomics.ReadGroupSets.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches for read group sets matching the criteria. For the definitions
-- of read group sets and other genomics resources, see [Fundamentals of
-- Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- Implements
-- [GlobalAllianceApi.searchReadGroupSets](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/readmethods.avdl#L135).
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.readgroupsets.search@.
module Network.Google.Resource.Genomics.ReadGroupSets.Search
    (
    -- * REST Resource
      ReadGroupSetsSearchResource

    -- * Creating a Request
    , readGroupSetsSearch
    , ReadGroupSetsSearch

    -- * Request Lenses
    , rgssXgafv
    , rgssUploadProtocol
    , rgssPp
    , rgssAccessToken
    , rgssUploadType
    , rgssPayload
    , rgssBearerToken
    , rgssCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.readgroupsets.search@ method which the
-- 'ReadGroupSetsSearch' request conforms to.
type ReadGroupSetsSearchResource =
     "v1" :>
       "readgroupsets" :>
         "search" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] SearchReadGroupSetsRequest :>
                             Post '[JSON] SearchReadGroupSetsResponse

-- | Searches for read group sets matching the criteria. For the definitions
-- of read group sets and other genomics resources, see [Fundamentals of
-- Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- Implements
-- [GlobalAllianceApi.searchReadGroupSets](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/readmethods.avdl#L135).
--
-- /See:/ 'readGroupSetsSearch' smart constructor.
data ReadGroupSetsSearch = ReadGroupSetsSearch'
    { _rgssXgafv          :: !(Maybe Text)
    , _rgssUploadProtocol :: !(Maybe Text)
    , _rgssPp             :: !Bool
    , _rgssAccessToken    :: !(Maybe Text)
    , _rgssUploadType     :: !(Maybe Text)
    , _rgssPayload        :: !SearchReadGroupSetsRequest
    , _rgssBearerToken    :: !(Maybe Text)
    , _rgssCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadGroupSetsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgssXgafv'
--
-- * 'rgssUploadProtocol'
--
-- * 'rgssPp'
--
-- * 'rgssAccessToken'
--
-- * 'rgssUploadType'
--
-- * 'rgssPayload'
--
-- * 'rgssBearerToken'
--
-- * 'rgssCallback'
readGroupSetsSearch
    :: SearchReadGroupSetsRequest -- ^ 'rgssPayload'
    -> ReadGroupSetsSearch
readGroupSetsSearch pRgssPayload_ =
    ReadGroupSetsSearch'
    { _rgssXgafv = Nothing
    , _rgssUploadProtocol = Nothing
    , _rgssPp = True
    , _rgssAccessToken = Nothing
    , _rgssUploadType = Nothing
    , _rgssPayload = pRgssPayload_
    , _rgssBearerToken = Nothing
    , _rgssCallback = Nothing
    }

-- | V1 error format.
rgssXgafv :: Lens' ReadGroupSetsSearch (Maybe Text)
rgssXgafv
  = lens _rgssXgafv (\ s a -> s{_rgssXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rgssUploadProtocol :: Lens' ReadGroupSetsSearch (Maybe Text)
rgssUploadProtocol
  = lens _rgssUploadProtocol
      (\ s a -> s{_rgssUploadProtocol = a})

-- | Pretty-print response.
rgssPp :: Lens' ReadGroupSetsSearch Bool
rgssPp = lens _rgssPp (\ s a -> s{_rgssPp = a})

-- | OAuth access token.
rgssAccessToken :: Lens' ReadGroupSetsSearch (Maybe Text)
rgssAccessToken
  = lens _rgssAccessToken
      (\ s a -> s{_rgssAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rgssUploadType :: Lens' ReadGroupSetsSearch (Maybe Text)
rgssUploadType
  = lens _rgssUploadType
      (\ s a -> s{_rgssUploadType = a})

-- | Multipart request metadata.
rgssPayload :: Lens' ReadGroupSetsSearch SearchReadGroupSetsRequest
rgssPayload
  = lens _rgssPayload (\ s a -> s{_rgssPayload = a})

-- | OAuth bearer token.
rgssBearerToken :: Lens' ReadGroupSetsSearch (Maybe Text)
rgssBearerToken
  = lens _rgssBearerToken
      (\ s a -> s{_rgssBearerToken = a})

-- | JSONP
rgssCallback :: Lens' ReadGroupSetsSearch (Maybe Text)
rgssCallback
  = lens _rgssCallback (\ s a -> s{_rgssCallback = a})

instance GoogleRequest ReadGroupSetsSearch where
        type Rs ReadGroupSetsSearch =
             SearchReadGroupSetsResponse
        type Scopes ReadGroupSetsSearch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics",
               "https://www.googleapis.com/auth/genomics.readonly"]
        requestClient ReadGroupSetsSearch'{..}
          = go _rgssXgafv _rgssUploadProtocol (Just _rgssPp)
              _rgssAccessToken
              _rgssUploadType
              _rgssBearerToken
              _rgssCallback
              (Just AltJSON)
              _rgssPayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy ReadGroupSetsSearchResource)
                      mempty
