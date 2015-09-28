{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.BigQuery.Datasets.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the dataset specified by the datasetId value. Before you can
-- delete a dataset, you must delete all its tables, either manually or by
-- specifying deleteContents. Immediately after deletion, you can create
-- another dataset with the same name.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.datasets.delete@.
module Network.Google.API.BigQuery.Datasets.Delete
    (
    -- * REST Resource
      DatasetsDeleteAPI

    -- * Creating a Request
    , datasetsDelete'
    , DatasetsDelete'

    -- * Request Lenses
    , ddQuotaUser
    , ddPrettyPrint
    , ddUserIp
    , ddKey
    , ddDatasetId
    , ddProjectId
    , ddOauthToken
    , ddDeleteContents
    , ddFields
    , ddAlt
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for bigquery.datasets.delete which the
-- 'DatasetsDelete'' request conforms to.
type DatasetsDeleteAPI =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :>
           Capture "datasetId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "deleteContents" Bool :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes the dataset specified by the datasetId value. Before you can
-- delete a dataset, you must delete all its tables, either manually or by
-- specifying deleteContents. Immediately after deletion, you can create
-- another dataset with the same name.
--
-- /See:/ 'datasetsDelete'' smart constructor.
data DatasetsDelete' = DatasetsDelete'
    { _ddQuotaUser      :: !(Maybe Text)
    , _ddPrettyPrint    :: !Bool
    , _ddUserIp         :: !(Maybe Text)
    , _ddKey            :: !(Maybe Text)
    , _ddDatasetId      :: !Text
    , _ddProjectId      :: !Text
    , _ddOauthToken     :: !(Maybe Text)
    , _ddDeleteContents :: !(Maybe Bool)
    , _ddFields         :: !(Maybe Text)
    , _ddAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddQuotaUser'
--
-- * 'ddPrettyPrint'
--
-- * 'ddUserIp'
--
-- * 'ddKey'
--
-- * 'ddDatasetId'
--
-- * 'ddProjectId'
--
-- * 'ddOauthToken'
--
-- * 'ddDeleteContents'
--
-- * 'ddFields'
--
-- * 'ddAlt'
datasetsDelete'
    :: Text -- ^ 'datasetId'
    -> Text -- ^ 'projectId'
    -> DatasetsDelete'
datasetsDelete' pDdDatasetId_ pDdProjectId_ =
    DatasetsDelete'
    { _ddQuotaUser = Nothing
    , _ddPrettyPrint = True
    , _ddUserIp = Nothing
    , _ddKey = Nothing
    , _ddDatasetId = pDdDatasetId_
    , _ddProjectId = pDdProjectId_
    , _ddOauthToken = Nothing
    , _ddDeleteContents = Nothing
    , _ddFields = Nothing
    , _ddAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ddQuotaUser :: Lens' DatasetsDelete' (Maybe Text)
ddQuotaUser
  = lens _ddQuotaUser (\ s a -> s{_ddQuotaUser = a})

-- | Returns response with indentations and line breaks.
ddPrettyPrint :: Lens' DatasetsDelete' Bool
ddPrettyPrint
  = lens _ddPrettyPrint
      (\ s a -> s{_ddPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ddUserIp :: Lens' DatasetsDelete' (Maybe Text)
ddUserIp = lens _ddUserIp (\ s a -> s{_ddUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ddKey :: Lens' DatasetsDelete' (Maybe Text)
ddKey = lens _ddKey (\ s a -> s{_ddKey = a})

-- | Dataset ID of dataset being deleted
ddDatasetId :: Lens' DatasetsDelete' Text
ddDatasetId
  = lens _ddDatasetId (\ s a -> s{_ddDatasetId = a})

-- | Project ID of the dataset being deleted
ddProjectId :: Lens' DatasetsDelete' Text
ddProjectId
  = lens _ddProjectId (\ s a -> s{_ddProjectId = a})

-- | OAuth 2.0 token for the current user.
ddOauthToken :: Lens' DatasetsDelete' (Maybe Text)
ddOauthToken
  = lens _ddOauthToken (\ s a -> s{_ddOauthToken = a})

-- | If True, delete all the tables in the dataset. If False and the dataset
-- contains tables, the request will fail. Default is False
ddDeleteContents :: Lens' DatasetsDelete' (Maybe Bool)
ddDeleteContents
  = lens _ddDeleteContents
      (\ s a -> s{_ddDeleteContents = a})

-- | Selector specifying which fields to include in a partial response.
ddFields :: Lens' DatasetsDelete' (Maybe Text)
ddFields = lens _ddFields (\ s a -> s{_ddFields = a})

-- | Data format for the response.
ddAlt :: Lens' DatasetsDelete' Alt
ddAlt = lens _ddAlt (\ s a -> s{_ddAlt = a})

instance GoogleRequest DatasetsDelete' where
        type Rs DatasetsDelete' = ()
        request = requestWithRoute defReq bigQueryURL
        requestWithRoute r u DatasetsDelete'{..}
          = go _ddQuotaUser (Just _ddPrettyPrint) _ddUserIp
              _ddKey
              _ddDatasetId
              _ddProjectId
              _ddOauthToken
              _ddDeleteContents
              _ddFields
              (Just _ddAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy DatasetsDeleteAPI)
                      r
                      u
