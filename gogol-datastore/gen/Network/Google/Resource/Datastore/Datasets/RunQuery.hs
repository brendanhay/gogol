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
-- Module      : Network.Google.Resource.Datastore.Datasets.RunQuery
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Query for entities.
--
-- /See:/ <https://developers.google.com/datastore/ Google Cloud Datastore API Reference> for @DatastoreDatasetsRunQuery@.
module Network.Google.Resource.Datastore.Datasets.RunQuery
    (
    -- * REST Resource
      DatasetsRunQueryResource

    -- * Creating a Request
    , datasetsRunQuery'
    , DatasetsRunQuery'

    -- * Request Lenses
    , drqQuotaUser
    , drqPrettyPrint
    , drqRunQueryRequest
    , drqUserIP
    , drqKey
    , drqDatasetId
    , drqOAuthToken
    , drqFields
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @DatastoreDatasetsRunQuery@ which the
-- 'DatasetsRunQuery'' request conforms to.
type DatasetsRunQueryResource =
     Capture "datasetId" Text :>
       "runQuery" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltPROTO :>
                       ReqBody '[JSON] RunQueryRequest :>
                         Post '[JSON] RunQueryResponse

-- | Query for entities.
--
-- /See:/ 'datasetsRunQuery'' smart constructor.
data DatasetsRunQuery' = DatasetsRunQuery'
    { _drqQuotaUser       :: !(Maybe Text)
    , _drqPrettyPrint     :: !Bool
    , _drqRunQueryRequest :: !RunQueryRequest
    , _drqUserIP          :: !(Maybe Text)
    , _drqKey             :: !(Maybe Key)
    , _drqDatasetId       :: !Text
    , _drqOAuthToken      :: !(Maybe OAuthToken)
    , _drqFields          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsRunQuery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drqQuotaUser'
--
-- * 'drqPrettyPrint'
--
-- * 'drqRunQueryRequest'
--
-- * 'drqUserIP'
--
-- * 'drqKey'
--
-- * 'drqDatasetId'
--
-- * 'drqOAuthToken'
--
-- * 'drqFields'
datasetsRunQuery'
    :: RunQueryRequest -- ^ 'RunQueryRequest'
    -> Text -- ^ 'datasetId'
    -> DatasetsRunQuery'
datasetsRunQuery' pDrqRunQueryRequest_ pDrqDatasetId_ =
    DatasetsRunQuery'
    { _drqQuotaUser = Nothing
    , _drqPrettyPrint = True
    , _drqRunQueryRequest = pDrqRunQueryRequest_
    , _drqUserIP = Nothing
    , _drqKey = Nothing
    , _drqDatasetId = pDrqDatasetId_
    , _drqOAuthToken = Nothing
    , _drqFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
drqQuotaUser :: Lens' DatasetsRunQuery' (Maybe Text)
drqQuotaUser
  = lens _drqQuotaUser (\ s a -> s{_drqQuotaUser = a})

-- | Returns response with indentations and line breaks.
drqPrettyPrint :: Lens' DatasetsRunQuery' Bool
drqPrettyPrint
  = lens _drqPrettyPrint
      (\ s a -> s{_drqPrettyPrint = a})

-- | Multipart request metadata.
drqRunQueryRequest :: Lens' DatasetsRunQuery' RunQueryRequest
drqRunQueryRequest
  = lens _drqRunQueryRequest
      (\ s a -> s{_drqRunQueryRequest = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
drqUserIP :: Lens' DatasetsRunQuery' (Maybe Text)
drqUserIP
  = lens _drqUserIP (\ s a -> s{_drqUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
drqKey :: Lens' DatasetsRunQuery' (Maybe Key)
drqKey = lens _drqKey (\ s a -> s{_drqKey = a})

-- | Identifies the dataset.
drqDatasetId :: Lens' DatasetsRunQuery' Text
drqDatasetId
  = lens _drqDatasetId (\ s a -> s{_drqDatasetId = a})

-- | OAuth 2.0 token for the current user.
drqOAuthToken :: Lens' DatasetsRunQuery' (Maybe OAuthToken)
drqOAuthToken
  = lens _drqOAuthToken
      (\ s a -> s{_drqOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
drqFields :: Lens' DatasetsRunQuery' (Maybe Text)
drqFields
  = lens _drqFields (\ s a -> s{_drqFields = a})

instance GoogleAuth DatasetsRunQuery' where
        authKey = drqKey . _Just
        authToken = drqOAuthToken . _Just

instance GoogleRequest DatasetsRunQuery' where
        type Rs DatasetsRunQuery' = RunQueryResponse
        request = requestWithRoute defReq datastoreURL
        requestWithRoute r u DatasetsRunQuery'{..}
          = go _drqQuotaUser (Just _drqPrettyPrint) _drqUserIP
              _drqKey
              _drqDatasetId
              _drqOAuthToken
              _drqFields
              (Just AltPROTO)
              _drqRunQueryRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DatasetsRunQueryResource)
                      r
                      u
