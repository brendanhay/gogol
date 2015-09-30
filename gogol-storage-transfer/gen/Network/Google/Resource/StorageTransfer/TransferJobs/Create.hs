{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.StorageTransfer.TransferJobs.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a transfer job that runs periodically.
--
-- /See:/ <https://cloud.google.com/storage/transfer Google Storage Transfer API Reference> for @StoragetransferTransferJobsCreate@.
module StorageTransfer.TransferJobs.Create
    (
    -- * REST Resource
      TransferJobsCreateAPI

    -- * Creating a Request
    , transferJobsCreate
    , TransferJobsCreate

    -- * Request Lenses
    , tjcXgafv
    , tjcQuotaUser
    , tjcPrettyPrint
    , tjcUploadProtocol
    , tjcPp
    , tjcAccessToken
    , tjcUploadType
    , tjcBearerToken
    , tjcKey
    , tjcOauthToken
    , tjcFields
    , tjcCallback
    , tjcAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.StorageTransfer.Types

-- | A resource alias for @StoragetransferTransferJobsCreate@ which the
-- 'TransferJobsCreate' request conforms to.
type TransferJobsCreateAPI =
     "v1" :> "transferJobs" :> Post '[JSON] TransferJob

-- | Creates a transfer job that runs periodically.
--
-- /See:/ 'transferJobsCreate' smart constructor.
data TransferJobsCreate = TransferJobsCreate
    { _tjcXgafv          :: !(Maybe Text)
    , _tjcQuotaUser      :: !(Maybe Text)
    , _tjcPrettyPrint    :: !Bool
    , _tjcUploadProtocol :: !(Maybe Text)
    , _tjcPp             :: !Bool
    , _tjcAccessToken    :: !(Maybe Text)
    , _tjcUploadType     :: !(Maybe Text)
    , _tjcBearerToken    :: !(Maybe Text)
    , _tjcKey            :: !(Maybe Text)
    , _tjcOauthToken     :: !(Maybe Text)
    , _tjcFields         :: !(Maybe Text)
    , _tjcCallback       :: !(Maybe Text)
    , _tjcAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TransferJobsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tjcXgafv'
--
-- * 'tjcQuotaUser'
--
-- * 'tjcPrettyPrint'
--
-- * 'tjcUploadProtocol'
--
-- * 'tjcPp'
--
-- * 'tjcAccessToken'
--
-- * 'tjcUploadType'
--
-- * 'tjcBearerToken'
--
-- * 'tjcKey'
--
-- * 'tjcOauthToken'
--
-- * 'tjcFields'
--
-- * 'tjcCallback'
--
-- * 'tjcAlt'
transferJobsCreate
    :: TransferJobsCreate
transferJobsCreate =
    TransferJobsCreate
    { _tjcXgafv = Nothing
    , _tjcQuotaUser = Nothing
    , _tjcPrettyPrint = True
    , _tjcUploadProtocol = Nothing
    , _tjcPp = True
    , _tjcAccessToken = Nothing
    , _tjcUploadType = Nothing
    , _tjcBearerToken = Nothing
    , _tjcKey = Nothing
    , _tjcOauthToken = Nothing
    , _tjcFields = Nothing
    , _tjcCallback = Nothing
    , _tjcAlt = "json"
    }

-- | V1 error format.
tjcXgafv :: Lens' TransferJobsCreate' (Maybe Text)
tjcXgafv = lens _tjcXgafv (\ s a -> s{_tjcXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
tjcQuotaUser :: Lens' TransferJobsCreate' (Maybe Text)
tjcQuotaUser
  = lens _tjcQuotaUser (\ s a -> s{_tjcQuotaUser = a})

-- | Returns response with indentations and line breaks.
tjcPrettyPrint :: Lens' TransferJobsCreate' Bool
tjcPrettyPrint
  = lens _tjcPrettyPrint
      (\ s a -> s{_tjcPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tjcUploadProtocol :: Lens' TransferJobsCreate' (Maybe Text)
tjcUploadProtocol
  = lens _tjcUploadProtocol
      (\ s a -> s{_tjcUploadProtocol = a})

-- | Pretty-print response.
tjcPp :: Lens' TransferJobsCreate' Bool
tjcPp = lens _tjcPp (\ s a -> s{_tjcPp = a})

-- | OAuth access token.
tjcAccessToken :: Lens' TransferJobsCreate' (Maybe Text)
tjcAccessToken
  = lens _tjcAccessToken
      (\ s a -> s{_tjcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tjcUploadType :: Lens' TransferJobsCreate' (Maybe Text)
tjcUploadType
  = lens _tjcUploadType
      (\ s a -> s{_tjcUploadType = a})

-- | OAuth bearer token.
tjcBearerToken :: Lens' TransferJobsCreate' (Maybe Text)
tjcBearerToken
  = lens _tjcBearerToken
      (\ s a -> s{_tjcBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tjcKey :: Lens' TransferJobsCreate' (Maybe Text)
tjcKey = lens _tjcKey (\ s a -> s{_tjcKey = a})

-- | OAuth 2.0 token for the current user.
tjcOauthToken :: Lens' TransferJobsCreate' (Maybe Text)
tjcOauthToken
  = lens _tjcOauthToken
      (\ s a -> s{_tjcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tjcFields :: Lens' TransferJobsCreate' (Maybe Text)
tjcFields
  = lens _tjcFields (\ s a -> s{_tjcFields = a})

-- | JSONP
tjcCallback :: Lens' TransferJobsCreate' (Maybe Text)
tjcCallback
  = lens _tjcCallback (\ s a -> s{_tjcCallback = a})

-- | Data format for response.
tjcAlt :: Lens' TransferJobsCreate' Text
tjcAlt = lens _tjcAlt (\ s a -> s{_tjcAlt = a})

instance GoogleRequest TransferJobsCreate' where
        type Rs TransferJobsCreate' = TransferJob
        request = requestWithRoute defReq storageTransferURL
        requestWithRoute r u TransferJobsCreate{..}
          = go _tjcXgafv _tjcQuotaUser _tjcPrettyPrint
              _tjcUploadProtocol
              _tjcPp
              _tjcAccessToken
              _tjcUploadType
              _tjcBearerToken
              _tjcKey
              _tjcOauthToken
              _tjcFields
              _tjcCallback
              _tjcAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TransferJobsCreateAPI)
                      r
                      u
