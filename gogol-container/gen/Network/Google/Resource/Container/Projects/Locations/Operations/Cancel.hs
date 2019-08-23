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
-- Module      : Network.Google.Resource.Container.Projects.Locations.Operations.Cancel
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels the specified operation.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.operations.cancel@.
module Network.Google.Resource.Container.Projects.Locations.Operations.Cancel
    (
    -- * REST Resource
      ProjectsLocationsOperationsCancelResource

    -- * Creating a Request
    , projectsLocationsOperationsCancel
    , ProjectsLocationsOperationsCancel

    -- * Request Lenses
    , plocXgafv
    , plocUploadProtocol
    , plocAccessToken
    , plocUploadType
    , plocPayload
    , plocName
    , plocCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.locations.operations.cancel@ method which the
-- 'ProjectsLocationsOperationsCancel' request conforms to.
type ProjectsLocationsOperationsCancelResource =
     "v1" :>
       CaptureMode "name" "cancel" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] CancelOperationRequest :>
                       Post '[JSON] Empty

-- | Cancels the specified operation.
--
-- /See:/ 'projectsLocationsOperationsCancel' smart constructor.
data ProjectsLocationsOperationsCancel =
  ProjectsLocationsOperationsCancel'
    { _plocXgafv          :: !(Maybe Xgafv)
    , _plocUploadProtocol :: !(Maybe Text)
    , _plocAccessToken    :: !(Maybe Text)
    , _plocUploadType     :: !(Maybe Text)
    , _plocPayload        :: !CancelOperationRequest
    , _plocName           :: !Text
    , _plocCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsOperationsCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plocXgafv'
--
-- * 'plocUploadProtocol'
--
-- * 'plocAccessToken'
--
-- * 'plocUploadType'
--
-- * 'plocPayload'
--
-- * 'plocName'
--
-- * 'plocCallback'
projectsLocationsOperationsCancel
    :: CancelOperationRequest -- ^ 'plocPayload'
    -> Text -- ^ 'plocName'
    -> ProjectsLocationsOperationsCancel
projectsLocationsOperationsCancel pPlocPayload_ pPlocName_ =
  ProjectsLocationsOperationsCancel'
    { _plocXgafv = Nothing
    , _plocUploadProtocol = Nothing
    , _plocAccessToken = Nothing
    , _plocUploadType = Nothing
    , _plocPayload = pPlocPayload_
    , _plocName = pPlocName_
    , _plocCallback = Nothing
    }


-- | V1 error format.
plocXgafv :: Lens' ProjectsLocationsOperationsCancel (Maybe Xgafv)
plocXgafv
  = lens _plocXgafv (\ s a -> s{_plocXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plocUploadProtocol :: Lens' ProjectsLocationsOperationsCancel (Maybe Text)
plocUploadProtocol
  = lens _plocUploadProtocol
      (\ s a -> s{_plocUploadProtocol = a})

-- | OAuth access token.
plocAccessToken :: Lens' ProjectsLocationsOperationsCancel (Maybe Text)
plocAccessToken
  = lens _plocAccessToken
      (\ s a -> s{_plocAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plocUploadType :: Lens' ProjectsLocationsOperationsCancel (Maybe Text)
plocUploadType
  = lens _plocUploadType
      (\ s a -> s{_plocUploadType = a})

-- | Multipart request metadata.
plocPayload :: Lens' ProjectsLocationsOperationsCancel CancelOperationRequest
plocPayload
  = lens _plocPayload (\ s a -> s{_plocPayload = a})

-- | The name (project, location, operation id) of the operation to cancel.
-- Specified in the format \'projects\/*\/locations\/*\/operations\/*\'.
plocName :: Lens' ProjectsLocationsOperationsCancel Text
plocName = lens _plocName (\ s a -> s{_plocName = a})

-- | JSONP
plocCallback :: Lens' ProjectsLocationsOperationsCancel (Maybe Text)
plocCallback
  = lens _plocCallback (\ s a -> s{_plocCallback = a})

instance GoogleRequest
           ProjectsLocationsOperationsCancel
         where
        type Rs ProjectsLocationsOperationsCancel = Empty
        type Scopes ProjectsLocationsOperationsCancel =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsOperationsCancel'{..}
          = go _plocName _plocXgafv _plocUploadProtocol
              _plocAccessToken
              _plocUploadType
              _plocCallback
              (Just AltJSON)
              _plocPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsOperationsCancelResource)
                      mempty
