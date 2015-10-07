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
-- Module      : Network.Google.Resource.Genomics.Callsets.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a list of call sets matching the criteria. Implements
-- [GlobalAllianceApi.searchCallSets](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/variantmethods.avdl#L178).
--
-- /See:/ < Genomics API Reference> for @GenomicsCallsetsSearch@.
module Network.Google.Resource.Genomics.Callsets.Search
    (
    -- * REST Resource
      CallsetsSearchResource

    -- * Creating a Request
    , callsetsSearch'
    , CallsetsSearch'

    -- * Request Lenses
    , csXgafv
    , csQuotaUser
    , csPrettyPrint
    , csUploadProtocol
    , csPp
    , csAccessToken
    , csUploadType
    , csPayload
    , csBearerToken
    , csKey
    , csOAuthToken
    , csFields
    , csCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsCallsetsSearch@ method which the
-- 'CallsetsSearch'' request conforms to.
type CallsetsSearchResource =
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
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "fields" Text :>
                               QueryParam "key" AuthKey :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] SearchCallSetsRequest :>
                                       Post '[JSON] SearchCallSetsResponse

-- | Gets a list of call sets matching the criteria. Implements
-- [GlobalAllianceApi.searchCallSets](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/variantmethods.avdl#L178).
--
-- /See:/ 'callsetsSearch'' smart constructor.
data CallsetsSearch' = CallsetsSearch'
    { _csXgafv          :: !(Maybe Text)
    , _csQuotaUser      :: !(Maybe Text)
    , _csPrettyPrint    :: !Bool
    , _csUploadProtocol :: !(Maybe Text)
    , _csPp             :: !Bool
    , _csAccessToken    :: !(Maybe Text)
    , _csUploadType     :: !(Maybe Text)
    , _csPayload        :: !SearchCallSetsRequest
    , _csBearerToken    :: !(Maybe Text)
    , _csKey            :: !(Maybe AuthKey)
    , _csOAuthToken     :: !(Maybe OAuthToken)
    , _csFields         :: !(Maybe Text)
    , _csCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CallsetsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csXgafv'
--
-- * 'csQuotaUser'
--
-- * 'csPrettyPrint'
--
-- * 'csUploadProtocol'
--
-- * 'csPp'
--
-- * 'csAccessToken'
--
-- * 'csUploadType'
--
-- * 'csPayload'
--
-- * 'csBearerToken'
--
-- * 'csKey'
--
-- * 'csOAuthToken'
--
-- * 'csFields'
--
-- * 'csCallback'
callsetsSearch'
    :: SearchCallSetsRequest -- ^ 'payload'
    -> CallsetsSearch'
callsetsSearch' pCsPayload_ =
    CallsetsSearch'
    { _csXgafv = Nothing
    , _csQuotaUser = Nothing
    , _csPrettyPrint = True
    , _csUploadProtocol = Nothing
    , _csPp = True
    , _csAccessToken = Nothing
    , _csUploadType = Nothing
    , _csPayload = pCsPayload_
    , _csBearerToken = Nothing
    , _csKey = Nothing
    , _csOAuthToken = Nothing
    , _csFields = Nothing
    , _csCallback = Nothing
    }

-- | V1 error format.
csXgafv :: Lens' CallsetsSearch' (Maybe Text)
csXgafv = lens _csXgafv (\ s a -> s{_csXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
csQuotaUser :: Lens' CallsetsSearch' (Maybe Text)
csQuotaUser
  = lens _csQuotaUser (\ s a -> s{_csQuotaUser = a})

-- | Returns response with indentations and line breaks.
csPrettyPrint :: Lens' CallsetsSearch' Bool
csPrettyPrint
  = lens _csPrettyPrint
      (\ s a -> s{_csPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
csUploadProtocol :: Lens' CallsetsSearch' (Maybe Text)
csUploadProtocol
  = lens _csUploadProtocol
      (\ s a -> s{_csUploadProtocol = a})

-- | Pretty-print response.
csPp :: Lens' CallsetsSearch' Bool
csPp = lens _csPp (\ s a -> s{_csPp = a})

-- | OAuth access token.
csAccessToken :: Lens' CallsetsSearch' (Maybe Text)
csAccessToken
  = lens _csAccessToken
      (\ s a -> s{_csAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
csUploadType :: Lens' CallsetsSearch' (Maybe Text)
csUploadType
  = lens _csUploadType (\ s a -> s{_csUploadType = a})

-- | Multipart request metadata.
csPayload :: Lens' CallsetsSearch' SearchCallSetsRequest
csPayload
  = lens _csPayload (\ s a -> s{_csPayload = a})

-- | OAuth bearer token.
csBearerToken :: Lens' CallsetsSearch' (Maybe Text)
csBearerToken
  = lens _csBearerToken
      (\ s a -> s{_csBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
csKey :: Lens' CallsetsSearch' (Maybe AuthKey)
csKey = lens _csKey (\ s a -> s{_csKey = a})

-- | OAuth 2.0 token for the current user.
csOAuthToken :: Lens' CallsetsSearch' (Maybe OAuthToken)
csOAuthToken
  = lens _csOAuthToken (\ s a -> s{_csOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
csFields :: Lens' CallsetsSearch' (Maybe Text)
csFields = lens _csFields (\ s a -> s{_csFields = a})

-- | JSONP
csCallback :: Lens' CallsetsSearch' (Maybe Text)
csCallback
  = lens _csCallback (\ s a -> s{_csCallback = a})

instance GoogleAuth CallsetsSearch' where
        _AuthKey = csKey . _Just
        _AuthToken = csOAuthToken . _Just

instance GoogleRequest CallsetsSearch' where
        type Rs CallsetsSearch' = SearchCallSetsResponse
        request = requestWith genomicsRequest
        requestWith rq CallsetsSearch'{..}
          = go _csXgafv _csUploadProtocol (Just _csPp)
              _csAccessToken
              _csUploadType
              _csBearerToken
              _csCallback
              _csQuotaUser
              (Just _csPrettyPrint)
              _csFields
              _csKey
              _csOAuthToken
              (Just AltJSON)
              _csPayload
          where go
                  = clientBuild (Proxy :: Proxy CallsetsSearchResource)
                      rq
