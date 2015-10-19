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
-- Copyright   : (c) 2015 Brendan Hay
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
    , projectsSetCommonInstanceMetadata'
    , ProjectsSetCommonInstanceMetadata'

    -- * Request Lenses
    , pscimProject
    , pscimPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.projects.setCommonInstanceMetadata@ method which the
-- 'ProjectsSetCommonInstanceMetadata'' request conforms to.
type ProjectsSetCommonInstanceMetadataResource =
     Capture "project" Text :>
       "setCommonInstanceMetadata" :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] Metadata :> Post '[JSON] Operation

-- | Sets metadata common to all instances within the specified project using
-- the data included in the request.
--
-- /See:/ 'projectsSetCommonInstanceMetadata'' smart constructor.
data ProjectsSetCommonInstanceMetadata' = ProjectsSetCommonInstanceMetadata'
    { _pscimProject :: !Text
    , _pscimPayload :: !Metadata
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSetCommonInstanceMetadata'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscimProject'
--
-- * 'pscimPayload'
projectsSetCommonInstanceMetadata'
    :: Text -- ^ 'pscimProject'
    -> Metadata -- ^ 'pscimPayload'
    -> ProjectsSetCommonInstanceMetadata'
projectsSetCommonInstanceMetadata' pPscimProject_ pPscimPayload_ =
    ProjectsSetCommonInstanceMetadata'
    { _pscimProject = pPscimProject_
    , _pscimPayload = pPscimPayload_
    }

-- | Project ID for this request.
pscimProject :: Lens' ProjectsSetCommonInstanceMetadata' Text
pscimProject
  = lens _pscimProject (\ s a -> s{_pscimProject = a})

-- | Multipart request metadata.
pscimPayload :: Lens' ProjectsSetCommonInstanceMetadata' Metadata
pscimPayload
  = lens _pscimPayload (\ s a -> s{_pscimPayload = a})

instance GoogleRequest
         ProjectsSetCommonInstanceMetadata' where
        type Rs ProjectsSetCommonInstanceMetadata' =
             Operation
        requestClient ProjectsSetCommonInstanceMetadata'{..}
          = go _pscimProject (Just AltJSON) _pscimPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsSetCommonInstanceMetadataResource)
                      mempty
