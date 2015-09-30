{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.BigQuery.Datasets.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new empty dataset.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigqueryDatasetsInsert@.
module BigQuery.Datasets.Insert
    (
    -- * REST Resource
      DatasetsInsertAPI

    -- * Creating a Request
    , datasetsInsert
    , DatasetsInsert

    -- * Request Lenses
    , diQuotaUser
    , diPrettyPrint
    , diUserIp
    , diKey
    , diProjectId
    , diOauthToken
    , diFields
    , diAlt
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigqueryDatasetsInsert@ which the
-- 'DatasetsInsert' request conforms to.
type DatasetsInsertAPI =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :> Post '[JSON] Dataset

-- | Creates a new empty dataset.
--
-- /See:/ 'datasetsInsert' smart constructor.
data DatasetsInsert = DatasetsInsert
    { _diQuotaUser   :: !(Maybe Text)
    , _diPrettyPrint :: !Bool
    , _diUserIp      :: !(Maybe Text)
    , _diKey         :: !(Maybe Text)
    , _diProjectId   :: !Text
    , _diOauthToken  :: !(Maybe Text)
    , _diFields      :: !(Maybe Text)
    , _diAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diQuotaUser'
--
-- * 'diPrettyPrint'
--
-- * 'diUserIp'
--
-- * 'diKey'
--
-- * 'diProjectId'
--
-- * 'diOauthToken'
--
-- * 'diFields'
--
-- * 'diAlt'
datasetsInsert
    :: Text -- ^ 'projectId'
    -> DatasetsInsert
datasetsInsert pDiProjectId_ =
    DatasetsInsert
    { _diQuotaUser = Nothing
    , _diPrettyPrint = True
    , _diUserIp = Nothing
    , _diKey = Nothing
    , _diProjectId = pDiProjectId_
    , _diOauthToken = Nothing
    , _diFields = Nothing
    , _diAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
diQuotaUser :: Lens' DatasetsInsert' (Maybe Text)
diQuotaUser
  = lens _diQuotaUser (\ s a -> s{_diQuotaUser = a})

-- | Returns response with indentations and line breaks.
diPrettyPrint :: Lens' DatasetsInsert' Bool
diPrettyPrint
  = lens _diPrettyPrint
      (\ s a -> s{_diPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
diUserIp :: Lens' DatasetsInsert' (Maybe Text)
diUserIp = lens _diUserIp (\ s a -> s{_diUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
diKey :: Lens' DatasetsInsert' (Maybe Text)
diKey = lens _diKey (\ s a -> s{_diKey = a})

-- | Project ID of the new dataset
diProjectId :: Lens' DatasetsInsert' Text
diProjectId
  = lens _diProjectId (\ s a -> s{_diProjectId = a})

-- | OAuth 2.0 token for the current user.
diOauthToken :: Lens' DatasetsInsert' (Maybe Text)
diOauthToken
  = lens _diOauthToken (\ s a -> s{_diOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
diFields :: Lens' DatasetsInsert' (Maybe Text)
diFields = lens _diFields (\ s a -> s{_diFields = a})

-- | Data format for the response.
diAlt :: Lens' DatasetsInsert' Text
diAlt = lens _diAlt (\ s a -> s{_diAlt = a})

instance GoogleRequest DatasetsInsert' where
        type Rs DatasetsInsert' = Dataset
        request = requestWithRoute defReq bigQueryURL
        requestWithRoute r u DatasetsInsert{..}
          = go _diQuotaUser _diPrettyPrint _diUserIp _diKey
              _diProjectId
              _diOauthToken
              _diFields
              _diAlt
          where go
                  = clientWithRoute (Proxy :: Proxy DatasetsInsertAPI)
                      r
                      u
