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
-- Module      : Network.Google.Resource.StorageTransfer.TransferOperations.Cancel
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Cancels a transfer. Use the get method to check whether the cancellation
-- succeeded or whether the operation completed despite cancellation.
--
-- /See:/ <https://cloud.google.com/storage/transfer Google Storage Transfer API Reference> for @StorageTransferTransferOperationsCancel@.
module Network.Google.Resource.StorageTransfer.TransferOperations.Cancel
    (
    -- * REST Resource
      TransferOperationsCancelResource

    -- * Creating a Request
    , transferOperationsCancel'
    , TransferOperationsCancel'

    -- * Request Lenses
    , tocXgafv
    , tocQuotaUser
    , tocPrettyPrint
    , tocUploadProtocol
    , tocPp
    , tocAccessToken
    , tocUploadType
    , tocBearerToken
    , tocKey
    , tocName
    , tocOAuthToken
    , tocFields
    , tocCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.StorageTransfer.Types

-- | A resource alias for @StorageTransferTransferOperationsCancel@ which the
-- 'TransferOperationsCancel'' request conforms to.
type TransferOperationsCancelResource =
     "v1" :>
       CaptureMode "name" "cancel" Text :>
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
                                 QueryParam "alt" AltJSON :> Post '[JSON] Empty

-- | Cancels a transfer. Use the get method to check whether the cancellation
-- succeeded or whether the operation completed despite cancellation.
--
-- /See:/ 'transferOperationsCancel'' smart constructor.
data TransferOperationsCancel' = TransferOperationsCancel'
    { _tocXgafv          :: !(Maybe Text)
    , _tocQuotaUser      :: !(Maybe Text)
    , _tocPrettyPrint    :: !Bool
    , _tocUploadProtocol :: !(Maybe Text)
    , _tocPp             :: !Bool
    , _tocAccessToken    :: !(Maybe Text)
    , _tocUploadType     :: !(Maybe Text)
    , _tocBearerToken    :: !(Maybe Text)
    , _tocKey            :: !(Maybe AuthKey)
    , _tocName           :: !Text
    , _tocOAuthToken     :: !(Maybe OAuthToken)
    , _tocFields         :: !(Maybe Text)
    , _tocCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TransferOperationsCancel'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tocXgafv'
--
-- * 'tocQuotaUser'
--
-- * 'tocPrettyPrint'
--
-- * 'tocUploadProtocol'
--
-- * 'tocPp'
--
-- * 'tocAccessToken'
--
-- * 'tocUploadType'
--
-- * 'tocBearerToken'
--
-- * 'tocKey'
--
-- * 'tocName'
--
-- * 'tocOAuthToken'
--
-- * 'tocFields'
--
-- * 'tocCallback'
transferOperationsCancel'
    :: Text -- ^ 'name'
    -> TransferOperationsCancel'
transferOperationsCancel' pTocName_ =
    TransferOperationsCancel'
    { _tocXgafv = Nothing
    , _tocQuotaUser = Nothing
    , _tocPrettyPrint = True
    , _tocUploadProtocol = Nothing
    , _tocPp = True
    , _tocAccessToken = Nothing
    , _tocUploadType = Nothing
    , _tocBearerToken = Nothing
    , _tocKey = Nothing
    , _tocName = pTocName_
    , _tocOAuthToken = Nothing
    , _tocFields = Nothing
    , _tocCallback = Nothing
    }

-- | V1 error format.
tocXgafv :: Lens' TransferOperationsCancel' (Maybe Text)
tocXgafv = lens _tocXgafv (\ s a -> s{_tocXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
tocQuotaUser :: Lens' TransferOperationsCancel' (Maybe Text)
tocQuotaUser
  = lens _tocQuotaUser (\ s a -> s{_tocQuotaUser = a})

-- | Returns response with indentations and line breaks.
tocPrettyPrint :: Lens' TransferOperationsCancel' Bool
tocPrettyPrint
  = lens _tocPrettyPrint
      (\ s a -> s{_tocPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tocUploadProtocol :: Lens' TransferOperationsCancel' (Maybe Text)
tocUploadProtocol
  = lens _tocUploadProtocol
      (\ s a -> s{_tocUploadProtocol = a})

-- | Pretty-print response.
tocPp :: Lens' TransferOperationsCancel' Bool
tocPp = lens _tocPp (\ s a -> s{_tocPp = a})

-- | OAuth access token.
tocAccessToken :: Lens' TransferOperationsCancel' (Maybe Text)
tocAccessToken
  = lens _tocAccessToken
      (\ s a -> s{_tocAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tocUploadType :: Lens' TransferOperationsCancel' (Maybe Text)
tocUploadType
  = lens _tocUploadType
      (\ s a -> s{_tocUploadType = a})

-- | OAuth bearer token.
tocBearerToken :: Lens' TransferOperationsCancel' (Maybe Text)
tocBearerToken
  = lens _tocBearerToken
      (\ s a -> s{_tocBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tocKey :: Lens' TransferOperationsCancel' (Maybe AuthKey)
tocKey = lens _tocKey (\ s a -> s{_tocKey = a})

-- | The name of the operation resource to be cancelled.
tocName :: Lens' TransferOperationsCancel' Text
tocName = lens _tocName (\ s a -> s{_tocName = a})

-- | OAuth 2.0 token for the current user.
tocOAuthToken :: Lens' TransferOperationsCancel' (Maybe OAuthToken)
tocOAuthToken
  = lens _tocOAuthToken
      (\ s a -> s{_tocOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tocFields :: Lens' TransferOperationsCancel' (Maybe Text)
tocFields
  = lens _tocFields (\ s a -> s{_tocFields = a})

-- | JSONP
tocCallback :: Lens' TransferOperationsCancel' (Maybe Text)
tocCallback
  = lens _tocCallback (\ s a -> s{_tocCallback = a})

instance GoogleAuth TransferOperationsCancel' where
        authKey = tocKey . _Just
        authToken = tocOAuthToken . _Just

instance GoogleRequest TransferOperationsCancel'
         where
        type Rs TransferOperationsCancel' = Empty
        request = requestWith storageTransferRequest
        requestWith rq TransferOperationsCancel'{..}
          = go _tocName _tocXgafv _tocUploadProtocol
              (Just _tocPp)
              _tocAccessToken
              _tocUploadType
              _tocBearerToken
              _tocCallback
              _tocQuotaUser
              (Just _tocPrettyPrint)
              _tocFields
              _tocKey
              _tocOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy TransferOperationsCancelResource)
                      rq
