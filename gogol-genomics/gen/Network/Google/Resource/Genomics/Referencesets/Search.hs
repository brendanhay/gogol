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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Searches for reference sets which match the given criteria. Implements
-- [GlobalAllianceApi.searchReferenceSets](http:\/\/ga4gh.org\/documentation\/api\/v0.5.1\/ga4gh_api.html#\/schema\/org.ga4gh.searchReferenceSets).
--
-- /See:/ < Genomics API Reference> for @GenomicsReferencesetsSearch@.
module Network.Google.Resource.Genomics.Referencesets.Search
    (
    -- * REST Resource
      ReferencesetsSearchResource

    -- * Creating a Request
    , referencesetsSearch'
    , ReferencesetsSearch'

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

-- | A resource alias for @GenomicsReferencesetsSearch@ method which the
-- 'ReferencesetsSearch'' request conforms to.
type ReferencesetsSearchResource =
     "v1" :>
       "referencesets" :>
         "search" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] SearchReferenceSetsRequest :>
                             Post '[JSON] SearchReferenceSetsResponse

-- | Searches for reference sets which match the given criteria. Implements
-- [GlobalAllianceApi.searchReferenceSets](http:\/\/ga4gh.org\/documentation\/api\/v0.5.1\/ga4gh_api.html#\/schema\/org.ga4gh.searchReferenceSets).
--
-- /See:/ 'referencesetsSearch'' smart constructor.
data ReferencesetsSearch' = ReferencesetsSearch'
    { _rssXgafv          :: !(Maybe Text)
    , _rssUploadProtocol :: !(Maybe Text)
    , _rssPp             :: !Bool
    , _rssAccessToken    :: !(Maybe Text)
    , _rssUploadType     :: !(Maybe Text)
    , _rssPayload        :: !SearchReferenceSetsRequest
    , _rssBearerToken    :: !(Maybe Text)
    , _rssCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReferencesetsSearch'' with the minimum fields required to make a request.
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
referencesetsSearch'
    :: SearchReferenceSetsRequest -- ^ 'payload'
    -> ReferencesetsSearch'
referencesetsSearch' pRssPayload_ =
    ReferencesetsSearch'
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
rssXgafv :: Lens' ReferencesetsSearch' (Maybe Text)
rssXgafv = lens _rssXgafv (\ s a -> s{_rssXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rssUploadProtocol :: Lens' ReferencesetsSearch' (Maybe Text)
rssUploadProtocol
  = lens _rssUploadProtocol
      (\ s a -> s{_rssUploadProtocol = a})

-- | Pretty-print response.
rssPp :: Lens' ReferencesetsSearch' Bool
rssPp = lens _rssPp (\ s a -> s{_rssPp = a})

-- | OAuth access token.
rssAccessToken :: Lens' ReferencesetsSearch' (Maybe Text)
rssAccessToken
  = lens _rssAccessToken
      (\ s a -> s{_rssAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rssUploadType :: Lens' ReferencesetsSearch' (Maybe Text)
rssUploadType
  = lens _rssUploadType
      (\ s a -> s{_rssUploadType = a})

-- | Multipart request metadata.
rssPayload :: Lens' ReferencesetsSearch' SearchReferenceSetsRequest
rssPayload
  = lens _rssPayload (\ s a -> s{_rssPayload = a})

-- | OAuth bearer token.
rssBearerToken :: Lens' ReferencesetsSearch' (Maybe Text)
rssBearerToken
  = lens _rssBearerToken
      (\ s a -> s{_rssBearerToken = a})

-- | JSONP
rssCallback :: Lens' ReferencesetsSearch' (Maybe Text)
rssCallback
  = lens _rssCallback (\ s a -> s{_rssCallback = a})

instance GoogleRequest ReferencesetsSearch' where
        type Rs ReferencesetsSearch' =
             SearchReferenceSetsResponse
        requestClient ReferencesetsSearch'{..}
          = go _rssXgafv _rssUploadProtocol (Just _rssPp)
              _rssAccessToken
              _rssUploadType
              _rssBearerToken
              _rssCallback
              (Just AltJSON)
              _rssPayload
              genomics
          where go
                  = buildClient
                      (Proxy :: Proxy ReferencesetsSearchResource)
                      mempty
