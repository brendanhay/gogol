{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Genomics.Datasets.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a dataset.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @genomics.datasets.update@.
module Network.Google.API.Genomics.Datasets.Update
    (
    -- * REST Resource
      DatasetsUpdateAPI

    -- * Creating a Request
    , datasetsUpdate'
    , DatasetsUpdate'

    -- * Request Lenses
    , dQuotaUser
    , dPrettyPrint
    , dUserIp
    , dKey
    , dDatasetId
    , dOauthToken
    , dFields
    , dAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for genomics.datasets.update which the
-- 'DatasetsUpdate'' request conforms to.
type DatasetsUpdateAPI =
     "datasets" :>
       Capture "datasetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Put '[JSON] Dataset

-- | Updates a dataset.
--
-- /See:/ 'datasetsUpdate'' smart constructor.
data DatasetsUpdate' = DatasetsUpdate'
    { _dQuotaUser   :: !(Maybe Text)
    , _dPrettyPrint :: !Bool
    , _dUserIp      :: !(Maybe Text)
    , _dKey         :: !(Maybe Text)
    , _dDatasetId   :: !Text
    , _dOauthToken  :: !(Maybe Text)
    , _dFields      :: !(Maybe Text)
    , _dAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dQuotaUser'
--
-- * 'dPrettyPrint'
--
-- * 'dUserIp'
--
-- * 'dKey'
--
-- * 'dDatasetId'
--
-- * 'dOauthToken'
--
-- * 'dFields'
--
-- * 'dAlt'
datasetsUpdate'
    :: Text -- ^ 'datasetId'
    -> DatasetsUpdate'
datasetsUpdate' pDDatasetId_ =
    DatasetsUpdate'
    { _dQuotaUser = Nothing
    , _dPrettyPrint = True
    , _dUserIp = Nothing
    , _dKey = Nothing
    , _dDatasetId = pDDatasetId_
    , _dOauthToken = Nothing
    , _dFields = Nothing
    , _dAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dQuotaUser :: Lens' DatasetsUpdate' (Maybe Text)
dQuotaUser
  = lens _dQuotaUser (\ s a -> s{_dQuotaUser = a})

-- | Returns response with indentations and line breaks.
dPrettyPrint :: Lens' DatasetsUpdate' Bool
dPrettyPrint
  = lens _dPrettyPrint (\ s a -> s{_dPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dUserIp :: Lens' DatasetsUpdate' (Maybe Text)
dUserIp = lens _dUserIp (\ s a -> s{_dUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dKey :: Lens' DatasetsUpdate' (Maybe Text)
dKey = lens _dKey (\ s a -> s{_dKey = a})

-- | The ID of the dataset to be updated.
dDatasetId :: Lens' DatasetsUpdate' Text
dDatasetId
  = lens _dDatasetId (\ s a -> s{_dDatasetId = a})

-- | OAuth 2.0 token for the current user.
dOauthToken :: Lens' DatasetsUpdate' (Maybe Text)
dOauthToken
  = lens _dOauthToken (\ s a -> s{_dOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
dFields :: Lens' DatasetsUpdate' (Maybe Text)
dFields = lens _dFields (\ s a -> s{_dFields = a})

-- | Data format for the response.
dAlt :: Lens' DatasetsUpdate' Alt
dAlt = lens _dAlt (\ s a -> s{_dAlt = a})

instance GoogleRequest DatasetsUpdate' where
        type Rs DatasetsUpdate' = Dataset
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u DatasetsUpdate'{..}
          = go _dQuotaUser (Just _dPrettyPrint) _dUserIp _dKey
              _dDatasetId
              _dOauthToken
              _dFields
              (Just _dAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy DatasetsUpdateAPI)
                      r
                      u
