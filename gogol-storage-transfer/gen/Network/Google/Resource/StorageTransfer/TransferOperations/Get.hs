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
-- Module      : Network.Google.Resource.StorageTransfer.TransferOperations.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ <https://cloud.google.com/storage/transfer Google Storage Transfer API Reference> for @StorageTransferTransferOperationsGet@.
module Network.Google.Resource.StorageTransfer.TransferOperations.Get
    (
    -- * REST Resource
      TransferOperationsGetResource

    -- * Creating a Request
    , transferOperationsGet'
    , TransferOperationsGet'

    -- * Request Lenses
    , togXgafv
    , togQuotaUser
    , togPrettyPrint
    , togUploadProtocol
    , togPp
    , togAccessToken
    , togUploadType
    , togBearerToken
    , togKey
    , togName
    , togOAuthToken
    , togFields
    , togCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.StorageTransfer.Types

-- | A resource alias for @StorageTransferTransferOperationsGet@ method which the
-- 'TransferOperationsGet'' request conforms to.
type TransferOperationsGetResource =
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
                             QueryParam "key" AuthKey :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] Operation

-- | Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ 'transferOperationsGet'' smart constructor.
data TransferOperationsGet' = TransferOperationsGet'
    { _togXgafv          :: !(Maybe Text)
    , _togQuotaUser      :: !(Maybe Text)
    , _togPrettyPrint    :: !Bool
    , _togUploadProtocol :: !(Maybe Text)
    , _togPp             :: !Bool
    , _togAccessToken    :: !(Maybe Text)
    , _togUploadType     :: !(Maybe Text)
    , _togBearerToken    :: !(Maybe Text)
    , _togKey            :: !(Maybe AuthKey)
    , _togName           :: !Text
    , _togOAuthToken     :: !(Maybe OAuthToken)
    , _togFields         :: !(Maybe Text)
    , _togCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TransferOperationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'togXgafv'
--
-- * 'togQuotaUser'
--
-- * 'togPrettyPrint'
--
-- * 'togUploadProtocol'
--
-- * 'togPp'
--
-- * 'togAccessToken'
--
-- * 'togUploadType'
--
-- * 'togBearerToken'
--
-- * 'togKey'
--
-- * 'togName'
--
-- * 'togOAuthToken'
--
-- * 'togFields'
--
-- * 'togCallback'
transferOperationsGet'
    :: Text -- ^ 'name'
    -> TransferOperationsGet'
transferOperationsGet' pTogName_ =
    TransferOperationsGet'
    { _togXgafv = Nothing
    , _togQuotaUser = Nothing
    , _togPrettyPrint = True
    , _togUploadProtocol = Nothing
    , _togPp = True
    , _togAccessToken = Nothing
    , _togUploadType = Nothing
    , _togBearerToken = Nothing
    , _togKey = Nothing
    , _togName = pTogName_
    , _togOAuthToken = Nothing
    , _togFields = Nothing
    , _togCallback = Nothing
    }

-- | V1 error format.
togXgafv :: Lens' TransferOperationsGet' (Maybe Text)
togXgafv = lens _togXgafv (\ s a -> s{_togXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
togQuotaUser :: Lens' TransferOperationsGet' (Maybe Text)
togQuotaUser
  = lens _togQuotaUser (\ s a -> s{_togQuotaUser = a})

-- | Returns response with indentations and line breaks.
togPrettyPrint :: Lens' TransferOperationsGet' Bool
togPrettyPrint
  = lens _togPrettyPrint
      (\ s a -> s{_togPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
togUploadProtocol :: Lens' TransferOperationsGet' (Maybe Text)
togUploadProtocol
  = lens _togUploadProtocol
      (\ s a -> s{_togUploadProtocol = a})

-- | Pretty-print response.
togPp :: Lens' TransferOperationsGet' Bool
togPp = lens _togPp (\ s a -> s{_togPp = a})

-- | OAuth access token.
togAccessToken :: Lens' TransferOperationsGet' (Maybe Text)
togAccessToken
  = lens _togAccessToken
      (\ s a -> s{_togAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
togUploadType :: Lens' TransferOperationsGet' (Maybe Text)
togUploadType
  = lens _togUploadType
      (\ s a -> s{_togUploadType = a})

-- | OAuth bearer token.
togBearerToken :: Lens' TransferOperationsGet' (Maybe Text)
togBearerToken
  = lens _togBearerToken
      (\ s a -> s{_togBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
togKey :: Lens' TransferOperationsGet' (Maybe AuthKey)
togKey = lens _togKey (\ s a -> s{_togKey = a})

-- | The name of the operation resource.
togName :: Lens' TransferOperationsGet' Text
togName = lens _togName (\ s a -> s{_togName = a})

-- | OAuth 2.0 token for the current user.
togOAuthToken :: Lens' TransferOperationsGet' (Maybe OAuthToken)
togOAuthToken
  = lens _togOAuthToken
      (\ s a -> s{_togOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
togFields :: Lens' TransferOperationsGet' (Maybe Text)
togFields
  = lens _togFields (\ s a -> s{_togFields = a})

-- | JSONP
togCallback :: Lens' TransferOperationsGet' (Maybe Text)
togCallback
  = lens _togCallback (\ s a -> s{_togCallback = a})

instance GoogleAuth TransferOperationsGet' where
        _AuthKey = togKey . _Just
        _AuthToken = togOAuthToken . _Just

instance GoogleRequest TransferOperationsGet' where
        type Rs TransferOperationsGet' = Operation
        request = requestWith storageTransferRequest
        requestWith rq TransferOperationsGet'{..}
          = go _togName _togXgafv _togUploadProtocol
              (Just _togPp)
              _togAccessToken
              _togUploadType
              _togBearerToken
              _togCallback
              _togQuotaUser
              (Just _togPrettyPrint)
              _togFields
              _togKey
              _togOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy TransferOperationsGetResource)
                      rq
