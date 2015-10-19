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
-- Copyright   : (c) 2015 Brendan Hay
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
    , manifestsList'
    , ManifestsList'

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
-- 'ManifestsList'' request conforms to.
type ManifestsListResource =
     Capture "project" Text :>
       "global" :>
         "deployments" :>
           Capture "deployment" Text :>
             "manifests" :>
               QueryParam "filter" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" Word32 :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] ManifestsListResponse

-- | Lists all manifests for a given deployment.
--
-- /See:/ 'manifestsList'' smart constructor.
data ManifestsList' = ManifestsList'
    { _mlProject    :: !Text
    , _mlFilter     :: !(Maybe Text)
    , _mlPageToken  :: !(Maybe Text)
    , _mlMaxResults :: !Word32
    , _mlDeployment :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManifestsList'' with the minimum fields required to make a request.
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
manifestsList'
    :: Text -- ^ 'mlProject'
    -> Text -- ^ 'mlDeployment'
    -> ManifestsList'
manifestsList' pMlProject_ pMlDeployment_ =
    ManifestsList'
    { _mlProject = pMlProject_
    , _mlFilter = Nothing
    , _mlPageToken = Nothing
    , _mlMaxResults = 500
    , _mlDeployment = pMlDeployment_
    }

-- | The project ID for this request.
mlProject :: Lens' ManifestsList' Text
mlProject
  = lens _mlProject (\ s a -> s{_mlProject = a})

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
mlFilter :: Lens' ManifestsList' (Maybe Text)
mlFilter = lens _mlFilter (\ s a -> s{_mlFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
mlPageToken :: Lens' ManifestsList' (Maybe Text)
mlPageToken
  = lens _mlPageToken (\ s a -> s{_mlPageToken = a})

-- | Maximum count of results to be returned.
mlMaxResults :: Lens' ManifestsList' Word32
mlMaxResults
  = lens _mlMaxResults (\ s a -> s{_mlMaxResults = a})

-- | The name of the deployment for this request.
mlDeployment :: Lens' ManifestsList' Text
mlDeployment
  = lens _mlDeployment (\ s a -> s{_mlDeployment = a})

instance GoogleRequest ManifestsList' where
        type Rs ManifestsList' = ManifestsListResponse
        requestClient ManifestsList'{..}
          = go _mlProject _mlDeployment _mlFilter _mlPageToken
              (Just _mlMaxResults)
              (Just AltJSON)
              deploymentManagerService
          where go
                  = buildClient (Proxy :: Proxy ManifestsListResource)
                      mempty
