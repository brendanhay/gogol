{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.BigQuery.Datasets.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates information in an existing dataset. The update method replaces
-- the entire dataset resource, whereas the patch method only replaces
-- fields that are provided in the submitted dataset resource. This method
-- supports patch semantics.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigqueryDatasetsPatch@.
module Network.Google.Resource.BigQuery.Datasets.Patch
    (
    -- * REST Resource
      DatasetsPatchResource

    -- * Creating a Request
    , datasetsPatch'
    , DatasetsPatch'

    -- * Request Lenses
    , dpQuotaUser
    , dpPrettyPrint
    , dpUserIp
    , dpKey
    , dpDatasetId
    , dpProjectId
    , dpOauthToken
    , dpFields
    , dpAlt
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigqueryDatasetsPatch@ which the
-- 'DatasetsPatch'' request conforms to.
type DatasetsPatchResource =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :>
           Capture "datasetId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Patch '[JSON] Dataset

-- | Updates information in an existing dataset. The update method replaces
-- the entire dataset resource, whereas the patch method only replaces
-- fields that are provided in the submitted dataset resource. This method
-- supports patch semantics.
--
-- /See:/ 'datasetsPatch'' smart constructor.
data DatasetsPatch' = DatasetsPatch'
    { _dpQuotaUser   :: !(Maybe Text)
    , _dpPrettyPrint :: !Bool
    , _dpUserIp      :: !(Maybe Text)
    , _dpKey         :: !(Maybe Text)
    , _dpDatasetId   :: !Text
    , _dpProjectId   :: !Text
    , _dpOauthToken  :: !(Maybe Text)
    , _dpFields      :: !(Maybe Text)
    , _dpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpQuotaUser'
--
-- * 'dpPrettyPrint'
--
-- * 'dpUserIp'
--
-- * 'dpKey'
--
-- * 'dpDatasetId'
--
-- * 'dpProjectId'
--
-- * 'dpOauthToken'
--
-- * 'dpFields'
--
-- * 'dpAlt'
datasetsPatch'
    :: Text -- ^ 'datasetId'
    -> Text -- ^ 'projectId'
    -> DatasetsPatch'
datasetsPatch' pDpDatasetId_ pDpProjectId_ =
    DatasetsPatch'
    { _dpQuotaUser = Nothing
    , _dpPrettyPrint = True
    , _dpUserIp = Nothing
    , _dpKey = Nothing
    , _dpDatasetId = pDpDatasetId_
    , _dpProjectId = pDpProjectId_
    , _dpOauthToken = Nothing
    , _dpFields = Nothing
    , _dpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dpQuotaUser :: Lens' DatasetsPatch' (Maybe Text)
dpQuotaUser
  = lens _dpQuotaUser (\ s a -> s{_dpQuotaUser = a})

-- | Returns response with indentations and line breaks.
dpPrettyPrint :: Lens' DatasetsPatch' Bool
dpPrettyPrint
  = lens _dpPrettyPrint
      (\ s a -> s{_dpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dpUserIp :: Lens' DatasetsPatch' (Maybe Text)
dpUserIp = lens _dpUserIp (\ s a -> s{_dpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dpKey :: Lens' DatasetsPatch' (Maybe Text)
dpKey = lens _dpKey (\ s a -> s{_dpKey = a})

-- | Dataset ID of the dataset being updated
dpDatasetId :: Lens' DatasetsPatch' Text
dpDatasetId
  = lens _dpDatasetId (\ s a -> s{_dpDatasetId = a})

-- | Project ID of the dataset being updated
dpProjectId :: Lens' DatasetsPatch' Text
dpProjectId
  = lens _dpProjectId (\ s a -> s{_dpProjectId = a})

-- | OAuth 2.0 token for the current user.
dpOauthToken :: Lens' DatasetsPatch' (Maybe Text)
dpOauthToken
  = lens _dpOauthToken (\ s a -> s{_dpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
dpFields :: Lens' DatasetsPatch' (Maybe Text)
dpFields = lens _dpFields (\ s a -> s{_dpFields = a})

-- | Data format for the response.
dpAlt :: Lens' DatasetsPatch' Alt
dpAlt = lens _dpAlt (\ s a -> s{_dpAlt = a})

instance GoogleRequest DatasetsPatch' where
        type Rs DatasetsPatch' = Dataset
        request = requestWithRoute defReq bigQueryURL
        requestWithRoute r u DatasetsPatch'{..}
          = go _dpQuotaUser (Just _dpPrettyPrint) _dpUserIp
              _dpKey
              _dpDatasetId
              _dpProjectId
              _dpOauthToken
              _dpFields
              (Just _dpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DatasetsPatchResource)
                      r
                      u
