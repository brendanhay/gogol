{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Datastore.Datasets.AllocateIds
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Allocate IDs for incomplete keys (useful for referencing an entity
-- before it is inserted).
--
-- /See:/ <https://developers.google.com/datastore/ Google Cloud Datastore API Reference> for @DatastoreDatasetsAllocateIds@.
module Datastore.Datasets.AllocateIds
    (
    -- * REST Resource
      DatasetsAllocateIdsAPI

    -- * Creating a Request
    , datasetsAllocateIds
    , DatasetsAllocateIds

    -- * Request Lenses
    , daiQuotaUser
    , daiPrettyPrint
    , daiUserIp
    , daiKey
    , daiDatasetId
    , daiOauthToken
    , daiFields
    , daiAlt
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @DatastoreDatasetsAllocateIds@ which the
-- 'DatasetsAllocateIds' request conforms to.
type DatasetsAllocateIdsAPI =
     Capture "datasetId" Text :>
       "allocateIds" :> Post '[JSON] AllocateIdsResponse

-- | Allocate IDs for incomplete keys (useful for referencing an entity
-- before it is inserted).
--
-- /See:/ 'datasetsAllocateIds' smart constructor.
data DatasetsAllocateIds = DatasetsAllocateIds
    { _daiQuotaUser   :: !(Maybe Text)
    , _daiPrettyPrint :: !Bool
    , _daiUserIp      :: !(Maybe Text)
    , _daiKey         :: !(Maybe Text)
    , _daiDatasetId   :: !Text
    , _daiOauthToken  :: !(Maybe Text)
    , _daiFields      :: !(Maybe Text)
    , _daiAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsAllocateIds'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daiQuotaUser'
--
-- * 'daiPrettyPrint'
--
-- * 'daiUserIp'
--
-- * 'daiKey'
--
-- * 'daiDatasetId'
--
-- * 'daiOauthToken'
--
-- * 'daiFields'
--
-- * 'daiAlt'
datasetsAllocateIds
    :: Text -- ^ 'datasetId'
    -> DatasetsAllocateIds
datasetsAllocateIds pDaiDatasetId_ =
    DatasetsAllocateIds
    { _daiQuotaUser = Nothing
    , _daiPrettyPrint = True
    , _daiUserIp = Nothing
    , _daiKey = Nothing
    , _daiDatasetId = pDaiDatasetId_
    , _daiOauthToken = Nothing
    , _daiFields = Nothing
    , _daiAlt = "proto"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
daiQuotaUser :: Lens' DatasetsAllocateIds' (Maybe Text)
daiQuotaUser
  = lens _daiQuotaUser (\ s a -> s{_daiQuotaUser = a})

-- | Returns response with indentations and line breaks.
daiPrettyPrint :: Lens' DatasetsAllocateIds' Bool
daiPrettyPrint
  = lens _daiPrettyPrint
      (\ s a -> s{_daiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
daiUserIp :: Lens' DatasetsAllocateIds' (Maybe Text)
daiUserIp
  = lens _daiUserIp (\ s a -> s{_daiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
daiKey :: Lens' DatasetsAllocateIds' (Maybe Text)
daiKey = lens _daiKey (\ s a -> s{_daiKey = a})

-- | Identifies the dataset.
daiDatasetId :: Lens' DatasetsAllocateIds' Text
daiDatasetId
  = lens _daiDatasetId (\ s a -> s{_daiDatasetId = a})

-- | OAuth 2.0 token for the current user.
daiOauthToken :: Lens' DatasetsAllocateIds' (Maybe Text)
daiOauthToken
  = lens _daiOauthToken
      (\ s a -> s{_daiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
daiFields :: Lens' DatasetsAllocateIds' (Maybe Text)
daiFields
  = lens _daiFields (\ s a -> s{_daiFields = a})

-- | Data format for the response.
daiAlt :: Lens' DatasetsAllocateIds' Text
daiAlt = lens _daiAlt (\ s a -> s{_daiAlt = a})

instance GoogleRequest DatasetsAllocateIds' where
        type Rs DatasetsAllocateIds' = AllocateIdsResponse
        request = requestWithRoute defReq datastoreURL
        requestWithRoute r u DatasetsAllocateIds{..}
          = go _daiQuotaUser _daiPrettyPrint _daiUserIp _daiKey
              _daiDatasetId
              _daiOauthToken
              _daiFields
              _daiAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DatasetsAllocateIdsAPI)
                      r
                      u
