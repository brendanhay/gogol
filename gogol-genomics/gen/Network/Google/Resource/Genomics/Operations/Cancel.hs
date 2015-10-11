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
-- Module      : Network.Google.Resource.Genomics.Operations.Cancel
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Starts asynchronous cancellation on a long-running operation. The server
-- makes a best effort to cancel the operation, but success is not
-- guaranteed. Clients may use Operations.GetOperation or
-- Operations.ListOperations to check whether the cancellation succeeded or
-- the operation completed despite cancellation.
--
-- /See:/ < Genomics API Reference> for @GenomicsOperationsCancel@.
module Network.Google.Resource.Genomics.Operations.Cancel
    (
    -- * REST Resource
      OperationsCancelResource

    -- * Creating a Request
    , operationsCancel'
    , OperationsCancel'

    -- * Request Lenses
    , ocXgafv
    , ocQuotaUser
    , ocPrettyPrint
    , ocUploadProtocol
    , ocPp
    , ocAccessToken
    , ocUploadType
    , ocPayload
    , ocBearerToken
    , ocKey
    , ocName
    , ocOAuthToken
    , ocFields
    , ocCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsOperationsCancel@ method which the
-- 'OperationsCancel'' request conforms to.
type OperationsCancelResource =
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
                               Header "Authorization" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] CancelOperationRequest :>
                                     Post '[JSON] Empty

-- | Starts asynchronous cancellation on a long-running operation. The server
-- makes a best effort to cancel the operation, but success is not
-- guaranteed. Clients may use Operations.GetOperation or
-- Operations.ListOperations to check whether the cancellation succeeded or
-- the operation completed despite cancellation.
--
-- /See:/ 'operationsCancel'' smart constructor.
data OperationsCancel' = OperationsCancel'
    { _ocXgafv          :: !(Maybe Text)
    , _ocQuotaUser      :: !(Maybe Text)
    , _ocPrettyPrint    :: !Bool
    , _ocUploadProtocol :: !(Maybe Text)
    , _ocPp             :: !Bool
    , _ocAccessToken    :: !(Maybe Text)
    , _ocUploadType     :: !(Maybe Text)
    , _ocPayload        :: !CancelOperationRequest
    , _ocBearerToken    :: !(Maybe Text)
    , _ocKey            :: !(Maybe AuthKey)
    , _ocName           :: !Text
    , _ocOAuthToken     :: !(Maybe OAuthToken)
    , _ocFields         :: !(Maybe Text)
    , _ocCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationsCancel'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocXgafv'
--
-- * 'ocQuotaUser'
--
-- * 'ocPrettyPrint'
--
-- * 'ocUploadProtocol'
--
-- * 'ocPp'
--
-- * 'ocAccessToken'
--
-- * 'ocUploadType'
--
-- * 'ocPayload'
--
-- * 'ocBearerToken'
--
-- * 'ocKey'
--
-- * 'ocName'
--
-- * 'ocOAuthToken'
--
-- * 'ocFields'
--
-- * 'ocCallback'
operationsCancel'
    :: CancelOperationRequest -- ^ 'payload'
    -> Text -- ^ 'name'
    -> OperationsCancel'
operationsCancel' pOcPayload_ pOcName_ =
    OperationsCancel'
    { _ocXgafv = Nothing
    , _ocQuotaUser = Nothing
    , _ocPrettyPrint = True
    , _ocUploadProtocol = Nothing
    , _ocPp = True
    , _ocAccessToken = Nothing
    , _ocUploadType = Nothing
    , _ocPayload = pOcPayload_
    , _ocBearerToken = Nothing
    , _ocKey = Nothing
    , _ocName = pOcName_
    , _ocOAuthToken = Nothing
    , _ocFields = Nothing
    , _ocCallback = Nothing
    }

-- | V1 error format.
ocXgafv :: Lens' OperationsCancel' (Maybe Text)
ocXgafv = lens _ocXgafv (\ s a -> s{_ocXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
ocQuotaUser :: Lens' OperationsCancel' (Maybe Text)
ocQuotaUser
  = lens _ocQuotaUser (\ s a -> s{_ocQuotaUser = a})

-- | Returns response with indentations and line breaks.
ocPrettyPrint :: Lens' OperationsCancel' Bool
ocPrettyPrint
  = lens _ocPrettyPrint
      (\ s a -> s{_ocPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ocUploadProtocol :: Lens' OperationsCancel' (Maybe Text)
ocUploadProtocol
  = lens _ocUploadProtocol
      (\ s a -> s{_ocUploadProtocol = a})

-- | Pretty-print response.
ocPp :: Lens' OperationsCancel' Bool
ocPp = lens _ocPp (\ s a -> s{_ocPp = a})

-- | OAuth access token.
ocAccessToken :: Lens' OperationsCancel' (Maybe Text)
ocAccessToken
  = lens _ocAccessToken
      (\ s a -> s{_ocAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ocUploadType :: Lens' OperationsCancel' (Maybe Text)
ocUploadType
  = lens _ocUploadType (\ s a -> s{_ocUploadType = a})

-- | Multipart request metadata.
ocPayload :: Lens' OperationsCancel' CancelOperationRequest
ocPayload
  = lens _ocPayload (\ s a -> s{_ocPayload = a})

-- | OAuth bearer token.
ocBearerToken :: Lens' OperationsCancel' (Maybe Text)
ocBearerToken
  = lens _ocBearerToken
      (\ s a -> s{_ocBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ocKey :: Lens' OperationsCancel' (Maybe AuthKey)
ocKey = lens _ocKey (\ s a -> s{_ocKey = a})

-- | The name of the operation resource to be cancelled.
ocName :: Lens' OperationsCancel' Text
ocName = lens _ocName (\ s a -> s{_ocName = a})

-- | OAuth 2.0 token for the current user.
ocOAuthToken :: Lens' OperationsCancel' (Maybe OAuthToken)
ocOAuthToken
  = lens _ocOAuthToken (\ s a -> s{_ocOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ocFields :: Lens' OperationsCancel' (Maybe Text)
ocFields = lens _ocFields (\ s a -> s{_ocFields = a})

-- | JSONP
ocCallback :: Lens' OperationsCancel' (Maybe Text)
ocCallback
  = lens _ocCallback (\ s a -> s{_ocCallback = a})

instance GoogleAuth OperationsCancel' where
        _AuthKey = ocKey . _Just
        _AuthToken = ocOAuthToken . _Just

instance GoogleRequest OperationsCancel' where
        type Rs OperationsCancel' = Empty
        request = requestWith genomicsRequest
        requestWith rq OperationsCancel'{..}
          = go _ocName _ocXgafv _ocUploadProtocol (Just _ocPp)
              _ocAccessToken
              _ocUploadType
              _ocBearerToken
              _ocCallback
              _ocQuotaUser
              (Just _ocPrettyPrint)
              _ocFields
              _ocKey
              _ocOAuthToken
              (Just AltJSON)
              _ocPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy OperationsCancelResource)
                      rq
