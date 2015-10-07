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
-- Module      : Network.Google.Resource.Genomics.Referencesets.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a reference set. Implements
-- [GlobalAllianceApi.getReferenceSet](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/referencemethods.avdl#L83).
--
-- /See:/ < Genomics API Reference> for @GenomicsReferencesetsGet@.
module Network.Google.Resource.Genomics.Referencesets.Get
    (
    -- * REST Resource
      ReferencesetsGetResource

    -- * Creating a Request
    , referencesetsGet'
    , ReferencesetsGet'

    -- * Request Lenses
    , rReferenceSetId
    , rXgafv
    , rQuotaUser
    , rPrettyPrint
    , rUploadProtocol
    , rPp
    , rAccessToken
    , rUploadType
    , rBearerToken
    , rKey
    , rOAuthToken
    , rFields
    , rCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReferencesetsGet@ method which the
-- 'ReferencesetsGet'' request conforms to.
type ReferencesetsGetResource =
     "v1" :>
       "referencesets" :>
         Capture "referenceSetId" Text :>
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
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] ReferenceSet

-- | Gets a reference set. Implements
-- [GlobalAllianceApi.getReferenceSet](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/referencemethods.avdl#L83).
--
-- /See:/ 'referencesetsGet'' smart constructor.
data ReferencesetsGet' = ReferencesetsGet'
    { _rReferenceSetId :: !Text
    , _rXgafv          :: !(Maybe Text)
    , _rQuotaUser      :: !(Maybe Text)
    , _rPrettyPrint    :: !Bool
    , _rUploadProtocol :: !(Maybe Text)
    , _rPp             :: !Bool
    , _rAccessToken    :: !(Maybe Text)
    , _rUploadType     :: !(Maybe Text)
    , _rBearerToken    :: !(Maybe Text)
    , _rKey            :: !(Maybe AuthKey)
    , _rOAuthToken     :: !(Maybe OAuthToken)
    , _rFields         :: !(Maybe Text)
    , _rCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReferencesetsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rReferenceSetId'
--
-- * 'rXgafv'
--
-- * 'rQuotaUser'
--
-- * 'rPrettyPrint'
--
-- * 'rUploadProtocol'
--
-- * 'rPp'
--
-- * 'rAccessToken'
--
-- * 'rUploadType'
--
-- * 'rBearerToken'
--
-- * 'rKey'
--
-- * 'rOAuthToken'
--
-- * 'rFields'
--
-- * 'rCallback'
referencesetsGet'
    :: Text -- ^ 'referenceSetId'
    -> ReferencesetsGet'
referencesetsGet' pRReferenceSetId_ =
    ReferencesetsGet'
    { _rReferenceSetId = pRReferenceSetId_
    , _rXgafv = Nothing
    , _rQuotaUser = Nothing
    , _rPrettyPrint = True
    , _rUploadProtocol = Nothing
    , _rPp = True
    , _rAccessToken = Nothing
    , _rUploadType = Nothing
    , _rBearerToken = Nothing
    , _rKey = Nothing
    , _rOAuthToken = Nothing
    , _rFields = Nothing
    , _rCallback = Nothing
    }

-- | The ID of the reference set.
rReferenceSetId :: Lens' ReferencesetsGet' Text
rReferenceSetId
  = lens _rReferenceSetId
      (\ s a -> s{_rReferenceSetId = a})

-- | V1 error format.
rXgafv :: Lens' ReferencesetsGet' (Maybe Text)
rXgafv = lens _rXgafv (\ s a -> s{_rXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
rQuotaUser :: Lens' ReferencesetsGet' (Maybe Text)
rQuotaUser
  = lens _rQuotaUser (\ s a -> s{_rQuotaUser = a})

-- | Returns response with indentations and line breaks.
rPrettyPrint :: Lens' ReferencesetsGet' Bool
rPrettyPrint
  = lens _rPrettyPrint (\ s a -> s{_rPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rUploadProtocol :: Lens' ReferencesetsGet' (Maybe Text)
rUploadProtocol
  = lens _rUploadProtocol
      (\ s a -> s{_rUploadProtocol = a})

-- | Pretty-print response.
rPp :: Lens' ReferencesetsGet' Bool
rPp = lens _rPp (\ s a -> s{_rPp = a})

-- | OAuth access token.
rAccessToken :: Lens' ReferencesetsGet' (Maybe Text)
rAccessToken
  = lens _rAccessToken (\ s a -> s{_rAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rUploadType :: Lens' ReferencesetsGet' (Maybe Text)
rUploadType
  = lens _rUploadType (\ s a -> s{_rUploadType = a})

-- | OAuth bearer token.
rBearerToken :: Lens' ReferencesetsGet' (Maybe Text)
rBearerToken
  = lens _rBearerToken (\ s a -> s{_rBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rKey :: Lens' ReferencesetsGet' (Maybe AuthKey)
rKey = lens _rKey (\ s a -> s{_rKey = a})

-- | OAuth 2.0 token for the current user.
rOAuthToken :: Lens' ReferencesetsGet' (Maybe OAuthToken)
rOAuthToken
  = lens _rOAuthToken (\ s a -> s{_rOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rFields :: Lens' ReferencesetsGet' (Maybe Text)
rFields = lens _rFields (\ s a -> s{_rFields = a})

-- | JSONP
rCallback :: Lens' ReferencesetsGet' (Maybe Text)
rCallback
  = lens _rCallback (\ s a -> s{_rCallback = a})

instance GoogleAuth ReferencesetsGet' where
        _AuthKey = rKey . _Just
        _AuthToken = rOAuthToken . _Just

instance GoogleRequest ReferencesetsGet' where
        type Rs ReferencesetsGet' = ReferenceSet
        request = requestWith genomicsRequest
        requestWith rq ReferencesetsGet'{..}
          = go _rReferenceSetId _rXgafv _rUploadProtocol
              (Just _rPp)
              _rAccessToken
              _rUploadType
              _rBearerToken
              _rCallback
              _rQuotaUser
              (Just _rPrettyPrint)
              _rFields
              _rKey
              _rOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ReferencesetsGetResource)
                      rq
