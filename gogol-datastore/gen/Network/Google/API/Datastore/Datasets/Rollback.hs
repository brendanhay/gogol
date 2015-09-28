{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Datastore.Datasets.Rollback
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Roll back a transaction.
--
-- /See:/ <https://developers.google.com/datastore/ Google Cloud Datastore API Reference> for @datastore.datasets.rollback@.
module Network.Google.API.Datastore.Datasets.Rollback
    (
    -- * REST Resource
      DatasetsRollbackAPI

    -- * Creating a Request
    , datasetsRollback'
    , DatasetsRollback'

    -- * Request Lenses
    , drQuotaUser
    , drPrettyPrint
    , drUserIp
    , drKey
    , drDatasetId
    , drOauthToken
    , drFields
    , drAlt
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for datastore.datasets.rollback which the
-- 'DatasetsRollback'' request conforms to.
type DatasetsRollbackAPI =
     Capture "datasetId" Text :>
       "rollback" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Post '[JSON] RollbackResponse

-- | Roll back a transaction.
--
-- /See:/ 'datasetsRollback'' smart constructor.
data DatasetsRollback' = DatasetsRollback'
    { _drQuotaUser   :: !(Maybe Text)
    , _drPrettyPrint :: !Bool
    , _drUserIp      :: !(Maybe Text)
    , _drKey         :: !(Maybe Text)
    , _drDatasetId   :: !Text
    , _drOauthToken  :: !(Maybe Text)
    , _drFields      :: !(Maybe Text)
    , _drAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsRollback'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drQuotaUser'
--
-- * 'drPrettyPrint'
--
-- * 'drUserIp'
--
-- * 'drKey'
--
-- * 'drDatasetId'
--
-- * 'drOauthToken'
--
-- * 'drFields'
--
-- * 'drAlt'
datasetsRollback'
    :: Text -- ^ 'datasetId'
    -> DatasetsRollback'
datasetsRollback' pDrDatasetId_ =
    DatasetsRollback'
    { _drQuotaUser = Nothing
    , _drPrettyPrint = True
    , _drUserIp = Nothing
    , _drKey = Nothing
    , _drDatasetId = pDrDatasetId_
    , _drOauthToken = Nothing
    , _drFields = Nothing
    , _drAlt = Proto
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
drQuotaUser :: Lens' DatasetsRollback' (Maybe Text)
drQuotaUser
  = lens _drQuotaUser (\ s a -> s{_drQuotaUser = a})

-- | Returns response with indentations and line breaks.
drPrettyPrint :: Lens' DatasetsRollback' Bool
drPrettyPrint
  = lens _drPrettyPrint
      (\ s a -> s{_drPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
drUserIp :: Lens' DatasetsRollback' (Maybe Text)
drUserIp = lens _drUserIp (\ s a -> s{_drUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
drKey :: Lens' DatasetsRollback' (Maybe Text)
drKey = lens _drKey (\ s a -> s{_drKey = a})

-- | Identifies the dataset.
drDatasetId :: Lens' DatasetsRollback' Text
drDatasetId
  = lens _drDatasetId (\ s a -> s{_drDatasetId = a})

-- | OAuth 2.0 token for the current user.
drOauthToken :: Lens' DatasetsRollback' (Maybe Text)
drOauthToken
  = lens _drOauthToken (\ s a -> s{_drOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
drFields :: Lens' DatasetsRollback' (Maybe Text)
drFields = lens _drFields (\ s a -> s{_drFields = a})

-- | Data format for the response.
drAlt :: Lens' DatasetsRollback' Alt
drAlt = lens _drAlt (\ s a -> s{_drAlt = a})

instance GoogleRequest DatasetsRollback' where
        type Rs DatasetsRollback' = RollbackResponse
        request = requestWithRoute defReq datastoreURL
        requestWithRoute r u DatasetsRollback'{..}
          = go _drQuotaUser (Just _drPrettyPrint) _drUserIp
              _drKey
              _drDatasetId
              _drOauthToken
              _drFields
              (Just _drAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DatasetsRollbackAPI)
                      r
                      u
