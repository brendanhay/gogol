{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.StorageTransfer.TransferOperations.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | This method is not supported and the server returns \`UNIMPLEMENTED\`.
--
-- /See:/ <https://cloud.google.com/storage/transfer Google Storage Transfer API Reference> for @storagetransfer.transferOperations.delete@.
module Network.Google.API.StorageTransfer.TransferOperations.Delete
    (
    -- * REST Resource
      TransferOperationsDeleteAPI

    -- * Creating a Request
    , transferOperationsDelete'
    , TransferOperationsDelete'

    -- * Request Lenses
    , todXgafv
    , todQuotaUser
    , todPrettyPrint
    , todUploadProtocol
    , todPp
    , todAccessToken
    , todUploadType
    , todBearerToken
    , todKey
    , todName
    , todOauthToken
    , todFields
    , todCallback
    , todAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Transfer.Types

-- | A resource alias for storagetransfer.transferOperations.delete which the
-- 'TransferOperationsDelete'' request conforms to.
type TransferOperationsDeleteAPI =
     "v1" :>
       "{+name}" :>
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
                                 QueryParam "alt" Text :> Delete '[JSON] Empty

-- | This method is not supported and the server returns \`UNIMPLEMENTED\`.
--
-- /See:/ 'transferOperationsDelete'' smart constructor.
data TransferOperationsDelete' = TransferOperationsDelete'
    { _todXgafv          :: !(Maybe Text)
    , _todQuotaUser      :: !(Maybe Text)
    , _todPrettyPrint    :: !Bool
    , _todUploadProtocol :: !(Maybe Text)
    , _todPp             :: !Bool
    , _todAccessToken    :: !(Maybe Text)
    , _todUploadType     :: !(Maybe Text)
    , _todBearerToken    :: !(Maybe Text)
    , _todKey            :: !(Maybe Text)
    , _todName           :: !Text
    , _todOauthToken     :: !(Maybe Text)
    , _todFields         :: !(Maybe Text)
    , _todCallback       :: !(Maybe Text)
    , _todAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TransferOperationsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'todXgafv'
--
-- * 'todQuotaUser'
--
-- * 'todPrettyPrint'
--
-- * 'todUploadProtocol'
--
-- * 'todPp'
--
-- * 'todAccessToken'
--
-- * 'todUploadType'
--
-- * 'todBearerToken'
--
-- * 'todKey'
--
-- * 'todName'
--
-- * 'todOauthToken'
--
-- * 'todFields'
--
-- * 'todCallback'
--
-- * 'todAlt'
transferOperationsDelete'
    :: Text -- ^ 'name'
    -> TransferOperationsDelete'
transferOperationsDelete' pTodName_ =
    TransferOperationsDelete'
    { _todXgafv = Nothing
    , _todQuotaUser = Nothing
    , _todPrettyPrint = True
    , _todUploadProtocol = Nothing
    , _todPp = True
    , _todAccessToken = Nothing
    , _todUploadType = Nothing
    , _todBearerToken = Nothing
    , _todKey = Nothing
    , _todName = pTodName_
    , _todOauthToken = Nothing
    , _todFields = Nothing
    , _todCallback = Nothing
    , _todAlt = "json"
    }

-- | V1 error format.
todXgafv :: Lens' TransferOperationsDelete' (Maybe Text)
todXgafv = lens _todXgafv (\ s a -> s{_todXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
todQuotaUser :: Lens' TransferOperationsDelete' (Maybe Text)
todQuotaUser
  = lens _todQuotaUser (\ s a -> s{_todQuotaUser = a})

-- | Returns response with indentations and line breaks.
todPrettyPrint :: Lens' TransferOperationsDelete' Bool
todPrettyPrint
  = lens _todPrettyPrint
      (\ s a -> s{_todPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
todUploadProtocol :: Lens' TransferOperationsDelete' (Maybe Text)
todUploadProtocol
  = lens _todUploadProtocol
      (\ s a -> s{_todUploadProtocol = a})

-- | Pretty-print response.
todPp :: Lens' TransferOperationsDelete' Bool
todPp = lens _todPp (\ s a -> s{_todPp = a})

-- | OAuth access token.
todAccessToken :: Lens' TransferOperationsDelete' (Maybe Text)
todAccessToken
  = lens _todAccessToken
      (\ s a -> s{_todAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
todUploadType :: Lens' TransferOperationsDelete' (Maybe Text)
todUploadType
  = lens _todUploadType
      (\ s a -> s{_todUploadType = a})

-- | OAuth bearer token.
todBearerToken :: Lens' TransferOperationsDelete' (Maybe Text)
todBearerToken
  = lens _todBearerToken
      (\ s a -> s{_todBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
todKey :: Lens' TransferOperationsDelete' (Maybe Text)
todKey = lens _todKey (\ s a -> s{_todKey = a})

-- | The name of the operation resource to be deleted.
todName :: Lens' TransferOperationsDelete' Text
todName = lens _todName (\ s a -> s{_todName = a})

-- | OAuth 2.0 token for the current user.
todOauthToken :: Lens' TransferOperationsDelete' (Maybe Text)
todOauthToken
  = lens _todOauthToken
      (\ s a -> s{_todOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
todFields :: Lens' TransferOperationsDelete' (Maybe Text)
todFields
  = lens _todFields (\ s a -> s{_todFields = a})

-- | JSONP
todCallback :: Lens' TransferOperationsDelete' (Maybe Text)
todCallback
  = lens _todCallback (\ s a -> s{_todCallback = a})

-- | Data format for response.
todAlt :: Lens' TransferOperationsDelete' Text
todAlt = lens _todAlt (\ s a -> s{_todAlt = a})

instance GoogleRequest TransferOperationsDelete'
         where
        type Rs TransferOperationsDelete' = Empty
        request = requestWithRoute defReq storageTransferURL
        requestWithRoute r u TransferOperationsDelete'{..}
          = go _todXgafv _todQuotaUser (Just _todPrettyPrint)
              _todUploadProtocol
              (Just _todPp)
              _todAccessToken
              _todUploadType
              _todBearerToken
              _todKey
              _todName
              _todOauthToken
              _todFields
              _todCallback
              (Just _todAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TransferOperationsDeleteAPI)
                      r
                      u
