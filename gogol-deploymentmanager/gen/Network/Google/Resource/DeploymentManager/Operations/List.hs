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
-- Module      : Network.Google.Resource.DeploymentManager.Operations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all operations for a project.
--
-- /See:/ <https://cloud.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @deploymentmanager.operations.list@.
module Network.Google.Resource.DeploymentManager.Operations.List
    (
    -- * REST Resource
      OperationsListResource

    -- * Creating a Request
    , operationsList
    , OperationsList

    -- * Request Lenses
    , olProject
    , olFilter
    , olPageToken
    , olMaxResults
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @deploymentmanager.operations.list@ method which the
-- 'OperationsList' request conforms to.
type OperationsListResource =
     "deploymentmanager" :>
       "v2" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "operations" :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" Word32 :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] OperationsListResponse

-- | Lists all operations for a project.
--
-- /See:/ 'operationsList' smart constructor.
data OperationsList = OperationsList
    { _olProject    :: !Text
    , _olFilter     :: !(Maybe Text)
    , _olPageToken  :: !(Maybe Text)
    , _olMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olProject'
--
-- * 'olFilter'
--
-- * 'olPageToken'
--
-- * 'olMaxResults'
operationsList
    :: Text -- ^ 'olProject'
    -> OperationsList
operationsList pOlProject_ =
    OperationsList
    { _olProject = pOlProject_
    , _olFilter = Nothing
    , _olPageToken = Nothing
    , _olMaxResults = 500
    }

-- | The project ID for this request.
olProject :: Lens' OperationsList Text
olProject
  = lens _olProject (\ s a -> s{_olProject = a})

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
olFilter :: Lens' OperationsList (Maybe Text)
olFilter = lens _olFilter (\ s a -> s{_olFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
olPageToken :: Lens' OperationsList (Maybe Text)
olPageToken
  = lens _olPageToken (\ s a -> s{_olPageToken = a})

-- | Maximum count of results to be returned.
olMaxResults :: Lens' OperationsList Word32
olMaxResults
  = lens _olMaxResults (\ s a -> s{_olMaxResults = a})

instance GoogleRequest OperationsList where
        type Rs OperationsList = OperationsListResponse
        requestClient OperationsList{..}
          = go _olProject _olFilter _olPageToken
              (Just _olMaxResults)
              (Just AltJSON)
              deploymentManagerService
          where go
                  = buildClient (Proxy :: Proxy OperationsListResource)
                      mempty
