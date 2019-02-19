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
-- Module      : Network.Google.Resource.Compute.Projects.SetDefaultNetworkTier
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the default network tier of the project. The default network tier
-- is used when an address\/forwardingRule\/instance is created without
-- specifying the network tier field.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.projects.setDefaultNetworkTier@.
module Network.Google.Resource.Compute.Projects.SetDefaultNetworkTier
    (
    -- * REST Resource
      ProjectsSetDefaultNetworkTierResource

    -- * Creating a Request
    , projectsSetDefaultNetworkTier
    , ProjectsSetDefaultNetworkTier

    -- * Request Lenses
    , psdntRequestId
    , psdntProject
    , psdntPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.projects.setDefaultNetworkTier@ method which the
-- 'ProjectsSetDefaultNetworkTier' request conforms to.
type ProjectsSetDefaultNetworkTierResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "setDefaultNetworkTier" :>
               QueryParam "requestId" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] ProjectsSetDefaultNetworkTierRequest
                     :> Post '[JSON] Operation

-- | Sets the default network tier of the project. The default network tier
-- is used when an address\/forwardingRule\/instance is created without
-- specifying the network tier field.
--
-- /See:/ 'projectsSetDefaultNetworkTier' smart constructor.
data ProjectsSetDefaultNetworkTier =
  ProjectsSetDefaultNetworkTier'
    { _psdntRequestId :: !(Maybe Text)
    , _psdntProject   :: !Text
    , _psdntPayload   :: !ProjectsSetDefaultNetworkTierRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSetDefaultNetworkTier' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psdntRequestId'
--
-- * 'psdntProject'
--
-- * 'psdntPayload'
projectsSetDefaultNetworkTier
    :: Text -- ^ 'psdntProject'
    -> ProjectsSetDefaultNetworkTierRequest -- ^ 'psdntPayload'
    -> ProjectsSetDefaultNetworkTier
projectsSetDefaultNetworkTier pPsdntProject_ pPsdntPayload_ =
  ProjectsSetDefaultNetworkTier'
    { _psdntRequestId = Nothing
    , _psdntProject = pPsdntProject_
    , _psdntPayload = pPsdntPayload_
    }


-- | An optional request ID to identify requests. Specify a unique request ID
-- so that if you must retry your request, the server will know to ignore
-- the request if it has already been completed. For example, consider a
-- situation where you make an initial request and the request times out.
-- If you make the request again with the same request ID, the server can
-- check if original operation with the same request ID was received, and
-- if so, will ignore the second request. This prevents clients from
-- accidentally creating duplicate commitments. The request ID must be a
-- valid UUID with the exception that zero UUID is not supported
-- (00000000-0000-0000-0000-000000000000).
psdntRequestId :: Lens' ProjectsSetDefaultNetworkTier (Maybe Text)
psdntRequestId
  = lens _psdntRequestId
      (\ s a -> s{_psdntRequestId = a})

-- | Project ID for this request.
psdntProject :: Lens' ProjectsSetDefaultNetworkTier Text
psdntProject
  = lens _psdntProject (\ s a -> s{_psdntProject = a})

-- | Multipart request metadata.
psdntPayload :: Lens' ProjectsSetDefaultNetworkTier ProjectsSetDefaultNetworkTierRequest
psdntPayload
  = lens _psdntPayload (\ s a -> s{_psdntPayload = a})

instance GoogleRequest ProjectsSetDefaultNetworkTier
         where
        type Rs ProjectsSetDefaultNetworkTier = Operation
        type Scopes ProjectsSetDefaultNetworkTier =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ProjectsSetDefaultNetworkTier'{..}
          = go _psdntProject _psdntRequestId (Just AltJSON)
              _psdntPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsSetDefaultNetworkTierResource)
                      mempty
