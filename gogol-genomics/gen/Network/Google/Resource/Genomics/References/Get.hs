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
-- Module      : Network.Google.Resource.Genomics.References.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a reference. Implements
-- [GlobalAllianceApi.getReference](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/referencemethods.avdl#L158).
--
-- /See:/ < Genomics API Reference> for @GenomicsReferencesGet@.
module Network.Google.Resource.Genomics.References.Get
    (
    -- * REST Resource
      ReferencesGetResource

    -- * Creating a Request
    , referencesGet'
    , ReferencesGet'

    -- * Request Lenses
    , rggXgafv
    , rggQuotaUser
    , rggPrettyPrint
    , rggUploadProtocol
    , rggPp
    , rggAccessToken
    , rggUploadType
    , rggReferenceId
    , rggBearerToken
    , rggKey
    , rggOAuthToken
    , rggFields
    , rggCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReferencesGet@ method which the
-- 'ReferencesGet'' request conforms to.
type ReferencesGetResource =
     "v1" :>
       "references" :>
         Capture "referenceId" Text :>
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
                                     Get '[JSON] Reference

-- | Gets a reference. Implements
-- [GlobalAllianceApi.getReference](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/referencemethods.avdl#L158).
--
-- /See:/ 'referencesGet'' smart constructor.
data ReferencesGet' = ReferencesGet'
    { _rggXgafv          :: !(Maybe Text)
    , _rggQuotaUser      :: !(Maybe Text)
    , _rggPrettyPrint    :: !Bool
    , _rggUploadProtocol :: !(Maybe Text)
    , _rggPp             :: !Bool
    , _rggAccessToken    :: !(Maybe Text)
    , _rggUploadType     :: !(Maybe Text)
    , _rggReferenceId    :: !Text
    , _rggBearerToken    :: !(Maybe Text)
    , _rggKey            :: !(Maybe AuthKey)
    , _rggOAuthToken     :: !(Maybe OAuthToken)
    , _rggFields         :: !(Maybe Text)
    , _rggCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReferencesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rggXgafv'
--
-- * 'rggQuotaUser'
--
-- * 'rggPrettyPrint'
--
-- * 'rggUploadProtocol'
--
-- * 'rggPp'
--
-- * 'rggAccessToken'
--
-- * 'rggUploadType'
--
-- * 'rggReferenceId'
--
-- * 'rggBearerToken'
--
-- * 'rggKey'
--
-- * 'rggOAuthToken'
--
-- * 'rggFields'
--
-- * 'rggCallback'
referencesGet'
    :: Text -- ^ 'referenceId'
    -> ReferencesGet'
referencesGet' pRggReferenceId_ =
    ReferencesGet'
    { _rggXgafv = Nothing
    , _rggQuotaUser = Nothing
    , _rggPrettyPrint = True
    , _rggUploadProtocol = Nothing
    , _rggPp = True
    , _rggAccessToken = Nothing
    , _rggUploadType = Nothing
    , _rggReferenceId = pRggReferenceId_
    , _rggBearerToken = Nothing
    , _rggKey = Nothing
    , _rggOAuthToken = Nothing
    , _rggFields = Nothing
    , _rggCallback = Nothing
    }

-- | V1 error format.
rggXgafv :: Lens' ReferencesGet' (Maybe Text)
rggXgafv = lens _rggXgafv (\ s a -> s{_rggXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
rggQuotaUser :: Lens' ReferencesGet' (Maybe Text)
rggQuotaUser
  = lens _rggQuotaUser (\ s a -> s{_rggQuotaUser = a})

-- | Returns response with indentations and line breaks.
rggPrettyPrint :: Lens' ReferencesGet' Bool
rggPrettyPrint
  = lens _rggPrettyPrint
      (\ s a -> s{_rggPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rggUploadProtocol :: Lens' ReferencesGet' (Maybe Text)
rggUploadProtocol
  = lens _rggUploadProtocol
      (\ s a -> s{_rggUploadProtocol = a})

-- | Pretty-print response.
rggPp :: Lens' ReferencesGet' Bool
rggPp = lens _rggPp (\ s a -> s{_rggPp = a})

-- | OAuth access token.
rggAccessToken :: Lens' ReferencesGet' (Maybe Text)
rggAccessToken
  = lens _rggAccessToken
      (\ s a -> s{_rggAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rggUploadType :: Lens' ReferencesGet' (Maybe Text)
rggUploadType
  = lens _rggUploadType
      (\ s a -> s{_rggUploadType = a})

-- | The ID of the reference.
rggReferenceId :: Lens' ReferencesGet' Text
rggReferenceId
  = lens _rggReferenceId
      (\ s a -> s{_rggReferenceId = a})

-- | OAuth bearer token.
rggBearerToken :: Lens' ReferencesGet' (Maybe Text)
rggBearerToken
  = lens _rggBearerToken
      (\ s a -> s{_rggBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rggKey :: Lens' ReferencesGet' (Maybe AuthKey)
rggKey = lens _rggKey (\ s a -> s{_rggKey = a})

-- | OAuth 2.0 token for the current user.
rggOAuthToken :: Lens' ReferencesGet' (Maybe OAuthToken)
rggOAuthToken
  = lens _rggOAuthToken
      (\ s a -> s{_rggOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rggFields :: Lens' ReferencesGet' (Maybe Text)
rggFields
  = lens _rggFields (\ s a -> s{_rggFields = a})

-- | JSONP
rggCallback :: Lens' ReferencesGet' (Maybe Text)
rggCallback
  = lens _rggCallback (\ s a -> s{_rggCallback = a})

instance GoogleAuth ReferencesGet' where
        _AuthKey = rggKey . _Just
        _AuthToken = rggOAuthToken . _Just

instance GoogleRequest ReferencesGet' where
        type Rs ReferencesGet' = Reference
        request = requestWith genomicsRequest
        requestWith rq ReferencesGet'{..}
          = go _rggReferenceId _rggXgafv _rggUploadProtocol
              (Just _rggPp)
              _rggAccessToken
              _rggUploadType
              _rggBearerToken
              _rggCallback
              _rggQuotaUser
              (Just _rggPrettyPrint)
              _rggFields
              _rggKey
              _rggOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy ReferencesGetResource)
                      rq
