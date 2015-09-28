{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Datastore.Datasets.RunQuery
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Query for entities.
--
-- /See:/ <https://developers.google.com/datastore/ Google Cloud Datastore API Reference> for @datastore.datasets.runQuery@.
module Network.Google.API.Datastore.Datasets.RunQuery
    (
    -- * REST Resource
      DatasetsRunQueryAPI

    -- * Creating a Request
    , datasetsRunQuery'
    , DatasetsRunQuery'

    -- * Request Lenses
    , drqQuotaUser
    , drqPrettyPrint
    , drqUserIp
    , drqKey
    , drqDatasetId
    , drqOauthToken
    , drqFields
    , drqAlt
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for datastore.datasets.runQuery which the
-- 'DatasetsRunQuery'' request conforms to.
type DatasetsRunQueryAPI =
     Capture "datasetId" Text :>
       "runQuery" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Post '[JSON] RunQueryResponse

-- | Query for entities.
--
-- /See:/ 'datasetsRunQuery'' smart constructor.
data DatasetsRunQuery' = DatasetsRunQuery'
    { _drqQuotaUser   :: !(Maybe Text)
    , _drqPrettyPrint :: !Bool
    , _drqUserIp      :: !(Maybe Text)
    , _drqKey         :: !(Maybe Text)
    , _drqDatasetId   :: !Text
    , _drqOauthToken  :: !(Maybe Text)
    , _drqFields      :: !(Maybe Text)
    , _drqAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsRunQuery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drqQuotaUser'
--
-- * 'drqPrettyPrint'
--
-- * 'drqUserIp'
--
-- * 'drqKey'
--
-- * 'drqDatasetId'
--
-- * 'drqOauthToken'
--
-- * 'drqFields'
--
-- * 'drqAlt'
datasetsRunQuery'
    :: Text -- ^ 'datasetId'
    -> DatasetsRunQuery'
datasetsRunQuery' pDrqDatasetId_ =
    DatasetsRunQuery'
    { _drqQuotaUser = Nothing
    , _drqPrettyPrint = True
    , _drqUserIp = Nothing
    , _drqKey = Nothing
    , _drqDatasetId = pDrqDatasetId_
    , _drqOauthToken = Nothing
    , _drqFields = Nothing
    , _drqAlt = Proto
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

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
drqUserIp :: Lens' DatasetsRunQuery' (Maybe Text)
drqUserIp
  = lens _drqUserIp (\ s a -> s{_drqUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
drqKey :: Lens' DatasetsRunQuery' (Maybe Text)
drqKey = lens _drqKey (\ s a -> s{_drqKey = a})

-- | Identifies the dataset.
drqDatasetId :: Lens' DatasetsRunQuery' Text
drqDatasetId
  = lens _drqDatasetId (\ s a -> s{_drqDatasetId = a})

-- | OAuth 2.0 token for the current user.
drqOauthToken :: Lens' DatasetsRunQuery' (Maybe Text)
drqOauthToken
  = lens _drqOauthToken
      (\ s a -> s{_drqOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
drqFields :: Lens' DatasetsRunQuery' (Maybe Text)
drqFields
  = lens _drqFields (\ s a -> s{_drqFields = a})

-- | Data format for the response.
drqAlt :: Lens' DatasetsRunQuery' Alt
drqAlt = lens _drqAlt (\ s a -> s{_drqAlt = a})

instance GoogleRequest DatasetsRunQuery' where
        type Rs DatasetsRunQuery' = RunQueryResponse
        request = requestWithRoute defReq datastoreURL
        requestWithRoute r u DatasetsRunQuery'{..}
          = go _drqQuotaUser (Just _drqPrettyPrint) _drqUserIp
              _drqKey
              _drqDatasetId
              _drqOauthToken
              _drqFields
              (Just _drqAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DatasetsRunQueryAPI)
                      r
                      u
