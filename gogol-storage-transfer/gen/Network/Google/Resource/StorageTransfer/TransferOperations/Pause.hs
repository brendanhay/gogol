{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.StorageTransfer.TransferOperations.Pause
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Pauses a transfer operation.
--
-- /See:/ <https://cloud.google.com/storage/transfer Google Storage Transfer API Reference> for @StorageTransferTransferOperationsPause@.
module Network.Google.Resource.StorageTransfer.TransferOperations.Pause
    (
    -- * REST Resource
      TransferOperationsPauseResource

    -- * Creating a Request
    , transferOperationsPause'
    , TransferOperationsPause'

    -- * Request Lenses
    , topXgafv
    , topQuotaUser
    , topPrettyPrint
    , topUploadProtocol
    , topPauseTransferOperationRequest
    , topPp
    , topAccessToken
    , topUploadType
    , topBearerToken
    , topKey
    , topName
    , topOAuthToken
    , topFields
    , topCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.StorageTransfer.Types

-- | A resource alias for @StorageTransferTransferOperationsPause@ which the
-- 'TransferOperationsPause'' request conforms to.
type TransferOperationsPauseResource =
     "v1" :>
       "{+name}:pause" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "fields" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] PauseTransferOperationRequest
                                     :> Post '[JSON] Empty

-- | Pauses a transfer operation.
--
-- /See:/ 'transferOperationsPause'' smart constructor.
data TransferOperationsPause' = TransferOperationsPause'
    { _topXgafv                         :: !(Maybe Text)
    , _topQuotaUser                     :: !(Maybe Text)
    , _topPrettyPrint                   :: !Bool
    , _topUploadProtocol                :: !(Maybe Text)
    , _topPauseTransferOperationRequest :: !PauseTransferOperationRequest
    , _topPp                            :: !Bool
    , _topAccessToken                   :: !(Maybe Text)
    , _topUploadType                    :: !(Maybe Text)
    , _topBearerToken                   :: !(Maybe Text)
    , _topKey                           :: !(Maybe Key)
    , _topName                          :: !Text
    , _topOAuthToken                    :: !(Maybe OAuthToken)
    , _topFields                        :: !(Maybe Text)
    , _topCallback                      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TransferOperationsPause'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'topXgafv'
--
-- * 'topQuotaUser'
--
-- * 'topPrettyPrint'
--
-- * 'topUploadProtocol'
--
-- * 'topPauseTransferOperationRequest'
--
-- * 'topPp'
--
-- * 'topAccessToken'
--
-- * 'topUploadType'
--
-- * 'topBearerToken'
--
-- * 'topKey'
--
-- * 'topName'
--
-- * 'topOAuthToken'
--
-- * 'topFields'
--
-- * 'topCallback'
transferOperationsPause'
    :: PauseTransferOperationRequest -- ^ 'PauseTransferOperationRequest'
    -> Text -- ^ 'name'
    -> TransferOperationsPause'
transferOperationsPause' pTopPauseTransferOperationRequest_ pTopName_ =
    TransferOperationsPause'
    { _topXgafv = Nothing
    , _topQuotaUser = Nothing
    , _topPrettyPrint = True
    , _topUploadProtocol = Nothing
    , _topPauseTransferOperationRequest = pTopPauseTransferOperationRequest_
    , _topPp = True
    , _topAccessToken = Nothing
    , _topUploadType = Nothing
    , _topBearerToken = Nothing
    , _topKey = Nothing
    , _topName = pTopName_
    , _topOAuthToken = Nothing
    , _topFields = Nothing
    , _topCallback = Nothing
    }

-- | V1 error format.
topXgafv :: Lens' TransferOperationsPause' (Maybe Text)
topXgafv = lens _topXgafv (\ s a -> s{_topXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
topQuotaUser :: Lens' TransferOperationsPause' (Maybe Text)
topQuotaUser
  = lens _topQuotaUser (\ s a -> s{_topQuotaUser = a})

-- | Returns response with indentations and line breaks.
topPrettyPrint :: Lens' TransferOperationsPause' Bool
topPrettyPrint
  = lens _topPrettyPrint
      (\ s a -> s{_topPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
topUploadProtocol :: Lens' TransferOperationsPause' (Maybe Text)
topUploadProtocol
  = lens _topUploadProtocol
      (\ s a -> s{_topUploadProtocol = a})

-- | Multipart request metadata.
topPauseTransferOperationRequest :: Lens' TransferOperationsPause' PauseTransferOperationRequest
topPauseTransferOperationRequest
  = lens _topPauseTransferOperationRequest
      (\ s a -> s{_topPauseTransferOperationRequest = a})

-- | Pretty-print response.
topPp :: Lens' TransferOperationsPause' Bool
topPp = lens _topPp (\ s a -> s{_topPp = a})

-- | OAuth access token.
topAccessToken :: Lens' TransferOperationsPause' (Maybe Text)
topAccessToken
  = lens _topAccessToken
      (\ s a -> s{_topAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
topUploadType :: Lens' TransferOperationsPause' (Maybe Text)
topUploadType
  = lens _topUploadType
      (\ s a -> s{_topUploadType = a})

-- | OAuth bearer token.
topBearerToken :: Lens' TransferOperationsPause' (Maybe Text)
topBearerToken
  = lens _topBearerToken
      (\ s a -> s{_topBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
topKey :: Lens' TransferOperationsPause' (Maybe Key)
topKey = lens _topKey (\ s a -> s{_topKey = a})

-- | The name of the transfer operation. Required.
topName :: Lens' TransferOperationsPause' Text
topName = lens _topName (\ s a -> s{_topName = a})

-- | OAuth 2.0 token for the current user.
topOAuthToken :: Lens' TransferOperationsPause' (Maybe OAuthToken)
topOAuthToken
  = lens _topOAuthToken
      (\ s a -> s{_topOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
topFields :: Lens' TransferOperationsPause' (Maybe Text)
topFields
  = lens _topFields (\ s a -> s{_topFields = a})

-- | JSONP
topCallback :: Lens' TransferOperationsPause' (Maybe Text)
topCallback
  = lens _topCallback (\ s a -> s{_topCallback = a})

instance GoogleAuth TransferOperationsPause' where
        authKey = topKey . _Just
        authToken = topOAuthToken . _Just

instance GoogleRequest TransferOperationsPause' where
        type Rs TransferOperationsPause' = Empty
        request = requestWithRoute defReq storageTransferURL
        requestWithRoute r u TransferOperationsPause'{..}
          = go _topXgafv _topQuotaUser (Just _topPrettyPrint)
              _topUploadProtocol
              (Just _topPp)
              _topAccessToken
              _topUploadType
              _topBearerToken
              _topKey
              _topName
              _topOAuthToken
              _topFields
              _topCallback
              (Just AltJSON)
              _topPauseTransferOperationRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TransferOperationsPauseResource)
                      r
                      u
