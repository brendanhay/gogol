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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all resources in a given deployment.
--
-- /See:/ <https://cloud.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @deploymentmanager.resources.list@.
module Network.Google.Resource.DeploymentManager.Resources.List
    (
    -- * REST Resource
      ResourcesListResource

    -- * Creating a Request
    , resourcesList
    , ResourcesList

    -- * Request Lenses
    , rlProject
    , rlFilter
    , rlPageToken
    , rlMaxResults
    , rlDeployment
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @deploymentmanager.resources.list@ method which the
-- 'ResourcesList' request conforms to.
type ResourcesListResource =
     "deploymentmanager" :>
       "v2" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "deployments" :>
                 Capture "deployment" Text :>
                   "resources" :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ResourcesListResponse

-- | Lists all resources in a given deployment.
--
-- /See:/ 'resourcesList' smart constructor.
data ResourcesList = ResourcesList
    { _rlProject    :: !Text
    , _rlFilter     :: !(Maybe Text)
    , _rlPageToken  :: !(Maybe Text)
    , _rlMaxResults :: !(Textual Word32)
    , _rlDeployment :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourcesList' with the minimum fields required to make a request.
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
resourcesList
    :: Text -- ^ 'rlProject'
    -> Text -- ^ 'rlDeployment'
    -> ResourcesList
resourcesList pRlProject_ pRlDeployment_ =
    ResourcesList
    { _rlProject = pRlProject_
    , _rlFilter = Nothing
    , _rlPageToken = Nothing
    , _rlMaxResults = 500
    , _rlDeployment = pRlDeployment_
    }

-- | The project ID for this request.
rlProject :: Lens' ResourcesList Text
rlProject
  = lens _rlProject (\ s a -> s{_rlProject = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: field_name
-- comparison_string literal_string. The field_name is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The comparison_string must be either eq
-- (equals) or ne (not equals). The literal_string is the string value to
-- filter to. The literal value must be valid for the type of field you are
-- filtering by (string, number, boolean). For string fields, the literal
-- value is interpreted as a regular expression using RE2 syntax. The
-- literal value must match the entire field. For example, to filter for
-- instances that do not have a name of example-instance, you would use
-- filter=name ne example-instance. Compute Engine Beta API Only: If you
-- use filtering in the Beta API, you can also filter on nested fields. For
-- example, you could filter on instances that have set the
-- scheduling.automaticRestart field to true. In particular, use filtering
-- on nested fields to take advantage of instance labels to organize and
-- filter results based on label values. The Beta API also supports
-- filtering on multiple expressions by providing each separate expression
-- within parentheses. For example, (scheduling.automaticRestart eq true)
-- (zone eq us-central1-f). Multiple expressions are treated as AND
-- expressions, meaning that resources must match all expressions to pass
-- the filters.
rlFilter :: Lens' ResourcesList (Maybe Text)
rlFilter = lens _rlFilter (\ s a -> s{_rlFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
rlPageToken :: Lens' ResourcesList (Maybe Text)
rlPageToken
  = lens _rlPageToken (\ s a -> s{_rlPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
rlMaxResults :: Lens' ResourcesList Word32
rlMaxResults
  = lens _rlMaxResults (\ s a -> s{_rlMaxResults = a})
      . _Coerce

-- | The name of the deployment for this request.
rlDeployment :: Lens' ResourcesList Text
rlDeployment
  = lens _rlDeployment (\ s a -> s{_rlDeployment = a})

instance GoogleRequest ResourcesList where
        type Rs ResourcesList = ResourcesListResponse
        requestClient ResourcesList{..}
          = go _rlProject _rlDeployment _rlFilter _rlPageToken
              (Just _rlMaxResults)
              (Just AltJSON)
              deploymentManagerService
          where go
                  = buildClient (Proxy :: Proxy ResourcesListResource)
                      mempty
