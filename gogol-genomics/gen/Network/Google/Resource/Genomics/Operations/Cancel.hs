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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts asynchronous cancellation on a long-running operation. The server
-- makes a best effort to cancel the operation, but success is not
-- guaranteed. Clients may use Operations.GetOperation or
-- Operations.ListOperations to check whether the cancellation succeeded or
-- the operation completed despite cancellation.
--
-- /See:/ <https://cloud.google.com/genomics Genomics API Reference> for @genomics.operations.cancel@.
module Network.Google.Resource.Genomics.Operations.Cancel
    (
    -- * REST Resource
      OperationsCancelResource

    -- * Creating a Request
    , operationsCancel
    , OperationsCancel

    -- * Request Lenses
    , ocXgafv
    , ocUploadProtocol
    , ocPp
    , ocAccessToken
    , ocUploadType
    , ocPayload
    , ocBearerToken
    , ocName
    , ocCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.operations.cancel@ method which the
-- 'OperationsCancel' request conforms to.
type OperationsCancelResource =
     "v1" :>
       CaptureMode "name" "cancel" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] CancelOperationRequest :>
                           Post '[JSON] Empty

-- | Starts asynchronous cancellation on a long-running operation. The server
-- makes a best effort to cancel the operation, but success is not
-- guaranteed. Clients may use Operations.GetOperation or
-- Operations.ListOperations to check whether the cancellation succeeded or
-- the operation completed despite cancellation.
--
-- /See:/ 'operationsCancel' smart constructor.
data OperationsCancel = OperationsCancel'
    { _ocXgafv          :: !(Maybe Xgafv)
    , _ocUploadProtocol :: !(Maybe Text)
    , _ocPp             :: !Bool
    , _ocAccessToken    :: !(Maybe Text)
    , _ocUploadType     :: !(Maybe Text)
    , _ocPayload        :: !CancelOperationRequest
    , _ocBearerToken    :: !(Maybe Text)
    , _ocName           :: !Text
    , _ocCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationsCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocXgafv'
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
-- * 'ocName'
--
-- * 'ocCallback'
operationsCancel
    :: CancelOperationRequest -- ^ 'ocPayload'
    -> Text -- ^ 'ocName'
    -> OperationsCancel
operationsCancel pOcPayload_ pOcName_ =
    OperationsCancel'
    { _ocXgafv = Nothing
    , _ocUploadProtocol = Nothing
    , _ocPp = True
    , _ocAccessToken = Nothing
    , _ocUploadType = Nothing
    , _ocPayload = pOcPayload_
    , _ocBearerToken = Nothing
    , _ocName = pOcName_
    , _ocCallback = Nothing
    }

-- | V1 error format.
ocXgafv :: Lens' OperationsCancel (Maybe Xgafv)
ocXgafv = lens _ocXgafv (\ s a -> s{_ocXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ocUploadProtocol :: Lens' OperationsCancel (Maybe Text)
ocUploadProtocol
  = lens _ocUploadProtocol
      (\ s a -> s{_ocUploadProtocol = a})

-- | Pretty-print response.
ocPp :: Lens' OperationsCancel Bool
ocPp = lens _ocPp (\ s a -> s{_ocPp = a})

-- | OAuth access token.
ocAccessToken :: Lens' OperationsCancel (Maybe Text)
ocAccessToken
  = lens _ocAccessToken
      (\ s a -> s{_ocAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ocUploadType :: Lens' OperationsCancel (Maybe Text)
ocUploadType
  = lens _ocUploadType (\ s a -> s{_ocUploadType = a})

-- | Multipart request metadata.
ocPayload :: Lens' OperationsCancel CancelOperationRequest
ocPayload
  = lens _ocPayload (\ s a -> s{_ocPayload = a})

-- | OAuth bearer token.
ocBearerToken :: Lens' OperationsCancel (Maybe Text)
ocBearerToken
  = lens _ocBearerToken
      (\ s a -> s{_ocBearerToken = a})

-- | The name of the operation resource to be cancelled.
ocName :: Lens' OperationsCancel Text
ocName = lens _ocName (\ s a -> s{_ocName = a})

-- | JSONP
ocCallback :: Lens' OperationsCancel (Maybe Text)
ocCallback
  = lens _ocCallback (\ s a -> s{_ocCallback = a})

instance GoogleRequest OperationsCancel where
        type Rs OperationsCancel = Empty
        type Scopes OperationsCancel =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics"]
        requestClient OperationsCancel'{..}
          = go _ocName _ocXgafv _ocUploadProtocol (Just _ocPp)
              _ocAccessToken
              _ocUploadType
              _ocBearerToken
              _ocCallback
              (Just AltJSON)
              _ocPayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy OperationsCancelResource)
                      mempty
