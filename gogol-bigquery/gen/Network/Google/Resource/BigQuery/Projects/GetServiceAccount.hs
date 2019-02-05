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
-- Module      : Network.Google.Resource.BigQuery.Projects.GetServiceAccount
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the email address of the service account for your project used
-- for interactions with Google Cloud KMS.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.projects.getServiceAccount@.
module Network.Google.Resource.BigQuery.Projects.GetServiceAccount
    (
    -- * REST Resource
      ProjectsGetServiceAccountResource

    -- * Creating a Request
    , projectsGetServiceAccount
    , ProjectsGetServiceAccount

    -- * Request Lenses
    , pgsaProjectId
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquery.projects.getServiceAccount@ method which the
-- 'ProjectsGetServiceAccount' request conforms to.
type ProjectsGetServiceAccountResource =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "serviceAccount" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] GetServiceAccountResponse

-- | Returns the email address of the service account for your project used
-- for interactions with Google Cloud KMS.
--
-- /See:/ 'projectsGetServiceAccount' smart constructor.
newtype ProjectsGetServiceAccount = ProjectsGetServiceAccount'
    { _pgsaProjectId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsGetServiceAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgsaProjectId'
projectsGetServiceAccount
    :: Text -- ^ 'pgsaProjectId'
    -> ProjectsGetServiceAccount
projectsGetServiceAccount pPgsaProjectId_ =
    ProjectsGetServiceAccount'
    { _pgsaProjectId = pPgsaProjectId_
    }

-- | Project ID for which the service account is requested.
pgsaProjectId :: Lens' ProjectsGetServiceAccount Text
pgsaProjectId
  = lens _pgsaProjectId
      (\ s a -> s{_pgsaProjectId = a})

instance GoogleRequest ProjectsGetServiceAccount
         where
        type Rs ProjectsGetServiceAccount =
             GetServiceAccountResponse
        type Scopes ProjectsGetServiceAccount =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient ProjectsGetServiceAccount'{..}
          = go _pgsaProjectId (Just AltJSON) bigQueryService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsGetServiceAccountResource)
                      mempty
