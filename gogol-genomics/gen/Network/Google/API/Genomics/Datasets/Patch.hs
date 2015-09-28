{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Genomics.Datasets.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a dataset. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @genomics.datasets.patch@.
module Network.Google.API.Genomics.Datasets.Patch
    (
    -- * REST Resource
      DatasetsPatchAPI

    -- * Creating a Request
    , datasetsPatch'
    , DatasetsPatch'

    -- * Request Lenses
    , dpQuotaUser
    , dpPrettyPrint
    , dpUserIp
    , dpKey
    , dpDatasetId
    , dpOauthToken
    , dpFields
    , dpAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for genomics.datasets.patch which the
-- 'DatasetsPatch'' request conforms to.
type DatasetsPatchAPI =
     "datasets" :>
       Capture "datasetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Patch '[JSON] Dataset

-- | Updates a dataset. This method supports patch semantics.
--
-- /See:/ 'datasetsPatch'' smart constructor.
data DatasetsPatch' = DatasetsPatch'
    { _dpQuotaUser   :: !(Maybe Text)
    , _dpPrettyPrint :: !Bool
    , _dpUserIp      :: !(Maybe Text)
    , _dpKey         :: !(Maybe Text)
    , _dpDatasetId   :: !Text
    , _dpOauthToken  :: !(Maybe Text)
    , _dpFields      :: !(Maybe Text)
    , _dpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpQuotaUser'
--
-- * 'dpPrettyPrint'
--
-- * 'dpUserIp'
--
-- * 'dpKey'
--
-- * 'dpDatasetId'
--
-- * 'dpOauthToken'
--
-- * 'dpFields'
--
-- * 'dpAlt'
datasetsPatch'
    :: Text -- ^ 'datasetId'
    -> DatasetsPatch'
datasetsPatch' pDpDatasetId_ =
    DatasetsPatch'
    { _dpQuotaUser = Nothing
    , _dpPrettyPrint = True
    , _dpUserIp = Nothing
    , _dpKey = Nothing
    , _dpDatasetId = pDpDatasetId_
    , _dpOauthToken = Nothing
    , _dpFields = Nothing
    , _dpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dpQuotaUser :: Lens' DatasetsPatch' (Maybe Text)
dpQuotaUser
  = lens _dpQuotaUser (\ s a -> s{_dpQuotaUser = a})

-- | Returns response with indentations and line breaks.
dpPrettyPrint :: Lens' DatasetsPatch' Bool
dpPrettyPrint
  = lens _dpPrettyPrint
      (\ s a -> s{_dpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dpUserIp :: Lens' DatasetsPatch' (Maybe Text)
dpUserIp = lens _dpUserIp (\ s a -> s{_dpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dpKey :: Lens' DatasetsPatch' (Maybe Text)
dpKey = lens _dpKey (\ s a -> s{_dpKey = a})

-- | The ID of the dataset to be updated.
dpDatasetId :: Lens' DatasetsPatch' Text
dpDatasetId
  = lens _dpDatasetId (\ s a -> s{_dpDatasetId = a})

-- | OAuth 2.0 token for the current user.
dpOauthToken :: Lens' DatasetsPatch' (Maybe Text)
dpOauthToken
  = lens _dpOauthToken (\ s a -> s{_dpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
dpFields :: Lens' DatasetsPatch' (Maybe Text)
dpFields = lens _dpFields (\ s a -> s{_dpFields = a})

-- | Data format for the response.
dpAlt :: Lens' DatasetsPatch' Alt
dpAlt = lens _dpAlt (\ s a -> s{_dpAlt = a})

instance GoogleRequest DatasetsPatch' where
        type Rs DatasetsPatch' = Dataset
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u DatasetsPatch'{..}
          = go _dpQuotaUser (Just _dpPrettyPrint) _dpUserIp
              _dpKey
              _dpDatasetId
              _dpOauthToken
              _dpFields
              (Just _dpAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy DatasetsPatchAPI) r
                      u
