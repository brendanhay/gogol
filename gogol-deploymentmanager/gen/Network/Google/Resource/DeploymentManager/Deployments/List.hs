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
-- Module      : Network.Google.Resource.DeploymentManager.Deployments.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all deployments for a given project.
--
-- /See:/ <https://cloud.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @DeploymentManagerDeploymentsList@.
module Network.Google.Resource.DeploymentManager.Deployments.List
    (
    -- * REST Resource
      DeploymentsListResource

    -- * Creating a Request
    , deploymentsList'
    , DeploymentsList'

    -- * Request Lenses
    , dlProject
    , dlFilter
    , dlPageToken
    , dlMaxResults
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @DeploymentManagerDeploymentsList@ method which the
-- 'DeploymentsList'' request conforms to.
type DeploymentsListResource =
     Capture "project" Text :>
       "global" :>
         "deployments" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] DeploymentsListResponse

-- | Lists all deployments for a given project.
--
-- /See:/ 'deploymentsList'' smart constructor.
data DeploymentsList' = DeploymentsList'
    { _dlProject    :: !Text
    , _dlFilter     :: !(Maybe Text)
    , _dlPageToken  :: !(Maybe Text)
    , _dlMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeploymentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlProject'
--
-- * 'dlFilter'
--
-- * 'dlPageToken'
--
-- * 'dlMaxResults'
deploymentsList'
    :: Text -- ^ 'project'
    -> DeploymentsList'
deploymentsList' pDlProject_ =
    DeploymentsList'
    { _dlProject = pDlProject_
    , _dlFilter = Nothing
    , _dlPageToken = Nothing
    , _dlMaxResults = 500
    }

-- | The project ID for this request.
dlProject :: Lens' DeploymentsList' Text
dlProject
  = lens _dlProject (\ s a -> s{_dlProject = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: FIELD_NAME
-- COMPARISON_STRING LITERAL_STRING. The FIELD_NAME is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The COMPARISON_STRING must be either eq
-- (equals) or ne (not equals). The LITERAL_STRING is the string value to
-- filter to. The literal value must be valid for the type of field
-- (string, number, boolean). For string fields, the literal value is
-- interpreted as a regular expression using RE2 syntax. The literal value
-- must match the entire field. For example, filter=name ne
-- example-instance.
dlFilter :: Lens' DeploymentsList' (Maybe Text)
dlFilter = lens _dlFilter (\ s a -> s{_dlFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
dlPageToken :: Lens' DeploymentsList' (Maybe Text)
dlPageToken
  = lens _dlPageToken (\ s a -> s{_dlPageToken = a})

-- | Maximum count of results to be returned.
dlMaxResults :: Lens' DeploymentsList' Word32
dlMaxResults
  = lens _dlMaxResults (\ s a -> s{_dlMaxResults = a})

instance GoogleRequest DeploymentsList' where
        type Rs DeploymentsList' = DeploymentsListResponse
        requestClient DeploymentsList'{..}
          = go _dlProject _dlFilter _dlPageToken
              (Just _dlMaxResults)
              (Just AltJSON)
              deploymentManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy DeploymentsListResource)
                      mempty
