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
-- Module      : Network.Google.Resource.Genomics.Readgroupsets.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches for read group sets matching the criteria. Implements
-- [GlobalAllianceApi.searchReadGroupSets](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/readmethods.avdl#L135).
--
-- /See:/ < Genomics API Reference> for @genomics.readgroupsets.search@.
module Network.Google.Resource.Genomics.Readgroupsets.Search
    (
    -- * REST Resource
      ReadgroupsetsSearchResource

    -- * Creating a Request
    , readgroupsetsSearch
    , ReadgroupsetsSearch

    -- * Request Lenses
    , rssXgafv
    , rssUploadProtocol
    , rssPp
    , rssAccessToken
    , rssUploadType
    , rssPayload
    , rssBearerToken
    , rssCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.readgroupsets.search@ method which the
-- 'ReadgroupsetsSearch' request conforms to.
type ReadgroupsetsSearchResource =
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

-- | Searches for read group sets matching the criteria. Implements
-- [GlobalAllianceApi.searchReadGroupSets](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/readmethods.avdl#L135).
--
-- /See:/ 'readgroupsetsSearch' smart constructor.
data ReadgroupsetsSearch = ReadgroupsetsSearch
    { _rssXgafv          :: !(Maybe Text)
    , _rssUploadProtocol :: !(Maybe Text)
    , _rssPp             :: !Bool
    , _rssAccessToken    :: !(Maybe Text)
    , _rssUploadType     :: !(Maybe Text)
    , _rssPayload        :: !SearchReadGroupSetsRequest
    , _rssBearerToken    :: !(Maybe Text)
    , _rssCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadgroupsetsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rssXgafv'
--
-- * 'rssUploadProtocol'
--
-- * 'rssPp'
--
-- * 'rssAccessToken'
--
-- * 'rssUploadType'
--
-- * 'rssPayload'
--
-- * 'rssBearerToken'
--
-- * 'rssCallback'
readgroupsetsSearch
    :: SearchReadGroupSetsRequest -- ^ 'rssPayload'
    -> ReadgroupsetsSearch
readgroupsetsSearch pRssPayload_ =
    ReadgroupsetsSearch
    { _rssXgafv = Nothing
    , _rssUploadProtocol = Nothing
    , _rssPp = True
    , _rssAccessToken = Nothing
    , _rssUploadType = Nothing
    , _rssPayload = pRssPayload_
    , _rssBearerToken = Nothing
    , _rssCallback = Nothing
    }

-- | V1 error format.
rssXgafv :: Lens' ReadgroupsetsSearch (Maybe Text)
rssXgafv = lens _rssXgafv (\ s a -> s{_rssXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rssUploadProtocol :: Lens' ReadgroupsetsSearch (Maybe Text)
rssUploadProtocol
  = lens _rssUploadProtocol
      (\ s a -> s{_rssUploadProtocol = a})

-- | Pretty-print response.
rssPp :: Lens' ReadgroupsetsSearch Bool
rssPp = lens _rssPp (\ s a -> s{_rssPp = a})

-- | OAuth access token.
rssAccessToken :: Lens' ReadgroupsetsSearch (Maybe Text)
rssAccessToken
  = lens _rssAccessToken
      (\ s a -> s{_rssAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rssUploadType :: Lens' ReadgroupsetsSearch (Maybe Text)
rssUploadType
  = lens _rssUploadType
      (\ s a -> s{_rssUploadType = a})

-- | Multipart request metadata.
rssPayload :: Lens' ReadgroupsetsSearch SearchReadGroupSetsRequest
rssPayload
  = lens _rssPayload (\ s a -> s{_rssPayload = a})

-- | OAuth bearer token.
rssBearerToken :: Lens' ReadgroupsetsSearch (Maybe Text)
rssBearerToken
  = lens _rssBearerToken
      (\ s a -> s{_rssBearerToken = a})

-- | JSONP
rssCallback :: Lens' ReadgroupsetsSearch (Maybe Text)
rssCallback
  = lens _rssCallback (\ s a -> s{_rssCallback = a})

instance GoogleRequest ReadgroupsetsSearch where
        type Rs ReadgroupsetsSearch =
             SearchReadGroupSetsResponse
        requestClient ReadgroupsetsSearch{..}
          = go _rssXgafv _rssUploadProtocol (Just _rssPp)
              _rssAccessToken
              _rssUploadType
              _rssBearerToken
              _rssCallback
              (Just AltJSON)
              _rssPayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy ReadgroupsetsSearchResource)
                      mempty
