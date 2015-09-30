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
-- Module      : Network.Google.Resource.BigQuery.Datasets.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the dataset specified by datasetID.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigqueryDatasetsGet@.
module Network.Google.Resource.BigQuery.Datasets.Get
    (
    -- * REST Resource
      DatasetsGetResource

    -- * Creating a Request
    , datasetsGet'
    , DatasetsGet'

    -- * Request Lenses
    , dgQuotaUser
    , dgPrettyPrint
    , dgUserIp
    , dgKey
    , dgDatasetId
    , dgProjectId
    , dgOauthToken
    , dgFields
    , dgAlt
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigqueryDatasetsGet@ which the
-- 'DatasetsGet'' request conforms to.
type DatasetsGetResource =
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
                         QueryParam "alt" Alt :> Get '[JSON] Dataset

-- | Returns the dataset specified by datasetID.
--
-- /See:/ 'datasetsGet'' smart constructor.
data DatasetsGet' = DatasetsGet'
    { _dgQuotaUser   :: !(Maybe Text)
    , _dgPrettyPrint :: !Bool
    , _dgUserIp      :: !(Maybe Text)
    , _dgKey         :: !(Maybe Text)
    , _dgDatasetId   :: !Text
    , _dgProjectId   :: !Text
    , _dgOauthToken  :: !(Maybe Text)
    , _dgFields      :: !(Maybe Text)
    , _dgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgQuotaUser'
--
-- * 'dgPrettyPrint'
--
-- * 'dgUserIp'
--
-- * 'dgKey'
--
-- * 'dgDatasetId'
--
-- * 'dgProjectId'
--
-- * 'dgOauthToken'
--
-- * 'dgFields'
--
-- * 'dgAlt'
datasetsGet'
    :: Text -- ^ 'datasetId'
    -> Text -- ^ 'projectId'
    -> DatasetsGet'
datasetsGet' pDgDatasetId_ pDgProjectId_ =
    DatasetsGet'
    { _dgQuotaUser = Nothing
    , _dgPrettyPrint = True
    , _dgUserIp = Nothing
    , _dgKey = Nothing
    , _dgDatasetId = pDgDatasetId_
    , _dgProjectId = pDgProjectId_
    , _dgOauthToken = Nothing
    , _dgFields = Nothing
    , _dgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dgQuotaUser :: Lens' DatasetsGet' (Maybe Text)
dgQuotaUser
  = lens _dgQuotaUser (\ s a -> s{_dgQuotaUser = a})

-- | Returns response with indentations and line breaks.
dgPrettyPrint :: Lens' DatasetsGet' Bool
dgPrettyPrint
  = lens _dgPrettyPrint
      (\ s a -> s{_dgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dgUserIp :: Lens' DatasetsGet' (Maybe Text)
dgUserIp = lens _dgUserIp (\ s a -> s{_dgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dgKey :: Lens' DatasetsGet' (Maybe Text)
dgKey = lens _dgKey (\ s a -> s{_dgKey = a})

-- | Dataset ID of the requested dataset
dgDatasetId :: Lens' DatasetsGet' Text
dgDatasetId
  = lens _dgDatasetId (\ s a -> s{_dgDatasetId = a})

-- | Project ID of the requested dataset
dgProjectId :: Lens' DatasetsGet' Text
dgProjectId
  = lens _dgProjectId (\ s a -> s{_dgProjectId = a})

-- | OAuth 2.0 token for the current user.
dgOauthToken :: Lens' DatasetsGet' (Maybe Text)
dgOauthToken
  = lens _dgOauthToken (\ s a -> s{_dgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
dgFields :: Lens' DatasetsGet' (Maybe Text)
dgFields = lens _dgFields (\ s a -> s{_dgFields = a})

-- | Data format for the response.
dgAlt :: Lens' DatasetsGet' Alt
dgAlt = lens _dgAlt (\ s a -> s{_dgAlt = a})

instance GoogleRequest DatasetsGet' where
        type Rs DatasetsGet' = Dataset
        request = requestWithRoute defReq bigQueryURL
        requestWithRoute r u DatasetsGet'{..}
          = go _dgQuotaUser (Just _dgPrettyPrint) _dgUserIp
              _dgKey
              _dgDatasetId
              _dgProjectId
              _dgOauthToken
              _dgFields
              (Just _dgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DatasetsGetResource)
                      r
                      u
