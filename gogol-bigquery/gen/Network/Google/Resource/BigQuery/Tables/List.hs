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
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigQueryTablesList@.
module Network.Google.Resource.BigQuery.Tables.List
    (
    -- * REST Resource
      TablesListResource

    -- * Creating a Request
    , tablesList'
    , TablesList'

    -- * Request Lenses
    , tlQuotaUser
    , tlPrettyPrint
    , tlUserIP
    , tlKey
    , tlDatasetId
    , tlPageToken
    , tlProjectId
    , tlOAuthToken
    , tlMaxResults
    , tlFields
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigQueryTablesList@ method which the
-- 'TablesList'' request conforms to.
type TablesListResource =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :>
           Capture "datasetId" Text :>
             "tables" :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :> Get '[JSON] TableList

-- | Lists all tables in the specified dataset. Requires the READER dataset
-- role.
--
-- /See:/ 'tablesList'' smart constructor.
data TablesList' = TablesList'
    { _tlQuotaUser   :: !(Maybe Text)
    , _tlPrettyPrint :: !Bool
    , _tlUserIP      :: !(Maybe Text)
    , _tlKey         :: !(Maybe AuthKey)
    , _tlDatasetId   :: !Text
    , _tlPageToken   :: !(Maybe Text)
    , _tlProjectId   :: !Text
    , _tlOAuthToken  :: !(Maybe OAuthToken)
    , _tlMaxResults  :: !(Maybe Word32)
    , _tlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlQuotaUser'
--
-- * 'tlPrettyPrint'
--
-- * 'tlUserIP'
--
-- * 'tlKey'
--
-- * 'tlDatasetId'
--
-- * 'tlPageToken'
--
-- * 'tlProjectId'
--
-- * 'tlOAuthToken'
--
-- * 'tlMaxResults'
--
-- * 'tlFields'
tablesList'
    :: Text -- ^ 'datasetId'
    -> Text -- ^ 'projectId'
    -> TablesList'
tablesList' pTlDatasetId_ pTlProjectId_ =
    TablesList'
    { _tlQuotaUser = Nothing
    , _tlPrettyPrint = True
    , _tlUserIP = Nothing
    , _tlKey = Nothing
    , _tlDatasetId = pTlDatasetId_
    , _tlPageToken = Nothing
    , _tlProjectId = pTlProjectId_
    , _tlOAuthToken = Nothing
    , _tlMaxResults = Nothing
    , _tlFields = Nothing
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
tlUserIP :: Lens' TablesList' (Maybe Text)
tlUserIP = lens _tlUserIP (\ s a -> s{_tlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tlKey :: Lens' TablesList' (Maybe AuthKey)
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
tlOAuthToken :: Lens' TablesList' (Maybe OAuthToken)
tlOAuthToken
  = lens _tlOAuthToken (\ s a -> s{_tlOAuthToken = a})

-- | Maximum number of results to return
tlMaxResults :: Lens' TablesList' (Maybe Word32)
tlMaxResults
  = lens _tlMaxResults (\ s a -> s{_tlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tlFields :: Lens' TablesList' (Maybe Text)
tlFields = lens _tlFields (\ s a -> s{_tlFields = a})

instance GoogleAuth TablesList' where
        _AuthKey = tlKey . _Just
        _AuthToken = tlOAuthToken . _Just

instance GoogleRequest TablesList' where
        type Rs TablesList' = TableList
        request = requestWith bigQueryRequest
        requestWith rq TablesList'{..}
          = go _tlProjectId _tlDatasetId _tlPageToken
              _tlMaxResults
              _tlQuotaUser
              (Just _tlPrettyPrint)
              _tlUserIP
              _tlFields
              _tlKey
              _tlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy TablesListResource) rq
