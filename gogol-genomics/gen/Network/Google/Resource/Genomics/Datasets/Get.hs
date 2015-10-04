{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
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
module Network.Google.Resource.Genomics.Datasets.Get
    (
    -- * REST Resource
      DatasetsGetResource

    -- * Creating a Request
    , datasetsGet'
    , DatasetsGet'

    -- * Request Lenses
    , dgQuotaUser
    , dgPrettyPrint
    , dgUserIP
    , dgKey
    , dgDatasetId
    , dgOAuthToken
    , dgFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsDatasetsGet@ which the
-- 'DatasetsGet'' request conforms to.
type DatasetsGetResource =
     "datasets" :>
       Capture "datasetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Dataset

-- | Gets a dataset by ID.
--
-- /See:/ 'datasetsGet'' smart constructor.
data DatasetsGet' = DatasetsGet'
    { _dgQuotaUser   :: !(Maybe Text)
    , _dgPrettyPrint :: !Bool
    , _dgUserIP      :: !(Maybe Text)
    , _dgKey         :: !(Maybe Key)
    , _dgDatasetId   :: !Text
    , _dgOAuthToken  :: !(Maybe OAuthToken)
    , _dgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgQuotaUser'
--
-- * 'dgPrettyPrint'
--
-- * 'dgUserIP'
--
-- * 'dgKey'
--
-- * 'dgDatasetId'
--
-- * 'dgOAuthToken'
--
-- * 'dgFields'
datasetsGet'
    :: Text -- ^ 'datasetId'
    -> DatasetsGet'
datasetsGet' pDgDatasetId_ =
    DatasetsGet'
    { _dgQuotaUser = Nothing
    , _dgPrettyPrint = True
    , _dgUserIP = Nothing
    , _dgKey = Nothing
    , _dgDatasetId = pDgDatasetId_
    , _dgOAuthToken = Nothing
    , _dgFields = Nothing
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
dgUserIP :: Lens' DatasetsGet' (Maybe Text)
dgUserIP = lens _dgUserIP (\ s a -> s{_dgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dgKey :: Lens' DatasetsGet' (Maybe Key)
dgKey = lens _dgKey (\ s a -> s{_dgKey = a})

-- | The ID of the dataset.
dgDatasetId :: Lens' DatasetsGet' Text
dgDatasetId
  = lens _dgDatasetId (\ s a -> s{_dgDatasetId = a})

-- | OAuth 2.0 token for the current user.
dgOAuthToken :: Lens' DatasetsGet' (Maybe OAuthToken)
dgOAuthToken
  = lens _dgOAuthToken (\ s a -> s{_dgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dgFields :: Lens' DatasetsGet' (Maybe Text)
dgFields = lens _dgFields (\ s a -> s{_dgFields = a})

instance GoogleAuth DatasetsGet' where
        authKey = dgKey . _Just
        authToken = dgOAuthToken . _Just

instance GoogleRequest DatasetsGet' where
        type Rs DatasetsGet' = Dataset
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u DatasetsGet'{..}
          = go _dgDatasetId _dgQuotaUser (Just _dgPrettyPrint)
              _dgUserIP
              _dgFields
              _dgKey
              _dgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DatasetsGetResource)
                      r
                      u
