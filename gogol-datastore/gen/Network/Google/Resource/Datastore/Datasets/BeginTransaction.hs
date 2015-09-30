{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Datastore.Datasets.BeginTransaction
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Begin a new transaction.
--
-- /See:/ <https://developers.google.com/datastore/ Google Cloud Datastore API Reference> for @DatastoreDatasetsBeginTransaction@.
module Datastore.Datasets.BeginTransaction
    (
    -- * REST Resource
      DatasetsBeginTransactionAPI

    -- * Creating a Request
    , datasetsBeginTransaction
    , DatasetsBeginTransaction

    -- * Request Lenses
    , dbtQuotaUser
    , dbtPrettyPrint
    , dbtUserIp
    , dbtKey
    , dbtDatasetId
    , dbtOauthToken
    , dbtFields
    , dbtAlt
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @DatastoreDatasetsBeginTransaction@ which the
-- 'DatasetsBeginTransaction' request conforms to.
type DatasetsBeginTransactionAPI =
     Capture "datasetId" Text :>
       "beginTransaction" :>
         Post '[JSON] BeginTransactionResponse

-- | Begin a new transaction.
--
-- /See:/ 'datasetsBeginTransaction' smart constructor.
data DatasetsBeginTransaction = DatasetsBeginTransaction
    { _dbtQuotaUser   :: !(Maybe Text)
    , _dbtPrettyPrint :: !Bool
    , _dbtUserIp      :: !(Maybe Text)
    , _dbtKey         :: !(Maybe Text)
    , _dbtDatasetId   :: !Text
    , _dbtOauthToken  :: !(Maybe Text)
    , _dbtFields      :: !(Maybe Text)
    , _dbtAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsBeginTransaction'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbtQuotaUser'
--
-- * 'dbtPrettyPrint'
--
-- * 'dbtUserIp'
--
-- * 'dbtKey'
--
-- * 'dbtDatasetId'
--
-- * 'dbtOauthToken'
--
-- * 'dbtFields'
--
-- * 'dbtAlt'
datasetsBeginTransaction
    :: Text -- ^ 'datasetId'
    -> DatasetsBeginTransaction
datasetsBeginTransaction pDbtDatasetId_ =
    DatasetsBeginTransaction
    { _dbtQuotaUser = Nothing
    , _dbtPrettyPrint = True
    , _dbtUserIp = Nothing
    , _dbtKey = Nothing
    , _dbtDatasetId = pDbtDatasetId_
    , _dbtOauthToken = Nothing
    , _dbtFields = Nothing
    , _dbtAlt = "proto"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dbtQuotaUser :: Lens' DatasetsBeginTransaction' (Maybe Text)
dbtQuotaUser
  = lens _dbtQuotaUser (\ s a -> s{_dbtQuotaUser = a})

-- | Returns response with indentations and line breaks.
dbtPrettyPrint :: Lens' DatasetsBeginTransaction' Bool
dbtPrettyPrint
  = lens _dbtPrettyPrint
      (\ s a -> s{_dbtPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dbtUserIp :: Lens' DatasetsBeginTransaction' (Maybe Text)
dbtUserIp
  = lens _dbtUserIp (\ s a -> s{_dbtUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dbtKey :: Lens' DatasetsBeginTransaction' (Maybe Text)
dbtKey = lens _dbtKey (\ s a -> s{_dbtKey = a})

-- | Identifies the dataset.
dbtDatasetId :: Lens' DatasetsBeginTransaction' Text
dbtDatasetId
  = lens _dbtDatasetId (\ s a -> s{_dbtDatasetId = a})

-- | OAuth 2.0 token for the current user.
dbtOauthToken :: Lens' DatasetsBeginTransaction' (Maybe Text)
dbtOauthToken
  = lens _dbtOauthToken
      (\ s a -> s{_dbtOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
dbtFields :: Lens' DatasetsBeginTransaction' (Maybe Text)
dbtFields
  = lens _dbtFields (\ s a -> s{_dbtFields = a})

-- | Data format for the response.
dbtAlt :: Lens' DatasetsBeginTransaction' Text
dbtAlt = lens _dbtAlt (\ s a -> s{_dbtAlt = a})

instance GoogleRequest DatasetsBeginTransaction'
         where
        type Rs DatasetsBeginTransaction' =
             BeginTransactionResponse
        request = requestWithRoute defReq datastoreURL
        requestWithRoute r u DatasetsBeginTransaction{..}
          = go _dbtQuotaUser _dbtPrettyPrint _dbtUserIp _dbtKey
              _dbtDatasetId
              _dbtOauthToken
              _dbtFields
              _dbtAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DatasetsBeginTransactionAPI)
                      r
                      u
