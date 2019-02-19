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
-- Module      : Network.Google.Resource.Compute.Projects.DisableXpnResource
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disable a serivce resource (a.k.a service project) associated with this
-- host project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.projects.disableXpnResource@.
module Network.Google.Resource.Compute.Projects.DisableXpnResource
    (
    -- * REST Resource
      ProjectsDisableXpnResourceResource

    -- * Creating a Request
    , projectsDisableXpnResource
    , ProjectsDisableXpnResource

    -- * Request Lenses
    , pdxrRequestId
    , pdxrProject
    , pdxrPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.projects.disableXpnResource@ method which the
-- 'ProjectsDisableXpnResource' request conforms to.
type ProjectsDisableXpnResourceResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "disableXpnResource" :>
               QueryParam "requestId" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] ProjectsDisableXpnResourceRequest :>
                     Post '[JSON] Operation

-- | Disable a serivce resource (a.k.a service project) associated with this
-- host project.
--
-- /See:/ 'projectsDisableXpnResource' smart constructor.
data ProjectsDisableXpnResource =
  ProjectsDisableXpnResource'
    { _pdxrRequestId :: !(Maybe Text)
    , _pdxrProject   :: !Text
    , _pdxrPayload   :: !ProjectsDisableXpnResourceRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsDisableXpnResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdxrRequestId'
--
-- * 'pdxrProject'
--
-- * 'pdxrPayload'
projectsDisableXpnResource
    :: Text -- ^ 'pdxrProject'
    -> ProjectsDisableXpnResourceRequest -- ^ 'pdxrPayload'
    -> ProjectsDisableXpnResource
projectsDisableXpnResource pPdxrProject_ pPdxrPayload_ =
  ProjectsDisableXpnResource'
    { _pdxrRequestId = Nothing
    , _pdxrProject = pPdxrProject_
    , _pdxrPayload = pPdxrPayload_
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
pdxrRequestId :: Lens' ProjectsDisableXpnResource (Maybe Text)
pdxrRequestId
  = lens _pdxrRequestId
      (\ s a -> s{_pdxrRequestId = a})

-- | Project ID for this request.
pdxrProject :: Lens' ProjectsDisableXpnResource Text
pdxrProject
  = lens _pdxrProject (\ s a -> s{_pdxrProject = a})

-- | Multipart request metadata.
pdxrPayload :: Lens' ProjectsDisableXpnResource ProjectsDisableXpnResourceRequest
pdxrPayload
  = lens _pdxrPayload (\ s a -> s{_pdxrPayload = a})

instance GoogleRequest ProjectsDisableXpnResource
         where
        type Rs ProjectsDisableXpnResource = Operation
        type Scopes ProjectsDisableXpnResource =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ProjectsDisableXpnResource'{..}
          = go _pdxrProject _pdxrRequestId (Just AltJSON)
              _pdxrPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsDisableXpnResourceResource)
                      mempty
