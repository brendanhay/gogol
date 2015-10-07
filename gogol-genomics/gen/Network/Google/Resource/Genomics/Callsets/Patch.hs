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
-- Module      : Network.Google.Resource.Genomics.Callsets.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a call set. This method supports patch semantics.
--
-- /See:/ < Genomics API Reference> for @GenomicsCallsetsPatch@.
module Network.Google.Resource.Genomics.Callsets.Patch
    (
    -- * REST Resource
      CallsetsPatchResource

    -- * Creating a Request
    , callsetsPatch'
    , CallsetsPatch'

    -- * Request Lenses
    , cpXgafv
    , cpQuotaUser
    , cpPrettyPrint
    , cpUploadProtocol
    , cpUpdateMask
    , cpPp
    , cpAccessToken
    , cpUploadType
    , cpPayload
    , cpBearerToken
    , cpKey
    , cpCallSetId
    , cpOAuthToken
    , cpFields
    , cpCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsCallsetsPatch@ method which the
-- 'CallsetsPatch'' request conforms to.
type CallsetsPatchResource =
     "v1" :>
       "callsets" :>
         Capture "callSetId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "updateMask" Text :>
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
                                       ReqBody '[JSON] CallSet :>
                                         Patch '[JSON] CallSet

-- | Updates a call set. This method supports patch semantics.
--
-- /See:/ 'callsetsPatch'' smart constructor.
data CallsetsPatch' = CallsetsPatch'
    { _cpXgafv          :: !(Maybe Text)
    , _cpQuotaUser      :: !(Maybe Text)
    , _cpPrettyPrint    :: !Bool
    , _cpUploadProtocol :: !(Maybe Text)
    , _cpUpdateMask     :: !(Maybe Text)
    , _cpPp             :: !Bool
    , _cpAccessToken    :: !(Maybe Text)
    , _cpUploadType     :: !(Maybe Text)
    , _cpPayload        :: !CallSet
    , _cpBearerToken    :: !(Maybe Text)
    , _cpKey            :: !(Maybe AuthKey)
    , _cpCallSetId      :: !Text
    , _cpOAuthToken     :: !(Maybe OAuthToken)
    , _cpFields         :: !(Maybe Text)
    , _cpCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CallsetsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpXgafv'
--
-- * 'cpQuotaUser'
--
-- * 'cpPrettyPrint'
--
-- * 'cpUploadProtocol'
--
-- * 'cpUpdateMask'
--
-- * 'cpPp'
--
-- * 'cpAccessToken'
--
-- * 'cpUploadType'
--
-- * 'cpPayload'
--
-- * 'cpBearerToken'
--
-- * 'cpKey'
--
-- * 'cpCallSetId'
--
-- * 'cpOAuthToken'
--
-- * 'cpFields'
--
-- * 'cpCallback'
callsetsPatch'
    :: CallSet -- ^ 'payload'
    -> Text -- ^ 'callSetId'
    -> CallsetsPatch'
callsetsPatch' pCpPayload_ pCpCallSetId_ =
    CallsetsPatch'
    { _cpXgafv = Nothing
    , _cpQuotaUser = Nothing
    , _cpPrettyPrint = True
    , _cpUploadProtocol = Nothing
    , _cpUpdateMask = Nothing
    , _cpPp = True
    , _cpAccessToken = Nothing
    , _cpUploadType = Nothing
    , _cpPayload = pCpPayload_
    , _cpBearerToken = Nothing
    , _cpKey = Nothing
    , _cpCallSetId = pCpCallSetId_
    , _cpOAuthToken = Nothing
    , _cpFields = Nothing
    , _cpCallback = Nothing
    }

-- | V1 error format.
cpXgafv :: Lens' CallsetsPatch' (Maybe Text)
cpXgafv = lens _cpXgafv (\ s a -> s{_cpXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
cpQuotaUser :: Lens' CallsetsPatch' (Maybe Text)
cpQuotaUser
  = lens _cpQuotaUser (\ s a -> s{_cpQuotaUser = a})

-- | Returns response with indentations and line breaks.
cpPrettyPrint :: Lens' CallsetsPatch' Bool
cpPrettyPrint
  = lens _cpPrettyPrint
      (\ s a -> s{_cpPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cpUploadProtocol :: Lens' CallsetsPatch' (Maybe Text)
cpUploadProtocol
  = lens _cpUploadProtocol
      (\ s a -> s{_cpUploadProtocol = a})

-- | An optional mask specifying which fields to update. At this time, the
-- only mutable field is name. The only acceptable value is \"name\". If
-- unspecified, all mutable fields will be updated.
cpUpdateMask :: Lens' CallsetsPatch' (Maybe Text)
cpUpdateMask
  = lens _cpUpdateMask (\ s a -> s{_cpUpdateMask = a})

-- | Pretty-print response.
cpPp :: Lens' CallsetsPatch' Bool
cpPp = lens _cpPp (\ s a -> s{_cpPp = a})

-- | OAuth access token.
cpAccessToken :: Lens' CallsetsPatch' (Maybe Text)
cpAccessToken
  = lens _cpAccessToken
      (\ s a -> s{_cpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cpUploadType :: Lens' CallsetsPatch' (Maybe Text)
cpUploadType
  = lens _cpUploadType (\ s a -> s{_cpUploadType = a})

-- | Multipart request metadata.
cpPayload :: Lens' CallsetsPatch' CallSet
cpPayload
  = lens _cpPayload (\ s a -> s{_cpPayload = a})

-- | OAuth bearer token.
cpBearerToken :: Lens' CallsetsPatch' (Maybe Text)
cpBearerToken
  = lens _cpBearerToken
      (\ s a -> s{_cpBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cpKey :: Lens' CallsetsPatch' (Maybe AuthKey)
cpKey = lens _cpKey (\ s a -> s{_cpKey = a})

-- | The ID of the call set to be updated.
cpCallSetId :: Lens' CallsetsPatch' Text
cpCallSetId
  = lens _cpCallSetId (\ s a -> s{_cpCallSetId = a})

-- | OAuth 2.0 token for the current user.
cpOAuthToken :: Lens' CallsetsPatch' (Maybe OAuthToken)
cpOAuthToken
  = lens _cpOAuthToken (\ s a -> s{_cpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cpFields :: Lens' CallsetsPatch' (Maybe Text)
cpFields = lens _cpFields (\ s a -> s{_cpFields = a})

-- | JSONP
cpCallback :: Lens' CallsetsPatch' (Maybe Text)
cpCallback
  = lens _cpCallback (\ s a -> s{_cpCallback = a})

instance GoogleAuth CallsetsPatch' where
        _AuthKey = cpKey . _Just
        _AuthToken = cpOAuthToken . _Just

instance GoogleRequest CallsetsPatch' where
        type Rs CallsetsPatch' = CallSet
        request = requestWith genomicsRequest
        requestWith rq CallsetsPatch'{..}
          = go _cpCallSetId _cpXgafv _cpUploadProtocol
              _cpUpdateMask
              (Just _cpPp)
              _cpAccessToken
              _cpUploadType
              _cpBearerToken
              _cpCallback
              _cpQuotaUser
              (Just _cpPrettyPrint)
              _cpFields
              _cpKey
              _cpOAuthToken
              (Just AltJSON)
              _cpPayload
          where go
                  = clientBuild (Proxy :: Proxy CallsetsPatchResource)
                      rq
