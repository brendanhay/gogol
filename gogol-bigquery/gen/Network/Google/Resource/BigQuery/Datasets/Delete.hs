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
-- Module      : Network.Google.Resource.BigQuery.Datasets.Delete
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
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigqueryDatasetsDelete@.
module Network.Google.Resource.BigQuery.Datasets.Delete
    (
    -- * REST Resource
      DatasetsDeleteResource

    -- * Creating a Request
    , datasetsDelete'
    , DatasetsDelete'

    -- * Request Lenses
    , ddQuotaUser
    , ddPrettyPrint
    , ddUserIP
    , ddKey
    , ddDatasetId
    , ddProjectId
    , ddOAuthToken
    , ddDeleteContents
    , ddFields
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigqueryDatasetsDelete@ which the
-- 'DatasetsDelete'' request conforms to.
type DatasetsDeleteResource =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :>
           Capture "datasetId" Text :>
             QueryParam "deleteContents" Bool :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the dataset specified by the datasetId value. Before you can
-- delete a dataset, you must delete all its tables, either manually or by
-- specifying deleteContents. Immediately after deletion, you can create
-- another dataset with the same name.
--
-- /See:/ 'datasetsDelete'' smart constructor.
data DatasetsDelete' = DatasetsDelete'
    { _ddQuotaUser      :: !(Maybe Text)
    , _ddPrettyPrint    :: !Bool
    , _ddUserIP         :: !(Maybe Text)
    , _ddKey            :: !(Maybe AuthKey)
    , _ddDatasetId      :: !Text
    , _ddProjectId      :: !Text
    , _ddOAuthToken     :: !(Maybe OAuthToken)
    , _ddDeleteContents :: !(Maybe Bool)
    , _ddFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddQuotaUser'
--
-- * 'ddPrettyPrint'
--
-- * 'ddUserIP'
--
-- * 'ddKey'
--
-- * 'ddDatasetId'
--
-- * 'ddProjectId'
--
-- * 'ddOAuthToken'
--
-- * 'ddDeleteContents'
--
-- * 'ddFields'
datasetsDelete'
    :: Text -- ^ 'datasetId'
    -> Text -- ^ 'projectId'
    -> DatasetsDelete'
datasetsDelete' pDdDatasetId_ pDdProjectId_ =
    DatasetsDelete'
    { _ddQuotaUser = Nothing
    , _ddPrettyPrint = True
    , _ddUserIP = Nothing
    , _ddKey = Nothing
    , _ddDatasetId = pDdDatasetId_
    , _ddProjectId = pDdProjectId_
    , _ddOAuthToken = Nothing
    , _ddDeleteContents = Nothing
    , _ddFields = Nothing
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
ddUserIP :: Lens' DatasetsDelete' (Maybe Text)
ddUserIP = lens _ddUserIP (\ s a -> s{_ddUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ddKey :: Lens' DatasetsDelete' (Maybe AuthKey)
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
ddOAuthToken :: Lens' DatasetsDelete' (Maybe OAuthToken)
ddOAuthToken
  = lens _ddOAuthToken (\ s a -> s{_ddOAuthToken = a})

-- | If True, delete all the tables in the dataset. If False and the dataset
-- contains tables, the request will fail. Default is False
ddDeleteContents :: Lens' DatasetsDelete' (Maybe Bool)
ddDeleteContents
  = lens _ddDeleteContents
      (\ s a -> s{_ddDeleteContents = a})

-- | Selector specifying which fields to include in a partial response.
ddFields :: Lens' DatasetsDelete' (Maybe Text)
ddFields = lens _ddFields (\ s a -> s{_ddFields = a})

instance GoogleAuth DatasetsDelete' where
        authKey = ddKey . _Just
        authToken = ddOAuthToken . _Just

instance GoogleRequest DatasetsDelete' where
        type Rs DatasetsDelete' = ()
        request = requestWith bigQueryRequest
        requestWith rq DatasetsDelete'{..}
          = go _ddProjectId _ddDatasetId _ddDeleteContents
              _ddQuotaUser
              (Just _ddPrettyPrint)
              _ddUserIP
              _ddFields
              _ddKey
              _ddOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy DatasetsDeleteResource)
                      rq
