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
-- Module      : Network.Google.Resource.Compute.Projects.EnableXpnHost
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enable this project as a shared VPC host project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.projects.enableXpnHost@.
module Network.Google.Resource.Compute.Projects.EnableXpnHost
    (
    -- * REST Resource
      ProjectsEnableXpnHostResource

    -- * Creating a Request
    , projectsEnableXpnHost
    , ProjectsEnableXpnHost

    -- * Request Lenses
    , pexhRequestId
    , pexhProject
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.projects.enableXpnHost@ method which the
-- 'ProjectsEnableXpnHost' request conforms to.
type ProjectsEnableXpnHostResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "enableXpnHost" :>
               QueryParam "requestId" Text :>
                 QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Enable this project as a shared VPC host project.
--
-- /See:/ 'projectsEnableXpnHost' smart constructor.
data ProjectsEnableXpnHost =
  ProjectsEnableXpnHost'
    { _pexhRequestId :: !(Maybe Text)
    , _pexhProject   :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsEnableXpnHost' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pexhRequestId'
--
-- * 'pexhProject'
projectsEnableXpnHost
    :: Text -- ^ 'pexhProject'
    -> ProjectsEnableXpnHost
projectsEnableXpnHost pPexhProject_ =
  ProjectsEnableXpnHost'
    {_pexhRequestId = Nothing, _pexhProject = pPexhProject_}


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
pexhRequestId :: Lens' ProjectsEnableXpnHost (Maybe Text)
pexhRequestId
  = lens _pexhRequestId
      (\ s a -> s{_pexhRequestId = a})

-- | Project ID for this request.
pexhProject :: Lens' ProjectsEnableXpnHost Text
pexhProject
  = lens _pexhProject (\ s a -> s{_pexhProject = a})

instance GoogleRequest ProjectsEnableXpnHost where
        type Rs ProjectsEnableXpnHost = Operation
        type Scopes ProjectsEnableXpnHost =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ProjectsEnableXpnHost'{..}
          = go _pexhProject _pexhRequestId (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsEnableXpnHostResource)
                      mempty
