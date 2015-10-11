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
    , rssQuotaUser
    , rssPrettyPrint
    , rssUploadProtocol
    , rssPp
    , rssAccessToken
    , rssUploadType
    , rssPayload
    , rssBearerToken
    , rssKey
    , rssOAuthToken
    , rssFields
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
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "fields" Text :>
                               QueryParam "key" AuthKey :>
                                 Header "Authorization" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] SearchReferenceSetsRequest
                                       :>
                                       Post '[JSON] SearchReferenceSetsResponse

-- | Searches for reference sets which match the given criteria. Implements
-- [GlobalAllianceApi.searchReferenceSets](http:\/\/ga4gh.org\/documentation\/api\/v0.5.1\/ga4gh_api.html#\/schema\/org.ga4gh.searchReferenceSets).
--
-- /See:/ 'referencesetsSearch'' smart constructor.
data ReferencesetsSearch' = ReferencesetsSearch'
    { _rssXgafv          :: !(Maybe Text)
    , _rssQuotaUser      :: !(Maybe Text)
    , _rssPrettyPrint    :: !Bool
    , _rssUploadProtocol :: !(Maybe Text)
    , _rssPp             :: !Bool
    , _rssAccessToken    :: !(Maybe Text)
    , _rssUploadType     :: !(Maybe Text)
    , _rssPayload        :: !SearchReferenceSetsRequest
    , _rssBearerToken    :: !(Maybe Text)
    , _rssKey            :: !(Maybe AuthKey)
    , _rssOAuthToken     :: !(Maybe OAuthToken)
    , _rssFields         :: !(Maybe Text)
    , _rssCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReferencesetsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rssXgafv'
--
-- * 'rssQuotaUser'
--
-- * 'rssPrettyPrint'
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
-- * 'rssKey'
--
-- * 'rssOAuthToken'
--
-- * 'rssFields'
--
-- * 'rssCallback'
referencesetsSearch'
    :: SearchReferenceSetsRequest -- ^ 'payload'
    -> ReferencesetsSearch'
referencesetsSearch' pRssPayload_ =
    ReferencesetsSearch'
    { _rssXgafv = Nothing
    , _rssQuotaUser = Nothing
    , _rssPrettyPrint = True
    , _rssUploadProtocol = Nothing
    , _rssPp = True
    , _rssAccessToken = Nothing
    , _rssUploadType = Nothing
    , _rssPayload = pRssPayload_
    , _rssBearerToken = Nothing
    , _rssKey = Nothing
    , _rssOAuthToken = Nothing
    , _rssFields = Nothing
    , _rssCallback = Nothing
    }

-- | V1 error format.
rssXgafv :: Lens' ReferencesetsSearch' (Maybe Text)
rssXgafv = lens _rssXgafv (\ s a -> s{_rssXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
rssQuotaUser :: Lens' ReferencesetsSearch' (Maybe Text)
rssQuotaUser
  = lens _rssQuotaUser (\ s a -> s{_rssQuotaUser = a})

-- | Returns response with indentations and line breaks.
rssPrettyPrint :: Lens' ReferencesetsSearch' Bool
rssPrettyPrint
  = lens _rssPrettyPrint
      (\ s a -> s{_rssPrettyPrint = a})

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

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rssKey :: Lens' ReferencesetsSearch' (Maybe AuthKey)
rssKey = lens _rssKey (\ s a -> s{_rssKey = a})

-- | OAuth 2.0 token for the current user.
rssOAuthToken :: Lens' ReferencesetsSearch' (Maybe OAuthToken)
rssOAuthToken
  = lens _rssOAuthToken
      (\ s a -> s{_rssOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rssFields :: Lens' ReferencesetsSearch' (Maybe Text)
rssFields
  = lens _rssFields (\ s a -> s{_rssFields = a})

-- | JSONP
rssCallback :: Lens' ReferencesetsSearch' (Maybe Text)
rssCallback
  = lens _rssCallback (\ s a -> s{_rssCallback = a})

instance GoogleAuth ReferencesetsSearch' where
        _AuthKey = rssKey . _Just
        _AuthToken = rssOAuthToken . _Just

instance GoogleRequest ReferencesetsSearch' where
        type Rs ReferencesetsSearch' =
             SearchReferenceSetsResponse
        request = requestWith genomicsRequest
        requestWith rq ReferencesetsSearch'{..}
          = go _rssXgafv _rssUploadProtocol (Just _rssPp)
              _rssAccessToken
              _rssUploadType
              _rssBearerToken
              _rssCallback
              _rssQuotaUser
              (Just _rssPrettyPrint)
              _rssFields
              _rssKey
              _rssOAuthToken
              (Just AltJSON)
              _rssPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy ReferencesetsSearchResource)
                      rq
