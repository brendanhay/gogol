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
-- Module      : Network.Google.Resource.Translate.Projects.Locations.Operations.Wait
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Waits until the specified long-running operation is done or reaches at
-- most a specified timeout, returning the latest state. If the operation
-- is already done, the latest state is immediately returned. If the
-- timeout specified is greater than the default HTTP\/RPC timeout, the
-- HTTP\/RPC timeout is used. If the server does not support this method,
-- it returns \`google.rpc.Code.UNIMPLEMENTED\`. Note that this method is
-- on a best-effort basis. It may return the latest state before the
-- specified timeout (including immediately), meaning even an immediate
-- response is no guarantee that the operation is done.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.operations.wait@.
module Network.Google.Resource.Translate.Projects.Locations.Operations.Wait
    (
    -- * REST Resource
      ProjectsLocationsOperationsWaitResource

    -- * Creating a Request
    , projectsLocationsOperationsWait
    , ProjectsLocationsOperationsWait

    -- * Request Lenses
    , plowXgafv
    , plowUploadProtocol
    , plowAccessToken
    , plowUploadType
    , plowPayload
    , plowName
    , plowCallback
    ) where

import Network.Google.Prelude
import Network.Google.Translate.Types

-- | A resource alias for @translate.projects.locations.operations.wait@ method which the
-- 'ProjectsLocationsOperationsWait' request conforms to.
type ProjectsLocationsOperationsWaitResource =
     "v3" :>
       CaptureMode "name" "wait" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] WaitOperationRequest :>
                       Post '[JSON] Operation

-- | Waits until the specified long-running operation is done or reaches at
-- most a specified timeout, returning the latest state. If the operation
-- is already done, the latest state is immediately returned. If the
-- timeout specified is greater than the default HTTP\/RPC timeout, the
-- HTTP\/RPC timeout is used. If the server does not support this method,
-- it returns \`google.rpc.Code.UNIMPLEMENTED\`. Note that this method is
-- on a best-effort basis. It may return the latest state before the
-- specified timeout (including immediately), meaning even an immediate
-- response is no guarantee that the operation is done.
--
-- /See:/ 'projectsLocationsOperationsWait' smart constructor.
data ProjectsLocationsOperationsWait =
  ProjectsLocationsOperationsWait'
    { _plowXgafv :: !(Maybe Xgafv)
    , _plowUploadProtocol :: !(Maybe Text)
    , _plowAccessToken :: !(Maybe Text)
    , _plowUploadType :: !(Maybe Text)
    , _plowPayload :: !WaitOperationRequest
    , _plowName :: !Text
    , _plowCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsOperationsWait' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plowXgafv'
--
-- * 'plowUploadProtocol'
--
-- * 'plowAccessToken'
--
-- * 'plowUploadType'
--
-- * 'plowPayload'
--
-- * 'plowName'
--
-- * 'plowCallback'
projectsLocationsOperationsWait
    :: WaitOperationRequest -- ^ 'plowPayload'
    -> Text -- ^ 'plowName'
    -> ProjectsLocationsOperationsWait
projectsLocationsOperationsWait pPlowPayload_ pPlowName_ =
  ProjectsLocationsOperationsWait'
    { _plowXgafv = Nothing
    , _plowUploadProtocol = Nothing
    , _plowAccessToken = Nothing
    , _plowUploadType = Nothing
    , _plowPayload = pPlowPayload_
    , _plowName = pPlowName_
    , _plowCallback = Nothing
    }


-- | V1 error format.
plowXgafv :: Lens' ProjectsLocationsOperationsWait (Maybe Xgafv)
plowXgafv
  = lens _plowXgafv (\ s a -> s{_plowXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plowUploadProtocol :: Lens' ProjectsLocationsOperationsWait (Maybe Text)
plowUploadProtocol
  = lens _plowUploadProtocol
      (\ s a -> s{_plowUploadProtocol = a})

-- | OAuth access token.
plowAccessToken :: Lens' ProjectsLocationsOperationsWait (Maybe Text)
plowAccessToken
  = lens _plowAccessToken
      (\ s a -> s{_plowAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plowUploadType :: Lens' ProjectsLocationsOperationsWait (Maybe Text)
plowUploadType
  = lens _plowUploadType
      (\ s a -> s{_plowUploadType = a})

-- | Multipart request metadata.
plowPayload :: Lens' ProjectsLocationsOperationsWait WaitOperationRequest
plowPayload
  = lens _plowPayload (\ s a -> s{_plowPayload = a})

-- | The name of the operation resource to wait on.
plowName :: Lens' ProjectsLocationsOperationsWait Text
plowName = lens _plowName (\ s a -> s{_plowName = a})

-- | JSONP
plowCallback :: Lens' ProjectsLocationsOperationsWait (Maybe Text)
plowCallback
  = lens _plowCallback (\ s a -> s{_plowCallback = a})

instance GoogleRequest
           ProjectsLocationsOperationsWait
         where
        type Rs ProjectsLocationsOperationsWait = Operation
        type Scopes ProjectsLocationsOperationsWait =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-translation"]
        requestClient ProjectsLocationsOperationsWait'{..}
          = go _plowName _plowXgafv _plowUploadProtocol
              _plowAccessToken
              _plowUploadType
              _plowCallback
              (Just AltJSON)
              _plowPayload
              translateService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsOperationsWaitResource)
                      mempty
