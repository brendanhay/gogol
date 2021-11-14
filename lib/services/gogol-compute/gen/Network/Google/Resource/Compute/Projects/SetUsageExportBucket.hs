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
-- Module      : Network.Google.Resource.Compute.Projects.SetUsageExportBucket
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables the usage export feature and sets the usage export bucket where
-- reports are stored. If you provide an empty request body using this
-- method, the usage export feature will be disabled.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.projects.setUsageExportBucket@.
module Network.Google.Resource.Compute.Projects.SetUsageExportBucket
    (
    -- * REST Resource
      ProjectsSetUsageExportBucketResource

    -- * Creating a Request
    , projectsSetUsageExportBucket
    , ProjectsSetUsageExportBucket

    -- * Request Lenses
    , psuebRequestId
    , psuebProject
    , psuebPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.projects.setUsageExportBucket@ method which the
-- 'ProjectsSetUsageExportBucket' request conforms to.
type ProjectsSetUsageExportBucketResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "setUsageExportBucket" :>
               QueryParam "requestId" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] UsageExportLocation :>
                     Post '[JSON] Operation

-- | Enables the usage export feature and sets the usage export bucket where
-- reports are stored. If you provide an empty request body using this
-- method, the usage export feature will be disabled.
--
-- /See:/ 'projectsSetUsageExportBucket' smart constructor.
data ProjectsSetUsageExportBucket =
  ProjectsSetUsageExportBucket'
    { _psuebRequestId :: !(Maybe Text)
    , _psuebProject :: !Text
    , _psuebPayload :: !UsageExportLocation
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSetUsageExportBucket' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psuebRequestId'
--
-- * 'psuebProject'
--
-- * 'psuebPayload'
projectsSetUsageExportBucket
    :: Text -- ^ 'psuebProject'
    -> UsageExportLocation -- ^ 'psuebPayload'
    -> ProjectsSetUsageExportBucket
projectsSetUsageExportBucket pPsuebProject_ pPsuebPayload_ =
  ProjectsSetUsageExportBucket'
    { _psuebRequestId = Nothing
    , _psuebProject = pPsuebProject_
    , _psuebPayload = pPsuebPayload_
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
psuebRequestId :: Lens' ProjectsSetUsageExportBucket (Maybe Text)
psuebRequestId
  = lens _psuebRequestId
      (\ s a -> s{_psuebRequestId = a})

-- | Project ID for this request.
psuebProject :: Lens' ProjectsSetUsageExportBucket Text
psuebProject
  = lens _psuebProject (\ s a -> s{_psuebProject = a})

-- | Multipart request metadata.
psuebPayload :: Lens' ProjectsSetUsageExportBucket UsageExportLocation
psuebPayload
  = lens _psuebPayload (\ s a -> s{_psuebPayload = a})

instance GoogleRequest ProjectsSetUsageExportBucket
         where
        type Rs ProjectsSetUsageExportBucket = Operation
        type Scopes ProjectsSetUsageExportBucket =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_only",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient ProjectsSetUsageExportBucket'{..}
          = go _psuebProject _psuebRequestId (Just AltJSON)
              _psuebPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSetUsageExportBucketResource)
                      mempty
