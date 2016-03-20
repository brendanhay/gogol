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
-- Module      : Network.Google.Resource.DeploymentManager.Manifests.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all manifests for a given deployment.
--
-- /See:/ <https://cloud.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @deploymentmanager.manifests.list@.
module Network.Google.Resource.DeploymentManager.Manifests.List
    (
    -- * REST Resource
      ManifestsListResource

    -- * Creating a Request
    , manifestsList
    , ManifestsList

    -- * Request Lenses
    , mlProject
    , mlFilter
    , mlPageToken
    , mlMaxResults
    , mlDeployment
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @deploymentmanager.manifests.list@ method which the
-- 'ManifestsList' request conforms to.
type ManifestsListResource =
     "deploymentmanager" :>
       "v2" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "deployments" :>
                 Capture "deployment" Text :>
                   "manifests" :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ManifestsListResponse

-- | Lists all manifests for a given deployment.
--
-- /See:/ 'manifestsList' smart constructor.
data ManifestsList = ManifestsList
    { _mlProject    :: !Text
    , _mlFilter     :: !(Maybe Text)
    , _mlPageToken  :: !(Maybe Text)
    , _mlMaxResults :: !(Textual Word32)
    , _mlDeployment :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManifestsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlProject'
--
-- * 'mlFilter'
--
-- * 'mlPageToken'
--
-- * 'mlMaxResults'
--
-- * 'mlDeployment'
manifestsList
    :: Text -- ^ 'mlProject'
    -> Text -- ^ 'mlDeployment'
    -> ManifestsList
manifestsList pMlProject_ pMlDeployment_ =
    ManifestsList
    { _mlProject = pMlProject_
    , _mlFilter = Nothing
    , _mlPageToken = Nothing
    , _mlMaxResults = 500
    , _mlDeployment = pMlDeployment_
    }

-- | The project ID for this request.
mlProject :: Lens' ManifestsList Text
mlProject
  = lens _mlProject (\ s a -> s{_mlProject = a})

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
mlFilter :: Lens' ManifestsList (Maybe Text)
mlFilter = lens _mlFilter (\ s a -> s{_mlFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
mlPageToken :: Lens' ManifestsList (Maybe Text)
mlPageToken
  = lens _mlPageToken (\ s a -> s{_mlPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
mlMaxResults :: Lens' ManifestsList Word32
mlMaxResults
  = lens _mlMaxResults (\ s a -> s{_mlMaxResults = a})
      . _Coerce

-- | The name of the deployment for this request.
mlDeployment :: Lens' ManifestsList Text
mlDeployment
  = lens _mlDeployment (\ s a -> s{_mlDeployment = a})

instance GoogleRequest ManifestsList where
        type Rs ManifestsList = ManifestsListResponse
        requestClient ManifestsList{..}
          = go _mlProject _mlDeployment _mlFilter _mlPageToken
              (Just _mlMaxResults)
              (Just AltJSON)
              deploymentManagerService
          where go
                  = buildClient (Proxy :: Proxy ManifestsListResource)
                      mempty
