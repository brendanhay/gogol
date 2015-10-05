{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.StorageTransfer.TransferOperations.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | This method is not supported and the server returns \`UNIMPLEMENTED\`.
--
-- /See:/ <https://cloud.google.com/storage/transfer Google Storage Transfer API Reference> for @StorageTransferTransferOperationsDelete@.
module Network.Google.Resource.StorageTransfer.TransferOperations.Delete
    (
    -- * REST Resource
      TransferOperationsDeleteResource

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
    , todOAuthToken
    , todFields
    , todCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.StorageTransfer.Types

-- | A resource alias for @StorageTransferTransferOperationsDelete@ which the
-- 'TransferOperationsDelete'' request conforms to.
type TransferOperationsDeleteResource =
     "v1" :>
       Capture "name" Text :>
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
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Delete '[JSON] Empty

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
    , _todKey            :: !(Maybe Key)
    , _todName           :: !Text
    , _todOAuthToken     :: !(Maybe OAuthToken)
    , _todFields         :: !(Maybe Text)
    , _todCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'todOAuthToken'
--
-- * 'todFields'
--
-- * 'todCallback'
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
    , _todOAuthToken = Nothing
    , _todFields = Nothing
    , _todCallback = Nothing
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
todKey :: Lens' TransferOperationsDelete' (Maybe Key)
todKey = lens _todKey (\ s a -> s{_todKey = a})

-- | The name of the operation resource to be deleted.
todName :: Lens' TransferOperationsDelete' Text
todName = lens _todName (\ s a -> s{_todName = a})

-- | OAuth 2.0 token for the current user.
todOAuthToken :: Lens' TransferOperationsDelete' (Maybe OAuthToken)
todOAuthToken
  = lens _todOAuthToken
      (\ s a -> s{_todOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
todFields :: Lens' TransferOperationsDelete' (Maybe Text)
todFields
  = lens _todFields (\ s a -> s{_todFields = a})

-- | JSONP
todCallback :: Lens' TransferOperationsDelete' (Maybe Text)
todCallback
  = lens _todCallback (\ s a -> s{_todCallback = a})

instance GoogleAuth TransferOperationsDelete' where
        authKey = todKey . _Just
        authToken = todOAuthToken . _Just

instance GoogleRequest TransferOperationsDelete'
         where
        type Rs TransferOperationsDelete' = Empty
        request = requestWithRoute defReq storageTransferURL
        requestWithRoute r u TransferOperationsDelete'{..}
          = go _todName _todXgafv _todUploadProtocol
              (Just _todPp)
              _todAccessToken
              _todUploadType
              _todBearerToken
              _todCallback
              _todQuotaUser
              (Just _todPrettyPrint)
              _todFields
              _todKey
              _todOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TransferOperationsDeleteResource)
                      r
                      u
