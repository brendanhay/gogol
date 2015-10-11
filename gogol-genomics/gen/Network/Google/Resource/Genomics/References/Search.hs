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
-- | Searches for references which match the given criteria. Implements
-- [GlobalAllianceApi.searchReferences](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/referencemethods.avdl#L146).
--
-- /See:/ < Genomics API Reference> for @GenomicsReferencesSearch@.
module Network.Google.Resource.Genomics.References.Search
    (
    -- * REST Resource
      ReferencesSearchResource

    -- * Creating a Request
    , referencesSearch'
    , ReferencesSearch'

    -- * Request Lenses
    , refXgafv
    , refQuotaUser
    , refPrettyPrint
    , refUploadProtocol
    , refPp
    , refAccessToken
    , refUploadType
    , refPayload
    , refBearerToken
    , refKey
    , refOAuthToken
    , refFields
    , refCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReferencesSearch@ method which the
-- 'ReferencesSearch'' request conforms to.
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
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "fields" Text :>
                               QueryParam "key" AuthKey :>
                                 Header "Authorization" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] SearchReferencesRequest :>
                                       Post '[JSON] SearchReferencesResponse

-- | Searches for references which match the given criteria. Implements
-- [GlobalAllianceApi.searchReferences](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/referencemethods.avdl#L146).
--
-- /See:/ 'referencesSearch'' smart constructor.
data ReferencesSearch' = ReferencesSearch'
    { _refXgafv          :: !(Maybe Text)
    , _refQuotaUser      :: !(Maybe Text)
    , _refPrettyPrint    :: !Bool
    , _refUploadProtocol :: !(Maybe Text)
    , _refPp             :: !Bool
    , _refAccessToken    :: !(Maybe Text)
    , _refUploadType     :: !(Maybe Text)
    , _refPayload        :: !SearchReferencesRequest
    , _refBearerToken    :: !(Maybe Text)
    , _refKey            :: !(Maybe AuthKey)
    , _refOAuthToken     :: !(Maybe OAuthToken)
    , _refFields         :: !(Maybe Text)
    , _refCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReferencesSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'refXgafv'
--
-- * 'refQuotaUser'
--
-- * 'refPrettyPrint'
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
-- * 'refKey'
--
-- * 'refOAuthToken'
--
-- * 'refFields'
--
-- * 'refCallback'
referencesSearch'
    :: SearchReferencesRequest -- ^ 'payload'
    -> ReferencesSearch'
referencesSearch' pRefPayload_ =
    ReferencesSearch'
    { _refXgafv = Nothing
    , _refQuotaUser = Nothing
    , _refPrettyPrint = True
    , _refUploadProtocol = Nothing
    , _refPp = True
    , _refAccessToken = Nothing
    , _refUploadType = Nothing
    , _refPayload = pRefPayload_
    , _refBearerToken = Nothing
    , _refKey = Nothing
    , _refOAuthToken = Nothing
    , _refFields = Nothing
    , _refCallback = Nothing
    }

-- | V1 error format.
refXgafv :: Lens' ReferencesSearch' (Maybe Text)
refXgafv = lens _refXgafv (\ s a -> s{_refXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
refQuotaUser :: Lens' ReferencesSearch' (Maybe Text)
refQuotaUser
  = lens _refQuotaUser (\ s a -> s{_refQuotaUser = a})

-- | Returns response with indentations and line breaks.
refPrettyPrint :: Lens' ReferencesSearch' Bool
refPrettyPrint
  = lens _refPrettyPrint
      (\ s a -> s{_refPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
refUploadProtocol :: Lens' ReferencesSearch' (Maybe Text)
refUploadProtocol
  = lens _refUploadProtocol
      (\ s a -> s{_refUploadProtocol = a})

-- | Pretty-print response.
refPp :: Lens' ReferencesSearch' Bool
refPp = lens _refPp (\ s a -> s{_refPp = a})

-- | OAuth access token.
refAccessToken :: Lens' ReferencesSearch' (Maybe Text)
refAccessToken
  = lens _refAccessToken
      (\ s a -> s{_refAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
refUploadType :: Lens' ReferencesSearch' (Maybe Text)
refUploadType
  = lens _refUploadType
      (\ s a -> s{_refUploadType = a})

-- | Multipart request metadata.
refPayload :: Lens' ReferencesSearch' SearchReferencesRequest
refPayload
  = lens _refPayload (\ s a -> s{_refPayload = a})

-- | OAuth bearer token.
refBearerToken :: Lens' ReferencesSearch' (Maybe Text)
refBearerToken
  = lens _refBearerToken
      (\ s a -> s{_refBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
refKey :: Lens' ReferencesSearch' (Maybe AuthKey)
refKey = lens _refKey (\ s a -> s{_refKey = a})

-- | OAuth 2.0 token for the current user.
refOAuthToken :: Lens' ReferencesSearch' (Maybe OAuthToken)
refOAuthToken
  = lens _refOAuthToken
      (\ s a -> s{_refOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
refFields :: Lens' ReferencesSearch' (Maybe Text)
refFields
  = lens _refFields (\ s a -> s{_refFields = a})

-- | JSONP
refCallback :: Lens' ReferencesSearch' (Maybe Text)
refCallback
  = lens _refCallback (\ s a -> s{_refCallback = a})

instance GoogleAuth ReferencesSearch' where
        _AuthKey = refKey . _Just
        _AuthToken = refOAuthToken . _Just

instance GoogleRequest ReferencesSearch' where
        type Rs ReferencesSearch' = SearchReferencesResponse
        request = requestWith genomicsRequest
        requestWith rq ReferencesSearch'{..}
          = go _refXgafv _refUploadProtocol (Just _refPp)
              _refAccessToken
              _refUploadType
              _refBearerToken
              _refCallback
              _refQuotaUser
              (Just _refPrettyPrint)
              _refFields
              _refKey
              _refOAuthToken
              (Just AltJSON)
              _refPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy ReferencesSearchResource)
                      rq
