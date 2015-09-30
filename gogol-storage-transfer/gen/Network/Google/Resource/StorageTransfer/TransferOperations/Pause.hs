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
-- /See:/ <https://cloud.google.com/storage/transfer Google Storage Transfer API Reference> for @StoragetransferTransferOperationsPause@.
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
    , topPp
    , topAccessToken
    , topUploadType
    , topBearerToken
    , topKey
    , topName
    , topOauthToken
    , topFields
    , topCallback
    , topAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.StorageTransfer.Types

-- | A resource alias for @StoragetransferTransferOperationsPause@ which the
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
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" Text :> Post '[JSON] Empty

-- | Pauses a transfer operation.
--
-- /See:/ 'transferOperationsPause'' smart constructor.
data TransferOperationsPause' = TransferOperationsPause'
    { _topXgafv          :: !(Maybe Text)
    , _topQuotaUser      :: !(Maybe Text)
    , _topPrettyPrint    :: !Bool
    , _topUploadProtocol :: !(Maybe Text)
    , _topPp             :: !Bool
    , _topAccessToken    :: !(Maybe Text)
    , _topUploadType     :: !(Maybe Text)
    , _topBearerToken    :: !(Maybe Text)
    , _topKey            :: !(Maybe Text)
    , _topName           :: !Text
    , _topOauthToken     :: !(Maybe Text)
    , _topFields         :: !(Maybe Text)
    , _topCallback       :: !(Maybe Text)
    , _topAlt            :: !Text
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
-- * 'topOauthToken'
--
-- * 'topFields'
--
-- * 'topCallback'
--
-- * 'topAlt'
transferOperationsPause'
    :: Text -- ^ 'name'
    -> TransferOperationsPause'
transferOperationsPause' pTopName_ =
    TransferOperationsPause'
    { _topXgafv = Nothing
    , _topQuotaUser = Nothing
    , _topPrettyPrint = True
    , _topUploadProtocol = Nothing
    , _topPp = True
    , _topAccessToken = Nothing
    , _topUploadType = Nothing
    , _topBearerToken = Nothing
    , _topKey = Nothing
    , _topName = pTopName_
    , _topOauthToken = Nothing
    , _topFields = Nothing
    , _topCallback = Nothing
    , _topAlt = "json"
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
topKey :: Lens' TransferOperationsPause' (Maybe Text)
topKey = lens _topKey (\ s a -> s{_topKey = a})

-- | The name of the transfer operation. Required.
topName :: Lens' TransferOperationsPause' Text
topName = lens _topName (\ s a -> s{_topName = a})

-- | OAuth 2.0 token for the current user.
topOauthToken :: Lens' TransferOperationsPause' (Maybe Text)
topOauthToken
  = lens _topOauthToken
      (\ s a -> s{_topOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
topFields :: Lens' TransferOperationsPause' (Maybe Text)
topFields
  = lens _topFields (\ s a -> s{_topFields = a})

-- | JSONP
topCallback :: Lens' TransferOperationsPause' (Maybe Text)
topCallback
  = lens _topCallback (\ s a -> s{_topCallback = a})

-- | Data format for response.
topAlt :: Lens' TransferOperationsPause' Text
topAlt = lens _topAlt (\ s a -> s{_topAlt = a})

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
              _topOauthToken
              _topFields
              _topCallback
              (Just _topAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TransferOperationsPauseResource)
                      r
                      u
