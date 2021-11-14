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
-- Module      : Network.Google.Resource.Compute.Projects.SetCommonInstanceMetadata
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets metadata common to all instances within the specified project using
-- the data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.projects.setCommonInstanceMetadata@.
module Network.Google.Resource.Compute.Projects.SetCommonInstanceMetadata
    (
    -- * REST Resource
      ProjectsSetCommonInstanceMetadataResource

    -- * Creating a Request
    , projectsSetCommonInstanceMetadata
    , ProjectsSetCommonInstanceMetadata

    -- * Request Lenses
    , pscimRequestId
    , pscimProject
    , pscimPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.projects.setCommonInstanceMetadata@ method which the
-- 'ProjectsSetCommonInstanceMetadata' request conforms to.
type ProjectsSetCommonInstanceMetadataResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "setCommonInstanceMetadata" :>
               QueryParam "requestId" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Metadata :> Post '[JSON] Operation

-- | Sets metadata common to all instances within the specified project using
-- the data included in the request.
--
-- /See:/ 'projectsSetCommonInstanceMetadata' smart constructor.
data ProjectsSetCommonInstanceMetadata =
  ProjectsSetCommonInstanceMetadata'
    { _pscimRequestId :: !(Maybe Text)
    , _pscimProject :: !Text
    , _pscimPayload :: !Metadata
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSetCommonInstanceMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscimRequestId'
--
-- * 'pscimProject'
--
-- * 'pscimPayload'
projectsSetCommonInstanceMetadata
    :: Text -- ^ 'pscimProject'
    -> Metadata -- ^ 'pscimPayload'
    -> ProjectsSetCommonInstanceMetadata
projectsSetCommonInstanceMetadata pPscimProject_ pPscimPayload_ =
  ProjectsSetCommonInstanceMetadata'
    { _pscimRequestId = Nothing
    , _pscimProject = pPscimProject_
    , _pscimPayload = pPscimPayload_
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
pscimRequestId :: Lens' ProjectsSetCommonInstanceMetadata (Maybe Text)
pscimRequestId
  = lens _pscimRequestId
      (\ s a -> s{_pscimRequestId = a})

-- | Project ID for this request.
pscimProject :: Lens' ProjectsSetCommonInstanceMetadata Text
pscimProject
  = lens _pscimProject (\ s a -> s{_pscimProject = a})

-- | Multipart request metadata.
pscimPayload :: Lens' ProjectsSetCommonInstanceMetadata Metadata
pscimPayload
  = lens _pscimPayload (\ s a -> s{_pscimPayload = a})

instance GoogleRequest
           ProjectsSetCommonInstanceMetadata
         where
        type Rs ProjectsSetCommonInstanceMetadata = Operation
        type Scopes ProjectsSetCommonInstanceMetadata =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ProjectsSetCommonInstanceMetadata'{..}
          = go _pscimProject _pscimRequestId (Just AltJSON)
              _pscimPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsSetCommonInstanceMetadataResource)
                      mempty
