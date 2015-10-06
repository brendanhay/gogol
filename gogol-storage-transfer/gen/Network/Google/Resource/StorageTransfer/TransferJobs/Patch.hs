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
-- Module      : Network.Google.Resource.StorageTransfer.TransferJobs.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a transfer job. Updating a job\'s transfer spec does not affect
-- transfer operations that are running already. Updating the scheduling of
-- a job is not allowed.
--
-- /See:/ <https://cloud.google.com/storage/transfer Google Storage Transfer API Reference> for @StorageTransferTransferJobsPatch@.
module Network.Google.Resource.StorageTransfer.TransferJobs.Patch
    (
    -- * REST Resource
      TransferJobsPatchResource

    -- * Creating a Request
    , transferJobsPatch'
    , TransferJobsPatch'

    -- * Request Lenses
    , tjpXgafv
    , tjpQuotaUser
    , tjpPrettyPrint
    , tjpUploadProtocol
    , tjpPp
    , tjpAccessToken
    , tjpJobName
    , tjpUploadType
    , tjpPayload
    , tjpBearerToken
    , tjpKey
    , tjpOAuthToken
    , tjpFields
    , tjpCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.StorageTransfer.Types

-- | A resource alias for @StorageTransferTransferJobsPatch@ which the
-- 'TransferJobsPatch'' request conforms to.
type TransferJobsPatchResource =
     "v1" :>
       Capture "jobName" Text :>
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
                                   ReqBody '[JSON] UpdateTransferJobRequest :>
                                     Patch '[JSON] TransferJob

-- | Updates a transfer job. Updating a job\'s transfer spec does not affect
-- transfer operations that are running already. Updating the scheduling of
-- a job is not allowed.
--
-- /See:/ 'transferJobsPatch'' smart constructor.
data TransferJobsPatch' = TransferJobsPatch'
    { _tjpXgafv          :: !(Maybe Text)
    , _tjpQuotaUser      :: !(Maybe Text)
    , _tjpPrettyPrint    :: !Bool
    , _tjpUploadProtocol :: !(Maybe Text)
    , _tjpPp             :: !Bool
    , _tjpAccessToken    :: !(Maybe Text)
    , _tjpJobName        :: !Text
    , _tjpUploadType     :: !(Maybe Text)
    , _tjpPayload        :: !UpdateTransferJobRequest
    , _tjpBearerToken    :: !(Maybe Text)
    , _tjpKey            :: !(Maybe AuthKey)
    , _tjpOAuthToken     :: !(Maybe OAuthToken)
    , _tjpFields         :: !(Maybe Text)
    , _tjpCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TransferJobsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tjpXgafv'
--
-- * 'tjpQuotaUser'
--
-- * 'tjpPrettyPrint'
--
-- * 'tjpUploadProtocol'
--
-- * 'tjpPp'
--
-- * 'tjpAccessToken'
--
-- * 'tjpJobName'
--
-- * 'tjpUploadType'
--
-- * 'tjpPayload'
--
-- * 'tjpBearerToken'
--
-- * 'tjpKey'
--
-- * 'tjpOAuthToken'
--
-- * 'tjpFields'
--
-- * 'tjpCallback'
transferJobsPatch'
    :: Text -- ^ 'jobName'
    -> UpdateTransferJobRequest -- ^ 'payload'
    -> TransferJobsPatch'
transferJobsPatch' pTjpJobName_ pTjpPayload_ =
    TransferJobsPatch'
    { _tjpXgafv = Nothing
    , _tjpQuotaUser = Nothing
    , _tjpPrettyPrint = True
    , _tjpUploadProtocol = Nothing
    , _tjpPp = True
    , _tjpAccessToken = Nothing
    , _tjpJobName = pTjpJobName_
    , _tjpUploadType = Nothing
    , _tjpPayload = pTjpPayload_
    , _tjpBearerToken = Nothing
    , _tjpKey = Nothing
    , _tjpOAuthToken = Nothing
    , _tjpFields = Nothing
    , _tjpCallback = Nothing
    }

-- | V1 error format.
tjpXgafv :: Lens' TransferJobsPatch' (Maybe Text)
tjpXgafv = lens _tjpXgafv (\ s a -> s{_tjpXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
tjpQuotaUser :: Lens' TransferJobsPatch' (Maybe Text)
tjpQuotaUser
  = lens _tjpQuotaUser (\ s a -> s{_tjpQuotaUser = a})

-- | Returns response with indentations and line breaks.
tjpPrettyPrint :: Lens' TransferJobsPatch' Bool
tjpPrettyPrint
  = lens _tjpPrettyPrint
      (\ s a -> s{_tjpPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tjpUploadProtocol :: Lens' TransferJobsPatch' (Maybe Text)
tjpUploadProtocol
  = lens _tjpUploadProtocol
      (\ s a -> s{_tjpUploadProtocol = a})

-- | Pretty-print response.
tjpPp :: Lens' TransferJobsPatch' Bool
tjpPp = lens _tjpPp (\ s a -> s{_tjpPp = a})

-- | OAuth access token.
tjpAccessToken :: Lens' TransferJobsPatch' (Maybe Text)
tjpAccessToken
  = lens _tjpAccessToken
      (\ s a -> s{_tjpAccessToken = a})

-- | The name of job to update. Required.
tjpJobName :: Lens' TransferJobsPatch' Text
tjpJobName
  = lens _tjpJobName (\ s a -> s{_tjpJobName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tjpUploadType :: Lens' TransferJobsPatch' (Maybe Text)
tjpUploadType
  = lens _tjpUploadType
      (\ s a -> s{_tjpUploadType = a})

-- | Multipart request metadata.
tjpPayload :: Lens' TransferJobsPatch' UpdateTransferJobRequest
tjpPayload
  = lens _tjpPayload (\ s a -> s{_tjpPayload = a})

-- | OAuth bearer token.
tjpBearerToken :: Lens' TransferJobsPatch' (Maybe Text)
tjpBearerToken
  = lens _tjpBearerToken
      (\ s a -> s{_tjpBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tjpKey :: Lens' TransferJobsPatch' (Maybe AuthKey)
tjpKey = lens _tjpKey (\ s a -> s{_tjpKey = a})

-- | OAuth 2.0 token for the current user.
tjpOAuthToken :: Lens' TransferJobsPatch' (Maybe OAuthToken)
tjpOAuthToken
  = lens _tjpOAuthToken
      (\ s a -> s{_tjpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tjpFields :: Lens' TransferJobsPatch' (Maybe Text)
tjpFields
  = lens _tjpFields (\ s a -> s{_tjpFields = a})

-- | JSONP
tjpCallback :: Lens' TransferJobsPatch' (Maybe Text)
tjpCallback
  = lens _tjpCallback (\ s a -> s{_tjpCallback = a})

instance GoogleAuth TransferJobsPatch' where
        _AuthKey = tjpKey . _Just
        _AuthToken = tjpOAuthToken . _Just

instance GoogleRequest TransferJobsPatch' where
        type Rs TransferJobsPatch' = TransferJob
        request = requestWith storageTransferRequest
        requestWith rq TransferJobsPatch'{..}
          = go _tjpJobName _tjpXgafv _tjpUploadProtocol
              (Just _tjpPp)
              _tjpAccessToken
              _tjpUploadType
              _tjpBearerToken
              _tjpCallback
              _tjpQuotaUser
              (Just _tjpPrettyPrint)
              _tjpFields
              _tjpKey
              _tjpOAuthToken
              (Just AltJSON)
              _tjpPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy TransferJobsPatchResource)
                      rq
