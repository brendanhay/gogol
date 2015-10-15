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
-- Module      : Network.Google.Resource.DeploymentManager.Resources.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all resources in a given deployment.
--
-- /See:/ <https://cloud.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @DeploymentManagerResourcesList@.
module Network.Google.Resource.DeploymentManager.Resources.List
    (
    -- * REST Resource
      ResourcesListResource

    -- * Creating a Request
    , resourcesList'
    , ResourcesList'

    -- * Request Lenses
    , rlProject
    , rlFilter
    , rlPageToken
    , rlMaxResults
    , rlDeployment
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @DeploymentManagerResourcesList@ method which the
-- 'ResourcesList'' request conforms to.
type ResourcesListResource =
     Capture "project" Text :>
       "global" :>
         "deployments" :>
           Capture "deployment" Text :>
             "resources" :>
               QueryParam "filter" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" Word32 :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] ResourcesListResponse

-- | Lists all resources in a given deployment.
--
-- /See:/ 'resourcesList'' smart constructor.
data ResourcesList' = ResourcesList'
    { _rlProject    :: !Text
    , _rlFilter     :: !(Maybe Text)
    , _rlPageToken  :: !(Maybe Text)
    , _rlMaxResults :: !Word32
    , _rlDeployment :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourcesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlProject'
--
-- * 'rlFilter'
--
-- * 'rlPageToken'
--
-- * 'rlMaxResults'
--
-- * 'rlDeployment'
resourcesList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'deployment'
    -> ResourcesList'
resourcesList' pRlProject_ pRlDeployment_ =
    ResourcesList'
    { _rlProject = pRlProject_
    , _rlFilter = Nothing
    , _rlPageToken = Nothing
    , _rlMaxResults = 500
    , _rlDeployment = pRlDeployment_
    }

-- | The project ID for this request.
rlProject :: Lens' ResourcesList' Text
rlProject
  = lens _rlProject (\ s a -> s{_rlProject = a})

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
rlFilter :: Lens' ResourcesList' (Maybe Text)
rlFilter = lens _rlFilter (\ s a -> s{_rlFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
rlPageToken :: Lens' ResourcesList' (Maybe Text)
rlPageToken
  = lens _rlPageToken (\ s a -> s{_rlPageToken = a})

-- | Maximum count of results to be returned.
rlMaxResults :: Lens' ResourcesList' Word32
rlMaxResults
  = lens _rlMaxResults (\ s a -> s{_rlMaxResults = a})

-- | The name of the deployment for this request.
rlDeployment :: Lens' ResourcesList' Text
rlDeployment
  = lens _rlDeployment (\ s a -> s{_rlDeployment = a})

instance GoogleRequest ResourcesList' where
        type Rs ResourcesList' = ResourcesListResponse
        requestClient ResourcesList'{..}
          = go _rlProject _rlDeployment _rlFilter _rlPageToken
              (Just _rlMaxResults)
              (Just AltJSON)
              deploymentManager
          where go
                  = buildClient (Proxy :: Proxy ResourcesListResource)
                      mempty
