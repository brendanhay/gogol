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
-- Module      : Network.Google.Resource.Compute.Interconnects.GetDiagnostics
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the interconnectDiagnostics for the specified interconnect.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.interconnects.getDiagnostics@.
module Network.Google.Resource.Compute.Interconnects.GetDiagnostics
    (
    -- * REST Resource
      InterconnectsGetDiagnosticsResource

    -- * Creating a Request
    , interconnectsGetDiagnostics
    , InterconnectsGetDiagnostics

    -- * Request Lenses
    , igdsProject
    , igdsInterconnect
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.interconnects.getDiagnostics@ method which the
-- 'InterconnectsGetDiagnostics' request conforms to.
type InterconnectsGetDiagnosticsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "interconnects" :>
                 Capture "interconnect" Text :>
                   "getDiagnostics" :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] InterconnectsGetDiagnosticsResponse

-- | Returns the interconnectDiagnostics for the specified interconnect.
--
-- /See:/ 'interconnectsGetDiagnostics' smart constructor.
data InterconnectsGetDiagnostics =
  InterconnectsGetDiagnostics'
    { _igdsProject :: !Text
    , _igdsInterconnect :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InterconnectsGetDiagnostics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igdsProject'
--
-- * 'igdsInterconnect'
interconnectsGetDiagnostics
    :: Text -- ^ 'igdsProject'
    -> Text -- ^ 'igdsInterconnect'
    -> InterconnectsGetDiagnostics
interconnectsGetDiagnostics pIgdsProject_ pIgdsInterconnect_ =
  InterconnectsGetDiagnostics'
    {_igdsProject = pIgdsProject_, _igdsInterconnect = pIgdsInterconnect_}


-- | Project ID for this request.
igdsProject :: Lens' InterconnectsGetDiagnostics Text
igdsProject
  = lens _igdsProject (\ s a -> s{_igdsProject = a})

-- | Name of the interconnect resource to query.
igdsInterconnect :: Lens' InterconnectsGetDiagnostics Text
igdsInterconnect
  = lens _igdsInterconnect
      (\ s a -> s{_igdsInterconnect = a})

instance GoogleRequest InterconnectsGetDiagnostics
         where
        type Rs InterconnectsGetDiagnostics =
             InterconnectsGetDiagnosticsResponse
        type Scopes InterconnectsGetDiagnostics =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient InterconnectsGetDiagnostics'{..}
          = go _igdsProject _igdsInterconnect (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InterconnectsGetDiagnosticsResource)
                      mempty
