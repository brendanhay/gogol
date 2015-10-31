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
-- Module      : Network.Google.Resource.Compute.BackendServices.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the entire content of the BackendService resource. There are
-- several restrictions and guidelines to keep in mind when updating a
-- backend service. Read Restrictions and Guidelines for more information.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.backendServices.update@.
module Network.Google.Resource.Compute.BackendServices.Update
    (
    -- * REST Resource
      BackendServicesUpdateResource

    -- * Creating a Request
    , backendServicesUpdate
    , BackendServicesUpdate

    -- * Request Lenses
    , bsuProject
    , bsuPayload
    , bsuBackendService
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.backendServices.update@ method which the
-- 'BackendServicesUpdate' request conforms to.
type BackendServicesUpdateResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "backendServices" :>
                 Capture "backendService" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] BackendService :>
                       Put '[JSON] Operation

-- | Updates the entire content of the BackendService resource. There are
-- several restrictions and guidelines to keep in mind when updating a
-- backend service. Read Restrictions and Guidelines for more information.
--
-- /See:/ 'backendServicesUpdate' smart constructor.
data BackendServicesUpdate = BackendServicesUpdate
    { _bsuProject        :: !Text
    , _bsuPayload        :: !BackendService
    , _bsuBackendService :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendServicesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsuProject'
--
-- * 'bsuPayload'
--
-- * 'bsuBackendService'
backendServicesUpdate
    :: Text -- ^ 'bsuProject'
    -> BackendService -- ^ 'bsuPayload'
    -> Text -- ^ 'bsuBackendService'
    -> BackendServicesUpdate
backendServicesUpdate pBsuProject_ pBsuPayload_ pBsuBackendService_ =
    BackendServicesUpdate
    { _bsuProject = pBsuProject_
    , _bsuPayload = pBsuPayload_
    , _bsuBackendService = pBsuBackendService_
    }

-- | Project ID for this request.
bsuProject :: Lens' BackendServicesUpdate Text
bsuProject
  = lens _bsuProject (\ s a -> s{_bsuProject = a})

-- | Multipart request metadata.
bsuPayload :: Lens' BackendServicesUpdate BackendService
bsuPayload
  = lens _bsuPayload (\ s a -> s{_bsuPayload = a})

-- | Name of the BackendService resource to update.
bsuBackendService :: Lens' BackendServicesUpdate Text
bsuBackendService
  = lens _bsuBackendService
      (\ s a -> s{_bsuBackendService = a})

instance GoogleRequest BackendServicesUpdate where
        type Rs BackendServicesUpdate = Operation
        type Scopes BackendServicesUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient BackendServicesUpdate{..}
          = go _bsuProject _bsuBackendService (Just AltJSON)
              _bsuPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy BackendServicesUpdateResource)
                      mempty
