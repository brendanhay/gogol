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
-- Module      : Network.Google.Resource.Compute.BackendServices.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified BackendService resource with the data included in
-- the request. There are several restrictions and guidelines to keep in
-- mind when updating a backend service. Read Restrictions and Guidelines
-- for more information. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.backendServices.patch@.
module Network.Google.Resource.Compute.BackendServices.Patch
    (
    -- * REST Resource
      BackendServicesPatchResource

    -- * Creating a Request
    , backendServicesPatch
    , BackendServicesPatch

    -- * Request Lenses
    , bspProject
    , bspPayload
    , bspBackendService
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.backendServices.patch@ method which the
-- 'BackendServicesPatch' request conforms to.
type BackendServicesPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "backendServices" :>
                 Capture "backendService" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] BackendService :>
                       Patch '[JSON] Operation

-- | Updates the specified BackendService resource with the data included in
-- the request. There are several restrictions and guidelines to keep in
-- mind when updating a backend service. Read Restrictions and Guidelines
-- for more information. This method supports patch semantics.
--
-- /See:/ 'backendServicesPatch' smart constructor.
data BackendServicesPatch = BackendServicesPatch'
    { _bspProject        :: !Text
    , _bspPayload        :: !BackendService
    , _bspBackendService :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendServicesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bspProject'
--
-- * 'bspPayload'
--
-- * 'bspBackendService'
backendServicesPatch
    :: Text -- ^ 'bspProject'
    -> BackendService -- ^ 'bspPayload'
    -> Text -- ^ 'bspBackendService'
    -> BackendServicesPatch
backendServicesPatch pBspProject_ pBspPayload_ pBspBackendService_ =
    BackendServicesPatch'
    { _bspProject = pBspProject_
    , _bspPayload = pBspPayload_
    , _bspBackendService = pBspBackendService_
    }

-- | Project ID for this request.
bspProject :: Lens' BackendServicesPatch Text
bspProject
  = lens _bspProject (\ s a -> s{_bspProject = a})

-- | Multipart request metadata.
bspPayload :: Lens' BackendServicesPatch BackendService
bspPayload
  = lens _bspPayload (\ s a -> s{_bspPayload = a})

-- | Name of the BackendService resource to update.
bspBackendService :: Lens' BackendServicesPatch Text
bspBackendService
  = lens _bspBackendService
      (\ s a -> s{_bspBackendService = a})

instance GoogleRequest BackendServicesPatch where
        type Rs BackendServicesPatch = Operation
        type Scopes BackendServicesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient BackendServicesPatch'{..}
          = go _bspProject _bspBackendService (Just AltJSON)
              _bspPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy BackendServicesPatchResource)
                      mempty
