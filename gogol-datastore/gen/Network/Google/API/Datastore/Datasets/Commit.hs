{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Datastore.Datasets.Commit
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Commit a transaction, optionally creating, deleting or modifying some
-- entities.
--
-- /See:/ <https://developers.google.com/datastore/ Google Cloud Datastore API Reference> for @datastore.datasets.commit@.
module Network.Google.API.Datastore.Datasets.Commit
    (
    -- * REST Resource
      DatasetsCommitAPI

    -- * Creating a Request
    , datasetsCommit'
    , DatasetsCommit'

    -- * Request Lenses
    , dcQuotaUser
    , dcPrettyPrint
    , dcUserIp
    , dcKey
    , dcDatasetId
    , dcOauthToken
    , dcFields
    , dcAlt
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for datastore.datasets.commit which the
-- 'DatasetsCommit'' request conforms to.
type DatasetsCommitAPI =
     Capture "datasetId" Text :>
       "commit" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Post '[JSON] CommitResponse

-- | Commit a transaction, optionally creating, deleting or modifying some
-- entities.
--
-- /See:/ 'datasetsCommit'' smart constructor.
data DatasetsCommit' = DatasetsCommit'
    { _dcQuotaUser   :: !(Maybe Text)
    , _dcPrettyPrint :: !Bool
    , _dcUserIp      :: !(Maybe Text)
    , _dcKey         :: !(Maybe Text)
    , _dcDatasetId   :: !Text
    , _dcOauthToken  :: !(Maybe Text)
    , _dcFields      :: !(Maybe Text)
    , _dcAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsCommit'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcQuotaUser'
--
-- * 'dcPrettyPrint'
--
-- * 'dcUserIp'
--
-- * 'dcKey'
--
-- * 'dcDatasetId'
--
-- * 'dcOauthToken'
--
-- * 'dcFields'
--
-- * 'dcAlt'
datasetsCommit'
    :: Text -- ^ 'datasetId'
    -> DatasetsCommit'
datasetsCommit' pDcDatasetId_ =
    DatasetsCommit'
    { _dcQuotaUser = Nothing
    , _dcPrettyPrint = True
    , _dcUserIp = Nothing
    , _dcKey = Nothing
    , _dcDatasetId = pDcDatasetId_
    , _dcOauthToken = Nothing
    , _dcFields = Nothing
    , _dcAlt = Proto
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dcQuotaUser :: Lens' DatasetsCommit' (Maybe Text)
dcQuotaUser
  = lens _dcQuotaUser (\ s a -> s{_dcQuotaUser = a})

-- | Returns response with indentations and line breaks.
dcPrettyPrint :: Lens' DatasetsCommit' Bool
dcPrettyPrint
  = lens _dcPrettyPrint
      (\ s a -> s{_dcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dcUserIp :: Lens' DatasetsCommit' (Maybe Text)
dcUserIp = lens _dcUserIp (\ s a -> s{_dcUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dcKey :: Lens' DatasetsCommit' (Maybe Text)
dcKey = lens _dcKey (\ s a -> s{_dcKey = a})

-- | Identifies the dataset.
dcDatasetId :: Lens' DatasetsCommit' Text
dcDatasetId
  = lens _dcDatasetId (\ s a -> s{_dcDatasetId = a})

-- | OAuth 2.0 token for the current user.
dcOauthToken :: Lens' DatasetsCommit' (Maybe Text)
dcOauthToken
  = lens _dcOauthToken (\ s a -> s{_dcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
dcFields :: Lens' DatasetsCommit' (Maybe Text)
dcFields = lens _dcFields (\ s a -> s{_dcFields = a})

-- | Data format for the response.
dcAlt :: Lens' DatasetsCommit' Alt
dcAlt = lens _dcAlt (\ s a -> s{_dcAlt = a})

instance GoogleRequest DatasetsCommit' where
        type Rs DatasetsCommit' = CommitResponse
        request = requestWithRoute defReq datastoreURL
        requestWithRoute r u DatasetsCommit'{..}
          = go _dcQuotaUser (Just _dcPrettyPrint) _dcUserIp
              _dcKey
              _dcDatasetId
              _dcOauthToken
              _dcFields
              (Just _dcAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy DatasetsCommitAPI)
                      r
                      u
