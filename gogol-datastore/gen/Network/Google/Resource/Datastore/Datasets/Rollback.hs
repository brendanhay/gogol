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
-- Module      : Network.Google.Resource.Datastore.Datasets.Rollback
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Roll back a transaction.
--
-- /See:/ <https://developers.google.com/datastore/ Google Cloud Datastore API Reference> for @DatastoreDatasetsRollback@.
module Network.Google.Resource.Datastore.Datasets.Rollback
    (
    -- * REST Resource
      DatasetsRollbackResource

    -- * Creating a Request
    , datasetsRollback'
    , DatasetsRollback'

    -- * Request Lenses
    , drQuotaUser
    , drPrettyPrint
    , drUserIP
    , drPayload
    , drKey
    , drDatasetId
    , drOAuthToken
    , drFields
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @DatastoreDatasetsRollback@ which the
-- 'DatasetsRollback'' request conforms to.
type DatasetsRollbackResource =
     Capture "datasetId" Text :>
       "rollback" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] RollbackRequest :>
                         Post '[JSON] RollbackResponse

-- | Roll back a transaction.
--
-- /See:/ 'datasetsRollback'' smart constructor.
data DatasetsRollback' = DatasetsRollback'
    { _drQuotaUser   :: !(Maybe Text)
    , _drPrettyPrint :: !Bool
    , _drUserIP      :: !(Maybe Text)
    , _drPayload     :: !RollbackRequest
    , _drKey         :: !(Maybe AuthKey)
    , _drDatasetId   :: !Text
    , _drOAuthToken  :: !(Maybe OAuthToken)
    , _drFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsRollback'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drQuotaUser'
--
-- * 'drPrettyPrint'
--
-- * 'drUserIP'
--
-- * 'drPayload'
--
-- * 'drKey'
--
-- * 'drDatasetId'
--
-- * 'drOAuthToken'
--
-- * 'drFields'
datasetsRollback'
    :: RollbackRequest -- ^ 'payload'
    -> Text -- ^ 'datasetId'
    -> DatasetsRollback'
datasetsRollback' pDrPayload_ pDrDatasetId_ =
    DatasetsRollback'
    { _drQuotaUser = Nothing
    , _drPrettyPrint = True
    , _drUserIP = Nothing
    , _drPayload = pDrPayload_
    , _drKey = Nothing
    , _drDatasetId = pDrDatasetId_
    , _drOAuthToken = Nothing
    , _drFields = Nothing
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
drUserIP :: Lens' DatasetsRollback' (Maybe Text)
drUserIP = lens _drUserIP (\ s a -> s{_drUserIP = a})

-- | Multipart request metadata.
drPayload :: Lens' DatasetsRollback' RollbackRequest
drPayload
  = lens _drPayload (\ s a -> s{_drPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
drKey :: Lens' DatasetsRollback' (Maybe AuthKey)
drKey = lens _drKey (\ s a -> s{_drKey = a})

-- | Identifies the dataset.
drDatasetId :: Lens' DatasetsRollback' Text
drDatasetId
  = lens _drDatasetId (\ s a -> s{_drDatasetId = a})

-- | OAuth 2.0 token for the current user.
drOAuthToken :: Lens' DatasetsRollback' (Maybe OAuthToken)
drOAuthToken
  = lens _drOAuthToken (\ s a -> s{_drOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
drFields :: Lens' DatasetsRollback' (Maybe Text)
drFields = lens _drFields (\ s a -> s{_drFields = a})

instance GoogleAuth DatasetsRollback' where
        _AuthKey = drKey . _Just
        _AuthToken = drOAuthToken . _Just

instance GoogleRequest DatasetsRollback' where
        type Rs DatasetsRollback' = RollbackResponse
        request = requestWith datastoreRequest
        requestWith rq DatasetsRollback'{..}
          = go _drDatasetId _drQuotaUser (Just _drPrettyPrint)
              _drUserIP
              _drFields
              _drKey
              _drOAuthToken
              (Just AltJSON)
              _drPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy DatasetsRollbackResource)
                      rq
