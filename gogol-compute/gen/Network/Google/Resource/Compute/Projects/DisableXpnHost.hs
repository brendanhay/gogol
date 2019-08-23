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
-- Module      : Network.Google.Resource.Compute.Projects.DisableXpnHost
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disable this project as a shared VPC host project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.projects.disableXpnHost@.
module Network.Google.Resource.Compute.Projects.DisableXpnHost
    (
    -- * REST Resource
      ProjectsDisableXpnHostResource

    -- * Creating a Request
    , projectsDisableXpnHost
    , ProjectsDisableXpnHost

    -- * Request Lenses
    , pdxhRequestId
    , pdxhProject
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.projects.disableXpnHost@ method which the
-- 'ProjectsDisableXpnHost' request conforms to.
type ProjectsDisableXpnHostResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "disableXpnHost" :>
               QueryParam "requestId" Text :>
                 QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Disable this project as a shared VPC host project.
--
-- /See:/ 'projectsDisableXpnHost' smart constructor.
data ProjectsDisableXpnHost =
  ProjectsDisableXpnHost'
    { _pdxhRequestId :: !(Maybe Text)
    , _pdxhProject   :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDisableXpnHost' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdxhRequestId'
--
-- * 'pdxhProject'
projectsDisableXpnHost
    :: Text -- ^ 'pdxhProject'
    -> ProjectsDisableXpnHost
projectsDisableXpnHost pPdxhProject_ =
  ProjectsDisableXpnHost'
    {_pdxhRequestId = Nothing, _pdxhProject = pPdxhProject_}


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
pdxhRequestId :: Lens' ProjectsDisableXpnHost (Maybe Text)
pdxhRequestId
  = lens _pdxhRequestId
      (\ s a -> s{_pdxhRequestId = a})

-- | Project ID for this request.
pdxhProject :: Lens' ProjectsDisableXpnHost Text
pdxhProject
  = lens _pdxhProject (\ s a -> s{_pdxhProject = a})

instance GoogleRequest ProjectsDisableXpnHost where
        type Rs ProjectsDisableXpnHost = Operation
        type Scopes ProjectsDisableXpnHost =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ProjectsDisableXpnHost'{..}
          = go _pdxhProject _pdxhRequestId (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsDisableXpnHostResource)
                      mempty
