{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.Datasets.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a dataset by ID.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsDatasetsGet@.
module Genomics.Datasets.Get
    (
    -- * REST Resource
      DatasetsGetAPI

    -- * Creating a Request
    , datasetsGet
    , DatasetsGet

    -- * Request Lenses
    , dgQuotaUser
    , dgPrettyPrint
    , dgUserIp
    , dgKey
    , dgDatasetId
    , dgOauthToken
    , dgFields
    , dgAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsDatasetsGet@ which the
-- 'DatasetsGet' request conforms to.
type DatasetsGetAPI =
     "datasets" :>
       Capture "datasetId" Text :> Get '[JSON] Dataset

-- | Gets a dataset by ID.
--
-- /See:/ 'datasetsGet' smart constructor.
data DatasetsGet = DatasetsGet
    { _dgQuotaUser   :: !(Maybe Text)
    , _dgPrettyPrint :: !Bool
    , _dgUserIp      :: !(Maybe Text)
    , _dgKey         :: !(Maybe Text)
    , _dgDatasetId   :: !Text
    , _dgOauthToken  :: !(Maybe Text)
    , _dgFields      :: !(Maybe Text)
    , _dgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgQuotaUser'
--
-- * 'dgPrettyPrint'
--
-- * 'dgUserIp'
--
-- * 'dgKey'
--
-- * 'dgDatasetId'
--
-- * 'dgOauthToken'
--
-- * 'dgFields'
--
-- * 'dgAlt'
datasetsGet
    :: Text -- ^ 'datasetId'
    -> DatasetsGet
datasetsGet pDgDatasetId_ =
    DatasetsGet
    { _dgQuotaUser = Nothing
    , _dgPrettyPrint = True
    , _dgUserIp = Nothing
    , _dgKey = Nothing
    , _dgDatasetId = pDgDatasetId_
    , _dgOauthToken = Nothing
    , _dgFields = Nothing
    , _dgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dgQuotaUser :: Lens' DatasetsGet' (Maybe Text)
dgQuotaUser
  = lens _dgQuotaUser (\ s a -> s{_dgQuotaUser = a})

-- | Returns response with indentations and line breaks.
dgPrettyPrint :: Lens' DatasetsGet' Bool
dgPrettyPrint
  = lens _dgPrettyPrint
      (\ s a -> s{_dgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dgUserIp :: Lens' DatasetsGet' (Maybe Text)
dgUserIp = lens _dgUserIp (\ s a -> s{_dgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dgKey :: Lens' DatasetsGet' (Maybe Text)
dgKey = lens _dgKey (\ s a -> s{_dgKey = a})

-- | The ID of the dataset.
dgDatasetId :: Lens' DatasetsGet' Text
dgDatasetId
  = lens _dgDatasetId (\ s a -> s{_dgDatasetId = a})

-- | OAuth 2.0 token for the current user.
dgOauthToken :: Lens' DatasetsGet' (Maybe Text)
dgOauthToken
  = lens _dgOauthToken (\ s a -> s{_dgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
dgFields :: Lens' DatasetsGet' (Maybe Text)
dgFields = lens _dgFields (\ s a -> s{_dgFields = a})

-- | Data format for the response.
dgAlt :: Lens' DatasetsGet' Text
dgAlt = lens _dgAlt (\ s a -> s{_dgAlt = a})

instance GoogleRequest DatasetsGet' where
        type Rs DatasetsGet' = Dataset
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u DatasetsGet{..}
          = go _dgQuotaUser _dgPrettyPrint _dgUserIp _dgKey
              _dgDatasetId
              _dgOauthToken
              _dgFields
              _dgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy DatasetsGetAPI) r u
