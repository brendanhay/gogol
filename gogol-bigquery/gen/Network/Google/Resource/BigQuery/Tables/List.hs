{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.BigQuery.Tables.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all tables in the specified dataset. Requires the READER dataset
-- role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigqueryTablesList@.
module BigQuery.Tables.List
    (
    -- * REST Resource
      TablesListAPI

    -- * Creating a Request
    , tablesList
    , TablesList

    -- * Request Lenses
    , tlQuotaUser
    , tlPrettyPrint
    , tlUserIp
    , tlKey
    , tlDatasetId
    , tlPageToken
    , tlProjectId
    , tlOauthToken
    , tlMaxResults
    , tlFields
    , tlAlt
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigqueryTablesList@ which the
-- 'TablesList' request conforms to.
type TablesListAPI =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :>
           Capture "datasetId" Text :>
             "tables" :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   Get '[JSON] TableList

-- | Lists all tables in the specified dataset. Requires the READER dataset
-- role.
--
-- /See:/ 'tablesList' smart constructor.
data TablesList = TablesList
    { _tlQuotaUser   :: !(Maybe Text)
    , _tlPrettyPrint :: !Bool
    , _tlUserIp      :: !(Maybe Text)
    , _tlKey         :: !(Maybe Text)
    , _tlDatasetId   :: !Text
    , _tlPageToken   :: !(Maybe Text)
    , _tlProjectId   :: !Text
    , _tlOauthToken  :: !(Maybe Text)
    , _tlMaxResults  :: !(Maybe Word32)
    , _tlFields      :: !(Maybe Text)
    , _tlAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlQuotaUser'
--
-- * 'tlPrettyPrint'
--
-- * 'tlUserIp'
--
-- * 'tlKey'
--
-- * 'tlDatasetId'
--
-- * 'tlPageToken'
--
-- * 'tlProjectId'
--
-- * 'tlOauthToken'
--
-- * 'tlMaxResults'
--
-- * 'tlFields'
--
-- * 'tlAlt'
tablesList
    :: Text -- ^ 'datasetId'
    -> Text -- ^ 'projectId'
    -> TablesList
tablesList pTlDatasetId_ pTlProjectId_ =
    TablesList
    { _tlQuotaUser = Nothing
    , _tlPrettyPrint = True
    , _tlUserIp = Nothing
    , _tlKey = Nothing
    , _tlDatasetId = pTlDatasetId_
    , _tlPageToken = Nothing
    , _tlProjectId = pTlProjectId_
    , _tlOauthToken = Nothing
    , _tlMaxResults = Nothing
    , _tlFields = Nothing
    , _tlAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tlQuotaUser :: Lens' TablesList' (Maybe Text)
tlQuotaUser
  = lens _tlQuotaUser (\ s a -> s{_tlQuotaUser = a})

-- | Returns response with indentations and line breaks.
tlPrettyPrint :: Lens' TablesList' Bool
tlPrettyPrint
  = lens _tlPrettyPrint
      (\ s a -> s{_tlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tlUserIp :: Lens' TablesList' (Maybe Text)
tlUserIp = lens _tlUserIp (\ s a -> s{_tlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tlKey :: Lens' TablesList' (Maybe Text)
tlKey = lens _tlKey (\ s a -> s{_tlKey = a})

-- | Dataset ID of the tables to list
tlDatasetId :: Lens' TablesList' Text
tlDatasetId
  = lens _tlDatasetId (\ s a -> s{_tlDatasetId = a})

-- | Page token, returned by a previous call, to request the next page of
-- results
tlPageToken :: Lens' TablesList' (Maybe Text)
tlPageToken
  = lens _tlPageToken (\ s a -> s{_tlPageToken = a})

-- | Project ID of the tables to list
tlProjectId :: Lens' TablesList' Text
tlProjectId
  = lens _tlProjectId (\ s a -> s{_tlProjectId = a})

-- | OAuth 2.0 token for the current user.
tlOauthToken :: Lens' TablesList' (Maybe Text)
tlOauthToken
  = lens _tlOauthToken (\ s a -> s{_tlOauthToken = a})

-- | Maximum number of results to return
tlMaxResults :: Lens' TablesList' (Maybe Word32)
tlMaxResults
  = lens _tlMaxResults (\ s a -> s{_tlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tlFields :: Lens' TablesList' (Maybe Text)
tlFields = lens _tlFields (\ s a -> s{_tlFields = a})

-- | Data format for the response.
tlAlt :: Lens' TablesList' Text
tlAlt = lens _tlAlt (\ s a -> s{_tlAlt = a})

instance GoogleRequest TablesList' where
        type Rs TablesList' = TableList
        request = requestWithRoute defReq bigQueryURL
        requestWithRoute r u TablesList{..}
          = go _tlQuotaUser _tlPrettyPrint _tlUserIp _tlKey
              _tlDatasetId
              _tlPageToken
              _tlProjectId
              _tlOauthToken
              _tlMaxResults
              _tlFields
              _tlAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TablesListAPI) r u
