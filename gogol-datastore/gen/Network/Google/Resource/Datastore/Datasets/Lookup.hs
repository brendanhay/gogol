{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Datastore.Datasets.Lookup
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Look up some entities by key.
--
-- /See:/ <https://developers.google.com/datastore/ Google Cloud Datastore API Reference> for @DatastoreDatasetsLookup@.
module Datastore.Datasets.Lookup
    (
    -- * REST Resource
      DatasetsLookupAPI

    -- * Creating a Request
    , datasetsLookup
    , DatasetsLookup

    -- * Request Lenses
    , dlQuotaUser
    , dlPrettyPrint
    , dlUserIp
    , dlKey
    , dlDatasetId
    , dlOauthToken
    , dlFields
    , dlAlt
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @DatastoreDatasetsLookup@ which the
-- 'DatasetsLookup' request conforms to.
type DatasetsLookupAPI =
     Capture "datasetId" Text :>
       "lookup" :> Post '[JSON] LookupResponse

-- | Look up some entities by key.
--
-- /See:/ 'datasetsLookup' smart constructor.
data DatasetsLookup = DatasetsLookup
    { _dlQuotaUser   :: !(Maybe Text)
    , _dlPrettyPrint :: !Bool
    , _dlUserIp      :: !(Maybe Text)
    , _dlKey         :: !(Maybe Text)
    , _dlDatasetId   :: !Text
    , _dlOauthToken  :: !(Maybe Text)
    , _dlFields      :: !(Maybe Text)
    , _dlAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsLookup'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlQuotaUser'
--
-- * 'dlPrettyPrint'
--
-- * 'dlUserIp'
--
-- * 'dlKey'
--
-- * 'dlDatasetId'
--
-- * 'dlOauthToken'
--
-- * 'dlFields'
--
-- * 'dlAlt'
datasetsLookup
    :: Text -- ^ 'datasetId'
    -> DatasetsLookup
datasetsLookup pDlDatasetId_ =
    DatasetsLookup
    { _dlQuotaUser = Nothing
    , _dlPrettyPrint = True
    , _dlUserIp = Nothing
    , _dlKey = Nothing
    , _dlDatasetId = pDlDatasetId_
    , _dlOauthToken = Nothing
    , _dlFields = Nothing
    , _dlAlt = "proto"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dlQuotaUser :: Lens' DatasetsLookup' (Maybe Text)
dlQuotaUser
  = lens _dlQuotaUser (\ s a -> s{_dlQuotaUser = a})

-- | Returns response with indentations and line breaks.
dlPrettyPrint :: Lens' DatasetsLookup' Bool
dlPrettyPrint
  = lens _dlPrettyPrint
      (\ s a -> s{_dlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dlUserIp :: Lens' DatasetsLookup' (Maybe Text)
dlUserIp = lens _dlUserIp (\ s a -> s{_dlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dlKey :: Lens' DatasetsLookup' (Maybe Text)
dlKey = lens _dlKey (\ s a -> s{_dlKey = a})

-- | Identifies the dataset.
dlDatasetId :: Lens' DatasetsLookup' Text
dlDatasetId
  = lens _dlDatasetId (\ s a -> s{_dlDatasetId = a})

-- | OAuth 2.0 token for the current user.
dlOauthToken :: Lens' DatasetsLookup' (Maybe Text)
dlOauthToken
  = lens _dlOauthToken (\ s a -> s{_dlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
dlFields :: Lens' DatasetsLookup' (Maybe Text)
dlFields = lens _dlFields (\ s a -> s{_dlFields = a})

-- | Data format for the response.
dlAlt :: Lens' DatasetsLookup' Text
dlAlt = lens _dlAlt (\ s a -> s{_dlAlt = a})

instance GoogleRequest DatasetsLookup' where
        type Rs DatasetsLookup' = LookupResponse
        request = requestWithRoute defReq datastoreURL
        requestWithRoute r u DatasetsLookup{..}
          = go _dlQuotaUser _dlPrettyPrint _dlUserIp _dlKey
              _dlDatasetId
              _dlOauthToken
              _dlFields
              _dlAlt
          where go
                  = clientWithRoute (Proxy :: Proxy DatasetsLookupAPI)
                      r
                      u
