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
-- Module      : Network.Google.Resource.BigQuery.Datasets.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates information in an existing dataset. The update method replaces
-- the entire dataset resource, whereas the patch method only replaces
-- fields that are provided in the submitted dataset resource.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigqueryDatasetsUpdate@.
module Network.Google.Resource.BigQuery.Datasets.Update
    (
    -- * REST Resource
      DatasetsUpdateResource

    -- * Creating a Request
    , datasetsUpdate'
    , DatasetsUpdate'

    -- * Request Lenses
    , duQuotaUser
    , duPrettyPrint
    , duUserIp
    , duKey
    , duDatasetId
    , duProjectId
    , duOauthToken
    , duFields
    , duAlt
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigqueryDatasetsUpdate@ which the
-- 'DatasetsUpdate'' request conforms to.
type DatasetsUpdateResource =
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
                         QueryParam "alt" Alt :> Put '[JSON] Dataset

-- | Updates information in an existing dataset. The update method replaces
-- the entire dataset resource, whereas the patch method only replaces
-- fields that are provided in the submitted dataset resource.
--
-- /See:/ 'datasetsUpdate'' smart constructor.
data DatasetsUpdate' = DatasetsUpdate'
    { _duQuotaUser   :: !(Maybe Text)
    , _duPrettyPrint :: !Bool
    , _duUserIp      :: !(Maybe Text)
    , _duKey         :: !(Maybe Text)
    , _duDatasetId   :: !Text
    , _duProjectId   :: !Text
    , _duOauthToken  :: !(Maybe Text)
    , _duFields      :: !(Maybe Text)
    , _duAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duQuotaUser'
--
-- * 'duPrettyPrint'
--
-- * 'duUserIp'
--
-- * 'duKey'
--
-- * 'duDatasetId'
--
-- * 'duProjectId'
--
-- * 'duOauthToken'
--
-- * 'duFields'
--
-- * 'duAlt'
datasetsUpdate'
    :: Text -- ^ 'datasetId'
    -> Text -- ^ 'projectId'
    -> DatasetsUpdate'
datasetsUpdate' pDuDatasetId_ pDuProjectId_ =
    DatasetsUpdate'
    { _duQuotaUser = Nothing
    , _duPrettyPrint = True
    , _duUserIp = Nothing
    , _duKey = Nothing
    , _duDatasetId = pDuDatasetId_
    , _duProjectId = pDuProjectId_
    , _duOauthToken = Nothing
    , _duFields = Nothing
    , _duAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
duQuotaUser :: Lens' DatasetsUpdate' (Maybe Text)
duQuotaUser
  = lens _duQuotaUser (\ s a -> s{_duQuotaUser = a})

-- | Returns response with indentations and line breaks.
duPrettyPrint :: Lens' DatasetsUpdate' Bool
duPrettyPrint
  = lens _duPrettyPrint
      (\ s a -> s{_duPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
duUserIp :: Lens' DatasetsUpdate' (Maybe Text)
duUserIp = lens _duUserIp (\ s a -> s{_duUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
duKey :: Lens' DatasetsUpdate' (Maybe Text)
duKey = lens _duKey (\ s a -> s{_duKey = a})

-- | Dataset ID of the dataset being updated
duDatasetId :: Lens' DatasetsUpdate' Text
duDatasetId
  = lens _duDatasetId (\ s a -> s{_duDatasetId = a})

-- | Project ID of the dataset being updated
duProjectId :: Lens' DatasetsUpdate' Text
duProjectId
  = lens _duProjectId (\ s a -> s{_duProjectId = a})

-- | OAuth 2.0 token for the current user.
duOauthToken :: Lens' DatasetsUpdate' (Maybe Text)
duOauthToken
  = lens _duOauthToken (\ s a -> s{_duOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
duFields :: Lens' DatasetsUpdate' (Maybe Text)
duFields = lens _duFields (\ s a -> s{_duFields = a})

-- | Data format for the response.
duAlt :: Lens' DatasetsUpdate' Alt
duAlt = lens _duAlt (\ s a -> s{_duAlt = a})

instance GoogleRequest DatasetsUpdate' where
        type Rs DatasetsUpdate' = Dataset
        request = requestWithRoute defReq bigQueryURL
        requestWithRoute r u DatasetsUpdate'{..}
          = go _duQuotaUser (Just _duPrettyPrint) _duUserIp
              _duKey
              _duDatasetId
              _duProjectId
              _duOauthToken
              _duFields
              (Just _duAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DatasetsUpdateResource)
                      r
                      u
