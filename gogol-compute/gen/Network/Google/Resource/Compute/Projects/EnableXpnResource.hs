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
-- Module      : Network.Google.Resource.Compute.Projects.EnableXpnResource
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enable service resource (a.k.a service project) for a host project, so
-- that subnets in the host project can be used by instances in the service
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.projects.enableXpnResource@.
module Network.Google.Resource.Compute.Projects.EnableXpnResource
    (
    -- * REST Resource
      ProjectsEnableXpnResourceResource

    -- * Creating a Request
    , projectsEnableXpnResource
    , ProjectsEnableXpnResource

    -- * Request Lenses
    , pexrRequestId
    , pexrProject
    , pexrPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.projects.enableXpnResource@ method which the
-- 'ProjectsEnableXpnResource' request conforms to.
type ProjectsEnableXpnResourceResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "enableXpnResource" :>
               QueryParam "requestId" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] ProjectsEnableXpnResourceRequest :>
                     Post '[JSON] Operation

-- | Enable service resource (a.k.a service project) for a host project, so
-- that subnets in the host project can be used by instances in the service
-- project.
--
-- /See:/ 'projectsEnableXpnResource' smart constructor.
data ProjectsEnableXpnResource = ProjectsEnableXpnResource'
    { _pexrRequestId :: !(Maybe Text)
    , _pexrProject   :: !Text
    , _pexrPayload   :: !ProjectsEnableXpnResourceRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsEnableXpnResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pexrRequestId'
--
-- * 'pexrProject'
--
-- * 'pexrPayload'
projectsEnableXpnResource
    :: Text -- ^ 'pexrProject'
    -> ProjectsEnableXpnResourceRequest -- ^ 'pexrPayload'
    -> ProjectsEnableXpnResource
projectsEnableXpnResource pPexrProject_ pPexrPayload_ =
    ProjectsEnableXpnResource'
    { _pexrRequestId = Nothing
    , _pexrProject = pPexrProject_
    , _pexrPayload = pPexrPayload_
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
pexrRequestId :: Lens' ProjectsEnableXpnResource (Maybe Text)
pexrRequestId
  = lens _pexrRequestId
      (\ s a -> s{_pexrRequestId = a})

-- | Project ID for this request.
pexrProject :: Lens' ProjectsEnableXpnResource Text
pexrProject
  = lens _pexrProject (\ s a -> s{_pexrProject = a})

-- | Multipart request metadata.
pexrPayload :: Lens' ProjectsEnableXpnResource ProjectsEnableXpnResourceRequest
pexrPayload
  = lens _pexrPayload (\ s a -> s{_pexrPayload = a})

instance GoogleRequest ProjectsEnableXpnResource
         where
        type Rs ProjectsEnableXpnResource = Operation
        type Scopes ProjectsEnableXpnResource =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ProjectsEnableXpnResource'{..}
          = go _pexrProject _pexrRequestId (Just AltJSON)
              _pexrPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsEnableXpnResourceResource)
                      mempty
