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
-- Module      : Network.Google.Resource.Genomics.Projects.Operations.Cancel
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
-- the operation completed despite cancellation. Authorization requires the
-- following [Google IAM](https:\/\/cloud.google.com\/iam) permission: *
-- \`genomics.operations.cancel\`
--
-- /See:/ <https://cloud.google.com/genomics Genomics API Reference> for @genomics.projects.operations.cancel@.
module Network.Google.Resource.Genomics.Projects.Operations.Cancel
    (
    -- * REST Resource
      ProjectsOperationsCancelResource

    -- * Creating a Request
    , projectsOperationsCancel
    , ProjectsOperationsCancel

    -- * Request Lenses
    , pocXgafv
    , pocUploadProtocol
    , pocAccessToken
    , pocUploadType
    , pocPayload
    , pocName
    , pocCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.projects.operations.cancel@ method which the
-- 'ProjectsOperationsCancel' request conforms to.
type ProjectsOperationsCancelResource =
     "v2alpha1" :>
       CaptureMode "name" "cancel" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] CancelOperationRequest :>
                       Post '[JSON] Empty

-- | Starts asynchronous cancellation on a long-running operation. The server
-- makes a best effort to cancel the operation, but success is not
-- guaranteed. Clients may use Operations.GetOperation or
-- Operations.ListOperations to check whether the cancellation succeeded or
-- the operation completed despite cancellation. Authorization requires the
-- following [Google IAM](https:\/\/cloud.google.com\/iam) permission: *
-- \`genomics.operations.cancel\`
--
-- /See:/ 'projectsOperationsCancel' smart constructor.
data ProjectsOperationsCancel = ProjectsOperationsCancel'
    { _pocXgafv          :: !(Maybe Xgafv)
    , _pocUploadProtocol :: !(Maybe Text)
    , _pocAccessToken    :: !(Maybe Text)
    , _pocUploadType     :: !(Maybe Text)
    , _pocPayload        :: !CancelOperationRequest
    , _pocName           :: !Text
    , _pocCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsOperationsCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pocXgafv'
--
-- * 'pocUploadProtocol'
--
-- * 'pocAccessToken'
--
-- * 'pocUploadType'
--
-- * 'pocPayload'
--
-- * 'pocName'
--
-- * 'pocCallback'
projectsOperationsCancel
    :: CancelOperationRequest -- ^ 'pocPayload'
    -> Text -- ^ 'pocName'
    -> ProjectsOperationsCancel
projectsOperationsCancel pPocPayload_ pPocName_ =
    ProjectsOperationsCancel'
    { _pocXgafv = Nothing
    , _pocUploadProtocol = Nothing
    , _pocAccessToken = Nothing
    , _pocUploadType = Nothing
    , _pocPayload = pPocPayload_
    , _pocName = pPocName_
    , _pocCallback = Nothing
    }

-- | V1 error format.
pocXgafv :: Lens' ProjectsOperationsCancel (Maybe Xgafv)
pocXgafv = lens _pocXgafv (\ s a -> s{_pocXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pocUploadProtocol :: Lens' ProjectsOperationsCancel (Maybe Text)
pocUploadProtocol
  = lens _pocUploadProtocol
      (\ s a -> s{_pocUploadProtocol = a})

-- | OAuth access token.
pocAccessToken :: Lens' ProjectsOperationsCancel (Maybe Text)
pocAccessToken
  = lens _pocAccessToken
      (\ s a -> s{_pocAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pocUploadType :: Lens' ProjectsOperationsCancel (Maybe Text)
pocUploadType
  = lens _pocUploadType
      (\ s a -> s{_pocUploadType = a})

-- | Multipart request metadata.
pocPayload :: Lens' ProjectsOperationsCancel CancelOperationRequest
pocPayload
  = lens _pocPayload (\ s a -> s{_pocPayload = a})

-- | The name of the operation resource to be cancelled.
pocName :: Lens' ProjectsOperationsCancel Text
pocName = lens _pocName (\ s a -> s{_pocName = a})

-- | JSONP
pocCallback :: Lens' ProjectsOperationsCancel (Maybe Text)
pocCallback
  = lens _pocCallback (\ s a -> s{_pocCallback = a})

instance GoogleRequest ProjectsOperationsCancel where
        type Rs ProjectsOperationsCancel = Empty
        type Scopes ProjectsOperationsCancel =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics"]
        requestClient ProjectsOperationsCancel'{..}
          = go _pocName _pocXgafv _pocUploadProtocol
              _pocAccessToken
              _pocUploadType
              _pocCallback
              (Just AltJSON)
              _pocPayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsOperationsCancelResource)
                      mempty
