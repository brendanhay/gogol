{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
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
module Network.Google.Resource.Datastore.Datasets.AllocateIds
    (
    -- * REST Resource
      DatasetsAllocateIdsResource

    -- * Creating a Request
    , datasetsAllocateIds'
    , DatasetsAllocateIds'

    -- * Request Lenses
    , daiQuotaUser
    , daiPrettyPrint
    , daiUserIP
    , daiPayload
    , daiKey
    , daiDatasetId
    , daiOAuthToken
    , daiFields
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @DatastoreDatasetsAllocateIds@ which the
-- 'DatasetsAllocateIds'' request conforms to.
type DatasetsAllocateIdsResource =
     Capture "datasetId" Text :>
       "allocateIds" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltPROTO :>
                       ReqBody '[OctetStream] AllocateIdsRequest :>
                         Post '[JSON] AllocateIdsResponse

-- | Allocate IDs for incomplete keys (useful for referencing an entity
-- before it is inserted).
--
-- /See:/ 'datasetsAllocateIds'' smart constructor.
data DatasetsAllocateIds' = DatasetsAllocateIds'
    { _daiQuotaUser   :: !(Maybe Text)
    , _daiPrettyPrint :: !Bool
    , _daiUserIP      :: !(Maybe Text)
    , _daiPayload     :: !AllocateIdsRequest
    , _daiKey         :: !(Maybe Key)
    , _daiDatasetId   :: !Text
    , _daiOAuthToken  :: !(Maybe OAuthToken)
    , _daiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsAllocateIds'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daiQuotaUser'
--
-- * 'daiPrettyPrint'
--
-- * 'daiUserIP'
--
-- * 'daiPayload'
--
-- * 'daiKey'
--
-- * 'daiDatasetId'
--
-- * 'daiOAuthToken'
--
-- * 'daiFields'
datasetsAllocateIds'
    :: AllocateIdsRequest -- ^ 'payload'
    -> Text -- ^ 'datasetId'
    -> DatasetsAllocateIds'
datasetsAllocateIds' pDaiPayload_ pDaiDatasetId_ =
    DatasetsAllocateIds'
    { _daiQuotaUser = Nothing
    , _daiPrettyPrint = True
    , _daiUserIP = Nothing
    , _daiPayload = pDaiPayload_
    , _daiKey = Nothing
    , _daiDatasetId = pDaiDatasetId_
    , _daiOAuthToken = Nothing
    , _daiFields = Nothing
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
daiUserIP :: Lens' DatasetsAllocateIds' (Maybe Text)
daiUserIP
  = lens _daiUserIP (\ s a -> s{_daiUserIP = a})

-- | Multipart request metadata.
daiPayload :: Lens' DatasetsAllocateIds' AllocateIdsRequest
daiPayload
  = lens _daiPayload (\ s a -> s{_daiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
daiKey :: Lens' DatasetsAllocateIds' (Maybe Key)
daiKey = lens _daiKey (\ s a -> s{_daiKey = a})

-- | Identifies the dataset.
daiDatasetId :: Lens' DatasetsAllocateIds' Text
daiDatasetId
  = lens _daiDatasetId (\ s a -> s{_daiDatasetId = a})

-- | OAuth 2.0 token for the current user.
daiOAuthToken :: Lens' DatasetsAllocateIds' (Maybe OAuthToken)
daiOAuthToken
  = lens _daiOAuthToken
      (\ s a -> s{_daiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
daiFields :: Lens' DatasetsAllocateIds' (Maybe Text)
daiFields
  = lens _daiFields (\ s a -> s{_daiFields = a})

instance GoogleAuth DatasetsAllocateIds' where
        authKey = daiKey . _Just
        authToken = daiOAuthToken . _Just

instance GoogleRequest DatasetsAllocateIds' where
        type Rs DatasetsAllocateIds' = AllocateIdsResponse
        request = requestWithRoute defReq datastoreURL
        requestWithRoute r u DatasetsAllocateIds'{..}
          = go _daiDatasetId _daiQuotaUser
              (Just _daiPrettyPrint)
              _daiUserIP
              _daiFields
              _daiKey
              _daiOAuthToken
              (Just AltPROTO)
              _daiPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DatasetsAllocateIdsResource)
                      r
                      u
