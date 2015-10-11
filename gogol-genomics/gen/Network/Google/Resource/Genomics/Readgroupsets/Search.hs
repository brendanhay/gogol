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
-- | Searches for read group sets matching the criteria. Implements
-- [GlobalAllianceApi.searchReadGroupSets](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/readmethods.avdl#L135).
--
-- /See:/ < Genomics API Reference> for @GenomicsReadgroupsetsSearch@.
module Network.Google.Resource.Genomics.Readgroupsets.Search
    (
    -- * REST Resource
      ReadgroupsetsSearchResource

    -- * Creating a Request
    , readgroupsetsSearch'
    , ReadgroupsetsSearch'

    -- * Request Lenses
    , reaXgafv
    , reaQuotaUser
    , reaPrettyPrint
    , reaUploadProtocol
    , reaPp
    , reaAccessToken
    , reaUploadType
    , reaPayload
    , reaBearerToken
    , reaKey
    , reaOAuthToken
    , reaFields
    , reaCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReadgroupsetsSearch@ method which the
-- 'ReadgroupsetsSearch'' request conforms to.
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
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "fields" Text :>
                               QueryParam "key" AuthKey :>
                                 Header "Authorization" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] SearchReadGroupSetsRequest
                                       :>
                                       Post '[JSON] SearchReadGroupSetsResponse

-- | Searches for read group sets matching the criteria. Implements
-- [GlobalAllianceApi.searchReadGroupSets](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/readmethods.avdl#L135).
--
-- /See:/ 'readgroupsetsSearch'' smart constructor.
data ReadgroupsetsSearch' = ReadgroupsetsSearch'
    { _reaXgafv          :: !(Maybe Text)
    , _reaQuotaUser      :: !(Maybe Text)
    , _reaPrettyPrint    :: !Bool
    , _reaUploadProtocol :: !(Maybe Text)
    , _reaPp             :: !Bool
    , _reaAccessToken    :: !(Maybe Text)
    , _reaUploadType     :: !(Maybe Text)
    , _reaPayload        :: !SearchReadGroupSetsRequest
    , _reaBearerToken    :: !(Maybe Text)
    , _reaKey            :: !(Maybe AuthKey)
    , _reaOAuthToken     :: !(Maybe OAuthToken)
    , _reaFields         :: !(Maybe Text)
    , _reaCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadgroupsetsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reaXgafv'
--
-- * 'reaQuotaUser'
--
-- * 'reaPrettyPrint'
--
-- * 'reaUploadProtocol'
--
-- * 'reaPp'
--
-- * 'reaAccessToken'
--
-- * 'reaUploadType'
--
-- * 'reaPayload'
--
-- * 'reaBearerToken'
--
-- * 'reaKey'
--
-- * 'reaOAuthToken'
--
-- * 'reaFields'
--
-- * 'reaCallback'
readgroupsetsSearch'
    :: SearchReadGroupSetsRequest -- ^ 'payload'
    -> ReadgroupsetsSearch'
readgroupsetsSearch' pReaPayload_ =
    ReadgroupsetsSearch'
    { _reaXgafv = Nothing
    , _reaQuotaUser = Nothing
    , _reaPrettyPrint = True
    , _reaUploadProtocol = Nothing
    , _reaPp = True
    , _reaAccessToken = Nothing
    , _reaUploadType = Nothing
    , _reaPayload = pReaPayload_
    , _reaBearerToken = Nothing
    , _reaKey = Nothing
    , _reaOAuthToken = Nothing
    , _reaFields = Nothing
    , _reaCallback = Nothing
    }

-- | V1 error format.
reaXgafv :: Lens' ReadgroupsetsSearch' (Maybe Text)
reaXgafv = lens _reaXgafv (\ s a -> s{_reaXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
reaQuotaUser :: Lens' ReadgroupsetsSearch' (Maybe Text)
reaQuotaUser
  = lens _reaQuotaUser (\ s a -> s{_reaQuotaUser = a})

-- | Returns response with indentations and line breaks.
reaPrettyPrint :: Lens' ReadgroupsetsSearch' Bool
reaPrettyPrint
  = lens _reaPrettyPrint
      (\ s a -> s{_reaPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
reaUploadProtocol :: Lens' ReadgroupsetsSearch' (Maybe Text)
reaUploadProtocol
  = lens _reaUploadProtocol
      (\ s a -> s{_reaUploadProtocol = a})

-- | Pretty-print response.
reaPp :: Lens' ReadgroupsetsSearch' Bool
reaPp = lens _reaPp (\ s a -> s{_reaPp = a})

-- | OAuth access token.
reaAccessToken :: Lens' ReadgroupsetsSearch' (Maybe Text)
reaAccessToken
  = lens _reaAccessToken
      (\ s a -> s{_reaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
reaUploadType :: Lens' ReadgroupsetsSearch' (Maybe Text)
reaUploadType
  = lens _reaUploadType
      (\ s a -> s{_reaUploadType = a})

-- | Multipart request metadata.
reaPayload :: Lens' ReadgroupsetsSearch' SearchReadGroupSetsRequest
reaPayload
  = lens _reaPayload (\ s a -> s{_reaPayload = a})

-- | OAuth bearer token.
reaBearerToken :: Lens' ReadgroupsetsSearch' (Maybe Text)
reaBearerToken
  = lens _reaBearerToken
      (\ s a -> s{_reaBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
reaKey :: Lens' ReadgroupsetsSearch' (Maybe AuthKey)
reaKey = lens _reaKey (\ s a -> s{_reaKey = a})

-- | OAuth 2.0 token for the current user.
reaOAuthToken :: Lens' ReadgroupsetsSearch' (Maybe OAuthToken)
reaOAuthToken
  = lens _reaOAuthToken
      (\ s a -> s{_reaOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
reaFields :: Lens' ReadgroupsetsSearch' (Maybe Text)
reaFields
  = lens _reaFields (\ s a -> s{_reaFields = a})

-- | JSONP
reaCallback :: Lens' ReadgroupsetsSearch' (Maybe Text)
reaCallback
  = lens _reaCallback (\ s a -> s{_reaCallback = a})

instance GoogleAuth ReadgroupsetsSearch' where
        _AuthKey = reaKey . _Just
        _AuthToken = reaOAuthToken . _Just

instance GoogleRequest ReadgroupsetsSearch' where
        type Rs ReadgroupsetsSearch' =
             SearchReadGroupSetsResponse
        request = requestWith genomicsRequest
        requestWith rq ReadgroupsetsSearch'{..}
          = go _reaXgafv _reaUploadProtocol (Just _reaPp)
              _reaAccessToken
              _reaUploadType
              _reaBearerToken
              _reaCallback
              _reaQuotaUser
              (Just _reaPrettyPrint)
              _reaFields
              _reaKey
              _reaOAuthToken
              (Just AltJSON)
              _reaPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy ReadgroupsetsSearchResource)
                      rq
